; ModuleID = 'blender/source/blender/blenkernel/intern/linestyle.c'
source_filename = "blender/source/blender/blenkernel/intern/linestyle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.LineStyleModifier = type { ptr, ptr, [64 x i8], i32, float, i32, i32 }
%struct.LineStyleGeometryModifier_Sampling = type { %struct.LineStyleModifier, float, i32 }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.LineStyleColorModifier_AlongStroke = type { %struct.LineStyleModifier, ptr }
%struct.LineStyleColorModifier_DistanceFromCamera = type { %struct.LineStyleModifier, ptr, float, float }
%struct.LineStyleColorModifier_DistanceFromObject = type { %struct.LineStyleModifier, ptr, ptr, float, float }
%struct.LineStyleColorModifier_Material = type { %struct.LineStyleModifier, ptr, i32, i32 }
%struct.LineStyleAlphaModifier_AlongStroke = type { %struct.LineStyleModifier, ptr, i32, i32 }
%struct.LineStyleAlphaModifier_DistanceFromCamera = type { %struct.LineStyleModifier, ptr, i32, float, float, i32 }
%struct.LineStyleAlphaModifier_DistanceFromObject = type { %struct.LineStyleModifier, ptr, ptr, i32, float, float, i32 }
%struct.LineStyleAlphaModifier_Material = type { %struct.LineStyleModifier, ptr, i32, i32 }
%struct.LineStyleThicknessModifier_AlongStroke = type { %struct.LineStyleModifier, ptr, i32, float, float, i32 }
%struct.LineStyleThicknessModifier_DistanceFromCamera = type { %struct.LineStyleModifier, ptr, i32, float, float, float, float, i32 }
%struct.LineStyleThicknessModifier_DistanceFromObject = type { %struct.LineStyleModifier, ptr, ptr, i32, float, float, float, float, i32 }
%struct.LineStyleThicknessModifier_Material = type { %struct.LineStyleModifier, ptr, i32, float, float, i32 }
%struct.LineStyleThicknessModifier_Calligraphy = type { %struct.LineStyleModifier, float, float, float, i32 }
%struct.LineStyleGeometryModifier_BezierCurve = type { %struct.LineStyleModifier, float, i32 }
%struct.LineStyleGeometryModifier_SinusDisplacement = type { %struct.LineStyleModifier, float, float, float, i32 }
%struct.LineStyleGeometryModifier_SpatialNoise = type { %struct.LineStyleModifier, float, float, i32, i32 }
%struct.LineStyleGeometryModifier_PerlinNoise1D = type { %struct.LineStyleModifier, float, float, float, i32, i32, i32 }
%struct.LineStyleGeometryModifier_PerlinNoise2D = type { %struct.LineStyleModifier, float, float, float, i32, i32, i32 }
%struct.LineStyleGeometryModifier_BackboneStretcher = type { %struct.LineStyleModifier, float, i32 }
%struct.LineStyleGeometryModifier_TipRemover = type { %struct.LineStyleModifier, float, i32 }
%struct.LineStyleGeometryModifier_Polygonalization = type { %struct.LineStyleModifier, float, i32 }
%struct.LineStyleGeometryModifier_GuidingLines = type { %struct.LineStyleModifier, float, i32 }
%struct.LineStyleGeometryModifier_Blueprint = type { %struct.LineStyleModifier, i32, i32, float, i32, i32, i32 }
%struct.LineStyleGeometryModifier_2DOffset = type { %struct.LineStyleModifier, float, float, float, float }
%struct.LineStyleGeometryModifier_2DTransform = type { %struct.LineStyleModifier, i32, float, float, float, float, float, float, i32 }
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
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.FreestyleLineSet = type { ptr, ptr, [64 x i8], i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }

@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"BKE_linestyle_copy\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"link to color ramp\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"color_modifiers[\22%s\22].color_ramp\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"stroke_shader\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ShaderNodeTree\00", align 1
@modifier_name = internal unnamed_addr constant [19 x ptr] [ptr null, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], align 16
@.str.6 = private unnamed_addr constant [20 x i8] c"line style modifier\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Along Stroke\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Distance from Camera\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Distance from Object\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Sampling\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Bezier Curve\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Sinus Displacement\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Spatial Noise\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Perlin Noise 1D\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Perlin Noise 2D\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Backbone Stretcher\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Tip Remover\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"Calligraphy\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"Polygonalization\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Guiding Lines\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"Blueprint\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"2D Offset\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"2D Transform\00", align 1
@str = private unnamed_addr constant [82 x i8] c"BKE_linestyle_path_to_color_ramp: No color ramps correspond to the given pointer.\00", align 1
@switch.table.BKE_linestyle_color_modifier_add = private unnamed_addr constant [4 x i64] [i64 104, i64 112, i64 120, i64 112], align 8
@switch.table.BKE_linestyle_alpha_modifier_add = private unnamed_addr constant [4 x i64] [i64 112, i64 120, i64 128, i64 112], align 8
@switch.table.BKE_linestyle_geometry_modifier_add = private unnamed_addr constant [14 x i64] [i64 104, i64 104, i64 112, i64 112, i64 120, i64 120, i64 104, i64 104, i64 104, i64 104, i64 104, i64 120, i64 112, i64 128], align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_linestyle_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  %4 = load ptr, ptr @G, align 8
  %5 = select i1 %3, ptr %4, ptr %1
  %6 = tail call ptr @BKE_libblock_alloc(ptr noundef %5, i16 noundef signext 21324, ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 38
  store i32 1, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 4
  store float 0.000000e+00, ptr %8, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 3
  store float 0.000000e+00, ptr %9, align 4, !tbaa !45
  %10 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 2
  store float 0.000000e+00, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 5
  store float 1.000000e+00, ptr %11, align 4, !tbaa !47
  %12 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 6
  store float 3.000000e+00, ptr %12, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 7
  store i32 1, ptr %13, align 4, !tbaa !49
  %14 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 8
  store float 5.000000e-01, ptr %14, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 9
  store i32 10242, ptr %15, align 4, !tbaa !51
  %16 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 11
  store i32 1, ptr %16, align 4, !tbaa !52
  %17 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 12
  store i32 3, ptr %17, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 14
  store float 0.000000e+00, ptr %18, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 15
  store float 0.000000e+00, ptr %19, align 4, !tbaa !55
  %20 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 16
  store float 0.000000e+00, ptr %20, align 8, !tbaa !56
  %21 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 17
  store float 1.000000e+04, ptr %21, align 4, !tbaa !57
  %22 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 13
  store float 1.000000e+02, ptr %22, align 4, !tbaa !58
  %23 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 18
  store i32 10, ptr %23, align 8, !tbaa !59
  %24 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 25
  store i32 1, ptr %24, align 8, !tbaa !60
  %25 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 26
  store i32 1, ptr %25, align 4, !tbaa !61
  %26 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 27
  store float 1.000000e+00, ptr %26, align 8, !tbaa !62
  %27 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 29
  store i16 0, ptr %27, align 2, !tbaa !63
  %28 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 41
  %29 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %28, i8 0, i64 64, i1 false)
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %31 = tail call ptr %30(i64 noundef 104, ptr noundef nonnull @.str.6) #8
  %32 = getelementptr inbounds %struct.LineStyleModifier, ptr %31, i64 0, i32 3
  store i32 5, ptr %32, align 8, !tbaa !65
  %33 = getelementptr inbounds %struct.LineStyleModifier, ptr %31, i64 0, i32 2
  %34 = tail call ptr @BLI_strncpy(ptr noundef nonnull %33, ptr noundef nonnull @.str.11, i64 noundef 64) #8
  %35 = getelementptr inbounds %struct.LineStyleModifier, ptr %31, i64 0, i32 4
  store float 1.000000e+00, ptr %35, align 4, !tbaa !67
  %36 = getelementptr inbounds %struct.LineStyleModifier, ptr %31, i64 0, i32 5
  store i32 3, ptr %36, align 8, !tbaa !68
  %37 = getelementptr inbounds %struct.LineStyleGeometryModifier_Sampling, ptr %31, i64 0, i32 1
  store float 1.000000e+01, ptr %37, align 8, !tbaa !69
  tail call void @BLI_addtail(ptr noundef nonnull %29, ptr noundef %31) #8
  %38 = load i32, ptr %32, align 8, !tbaa !65
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [19 x ptr], ptr @modifier_name, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !64
  tail call void @BLI_uniquename(ptr noundef nonnull %29, ptr noundef %31, ptr noundef %41, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #8
  %42 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %6, i64 0, i32 10
  store i32 1, ptr %42, align 8, !tbaa !71
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_linestyle_free(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %17
  %3 = phi i64 [ 0, %1 ], [ %18, %17 ]
  %4 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 39, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.MTex, ptr %5, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !74
  %14 = add nsw i32 %13, -1
  store i32 %14, ptr %12, align 4, !tbaa !74
  br label %15

15:                                               ; preds = %7, %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %16(ptr noundef nonnull %5) #8
  br label %17

17:                                               ; preds = %2, %15
  %18 = add nuw nsw i64 %3, 1
  %19 = icmp eq i64 %18, 18
  br i1 %19, label %20, label %2, !llvm.loop !77

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 40
  %22 = load ptr, ptr %21, align 8, !tbaa !80
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  tail call void @ntreeFreeTree(ptr noundef nonnull %22) #8
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  %26 = load ptr, ptr %21, align 8, !tbaa !80
  tail call void %25(ptr noundef %26) #8
  br label %27

27:                                               ; preds = %24, %20
  tail call void @BKE_free_animdata(ptr noundef %0) #8
  %28 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  %29 = load ptr, ptr %28, align 8, !tbaa !81
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %55, %27
  %32 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 42
  %33 = load ptr, ptr %32, align 8, !tbaa !82
  %34 = icmp eq ptr %33, null
  br i1 %34, label %58, label %62

35:                                               ; preds = %27, %55
  %36 = phi ptr [ %56, %55 ], [ %29, %27 ]
  %37 = tail call i32 @BLI_findindex(ptr noundef nonnull %28, ptr noundef nonnull %36) #8
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %55, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.LineStyleModifier, ptr %36, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !65
  switch i32 %41, label %54 [
    i32 1, label %42
    i32 2, label %44
    i32 3, label %46
    i32 4, label %48
  ]

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.LineStyleColorModifier_AlongStroke, ptr %36, i64 0, i32 1
  br label %50

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %36, i64 0, i32 1
  br label %50

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %36, i64 0, i32 2
  br label %50

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %36, i64 0, i32 1
  br label %50

50:                                               ; preds = %42, %44, %46, %48
  %51 = phi ptr [ %49, %48 ], [ %47, %46 ], [ %45, %44 ], [ %43, %42 ]
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  %53 = load ptr, ptr %51, align 8, !tbaa !64
  tail call void %52(ptr noundef %53) #8
  br label %54

54:                                               ; preds = %50, %39
  tail call void @BLI_freelinkN(ptr noundef nonnull %28, ptr noundef nonnull %36) #8
  br label %55

55:                                               ; preds = %35, %54
  %56 = load ptr, ptr %28, align 8, !tbaa !81
  %57 = icmp eq ptr %56, null
  br i1 %57, label %31, label %35, !llvm.loop !83

58:                                               ; preds = %62, %31
  %59 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 43
  %60 = load ptr, ptr %59, align 8, !tbaa !84
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %71

62:                                               ; preds = %31, %62
  %63 = phi ptr [ %65, %62 ], [ %33, %31 ]
  %64 = tail call i32 @BKE_linestyle_alpha_modifier_remove(ptr noundef %0, ptr noundef nonnull %63), !range !85
  %65 = load ptr, ptr %32, align 8, !tbaa !82
  %66 = icmp eq ptr %65, null
  br i1 %66, label %58, label %62, !llvm.loop !86

67:                                               ; preds = %71, %58
  %68 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 44
  %69 = load ptr, ptr %68, align 8, !tbaa !87
  %70 = icmp eq ptr %69, null
  br i1 %70, label %84, label %76

71:                                               ; preds = %58, %71
  %72 = phi ptr [ %74, %71 ], [ %60, %58 ]
  %73 = tail call i32 @BKE_linestyle_thickness_modifier_remove(ptr noundef %0, ptr noundef nonnull %72), !range !85
  %74 = load ptr, ptr %59, align 8, !tbaa !84
  %75 = icmp eq ptr %74, null
  br i1 %75, label %67, label %71, !llvm.loop !88

76:                                               ; preds = %67, %81
  %77 = phi ptr [ %82, %81 ], [ %69, %67 ]
  %78 = tail call i32 @BLI_findindex(ptr noundef nonnull %68, ptr noundef nonnull %77) #8
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  tail call void @BLI_freelinkN(ptr noundef nonnull %68, ptr noundef nonnull %77) #8
  br label %81

81:                                               ; preds = %76, %80
  %82 = load ptr, ptr %68, align 8, !tbaa !87
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %76, !llvm.loop !89

84:                                               ; preds = %81, %67
  ret void
}

declare void @ntreeFreeTree(ptr noundef) local_unnamed_addr #2

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BKE_linestyle_color_modifier_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #8
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !65
  switch i32 %8, label %21 [
    i32 1, label %9
    i32 2, label %11
    i32 3, label %13
    i32 4, label %15
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.LineStyleColorModifier_AlongStroke, ptr %1, i64 0, i32 1
  br label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %1, i64 0, i32 1
  br label %17

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %1, i64 0, i32 2
  br label %17

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %1, i64 0, i32 1
  br label %17

17:                                               ; preds = %9, %11, %13, %15
  %18 = phi ptr [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ]
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  %20 = load ptr, ptr %18, align 8, !tbaa !64
  tail call void %19(ptr noundef %20) #8
  br label %21

21:                                               ; preds = %17, %6
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef %1) #8
  br label %22

22:                                               ; preds = %2, %21
  %23 = phi i32 [ 0, %21 ], [ -1, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BKE_linestyle_alpha_modifier_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 42
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #8
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !65
  switch i32 %8, label %20 [
    i32 1, label %9
    i32 2, label %11
    i32 3, label %13
    i32 4, label %15
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.LineStyleAlphaModifier_AlongStroke, ptr %1, i64 0, i32 1
  br label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %1, i64 0, i32 1
  br label %17

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %1, i64 0, i32 2
  br label %17

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.LineStyleAlphaModifier_Material, ptr %1, i64 0, i32 1
  br label %17

17:                                               ; preds = %9, %11, %13, %15
  %18 = phi ptr [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  tail call void @curvemapping_free(ptr noundef %19) #8
  br label %20

20:                                               ; preds = %17, %6
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef %1) #8
  br label %21

21:                                               ; preds = %2, %20
  %22 = phi i32 [ 0, %20 ], [ -1, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BKE_linestyle_thickness_modifier_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 43
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #8
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !65
  switch i32 %8, label %20 [
    i32 1, label %9
    i32 2, label %11
    i32 3, label %13
    i32 4, label %15
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %1, i64 0, i32 1
  br label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %1, i64 0, i32 1
  br label %17

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %1, i64 0, i32 2
  br label %17

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %1, i64 0, i32 1
  br label %17

17:                                               ; preds = %9, %11, %13, %15
  %18 = phi ptr [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  tail call void @curvemapping_free(ptr noundef %19) #8
  br label %20

20:                                               ; preds = %17, %6
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef %1) #8
  br label %21

21:                                               ; preds = %2, %20
  %22 = phi i32 [ 0, %20 ], [ -1, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BKE_linestyle_geometry_modifier_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 44
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #8
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef %1) #8
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i32 [ 0, %6 ], [ -1, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_linestyle_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %3 = load ptr, ptr @G, align 8
  %4 = tail call ptr @BKE_libblock_alloc(ptr noundef %3, i16 noundef signext 21324, ptr noundef nonnull %2) #8
  %5 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 38
  store i32 1, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 4
  store float 0.000000e+00, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 3
  store float 0.000000e+00, ptr %7, align 4, !tbaa !45
  %8 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 2
  store float 0.000000e+00, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 5
  store float 1.000000e+00, ptr %9, align 4, !tbaa !47
  %10 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 6
  store float 3.000000e+00, ptr %10, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 7
  store i32 1, ptr %11, align 4, !tbaa !49
  %12 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 8
  store float 5.000000e-01, ptr %12, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 9
  store i32 10242, ptr %13, align 4, !tbaa !51
  %14 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 11
  store i32 1, ptr %14, align 4, !tbaa !52
  %15 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 12
  store i32 3, ptr %15, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 14
  store float 0.000000e+00, ptr %16, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 15
  store float 0.000000e+00, ptr %17, align 4, !tbaa !55
  %18 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 16
  store float 0.000000e+00, ptr %18, align 8, !tbaa !56
  %19 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 17
  store float 1.000000e+04, ptr %19, align 4, !tbaa !57
  %20 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 13
  store float 1.000000e+02, ptr %20, align 4, !tbaa !58
  %21 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 18
  store i32 10, ptr %21, align 8, !tbaa !59
  %22 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 25
  store i32 1, ptr %22, align 8, !tbaa !60
  %23 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 26
  store i32 1, ptr %23, align 4, !tbaa !61
  %24 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 27
  store float 1.000000e+00, ptr %24, align 8, !tbaa !62
  %25 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 29
  store i16 0, ptr %25, align 2, !tbaa !63
  %26 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 41
  %27 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %26, i8 0, i64 64, i1 false)
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %29 = tail call ptr %28(i64 noundef 104, ptr noundef nonnull @.str.6) #8
  %30 = getelementptr inbounds %struct.LineStyleModifier, ptr %29, i64 0, i32 3
  store i32 5, ptr %30, align 8, !tbaa !65
  %31 = getelementptr inbounds %struct.LineStyleModifier, ptr %29, i64 0, i32 2
  %32 = tail call ptr @BLI_strncpy(ptr noundef nonnull %31, ptr noundef nonnull @.str.11, i64 noundef 64) #8
  %33 = getelementptr inbounds %struct.LineStyleModifier, ptr %29, i64 0, i32 4
  store float 1.000000e+00, ptr %33, align 4, !tbaa !67
  %34 = getelementptr inbounds %struct.LineStyleModifier, ptr %29, i64 0, i32 5
  store i32 3, ptr %34, align 8, !tbaa !68
  %35 = getelementptr inbounds %struct.LineStyleGeometryModifier_Sampling, ptr %29, i64 0, i32 1
  store float 1.000000e+01, ptr %35, align 8, !tbaa !69
  tail call void @BLI_addtail(ptr noundef nonnull %27, ptr noundef %29) #8
  %36 = load i32, ptr %30, align 8, !tbaa !65
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [19 x ptr], ptr @modifier_name, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !64
  tail call void @BLI_uniquename(ptr noundef nonnull %27, ptr noundef %29, ptr noundef %39, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #8
  %40 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 10
  store i32 1, ptr %40, align 8, !tbaa !71
  tail call void @BKE_linestyle_free(ptr noundef %4)
  br label %41

41:                                               ; preds = %1, %54
  %42 = phi i64 [ 0, %1 ], [ %55, %54 ]
  %43 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 39, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !64
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !64
  %48 = tail call ptr %47(i64 noundef 312, ptr noundef nonnull @.str) #8
  %49 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 39, i64 %42
  store ptr %48, ptr %49, align 8, !tbaa !64
  %50 = load ptr, ptr %43, align 8, !tbaa !64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %48, ptr noundef nonnull align 8 dereferenceable(312) %50, i64 312, i1 false)
  %51 = load ptr, ptr %49, align 8, !tbaa !64
  %52 = getelementptr inbounds %struct.MTex, ptr %51, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !72
  tail call void @id_us_plus(ptr noundef %53) #8
  br label %54

54:                                               ; preds = %41, %46
  %55 = add nuw nsw i64 %42, 1
  %56 = icmp eq i64 %55, 18
  br i1 %56, label %57, label %41, !llvm.loop !90

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 40
  %59 = load ptr, ptr %58, align 8, !tbaa !80
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = tail call ptr @ntreeCopyTree(ptr noundef nonnull %59) #8
  %63 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 40
  store ptr %62, ptr %63, align 8, !tbaa !80
  br label %64

64:                                               ; preds = %61, %57
  %65 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 2
  %66 = load float, ptr %65, align 8, !tbaa !46
  store float %66, ptr %8, align 8, !tbaa !46
  %67 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 3
  %68 = load float, ptr %67, align 4, !tbaa !45
  store float %68, ptr %7, align 4, !tbaa !45
  %69 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 4
  %70 = load float, ptr %69, align 8, !tbaa !44
  store float %70, ptr %6, align 8, !tbaa !44
  %71 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 5
  %72 = load float, ptr %71, align 4, !tbaa !47
  store float %72, ptr %9, align 4, !tbaa !47
  %73 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 6
  %74 = load float, ptr %73, align 8, !tbaa !48
  store float %74, ptr %10, align 8, !tbaa !48
  %75 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 7
  %76 = load i32, ptr %75, align 4, !tbaa !49
  store i32 %76, ptr %11, align 4, !tbaa !49
  %77 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 8
  %78 = load float, ptr %77, align 8, !tbaa !50
  store float %78, ptr %12, align 8, !tbaa !50
  %79 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 9
  %80 = load i32, ptr %79, align 4, !tbaa !51
  store i32 %80, ptr %13, align 4, !tbaa !51
  %81 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 10
  %82 = load i32, ptr %81, align 8, !tbaa !71
  store i32 %82, ptr %40, align 8, !tbaa !71
  %83 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 11
  %84 = load i32, ptr %83, align 4, !tbaa !52
  store i32 %84, ptr %14, align 4, !tbaa !52
  %85 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 12
  %86 = load i32, ptr %85, align 8, !tbaa !53
  store i32 %86, ptr %15, align 8, !tbaa !53
  %87 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 13
  %88 = load float, ptr %87, align 4, !tbaa !58
  store float %88, ptr %20, align 4, !tbaa !58
  %89 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 14
  %90 = load float, ptr %89, align 8, !tbaa !54
  store float %90, ptr %16, align 8, !tbaa !54
  %91 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 15
  %92 = load float, ptr %91, align 4, !tbaa !55
  store float %92, ptr %17, align 4, !tbaa !55
  %93 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 16
  %94 = load float, ptr %93, align 8, !tbaa !56
  store float %94, ptr %18, align 8, !tbaa !56
  %95 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 17
  %96 = load float, ptr %95, align 4, !tbaa !57
  store float %96, ptr %19, align 4, !tbaa !57
  %97 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 18
  %98 = load i32, ptr %97, align 8, !tbaa !59
  store i32 %98, ptr %21, align 8, !tbaa !59
  %99 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 19
  %100 = load i16, ptr %99, align 4, !tbaa !91
  %101 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 19
  store i16 %100, ptr %101, align 4, !tbaa !91
  %102 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 20
  %103 = load i16, ptr %102, align 2, !tbaa !92
  %104 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 20
  store i16 %103, ptr %104, align 2, !tbaa !92
  %105 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 21
  %106 = load i16, ptr %105, align 8, !tbaa !93
  %107 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 21
  store i16 %106, ptr %107, align 8, !tbaa !93
  %108 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 22
  %109 = load i16, ptr %108, align 2, !tbaa !94
  %110 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 22
  store i16 %109, ptr %110, align 2, !tbaa !94
  %111 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 23
  %112 = load i16, ptr %111, align 4, !tbaa !95
  %113 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 23
  store i16 %112, ptr %113, align 4, !tbaa !95
  %114 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 24
  %115 = load i16, ptr %114, align 2, !tbaa !96
  %116 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 24
  store i16 %115, ptr %116, align 2, !tbaa !96
  %117 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 32
  %118 = load i16, ptr %117, align 8, !tbaa !97
  %119 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 32
  store i16 %118, ptr %119, align 8, !tbaa !97
  %120 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 33
  %121 = load i16, ptr %120, align 2, !tbaa !98
  %122 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 33
  store i16 %121, ptr %122, align 2, !tbaa !98
  %123 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 34
  %124 = load i16, ptr %123, align 4, !tbaa !99
  %125 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 34
  store i16 %124, ptr %125, align 4, !tbaa !99
  %126 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 35
  %127 = load i16, ptr %126, align 2, !tbaa !100
  %128 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 35
  store i16 %127, ptr %128, align 2, !tbaa !100
  %129 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 36
  %130 = load i16, ptr %129, align 8, !tbaa !101
  %131 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 36
  store i16 %130, ptr %131, align 8, !tbaa !101
  %132 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 37
  %133 = load i16, ptr %132, align 2, !tbaa !102
  %134 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 37
  store i16 %133, ptr %134, align 2, !tbaa !102
  %135 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 38
  %136 = load i32, ptr %135, align 4, !tbaa !34
  store i32 %136, ptr %5, align 4, !tbaa !34
  %137 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 27
  %138 = load float, ptr %137, align 8, !tbaa !62
  store float %138, ptr %24, align 8, !tbaa !62
  %139 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 29
  %140 = load i16, ptr %139, align 2, !tbaa !63
  store i16 %140, ptr %25, align 2, !tbaa !63
  %141 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  %142 = load ptr, ptr %141, align 8, !tbaa !64
  %143 = icmp eq ptr %142, null
  br i1 %143, label %149, label %144

144:                                              ; preds = %64, %144
  %145 = phi ptr [ %147, %144 ], [ %142, %64 ]
  %146 = tail call ptr @BKE_linestyle_color_modifier_copy(ptr noundef %4, ptr noundef nonnull %145)
  %147 = load ptr, ptr %145, align 8, !tbaa !64
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %144, !llvm.loop !103

149:                                              ; preds = %144, %64
  %150 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 42
  %151 = load ptr, ptr %150, align 8, !tbaa !64
  %152 = icmp eq ptr %151, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %149, %153
  %154 = phi ptr [ %156, %153 ], [ %151, %149 ]
  %155 = tail call ptr @BKE_linestyle_alpha_modifier_copy(ptr noundef %4, ptr noundef nonnull %154)
  %156 = load ptr, ptr %154, align 8, !tbaa !64
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %153, !llvm.loop !104

158:                                              ; preds = %153, %149
  %159 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 43
  %160 = load ptr, ptr %159, align 8, !tbaa !64
  %161 = icmp eq ptr %160, null
  br i1 %161, label %167, label %162

162:                                              ; preds = %158, %162
  %163 = phi ptr [ %165, %162 ], [ %160, %158 ]
  %164 = tail call ptr @BKE_linestyle_thickness_modifier_copy(ptr noundef %4, ptr noundef nonnull %163)
  %165 = load ptr, ptr %163, align 8, !tbaa !64
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %162, !llvm.loop !105

167:                                              ; preds = %162, %158
  %168 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 44
  %169 = load ptr, ptr %168, align 8, !tbaa !64
  %170 = icmp eq ptr %169, null
  br i1 %170, label %176, label %171

171:                                              ; preds = %167, %171
  %172 = phi ptr [ %174, %171 ], [ %169, %167 ]
  %173 = tail call ptr @BKE_linestyle_geometry_modifier_copy(ptr noundef %4, ptr noundef nonnull %172)
  %174 = load ptr, ptr %172, align 8, !tbaa !64
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %171, !llvm.loop !106

176:                                              ; preds = %171, %167
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

declare ptr @ntreeCopyTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_linestyle_color_modifier_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !65
  %5 = add i32 %4, -1
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 2
  %9 = zext nneg i32 %5 to i64
  %10 = getelementptr inbounds [4 x i64], ptr @switch.table.BKE_linestyle_color_modifier_add, i64 0, i64 %9
  %11 = load i64, ptr %10, align 8
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %13 = tail call ptr %12(i64 noundef %11, ptr noundef nonnull @.str.6) #8
  %14 = getelementptr inbounds %struct.LineStyleModifier, ptr %13, i64 0, i32 3
  store i32 %4, ptr %14, align 8, !tbaa !65
  %15 = getelementptr inbounds %struct.LineStyleModifier, ptr %13, i64 0, i32 2
  %16 = tail call ptr @BLI_strncpy(ptr noundef nonnull %15, ptr noundef nonnull %8, i64 noundef 64) #8
  %17 = getelementptr inbounds %struct.LineStyleModifier, ptr %13, i64 0, i32 4
  store float 1.000000e+00, ptr %17, align 4, !tbaa !67
  %18 = getelementptr inbounds %struct.LineStyleModifier, ptr %13, i64 0, i32 5
  store i32 3, ptr %18, align 8, !tbaa !68
  br label %19

19:                                               ; preds = %2, %7
  %20 = phi ptr [ %13, %7 ], [ null, %2 ]
  %21 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 4
  %22 = load float, ptr %21, align 4, !tbaa !67
  %23 = getelementptr inbounds %struct.LineStyleModifier, ptr %20, i64 0, i32 4
  store float %22, ptr %23, align 4, !tbaa !67
  %24 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !68
  %26 = getelementptr inbounds %struct.LineStyleModifier, ptr %20, i64 0, i32 5
  store i32 %25, ptr %26, align 8, !tbaa !68
  %27 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !107
  %29 = getelementptr inbounds %struct.LineStyleModifier, ptr %20, i64 0, i32 6
  store i32 %28, ptr %29, align 4, !tbaa !107
  %30 = load i32, ptr %3, align 8, !tbaa !65
  switch i32 %30, label %89 [
    i32 1, label %31
    i32 2, label %37
    i32 3, label %49
    i32 4, label %70
  ]

31:                                               ; preds = %19
  %32 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !64
  %33 = getelementptr inbounds %struct.LineStyleColorModifier_AlongStroke, ptr %1, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !108
  %35 = tail call ptr %32(ptr noundef %34) #8
  %36 = getelementptr inbounds %struct.LineStyleColorModifier_AlongStroke, ptr %20, i64 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !108
  br label %82

37:                                               ; preds = %19
  %38 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !64
  %39 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !110
  %41 = tail call ptr %38(ptr noundef %40) #8
  %42 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %20, i64 0, i32 1
  store ptr %41, ptr %42, align 8, !tbaa !110
  %43 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %1, i64 0, i32 2
  %44 = load float, ptr %43, align 8, !tbaa !112
  %45 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %20, i64 0, i32 2
  store float %44, ptr %45, align 8, !tbaa !112
  %46 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %1, i64 0, i32 3
  %47 = load float, ptr %46, align 4, !tbaa !113
  %48 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %20, i64 0, i32 3
  store float %47, ptr %48, align 4, !tbaa !113
  br label %82

49:                                               ; preds = %19
  %50 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %1, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !114
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ID, ptr %51, i64 0, i32 6
  %55 = load i32, ptr %54, align 4, !tbaa !116
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %54, align 4, !tbaa !116
  br label %57

57:                                               ; preds = %53, %49
  %58 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %20, i64 0, i32 1
  store ptr %51, ptr %58, align 8, !tbaa !114
  %59 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !64
  %60 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %1, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !120
  %62 = tail call ptr %59(ptr noundef %61) #8
  %63 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %20, i64 0, i32 2
  store ptr %62, ptr %63, align 8, !tbaa !120
  %64 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %1, i64 0, i32 3
  %65 = load float, ptr %64, align 8, !tbaa !121
  %66 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %20, i64 0, i32 3
  store float %65, ptr %66, align 8, !tbaa !121
  %67 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %1, i64 0, i32 4
  %68 = load float, ptr %67, align 4, !tbaa !122
  %69 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %20, i64 0, i32 4
  store float %68, ptr %69, align 4, !tbaa !122
  br label %82

70:                                               ; preds = %19
  %71 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !64
  %72 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %1, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !123
  %74 = tail call ptr %71(ptr noundef %73) #8
  %75 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %20, i64 0, i32 1
  store ptr %74, ptr %75, align 8, !tbaa !123
  %76 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %1, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !125
  %78 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %20, i64 0, i32 2
  store i32 %77, ptr %78, align 8, !tbaa !125
  %79 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %1, i64 0, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !126
  %81 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %20, i64 0, i32 3
  store i32 %80, ptr %81, align 4, !tbaa !126
  br label %82

82:                                               ; preds = %70, %57, %37, %31
  %83 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  tail call void @BLI_addtail(ptr noundef nonnull %83, ptr noundef %20) #8
  %84 = getelementptr inbounds %struct.LineStyleModifier, ptr %20, i64 0, i32 3
  %85 = load i32, ptr %84, align 8, !tbaa !65
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [19 x ptr], ptr @modifier_name, i64 0, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !64
  tail call void @BLI_uniquename(ptr noundef nonnull %83, ptr noundef %20, ptr noundef %88, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #8
  br label %89

89:                                               ; preds = %19, %82
  %90 = phi ptr [ %20, %82 ], [ null, %19 ]
  ret ptr %90
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_linestyle_alpha_modifier_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !65
  %5 = add i32 %4, -1
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 2
  %9 = zext nneg i32 %5 to i64
  %10 = getelementptr inbounds [4 x i64], ptr @switch.table.BKE_linestyle_alpha_modifier_add, i64 0, i64 %9
  %11 = load i64, ptr %10, align 8
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %13 = tail call ptr %12(i64 noundef %11, ptr noundef nonnull @.str.6) #8
  %14 = getelementptr inbounds %struct.LineStyleModifier, ptr %13, i64 0, i32 3
  store i32 %4, ptr %14, align 8, !tbaa !65
  %15 = getelementptr inbounds %struct.LineStyleModifier, ptr %13, i64 0, i32 2
  %16 = tail call ptr @BLI_strncpy(ptr noundef nonnull %15, ptr noundef nonnull %8, i64 noundef 64) #8
  %17 = getelementptr inbounds %struct.LineStyleModifier, ptr %13, i64 0, i32 4
  store float 1.000000e+00, ptr %17, align 4, !tbaa !67
  %18 = getelementptr inbounds %struct.LineStyleModifier, ptr %13, i64 0, i32 5
  store i32 3, ptr %18, align 8, !tbaa !68
  br label %19

19:                                               ; preds = %2, %7
  %20 = phi ptr [ %13, %7 ], [ null, %2 ]
  %21 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 4
  %22 = load float, ptr %21, align 4, !tbaa !67
  %23 = getelementptr inbounds %struct.LineStyleModifier, ptr %20, i64 0, i32 4
  store float %22, ptr %23, align 4, !tbaa !67
  %24 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !68
  %26 = getelementptr inbounds %struct.LineStyleModifier, ptr %20, i64 0, i32 5
  store i32 %25, ptr %26, align 8, !tbaa !68
  %27 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !107
  %29 = getelementptr inbounds %struct.LineStyleModifier, ptr %20, i64 0, i32 6
  store i32 %28, ptr %29, align 4, !tbaa !107
  %30 = load i32, ptr %3, align 8, !tbaa !65
  switch i32 %30, label %94 [
    i32 1, label %31
    i32 2, label %39
    i32 3, label %53
    i32 4, label %76
  ]

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.LineStyleAlphaModifier_AlongStroke, ptr %1, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !127
  %34 = tail call ptr @curvemapping_copy(ptr noundef %33) #8
  %35 = getelementptr inbounds %struct.LineStyleAlphaModifier_AlongStroke, ptr %20, i64 0, i32 1
  store ptr %34, ptr %35, align 8, !tbaa !127
  %36 = getelementptr inbounds %struct.LineStyleAlphaModifier_AlongStroke, ptr %1, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !129
  %38 = getelementptr inbounds %struct.LineStyleAlphaModifier_AlongStroke, ptr %20, i64 0, i32 2
  store i32 %37, ptr %38, align 8, !tbaa !129
  br label %87

39:                                               ; preds = %19
  %40 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %1, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !130
  %42 = tail call ptr @curvemapping_copy(ptr noundef %41) #8
  %43 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %20, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !130
  %44 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %1, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !132
  %46 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %20, i64 0, i32 2
  store i32 %45, ptr %46, align 8, !tbaa !132
  %47 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %1, i64 0, i32 3
  %48 = load float, ptr %47, align 4, !tbaa !133
  %49 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %20, i64 0, i32 3
  store float %48, ptr %49, align 4, !tbaa !133
  %50 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %1, i64 0, i32 4
  %51 = load float, ptr %50, align 8, !tbaa !134
  %52 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %20, i64 0, i32 4
  store float %51, ptr %52, align 8, !tbaa !134
  br label %87

53:                                               ; preds = %19
  %54 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %1, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !135
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ID, ptr %55, i64 0, i32 6
  %59 = load i32, ptr %58, align 4, !tbaa !116
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %58, align 4, !tbaa !116
  br label %61

61:                                               ; preds = %57, %53
  %62 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %20, i64 0, i32 1
  store ptr %55, ptr %62, align 8, !tbaa !135
  %63 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %1, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !137
  %65 = tail call ptr @curvemapping_copy(ptr noundef %64) #8
  %66 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %20, i64 0, i32 2
  store ptr %65, ptr %66, align 8, !tbaa !137
  %67 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %1, i64 0, i32 3
  %68 = load i32, ptr %67, align 8, !tbaa !138
  %69 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %20, i64 0, i32 3
  store i32 %68, ptr %69, align 8, !tbaa !138
  %70 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %1, i64 0, i32 4
  %71 = load float, ptr %70, align 4, !tbaa !139
  %72 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %20, i64 0, i32 4
  store float %71, ptr %72, align 4, !tbaa !139
  %73 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %1, i64 0, i32 5
  %74 = load float, ptr %73, align 8, !tbaa !140
  %75 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %20, i64 0, i32 5
  store float %74, ptr %75, align 8, !tbaa !140
  br label %87

76:                                               ; preds = %19
  %77 = getelementptr inbounds %struct.LineStyleAlphaModifier_Material, ptr %1, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !141
  %79 = tail call ptr @curvemapping_copy(ptr noundef %78) #8
  %80 = getelementptr inbounds %struct.LineStyleAlphaModifier_Material, ptr %20, i64 0, i32 1
  store ptr %79, ptr %80, align 8, !tbaa !141
  %81 = getelementptr inbounds %struct.LineStyleAlphaModifier_Material, ptr %1, i64 0, i32 2
  %82 = load i32, ptr %81, align 8, !tbaa !143
  %83 = getelementptr inbounds %struct.LineStyleAlphaModifier_Material, ptr %20, i64 0, i32 2
  store i32 %82, ptr %83, align 8, !tbaa !143
  %84 = getelementptr inbounds %struct.LineStyleAlphaModifier_Material, ptr %1, i64 0, i32 3
  %85 = load i32, ptr %84, align 4, !tbaa !144
  %86 = getelementptr inbounds %struct.LineStyleAlphaModifier_Material, ptr %20, i64 0, i32 3
  store i32 %85, ptr %86, align 4, !tbaa !144
  br label %87

87:                                               ; preds = %76, %61, %39, %31
  %88 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 42
  tail call void @BLI_addtail(ptr noundef nonnull %88, ptr noundef %20) #8
  %89 = getelementptr inbounds %struct.LineStyleModifier, ptr %20, i64 0, i32 3
  %90 = load i32, ptr %89, align 8, !tbaa !65
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [19 x ptr], ptr @modifier_name, i64 0, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !64
  tail call void @BLI_uniquename(ptr noundef nonnull %88, ptr noundef %20, ptr noundef %93, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #8
  br label %94

94:                                               ; preds = %19, %87
  %95 = phi ptr [ %20, %87 ], [ null, %19 ]
  ret ptr %95
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_linestyle_thickness_modifier_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !65
  switch i32 %5, label %18 [
    i32 1, label %9
    i32 2, label %6
    i32 3, label %7
    i32 4, label %9
    i32 13, label %8
  ]

6:                                                ; preds = %2
  br label %9

7:                                                ; preds = %2
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %7, %6, %2, %2
  %10 = phi i64 [ 112, %8 ], [ 136, %7 ], [ 128, %6 ], [ 120, %2 ], [ 120, %2 ]
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %12 = tail call ptr %11(i64 noundef %10, ptr noundef nonnull @.str.6) #8
  %13 = getelementptr inbounds %struct.LineStyleModifier, ptr %12, i64 0, i32 3
  store i32 %5, ptr %13, align 8, !tbaa !65
  %14 = getelementptr inbounds %struct.LineStyleModifier, ptr %12, i64 0, i32 2
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %14, ptr noundef nonnull %3, i64 noundef 64) #8
  %16 = getelementptr inbounds %struct.LineStyleModifier, ptr %12, i64 0, i32 4
  store float 1.000000e+00, ptr %16, align 4, !tbaa !67
  %17 = getelementptr inbounds %struct.LineStyleModifier, ptr %12, i64 0, i32 5
  store i32 3, ptr %17, align 8, !tbaa !68
  br label %18

18:                                               ; preds = %2, %9
  %19 = phi ptr [ %12, %9 ], [ null, %2 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %129, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 4
  %23 = load float, ptr %22, align 4, !tbaa !67
  %24 = getelementptr inbounds %struct.LineStyleModifier, ptr %19, i64 0, i32 4
  store float %23, ptr %24, align 4, !tbaa !67
  %25 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !68
  %27 = getelementptr inbounds %struct.LineStyleModifier, ptr %19, i64 0, i32 5
  store i32 %26, ptr %27, align 8, !tbaa !68
  %28 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 6
  %29 = load i32, ptr %28, align 4, !tbaa !107
  %30 = getelementptr inbounds %struct.LineStyleModifier, ptr %19, i64 0, i32 6
  store i32 %29, ptr %30, align 4, !tbaa !107
  %31 = load i32, ptr %4, align 8, !tbaa !65
  switch i32 %31, label %129 [
    i32 1, label %32
    i32 2, label %46
    i32 3, label %66
    i32 4, label %95
    i32 13, label %112
  ]

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %1, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !145
  %35 = tail call ptr @curvemapping_copy(ptr noundef %34) #8
  %36 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %19, i64 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !145
  %37 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %1, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !147
  %39 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %19, i64 0, i32 2
  store i32 %38, ptr %39, align 8, !tbaa !147
  %40 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %1, i64 0, i32 3
  %41 = load float, ptr %40, align 4, !tbaa !148
  %42 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %19, i64 0, i32 3
  store float %41, ptr %42, align 4, !tbaa !148
  %43 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %1, i64 0, i32 4
  %44 = load float, ptr %43, align 8, !tbaa !149
  %45 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %19, i64 0, i32 4
  store float %44, ptr %45, align 8, !tbaa !149
  br label %122

46:                                               ; preds = %21
  %47 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %1, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !150
  %49 = tail call ptr @curvemapping_copy(ptr noundef %48) #8
  %50 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %19, i64 0, i32 1
  store ptr %49, ptr %50, align 8, !tbaa !150
  %51 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %1, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !152
  %53 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %19, i64 0, i32 2
  store i32 %52, ptr %53, align 8, !tbaa !152
  %54 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %1, i64 0, i32 3
  %55 = load float, ptr %54, align 4, !tbaa !153
  %56 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %19, i64 0, i32 3
  store float %55, ptr %56, align 4, !tbaa !153
  %57 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %1, i64 0, i32 4
  %58 = load float, ptr %57, align 8, !tbaa !154
  %59 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %19, i64 0, i32 4
  store float %58, ptr %59, align 8, !tbaa !154
  %60 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %1, i64 0, i32 5
  %61 = load float, ptr %60, align 4, !tbaa !155
  %62 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %19, i64 0, i32 5
  store float %61, ptr %62, align 4, !tbaa !155
  %63 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %1, i64 0, i32 6
  %64 = load float, ptr %63, align 8, !tbaa !156
  %65 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %19, i64 0, i32 6
  store float %64, ptr %65, align 8, !tbaa !156
  br label %122

66:                                               ; preds = %21
  %67 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %1, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !157
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ID, ptr %68, i64 0, i32 6
  %72 = load i32, ptr %71, align 4, !tbaa !116
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %71, align 4, !tbaa !116
  br label %74

74:                                               ; preds = %70, %66
  %75 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %19, i64 0, i32 1
  store ptr %68, ptr %75, align 8, !tbaa !157
  %76 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %1, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !159
  %78 = tail call ptr @curvemapping_copy(ptr noundef %77) #8
  %79 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %19, i64 0, i32 2
  store ptr %78, ptr %79, align 8, !tbaa !159
  %80 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %1, i64 0, i32 3
  %81 = load i32, ptr %80, align 8, !tbaa !160
  %82 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %19, i64 0, i32 3
  store i32 %81, ptr %82, align 8, !tbaa !160
  %83 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %1, i64 0, i32 4
  %84 = load float, ptr %83, align 4, !tbaa !161
  %85 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %19, i64 0, i32 4
  store float %84, ptr %85, align 4, !tbaa !161
  %86 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %1, i64 0, i32 5
  %87 = load float, ptr %86, align 8, !tbaa !162
  %88 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %19, i64 0, i32 5
  store float %87, ptr %88, align 8, !tbaa !162
  %89 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %1, i64 0, i32 6
  %90 = load float, ptr %89, align 4, !tbaa !163
  %91 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %19, i64 0, i32 6
  store float %90, ptr %91, align 4, !tbaa !163
  %92 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %1, i64 0, i32 7
  %93 = load float, ptr %92, align 8, !tbaa !164
  %94 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %19, i64 0, i32 7
  store float %93, ptr %94, align 8, !tbaa !164
  br label %122

95:                                               ; preds = %21
  %96 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %1, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !165
  %98 = tail call ptr @curvemapping_copy(ptr noundef %97) #8
  %99 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %19, i64 0, i32 1
  store ptr %98, ptr %99, align 8, !tbaa !165
  %100 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %1, i64 0, i32 2
  %101 = load i32, ptr %100, align 8, !tbaa !167
  %102 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %19, i64 0, i32 2
  store i32 %101, ptr %102, align 8, !tbaa !167
  %103 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %1, i64 0, i32 5
  %104 = load i32, ptr %103, align 4, !tbaa !168
  %105 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %19, i64 0, i32 5
  store i32 %104, ptr %105, align 4, !tbaa !168
  %106 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %1, i64 0, i32 3
  %107 = load float, ptr %106, align 4, !tbaa !169
  %108 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %19, i64 0, i32 3
  store float %107, ptr %108, align 4, !tbaa !169
  %109 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %1, i64 0, i32 4
  %110 = load float, ptr %109, align 8, !tbaa !170
  %111 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %19, i64 0, i32 4
  store float %110, ptr %111, align 8, !tbaa !170
  br label %122

112:                                              ; preds = %21
  %113 = getelementptr inbounds %struct.LineStyleThicknessModifier_Calligraphy, ptr %1, i64 0, i32 1
  %114 = load float, ptr %113, align 8, !tbaa !171
  %115 = getelementptr inbounds %struct.LineStyleThicknessModifier_Calligraphy, ptr %19, i64 0, i32 1
  store float %114, ptr %115, align 8, !tbaa !171
  %116 = getelementptr inbounds %struct.LineStyleThicknessModifier_Calligraphy, ptr %1, i64 0, i32 2
  %117 = load float, ptr %116, align 4, !tbaa !173
  %118 = getelementptr inbounds %struct.LineStyleThicknessModifier_Calligraphy, ptr %19, i64 0, i32 2
  store float %117, ptr %118, align 4, !tbaa !173
  %119 = getelementptr inbounds %struct.LineStyleThicknessModifier_Calligraphy, ptr %1, i64 0, i32 3
  %120 = load float, ptr %119, align 8, !tbaa !174
  %121 = getelementptr inbounds %struct.LineStyleThicknessModifier_Calligraphy, ptr %19, i64 0, i32 3
  store float %120, ptr %121, align 8, !tbaa !174
  br label %122

122:                                              ; preds = %112, %95, %74, %46, %32
  %123 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 43
  tail call void @BLI_addtail(ptr noundef nonnull %123, ptr noundef nonnull %19) #8
  %124 = getelementptr inbounds %struct.LineStyleModifier, ptr %19, i64 0, i32 3
  %125 = load i32, ptr %124, align 8, !tbaa !65
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [19 x ptr], ptr @modifier_name, i64 0, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !64
  tail call void @BLI_uniquename(ptr noundef nonnull %123, ptr noundef nonnull %19, ptr noundef %128, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #8
  br label %129

129:                                              ; preds = %21, %18, %122
  %130 = phi ptr [ %19, %122 ], [ null, %18 ], [ null, %21 ]
  ret ptr %130
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_linestyle_geometry_modifier_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !65
  %6 = add i32 %5, -5
  %7 = icmp ult i32 %6, 14
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = trunc i32 %6 to i16
  %10 = lshr i16 16127, %9
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %8
  %14 = zext nneg i32 %6 to i64
  %15 = getelementptr inbounds [14 x i64], ptr @switch.table.BKE_linestyle_geometry_modifier_add, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %18 = tail call ptr %17(i64 noundef %16, ptr noundef nonnull @.str.6) #8
  %19 = getelementptr inbounds %struct.LineStyleModifier, ptr %18, i64 0, i32 3
  store i32 %5, ptr %19, align 8, !tbaa !65
  %20 = getelementptr inbounds %struct.LineStyleModifier, ptr %18, i64 0, i32 2
  %21 = tail call ptr @BLI_strncpy(ptr noundef nonnull %20, ptr noundef nonnull %3, i64 noundef 64) #8
  %22 = getelementptr inbounds %struct.LineStyleModifier, ptr %18, i64 0, i32 4
  store float 1.000000e+00, ptr %22, align 4, !tbaa !67
  %23 = getelementptr inbounds %struct.LineStyleModifier, ptr %18, i64 0, i32 5
  store i32 3, ptr %23, align 8, !tbaa !68
  br label %24

24:                                               ; preds = %8, %2, %13
  %25 = phi ptr [ %18, %13 ], [ null, %2 ], [ null, %8 ]
  %26 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !68
  %28 = getelementptr inbounds %struct.LineStyleModifier, ptr %25, i64 0, i32 5
  store i32 %27, ptr %28, align 8, !tbaa !68
  %29 = load i32, ptr %4, align 8, !tbaa !65
  switch i32 %29, label %170 [
    i32 5, label %30
    i32 6, label %34
    i32 7, label %38
    i32 8, label %48
    i32 9, label %61
    i32 10, label %77
    i32 11, label %93
    i32 12, label %97
    i32 14, label %101
    i32 15, label %105
    i32 16, label %109
    i32 17, label %128
    i32 18, label %141
  ]

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.LineStyleGeometryModifier_Sampling, ptr %1, i64 0, i32 1
  %32 = load float, ptr %31, align 8, !tbaa !69
  %33 = getelementptr inbounds %struct.LineStyleGeometryModifier_Sampling, ptr %25, i64 0, i32 1
  store float %32, ptr %33, align 8, !tbaa !69
  br label %163

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.LineStyleGeometryModifier_BezierCurve, ptr %1, i64 0, i32 1
  %36 = load float, ptr %35, align 8, !tbaa !175
  %37 = getelementptr inbounds %struct.LineStyleGeometryModifier_BezierCurve, ptr %25, i64 0, i32 1
  store float %36, ptr %37, align 8, !tbaa !175
  br label %163

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.LineStyleGeometryModifier_SinusDisplacement, ptr %1, i64 0, i32 1
  %40 = load float, ptr %39, align 8, !tbaa !177
  %41 = getelementptr inbounds %struct.LineStyleGeometryModifier_SinusDisplacement, ptr %25, i64 0, i32 1
  store float %40, ptr %41, align 8, !tbaa !177
  %42 = getelementptr inbounds %struct.LineStyleGeometryModifier_SinusDisplacement, ptr %1, i64 0, i32 2
  %43 = load float, ptr %42, align 4, !tbaa !179
  %44 = getelementptr inbounds %struct.LineStyleGeometryModifier_SinusDisplacement, ptr %25, i64 0, i32 2
  store float %43, ptr %44, align 4, !tbaa !179
  %45 = getelementptr inbounds %struct.LineStyleGeometryModifier_SinusDisplacement, ptr %1, i64 0, i32 3
  %46 = load float, ptr %45, align 8, !tbaa !180
  %47 = getelementptr inbounds %struct.LineStyleGeometryModifier_SinusDisplacement, ptr %25, i64 0, i32 3
  store float %46, ptr %47, align 8, !tbaa !180
  br label %163

48:                                               ; preds = %24
  %49 = getelementptr inbounds %struct.LineStyleGeometryModifier_SpatialNoise, ptr %1, i64 0, i32 1
  %50 = load float, ptr %49, align 8, !tbaa !181
  %51 = getelementptr inbounds %struct.LineStyleGeometryModifier_SpatialNoise, ptr %25, i64 0, i32 1
  store float %50, ptr %51, align 8, !tbaa !181
  %52 = getelementptr inbounds %struct.LineStyleGeometryModifier_SpatialNoise, ptr %1, i64 0, i32 2
  %53 = load float, ptr %52, align 4, !tbaa !183
  %54 = getelementptr inbounds %struct.LineStyleGeometryModifier_SpatialNoise, ptr %25, i64 0, i32 2
  store float %53, ptr %54, align 4, !tbaa !183
  %55 = getelementptr inbounds %struct.LineStyleGeometryModifier_SpatialNoise, ptr %1, i64 0, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !184
  %57 = getelementptr inbounds %struct.LineStyleGeometryModifier_SpatialNoise, ptr %25, i64 0, i32 3
  store i32 %56, ptr %57, align 8, !tbaa !184
  %58 = getelementptr inbounds %struct.LineStyleGeometryModifier_SpatialNoise, ptr %1, i64 0, i32 4
  %59 = load i32, ptr %58, align 4, !tbaa !185
  %60 = getelementptr inbounds %struct.LineStyleGeometryModifier_SpatialNoise, ptr %25, i64 0, i32 4
  store i32 %59, ptr %60, align 4, !tbaa !185
  br label %163

61:                                               ; preds = %24
  %62 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %1, i64 0, i32 1
  %63 = load float, ptr %62, align 8, !tbaa !186
  %64 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %25, i64 0, i32 1
  store float %63, ptr %64, align 8, !tbaa !186
  %65 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %1, i64 0, i32 2
  %66 = load float, ptr %65, align 4, !tbaa !188
  %67 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %25, i64 0, i32 2
  store float %66, ptr %67, align 4, !tbaa !188
  %68 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %1, i64 0, i32 3
  %69 = load float, ptr %68, align 8, !tbaa !189
  %70 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %25, i64 0, i32 3
  store float %69, ptr %70, align 8, !tbaa !189
  %71 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %1, i64 0, i32 4
  %72 = load i32, ptr %71, align 4, !tbaa !190
  %73 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %25, i64 0, i32 4
  store i32 %72, ptr %73, align 4, !tbaa !190
  %74 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %1, i64 0, i32 5
  %75 = load i32, ptr %74, align 8, !tbaa !191
  %76 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %25, i64 0, i32 5
  store i32 %75, ptr %76, align 8, !tbaa !191
  br label %163

77:                                               ; preds = %24
  %78 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %1, i64 0, i32 1
  %79 = load float, ptr %78, align 8, !tbaa !192
  %80 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %25, i64 0, i32 1
  store float %79, ptr %80, align 8, !tbaa !192
  %81 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %1, i64 0, i32 2
  %82 = load float, ptr %81, align 4, !tbaa !194
  %83 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %25, i64 0, i32 2
  store float %82, ptr %83, align 4, !tbaa !194
  %84 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %1, i64 0, i32 3
  %85 = load float, ptr %84, align 8, !tbaa !195
  %86 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %25, i64 0, i32 3
  store float %85, ptr %86, align 8, !tbaa !195
  %87 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %1, i64 0, i32 4
  %88 = load i32, ptr %87, align 4, !tbaa !196
  %89 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %25, i64 0, i32 4
  store i32 %88, ptr %89, align 4, !tbaa !196
  %90 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %1, i64 0, i32 5
  %91 = load i32, ptr %90, align 8, !tbaa !197
  %92 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %25, i64 0, i32 5
  store i32 %91, ptr %92, align 8, !tbaa !197
  br label %163

93:                                               ; preds = %24
  %94 = getelementptr inbounds %struct.LineStyleGeometryModifier_BackboneStretcher, ptr %1, i64 0, i32 1
  %95 = load float, ptr %94, align 8, !tbaa !198
  %96 = getelementptr inbounds %struct.LineStyleGeometryModifier_BackboneStretcher, ptr %25, i64 0, i32 1
  store float %95, ptr %96, align 8, !tbaa !198
  br label %163

97:                                               ; preds = %24
  %98 = getelementptr inbounds %struct.LineStyleGeometryModifier_TipRemover, ptr %1, i64 0, i32 1
  %99 = load float, ptr %98, align 8, !tbaa !200
  %100 = getelementptr inbounds %struct.LineStyleGeometryModifier_TipRemover, ptr %25, i64 0, i32 1
  store float %99, ptr %100, align 8, !tbaa !200
  br label %163

101:                                              ; preds = %24
  %102 = getelementptr inbounds %struct.LineStyleGeometryModifier_Polygonalization, ptr %1, i64 0, i32 1
  %103 = load float, ptr %102, align 8, !tbaa !202
  %104 = getelementptr inbounds %struct.LineStyleGeometryModifier_Polygonalization, ptr %25, i64 0, i32 1
  store float %103, ptr %104, align 8, !tbaa !202
  br label %163

105:                                              ; preds = %24
  %106 = getelementptr inbounds %struct.LineStyleGeometryModifier_GuidingLines, ptr %1, i64 0, i32 1
  %107 = load float, ptr %106, align 8, !tbaa !204
  %108 = getelementptr inbounds %struct.LineStyleGeometryModifier_GuidingLines, ptr %25, i64 0, i32 1
  store float %107, ptr %108, align 8, !tbaa !204
  br label %163

109:                                              ; preds = %24
  %110 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %1, i64 0, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !206
  %112 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %25, i64 0, i32 1
  store i32 %111, ptr %112, align 8, !tbaa !206
  %113 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %1, i64 0, i32 2
  %114 = load i32, ptr %113, align 4, !tbaa !208
  %115 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %25, i64 0, i32 2
  store i32 %114, ptr %115, align 4, !tbaa !208
  %116 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %1, i64 0, i32 3
  %117 = load float, ptr %116, align 8, !tbaa !209
  %118 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %25, i64 0, i32 3
  store float %117, ptr %118, align 8, !tbaa !209
  %119 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %1, i64 0, i32 4
  %120 = load i32, ptr %119, align 4, !tbaa !210
  %121 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %25, i64 0, i32 4
  store i32 %120, ptr %121, align 4, !tbaa !210
  %122 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %1, i64 0, i32 5
  %123 = load i32, ptr %122, align 8, !tbaa !211
  %124 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %25, i64 0, i32 5
  store i32 %123, ptr %124, align 8, !tbaa !211
  %125 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %1, i64 0, i32 6
  %126 = load i32, ptr %125, align 4, !tbaa !212
  %127 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %25, i64 0, i32 6
  store i32 %126, ptr %127, align 4, !tbaa !212
  br label %163

128:                                              ; preds = %24
  %129 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DOffset, ptr %1, i64 0, i32 1
  %130 = load float, ptr %129, align 8, !tbaa !213
  %131 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DOffset, ptr %25, i64 0, i32 1
  store float %130, ptr %131, align 8, !tbaa !213
  %132 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DOffset, ptr %1, i64 0, i32 2
  %133 = load float, ptr %132, align 4, !tbaa !215
  %134 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DOffset, ptr %25, i64 0, i32 2
  store float %133, ptr %134, align 4, !tbaa !215
  %135 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DOffset, ptr %1, i64 0, i32 3
  %136 = load float, ptr %135, align 8, !tbaa !216
  %137 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DOffset, ptr %25, i64 0, i32 3
  store float %136, ptr %137, align 8, !tbaa !216
  %138 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DOffset, ptr %1, i64 0, i32 4
  %139 = load float, ptr %138, align 4, !tbaa !217
  %140 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DOffset, ptr %25, i64 0, i32 4
  store float %139, ptr %140, align 4, !tbaa !217
  br label %163

141:                                              ; preds = %24
  %142 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %1, i64 0, i32 1
  %143 = load i32, ptr %142, align 8, !tbaa !218
  %144 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %25, i64 0, i32 1
  store i32 %143, ptr %144, align 8, !tbaa !218
  %145 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %1, i64 0, i32 2
  %146 = load float, ptr %145, align 4, !tbaa !220
  %147 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %25, i64 0, i32 2
  store float %146, ptr %147, align 4, !tbaa !220
  %148 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %1, i64 0, i32 3
  %149 = load float, ptr %148, align 8, !tbaa !221
  %150 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %25, i64 0, i32 3
  store float %149, ptr %150, align 8, !tbaa !221
  %151 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %1, i64 0, i32 4
  %152 = load float, ptr %151, align 4, !tbaa !222
  %153 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %25, i64 0, i32 4
  store float %152, ptr %153, align 4, !tbaa !222
  %154 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %1, i64 0, i32 5
  %155 = load float, ptr %154, align 8, !tbaa !223
  %156 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %25, i64 0, i32 5
  store float %155, ptr %156, align 8, !tbaa !223
  %157 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %1, i64 0, i32 6
  %158 = load float, ptr %157, align 4, !tbaa !224
  %159 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %25, i64 0, i32 6
  store float %158, ptr %159, align 4, !tbaa !224
  %160 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %1, i64 0, i32 7
  %161 = load float, ptr %160, align 8, !tbaa !225
  %162 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %25, i64 0, i32 7
  store float %161, ptr %162, align 8, !tbaa !225
  br label %163

163:                                              ; preds = %141, %128, %109, %105, %101, %97, %93, %77, %61, %48, %38, %34, %30
  %164 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 44
  tail call void @BLI_addtail(ptr noundef nonnull %164, ptr noundef %25) #8
  %165 = getelementptr inbounds %struct.LineStyleModifier, ptr %25, i64 0, i32 3
  %166 = load i32, ptr %165, align 8, !tbaa !65
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [19 x ptr], ptr @modifier_name, i64 0, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !64
  tail call void @BLI_uniquename(ptr noundef nonnull %164, ptr noundef %25, ptr noundef %169, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #8
  br label %170

170:                                              ; preds = %24, %163
  %171 = phi ptr [ %25, %163 ], [ null, %24 ]
  ret ptr %171
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_linestyle_active_from_scene(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 60
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 61
  %4 = load i16, ptr %3, align 8, !tbaa !226
  %5 = sext i16 %4 to i32
  %6 = tail call ptr @BLI_findlink(ptr noundef nonnull %2, i32 noundef %5) #8
  %7 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 13
  %8 = tail call ptr @BKE_freestyle_lineset_get_active(ptr noundef nonnull %7) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.FreestyleLineSet, ptr %8, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !245
  br label %13

13:                                               ; preds = %1, %10
  %14 = phi ptr [ %12, %10 ], [ null, %1 ]
  ret ptr %14
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_freestyle_lineset_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_linestyle_color_modifier_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %2, -1
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds [4 x i64], ptr @switch.table.BKE_linestyle_color_modifier_add, i64 0, i64 %7
  %9 = load i64, ptr %8, align 8
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = zext nneg i32 %2 to i64
  %13 = getelementptr inbounds [19 x ptr], ptr @modifier_name, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  br label %15

15:                                               ; preds = %11, %6
  %16 = phi ptr [ %1, %6 ], [ %14, %11 ]
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %18 = tail call ptr %17(i64 noundef %9, ptr noundef nonnull @.str.6) #8
  %19 = getelementptr inbounds %struct.LineStyleModifier, ptr %18, i64 0, i32 3
  store i32 %2, ptr %19, align 8, !tbaa !65
  %20 = getelementptr inbounds %struct.LineStyleModifier, ptr %18, i64 0, i32 2
  %21 = tail call ptr @BLI_strncpy(ptr noundef nonnull %20, ptr noundef %16, i64 noundef 64) #8
  %22 = getelementptr inbounds %struct.LineStyleModifier, ptr %18, i64 0, i32 4
  store float 1.000000e+00, ptr %22, align 4, !tbaa !67
  %23 = getelementptr inbounds %struct.LineStyleModifier, ptr %18, i64 0, i32 5
  store i32 3, ptr %23, align 8, !tbaa !68
  br label %24

24:                                               ; preds = %3, %15
  %25 = phi ptr [ %18, %15 ], [ null, %3 ]
  %26 = getelementptr inbounds %struct.LineStyleModifier, ptr %25, i64 0, i32 6
  store i32 0, ptr %26, align 4, !tbaa !107
  switch i32 %2, label %52 [
    i32 1, label %27
    i32 2, label %30
    i32 3, label %35
    i32 4, label %41
  ]

27:                                               ; preds = %24
  %28 = tail call ptr @add_colorband(i8 noundef zeroext 1) #8
  %29 = getelementptr inbounds %struct.LineStyleColorModifier_AlongStroke, ptr %25, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !108
  br label %45

30:                                               ; preds = %24
  %31 = tail call ptr @add_colorband(i8 noundef zeroext 1) #8
  %32 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %25, i64 0, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !110
  %33 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %25, i64 0, i32 2
  store float 0.000000e+00, ptr %33, align 8, !tbaa !112
  %34 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %25, i64 0, i32 3
  store float 1.000000e+04, ptr %34, align 4, !tbaa !113
  br label %45

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %25, i64 0, i32 1
  store ptr null, ptr %36, align 8, !tbaa !114
  %37 = tail call ptr @add_colorband(i8 noundef zeroext 1) #8
  %38 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %25, i64 0, i32 2
  store ptr %37, ptr %38, align 8, !tbaa !120
  %39 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %25, i64 0, i32 3
  store float 0.000000e+00, ptr %39, align 8, !tbaa !121
  %40 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %25, i64 0, i32 4
  store float 1.000000e+04, ptr %40, align 4, !tbaa !122
  br label %45

41:                                               ; preds = %24
  %42 = tail call ptr @add_colorband(i8 noundef zeroext 1) #8
  %43 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %25, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !123
  %44 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %25, i64 0, i32 3
  store i32 11, ptr %44, align 4, !tbaa !126
  br label %45

45:                                               ; preds = %41, %35, %30, %27
  %46 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  tail call void @BLI_addtail(ptr noundef nonnull %46, ptr noundef %25) #8
  %47 = getelementptr inbounds %struct.LineStyleModifier, ptr %25, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !65
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [19 x ptr], ptr @modifier_name, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !64
  tail call void @BLI_uniquename(ptr noundef nonnull %46, ptr noundef %25, ptr noundef %51, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #8
  br label %52

52:                                               ; preds = %24, %45
  %53 = phi ptr [ %25, %45 ], [ null, %24 ]
  ret ptr %53
}

declare ptr @add_colorband(i8 noundef zeroext) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_linestyle_alpha_modifier_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %2, -1
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds [4 x i64], ptr @switch.table.BKE_linestyle_alpha_modifier_add, i64 0, i64 %7
  %9 = load i64, ptr %8, align 8
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = zext nneg i32 %2 to i64
  %13 = getelementptr inbounds [19 x ptr], ptr @modifier_name, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  br label %15

15:                                               ; preds = %11, %6
  %16 = phi ptr [ %1, %6 ], [ %14, %11 ]
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %18 = tail call ptr %17(i64 noundef %9, ptr noundef nonnull @.str.6) #8
  %19 = getelementptr inbounds %struct.LineStyleModifier, ptr %18, i64 0, i32 3
  store i32 %2, ptr %19, align 8, !tbaa !65
  %20 = getelementptr inbounds %struct.LineStyleModifier, ptr %18, i64 0, i32 2
  %21 = tail call ptr @BLI_strncpy(ptr noundef nonnull %20, ptr noundef %16, i64 noundef 64) #8
  %22 = getelementptr inbounds %struct.LineStyleModifier, ptr %18, i64 0, i32 4
  store float 1.000000e+00, ptr %22, align 4, !tbaa !67
  %23 = getelementptr inbounds %struct.LineStyleModifier, ptr %18, i64 0, i32 5
  store i32 3, ptr %23, align 8, !tbaa !68
  br label %24

24:                                               ; preds = %3, %15
  %25 = phi ptr [ %18, %15 ], [ null, %3 ]
  %26 = getelementptr inbounds %struct.LineStyleModifier, ptr %25, i64 0, i32 6
  store i32 0, ptr %26, align 4, !tbaa !107
  switch i32 %2, label %52 [
    i32 1, label %27
    i32 2, label %30
    i32 3, label %35
    i32 4, label %41
  ]

27:                                               ; preds = %24
  %28 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #8
  %29 = getelementptr inbounds %struct.LineStyleAlphaModifier_AlongStroke, ptr %25, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !127
  br label %45

30:                                               ; preds = %24
  %31 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #8
  %32 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %25, i64 0, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !130
  %33 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %25, i64 0, i32 3
  store float 0.000000e+00, ptr %33, align 4, !tbaa !133
  %34 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %25, i64 0, i32 4
  store float 1.000000e+04, ptr %34, align 8, !tbaa !134
  br label %45

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %25, i64 0, i32 1
  store ptr null, ptr %36, align 8, !tbaa !135
  %37 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #8
  %38 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %25, i64 0, i32 2
  store ptr %37, ptr %38, align 8, !tbaa !137
  %39 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %25, i64 0, i32 4
  store float 0.000000e+00, ptr %39, align 4, !tbaa !139
  %40 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %25, i64 0, i32 5
  store float 1.000000e+04, ptr %40, align 8, !tbaa !140
  br label %45

41:                                               ; preds = %24
  %42 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #8
  %43 = getelementptr inbounds %struct.LineStyleAlphaModifier_Material, ptr %25, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !141
  %44 = getelementptr inbounds %struct.LineStyleAlphaModifier_Material, ptr %25, i64 0, i32 3
  store i32 15, ptr %44, align 4, !tbaa !144
  br label %45

45:                                               ; preds = %41, %35, %30, %27
  %46 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 42
  tail call void @BLI_addtail(ptr noundef nonnull %46, ptr noundef %25) #8
  %47 = getelementptr inbounds %struct.LineStyleModifier, ptr %25, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !65
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [19 x ptr], ptr @modifier_name, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !64
  tail call void @BLI_uniquename(ptr noundef nonnull %46, ptr noundef %25, ptr noundef %51, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #8
  br label %52

52:                                               ; preds = %24, %45
  %53 = phi ptr [ %25, %45 ], [ null, %24 ]
  ret ptr %53
}

declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare ptr @curvemapping_copy(ptr noundef) local_unnamed_addr #2

declare void @curvemapping_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_linestyle_thickness_modifier_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  switch i32 %2, label %23 [
    i32 1, label %7
    i32 2, label %4
    i32 3, label %5
    i32 4, label %7
    i32 13, label %6
  ]

4:                                                ; preds = %3
  br label %7

5:                                                ; preds = %3
  br label %7

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %6, %5, %4, %3, %3
  %8 = phi i64 [ 112, %6 ], [ 136, %5 ], [ 128, %4 ], [ 120, %3 ], [ 120, %3 ]
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds [19 x ptr], ptr @modifier_name, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi ptr [ %1, %7 ], [ %13, %10 ]
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %17 = tail call ptr %16(i64 noundef %8, ptr noundef nonnull @.str.6) #8
  %18 = getelementptr inbounds %struct.LineStyleModifier, ptr %17, i64 0, i32 3
  store i32 %2, ptr %18, align 8, !tbaa !65
  %19 = getelementptr inbounds %struct.LineStyleModifier, ptr %17, i64 0, i32 2
  %20 = tail call ptr @BLI_strncpy(ptr noundef nonnull %19, ptr noundef %15, i64 noundef 64) #8
  %21 = getelementptr inbounds %struct.LineStyleModifier, ptr %17, i64 0, i32 4
  store float 1.000000e+00, ptr %21, align 4, !tbaa !67
  %22 = getelementptr inbounds %struct.LineStyleModifier, ptr %17, i64 0, i32 5
  store i32 3, ptr %22, align 8, !tbaa !68
  br label %23

23:                                               ; preds = %3, %14
  %24 = phi ptr [ %17, %14 ], [ null, %3 ]
  %25 = getelementptr inbounds %struct.LineStyleModifier, ptr %24, i64 0, i32 6
  store i32 0, ptr %25, align 4, !tbaa !107
  switch i32 %2, label %63 [
    i32 1, label %26
    i32 2, label %31
    i32 3, label %38
    i32 4, label %46
    i32 13, label %52
  ]

26:                                               ; preds = %23
  %27 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #8
  %28 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %24, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !145
  %29 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %24, i64 0, i32 3
  store float 0.000000e+00, ptr %29, align 4, !tbaa !148
  %30 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %24, i64 0, i32 4
  store float 1.000000e+00, ptr %30, align 8, !tbaa !149
  br label %56

31:                                               ; preds = %23
  %32 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #8
  %33 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %24, i64 0, i32 1
  store ptr %32, ptr %33, align 8, !tbaa !150
  %34 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %24, i64 0, i32 3
  store float 0.000000e+00, ptr %34, align 4, !tbaa !153
  %35 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %24, i64 0, i32 4
  store float 1.000000e+03, ptr %35, align 8, !tbaa !154
  %36 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %24, i64 0, i32 5
  store float 0.000000e+00, ptr %36, align 4, !tbaa !155
  %37 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %24, i64 0, i32 6
  store float 1.000000e+00, ptr %37, align 8, !tbaa !156
  br label %56

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %24, i64 0, i32 1
  store ptr null, ptr %39, align 8, !tbaa !157
  %40 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #8
  %41 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %24, i64 0, i32 2
  store ptr %40, ptr %41, align 8, !tbaa !159
  %42 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %24, i64 0, i32 4
  store float 0.000000e+00, ptr %42, align 4, !tbaa !161
  %43 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %24, i64 0, i32 5
  store float 1.000000e+03, ptr %43, align 8, !tbaa !162
  %44 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %24, i64 0, i32 6
  store float 0.000000e+00, ptr %44, align 4, !tbaa !163
  %45 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %24, i64 0, i32 7
  store float 1.000000e+00, ptr %45, align 8, !tbaa !164
  br label %56

46:                                               ; preds = %23
  %47 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #8
  %48 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %24, i64 0, i32 1
  store ptr %47, ptr %48, align 8, !tbaa !165
  %49 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %24, i64 0, i32 5
  store i32 11, ptr %49, align 4, !tbaa !168
  %50 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %24, i64 0, i32 3
  store float 0.000000e+00, ptr %50, align 4, !tbaa !169
  %51 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %24, i64 0, i32 4
  store float 1.000000e+00, ptr %51, align 8, !tbaa !170
  br label %56

52:                                               ; preds = %23
  %53 = getelementptr inbounds %struct.LineStyleThicknessModifier_Calligraphy, ptr %24, i64 0, i32 1
  store float 1.000000e+00, ptr %53, align 8, !tbaa !171
  %54 = getelementptr inbounds %struct.LineStyleThicknessModifier_Calligraphy, ptr %24, i64 0, i32 2
  store float 1.000000e+01, ptr %54, align 4, !tbaa !173
  %55 = getelementptr inbounds %struct.LineStyleThicknessModifier_Calligraphy, ptr %24, i64 0, i32 3
  store float 0x3FF0C15240000000, ptr %55, align 8, !tbaa !174
  br label %56

56:                                               ; preds = %52, %46, %38, %31, %26
  %57 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 43
  tail call void @BLI_addtail(ptr noundef nonnull %57, ptr noundef %24) #8
  %58 = getelementptr inbounds %struct.LineStyleModifier, ptr %24, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !65
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [19 x ptr], ptr @modifier_name, i64 0, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !64
  tail call void @BLI_uniquename(ptr noundef nonnull %57, ptr noundef %24, ptr noundef %62, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #8
  br label %63

63:                                               ; preds = %23, %56
  %64 = phi ptr [ %24, %56 ], [ null, %23 ]
  ret ptr %64
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_linestyle_geometry_modifier_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %2, -5
  %5 = icmp ult i32 %4, 14
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = trunc i32 %4 to i16
  %8 = lshr i16 16127, %7
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %6
  %12 = zext nneg i32 %4 to i64
  %13 = getelementptr inbounds [14 x i64], ptr @switch.table.BKE_linestyle_geometry_modifier_add, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq ptr %1, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = zext nneg i32 %2 to i64
  %18 = getelementptr inbounds [19 x ptr], ptr @modifier_name, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi ptr [ %1, %11 ], [ %19, %16 ]
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %23 = tail call ptr %22(i64 noundef %14, ptr noundef nonnull @.str.6) #8
  %24 = getelementptr inbounds %struct.LineStyleModifier, ptr %23, i64 0, i32 3
  store i32 %2, ptr %24, align 8, !tbaa !65
  %25 = getelementptr inbounds %struct.LineStyleModifier, ptr %23, i64 0, i32 2
  %26 = tail call ptr @BLI_strncpy(ptr noundef nonnull %25, ptr noundef %21, i64 noundef 64) #8
  %27 = getelementptr inbounds %struct.LineStyleModifier, ptr %23, i64 0, i32 4
  store float 1.000000e+00, ptr %27, align 4, !tbaa !67
  %28 = getelementptr inbounds %struct.LineStyleModifier, ptr %23, i64 0, i32 5
  store i32 3, ptr %28, align 8, !tbaa !68
  br label %29

29:                                               ; preds = %6, %3, %20
  %30 = phi ptr [ %23, %20 ], [ null, %3 ], [ null, %6 ]
  switch i32 %2, label %86 [
    i32 5, label %31
    i32 6, label %33
    i32 7, label %35
    i32 8, label %39
    i32 9, label %44
    i32 10, label %49
    i32 11, label %54
    i32 12, label %56
    i32 14, label %58
    i32 15, label %60
    i32 16, label %62
    i32 17, label %69
    i32 18, label %71
  ]

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.LineStyleGeometryModifier_Sampling, ptr %30, i64 0, i32 1
  store float 1.000000e+01, ptr %32, align 8, !tbaa !69
  br label %79

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.LineStyleGeometryModifier_BezierCurve, ptr %30, i64 0, i32 1
  store float 1.000000e+01, ptr %34, align 8, !tbaa !175
  br label %79

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.LineStyleGeometryModifier_SinusDisplacement, ptr %30, i64 0, i32 1
  store float 2.000000e+01, ptr %36, align 8, !tbaa !177
  %37 = getelementptr inbounds %struct.LineStyleGeometryModifier_SinusDisplacement, ptr %30, i64 0, i32 2
  store float 5.000000e+00, ptr %37, align 4, !tbaa !179
  %38 = getelementptr inbounds %struct.LineStyleGeometryModifier_SinusDisplacement, ptr %30, i64 0, i32 3
  store float 0.000000e+00, ptr %38, align 8, !tbaa !180
  br label %79

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.LineStyleGeometryModifier_SpatialNoise, ptr %30, i64 0, i32 1
  store float 5.000000e+00, ptr %40, align 8, !tbaa !181
  %41 = getelementptr inbounds %struct.LineStyleGeometryModifier_SpatialNoise, ptr %30, i64 0, i32 2
  store float 2.000000e+01, ptr %41, align 4, !tbaa !183
  %42 = getelementptr inbounds %struct.LineStyleGeometryModifier_SpatialNoise, ptr %30, i64 0, i32 3
  store i32 4, ptr %42, align 8, !tbaa !184
  %43 = getelementptr inbounds %struct.LineStyleGeometryModifier_SpatialNoise, ptr %30, i64 0, i32 4
  store i32 3, ptr %43, align 4, !tbaa !185
  br label %79

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %30, i64 0, i32 1
  store float 1.000000e+01, ptr %45, align 8, !tbaa !186
  %46 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %30, i64 0, i32 2
  store float 1.000000e+01, ptr %46, align 4, !tbaa !188
  %47 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %30, i64 0, i32 4
  store i32 4, ptr %47, align 4, !tbaa !190
  %48 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %30, i64 0, i32 3
  store float 0x3FE921FB60000000, ptr %48, align 8, !tbaa !189
  br label %79

49:                                               ; preds = %29
  %50 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %30, i64 0, i32 1
  store float 1.000000e+01, ptr %50, align 8, !tbaa !192
  %51 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %30, i64 0, i32 2
  store float 1.000000e+01, ptr %51, align 4, !tbaa !194
  %52 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %30, i64 0, i32 4
  store i32 4, ptr %52, align 4, !tbaa !196
  %53 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %30, i64 0, i32 3
  store float 0x3FE921FB60000000, ptr %53, align 8, !tbaa !195
  br label %79

54:                                               ; preds = %29
  %55 = getelementptr inbounds %struct.LineStyleGeometryModifier_BackboneStretcher, ptr %30, i64 0, i32 1
  store float 1.000000e+01, ptr %55, align 8, !tbaa !198
  br label %79

56:                                               ; preds = %29
  %57 = getelementptr inbounds %struct.LineStyleGeometryModifier_TipRemover, ptr %30, i64 0, i32 1
  store float 1.000000e+01, ptr %57, align 8, !tbaa !200
  br label %79

58:                                               ; preds = %29
  %59 = getelementptr inbounds %struct.LineStyleGeometryModifier_Polygonalization, ptr %30, i64 0, i32 1
  store float 1.000000e+01, ptr %59, align 8, !tbaa !202
  br label %79

60:                                               ; preds = %29
  %61 = getelementptr inbounds %struct.LineStyleGeometryModifier_GuidingLines, ptr %30, i64 0, i32 1
  store float 0.000000e+00, ptr %61, align 8, !tbaa !204
  br label %79

62:                                               ; preds = %29
  %63 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %30, i64 0, i32 1
  store i32 1, ptr %63, align 8, !tbaa !206
  %64 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %30, i64 0, i32 2
  store i32 1, ptr %64, align 4, !tbaa !208
  %65 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %30, i64 0, i32 3
  store float 1.000000e+01, ptr %65, align 8, !tbaa !209
  %66 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %30, i64 0, i32 4
  store i32 3, ptr %66, align 4, !tbaa !210
  %67 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %30, i64 0, i32 5
  store i32 5, ptr %67, align 8, !tbaa !211
  %68 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %30, i64 0, i32 6
  store i32 5, ptr %68, align 4, !tbaa !212
  br label %79

69:                                               ; preds = %29
  %70 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DOffset, ptr %30, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %70, i8 0, i64 16, i1 false)
  br label %79

71:                                               ; preds = %29
  %72 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %30, i64 0, i32 1
  store i32 1, ptr %72, align 8, !tbaa !218
  %73 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %30, i64 0, i32 2
  store float 1.000000e+00, ptr %73, align 4, !tbaa !220
  %74 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %30, i64 0, i32 3
  store float 1.000000e+00, ptr %74, align 8, !tbaa !221
  %75 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %30, i64 0, i32 4
  store float 0.000000e+00, ptr %75, align 4, !tbaa !222
  %76 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %30, i64 0, i32 5
  store float 5.000000e-01, ptr %76, align 8, !tbaa !223
  %77 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %30, i64 0, i32 6
  store float 0.000000e+00, ptr %77, align 4, !tbaa !224
  %78 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %30, i64 0, i32 7
  store float 0.000000e+00, ptr %78, align 8, !tbaa !225
  br label %79

79:                                               ; preds = %71, %69, %62, %60, %58, %56, %54, %49, %44, %39, %35, %33, %31
  %80 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 44
  tail call void @BLI_addtail(ptr noundef nonnull %80, ptr noundef %30) #8
  %81 = getelementptr inbounds %struct.LineStyleModifier, ptr %30, i64 0, i32 3
  %82 = load i32, ptr %81, align 8, !tbaa !65
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [19 x ptr], ptr @modifier_name, i64 0, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !64
  tail call void @BLI_uniquename(ptr noundef nonnull %80, ptr noundef %30, ptr noundef %85, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #8
  br label %86

86:                                               ; preds = %29, %79
  %87 = phi ptr [ %30, %79 ], [ null, %29 ]
  ret ptr %87
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_linestyle_color_modifier_move(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %1) #8
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !247
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %4, ptr noundef %8, ptr noundef %1) #8
  br label %11

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !248
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef %10, ptr noundef nonnull %1) #8
  br label %11

11:                                               ; preds = %6, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_linestyle_alpha_modifier_move(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 42
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %1) #8
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !247
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %4, ptr noundef %8, ptr noundef %1) #8
  br label %11

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !248
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef %10, ptr noundef nonnull %1) #8
  br label %11

11:                                               ; preds = %6, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_linestyle_thickness_modifier_move(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 43
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %1) #8
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !247
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %4, ptr noundef %8, ptr noundef %1) #8
  br label %11

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !248
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef %10, ptr noundef nonnull %1) #8
  br label %11

11:                                               ; preds = %6, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_linestyle_geometry_modifier_move(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 44
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %1) #8
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !247
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %4, ptr noundef %8, ptr noundef %1) #8
  br label %11

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !248
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef %10, ptr noundef nonnull %1) #8
  br label %11

11:                                               ; preds = %6, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_linestyle_modifier_list_color_ramps(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2, %24
  %7 = phi ptr [ %25, %24 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.LineStyleModifier, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !65
  switch i32 %9, label %24 [
    i32 1, label %10
    i32 2, label %12
    i32 3, label %14
    i32 4, label %16
  ]

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.LineStyleColorModifier_AlongStroke, ptr %7, i64 0, i32 1
  br label %18

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %7, i64 0, i32 1
  br label %18

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %7, i64 0, i32 2
  br label %18

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %7, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %14, %12, %10
  %19 = phi ptr [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %22 = tail call ptr %21(i64 noundef 24, ptr noundef nonnull @.str.1) #8
  %23 = getelementptr inbounds %struct.LinkData, ptr %22, i64 0, i32 2
  store ptr %20, ptr %23, align 8, !tbaa !249
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %22) #8
  br label %24

24:                                               ; preds = %6, %18
  %25 = load ptr, ptr %7, align 8, !tbaa !64
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %6, !llvm.loop !251

27:                                               ; preds = %24, %2
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_linestyle_path_to_color_ramp(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %2, %27
  %8 = phi ptr [ %28, %27 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.LineStyleModifier, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !65
  switch i32 %10, label %27 [
    i32 1, label %11
    i32 2, label %13
    i32 3, label %15
    i32 4, label %17
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.LineStyleColorModifier_AlongStroke, ptr %8, i64 0, i32 1
  br label %19

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %8, i64 0, i32 1
  br label %19

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %8, i64 0, i32 2
  br label %19

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %8, i64 0, i32 1
  br label %19

19:                                               ; preds = %17, %15, %13, %11
  %20 = phi ptr [ %12, %11 ], [ %14, %13 ], [ %16, %15 ], [ %18, %17 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #8
  %24 = getelementptr inbounds %struct.LineStyleModifier, ptr %8, i64 0, i32 2
  %25 = call i64 @BLI_strescape(ptr noundef nonnull %3, ptr noundef nonnull %24, i64 noundef 128) #8
  %26 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #8
  br label %32

27:                                               ; preds = %7, %19
  %28 = load ptr, ptr %8, align 8, !tbaa !64
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %7, !llvm.loop !252

30:                                               ; preds = %27, %2
  %31 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi ptr [ %26, %23 ], [ null, %30 ]
  ret ptr %33
}

declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_linestyle_target_object_unlink(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2, %16
  %7 = phi ptr [ %17, %16 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.LineStyleModifier, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !65
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store ptr null, ptr %12, align 8, !tbaa !114
  br label %16

16:                                               ; preds = %6, %15, %11
  %17 = load ptr, ptr %7, align 8, !tbaa !64
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !llvm.loop !253

19:                                               ; preds = %16, %2
  %20 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 42
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %19, %33
  %24 = phi ptr [ %34, %33 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.LineStyleModifier, ptr %24, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !65
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !135
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store ptr null, ptr %29, align 8, !tbaa !135
  br label %33

33:                                               ; preds = %23, %32, %28
  %34 = load ptr, ptr %24, align 8, !tbaa !64
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %23, !llvm.loop !254

36:                                               ; preds = %33, %19
  %37 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 43
  %38 = load ptr, ptr %37, align 8, !tbaa !64
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %36, %50
  %41 = phi ptr [ %51, %50 ], [ %38, %36 ]
  %42 = getelementptr inbounds %struct.LineStyleModifier, ptr %41, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !65
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %41, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !157
  %48 = icmp eq ptr %47, %1
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store ptr null, ptr %46, align 8, !tbaa !157
  br label %50

50:                                               ; preds = %40, %49, %45
  %51 = load ptr, ptr %41, align 8, !tbaa !64
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %40, !llvm.loop !255

53:                                               ; preds = %50, %36
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_linestyle_use_textures(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = icmp eq i8 %1, 0
  %4 = icmp eq ptr %0, null
  br i1 %3, label %27, label %5

5:                                                ; preds = %2
  br i1 %4, label %38, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 30
  %8 = load i16, ptr %7, align 8, !tbaa !256
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 40
  %12 = load ptr, ptr %11, align 8, !tbaa !80
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.bNodeTree, ptr %12, i64 0, i32 7
  br label %16

16:                                               ; preds = %20, %14
  %17 = phi ptr [ %15, %14 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !257
  %23 = getelementptr inbounds %struct.bNodeType, ptr %22, i64 0, i32 14
  %24 = load i16, ptr %23, align 4, !tbaa !259
  %25 = icmp eq i16 %24, 13
  br i1 %25, label %26, label %16, !llvm.loop !262

26:                                               ; preds = %20
  br i1 %19, label %38, label %39

27:                                               ; preds = %2
  br i1 %4, label %38, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 9
  %30 = load i32, ptr %29, align 4, !tbaa !51
  %31 = and i32 %30, 8192
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 39
  %35 = load ptr, ptr %34, align 8, !tbaa !64
  %36 = icmp ne ptr %35, null
  %37 = zext i1 %36 to i8
  br label %39

38:                                               ; preds = %16, %26, %27, %28, %5, %6, %10
  br label %39

39:                                               ; preds = %26, %38, %33
  %40 = phi i8 [ 1, %26 ], [ 0, %38 ], [ %37, %33 ]
  ret i8 %40
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_linestyle_default_shader(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @ntreeAddTree(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #8
  %4 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %1, i64 0, i32 40
  store ptr %3, ptr %4, align 8, !tbaa !80
  %5 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %3, i32 noundef 191) #8
  %6 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 24
  store float 0.000000e+00, ptr %6, align 8, !tbaa !263
  %7 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 25
  store float 3.000000e+02, ptr %7, align 4, !tbaa !264
  %8 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 33
  store i16 0, ptr %8, align 8, !tbaa !265
  %9 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %3, i32 noundef 143) #8
  %10 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 24
  store float 2.000000e+02, ptr %10, align 8, !tbaa !263
  %11 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 25
  store float 3.000000e+02, ptr %11, align 4, !tbaa !264
  %12 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %3, i32 noundef 190) #8
  %13 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 24
  store float 4.000000e+02, ptr %13, align 8, !tbaa !263
  %14 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 25
  store float 3.000000e+02, ptr %14, align 4, !tbaa !264
  %15 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 33
  store i16 0, ptr %15, align 8, !tbaa !265
  %16 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 34
  store i16 0, ptr %16, align 2, !tbaa !266
  tail call void @nodeSetActive(ptr noundef %3, ptr noundef %9) #8
  %17 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 18
  %18 = tail call ptr @BLI_findlink(ptr noundef nonnull %17, i32 noundef 0) #8
  %19 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 17
  %20 = tail call ptr @BLI_findlink(ptr noundef nonnull %19, i32 noundef 0) #8
  %21 = tail call ptr @nodeAddLink(ptr noundef %3, ptr noundef %5, ptr noundef %18, ptr noundef %9, ptr noundef %20) #8
  %22 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 18
  %23 = tail call ptr @BLI_findlink(ptr noundef nonnull %22, i32 noundef 0) #8
  %24 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 17
  %25 = tail call ptr @BLI_findlink(ptr noundef nonnull %24, i32 noundef 0) #8
  %26 = tail call ptr @nodeAddLink(ptr noundef %3, ptr noundef %9, ptr noundef %23, ptr noundef %12, ptr noundef %25) #8
  %27 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  tail call void @ntreeUpdateTree(ptr noundef %27, ptr noundef %3) #8
  ret void
}

declare ptr @ntreeAddTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @nodeAddStaticNode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @nodeSetActive(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @nodeAddLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ntreeUpdateTree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!34 = !{!35, !41, i64 244}
!35 = !{!"FreestyleLineStyle", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !41, i64 148, !42, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !41, i64 192, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !41, i64 208, !41, i64 212, !42, i64 216, !40, i64 220, !40, i64 222, !40, i64 224, !38, i64 226, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !41, i64 244, !38, i64 248, !37, i64 392, !43, i64 400, !43, i64 416, !43, i64 432, !43, i64 448}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"float", !38, i64 0}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!35, !42, i64 136}
!45 = !{!35, !42, i64 132}
!46 = !{!35, !42, i64 128}
!47 = !{!35, !42, i64 140}
!48 = !{!35, !42, i64 144}
!49 = !{!35, !41, i64 148}
!50 = !{!35, !42, i64 152}
!51 = !{!35, !41, i64 156}
!52 = !{!35, !41, i64 164}
!53 = !{!35, !41, i64 168}
!54 = !{!35, !42, i64 176}
!55 = !{!35, !42, i64 180}
!56 = !{!35, !42, i64 184}
!57 = !{!35, !42, i64 188}
!58 = !{!35, !42, i64 172}
!59 = !{!35, !41, i64 192}
!60 = !{!35, !41, i64 208}
!61 = !{!35, !41, i64 212}
!62 = !{!35, !42, i64 216}
!63 = !{!35, !40, i64 222}
!64 = !{!37, !37, i64 0}
!65 = !{!66, !41, i64 80}
!66 = !{!"LineStyleModifier", !37, i64 0, !37, i64 8, !38, i64 16, !41, i64 80, !42, i64 84, !41, i64 88, !41, i64 92}
!67 = !{!66, !42, i64 84}
!68 = !{!66, !41, i64 88}
!69 = !{!70, !42, i64 96}
!70 = !{!"LineStyleGeometryModifier_Sampling", !66, i64 0, !42, i64 96, !41, i64 100}
!71 = !{!35, !41, i64 160}
!72 = !{!73, !37, i64 16}
!73 = !{!"MTex", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !38, i64 89, !38, i64 90, !38, i64 91, !38, i64 92, !38, i64 104, !42, i64 116, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !40, i64 128, !40, i64 130, !38, i64 132, !38, i64 133, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252, !42, i64 256, !42, i64 260, !42, i64 264, !42, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308}
!74 = !{!75, !41, i64 100}
!75 = !{!"Tex", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !41, i64 252, !41, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !76, i64 296, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !38, i64 408, !38, i64 409}
!76 = !{!"ImageUser", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!77 = distinct !{!77, !78, !79}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!35, !37, i64 392}
!81 = !{!35, !37, i64 400}
!82 = !{!35, !37, i64 416}
!83 = distinct !{!83, !78, !79}
!84 = !{!35, !37, i64 432}
!85 = !{i32 -1, i32 1}
!86 = distinct !{!86, !78, !79}
!87 = !{!35, !37, i64 448}
!88 = distinct !{!88, !78, !79}
!89 = distinct !{!89, !78, !79}
!90 = distinct !{!90, !78, !79}
!91 = !{!35, !40, i64 196}
!92 = !{!35, !40, i64 198}
!93 = !{!35, !40, i64 200}
!94 = !{!35, !40, i64 202}
!95 = !{!35, !40, i64 204}
!96 = !{!35, !40, i64 206}
!97 = !{!35, !40, i64 232}
!98 = !{!35, !40, i64 234}
!99 = !{!35, !40, i64 236}
!100 = !{!35, !40, i64 238}
!101 = !{!35, !40, i64 240}
!102 = !{!35, !40, i64 242}
!103 = distinct !{!103, !78, !79}
!104 = distinct !{!104, !78, !79}
!105 = distinct !{!105, !78, !79}
!106 = distinct !{!106, !78, !79}
!107 = !{!66, !41, i64 92}
!108 = !{!109, !37, i64 96}
!109 = !{!"LineStyleColorModifier_AlongStroke", !66, i64 0, !37, i64 96}
!110 = !{!111, !37, i64 96}
!111 = !{!"LineStyleColorModifier_DistanceFromCamera", !66, i64 0, !37, i64 96, !42, i64 104, !42, i64 108}
!112 = !{!111, !42, i64 104}
!113 = !{!111, !42, i64 108}
!114 = !{!115, !37, i64 96}
!115 = !{!"LineStyleColorModifier_DistanceFromObject", !66, i64 0, !37, i64 96, !37, i64 104, !42, i64 112, !42, i64 116}
!116 = !{!117, !41, i64 100}
!117 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !118, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !42, i64 616, !42, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !42, i64 1048, !42, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !42, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !42, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !119, i64 1304, !119, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!118 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!119 = !{!"long", !38, i64 0}
!120 = !{!115, !37, i64 104}
!121 = !{!115, !42, i64 112}
!122 = !{!115, !42, i64 116}
!123 = !{!124, !37, i64 96}
!124 = !{!"LineStyleColorModifier_Material", !66, i64 0, !37, i64 96, !41, i64 104, !41, i64 108}
!125 = !{!124, !41, i64 104}
!126 = !{!124, !41, i64 108}
!127 = !{!128, !37, i64 96}
!128 = !{!"LineStyleAlphaModifier_AlongStroke", !66, i64 0, !37, i64 96, !41, i64 104, !41, i64 108}
!129 = !{!128, !41, i64 104}
!130 = !{!131, !37, i64 96}
!131 = !{!"LineStyleAlphaModifier_DistanceFromCamera", !66, i64 0, !37, i64 96, !41, i64 104, !42, i64 108, !42, i64 112, !41, i64 116}
!132 = !{!131, !41, i64 104}
!133 = !{!131, !42, i64 108}
!134 = !{!131, !42, i64 112}
!135 = !{!136, !37, i64 96}
!136 = !{!"LineStyleAlphaModifier_DistanceFromObject", !66, i64 0, !37, i64 96, !37, i64 104, !41, i64 112, !42, i64 116, !42, i64 120, !41, i64 124}
!137 = !{!136, !37, i64 104}
!138 = !{!136, !41, i64 112}
!139 = !{!136, !42, i64 116}
!140 = !{!136, !42, i64 120}
!141 = !{!142, !37, i64 96}
!142 = !{!"LineStyleAlphaModifier_Material", !66, i64 0, !37, i64 96, !41, i64 104, !41, i64 108}
!143 = !{!142, !41, i64 104}
!144 = !{!142, !41, i64 108}
!145 = !{!146, !37, i64 96}
!146 = !{!"LineStyleThicknessModifier_AlongStroke", !66, i64 0, !37, i64 96, !41, i64 104, !42, i64 108, !42, i64 112, !41, i64 116}
!147 = !{!146, !41, i64 104}
!148 = !{!146, !42, i64 108}
!149 = !{!146, !42, i64 112}
!150 = !{!151, !37, i64 96}
!151 = !{!"LineStyleThicknessModifier_DistanceFromCamera", !66, i64 0, !37, i64 96, !41, i64 104, !42, i64 108, !42, i64 112, !42, i64 116, !42, i64 120, !41, i64 124}
!152 = !{!151, !41, i64 104}
!153 = !{!151, !42, i64 108}
!154 = !{!151, !42, i64 112}
!155 = !{!151, !42, i64 116}
!156 = !{!151, !42, i64 120}
!157 = !{!158, !37, i64 96}
!158 = !{!"LineStyleThicknessModifier_DistanceFromObject", !66, i64 0, !37, i64 96, !37, i64 104, !41, i64 112, !42, i64 116, !42, i64 120, !42, i64 124, !42, i64 128, !41, i64 132}
!159 = !{!158, !37, i64 104}
!160 = !{!158, !41, i64 112}
!161 = !{!158, !42, i64 116}
!162 = !{!158, !42, i64 120}
!163 = !{!158, !42, i64 124}
!164 = !{!158, !42, i64 128}
!165 = !{!166, !37, i64 96}
!166 = !{!"LineStyleThicknessModifier_Material", !66, i64 0, !37, i64 96, !41, i64 104, !42, i64 108, !42, i64 112, !41, i64 116}
!167 = !{!166, !41, i64 104}
!168 = !{!166, !41, i64 116}
!169 = !{!166, !42, i64 108}
!170 = !{!166, !42, i64 112}
!171 = !{!172, !42, i64 96}
!172 = !{!"LineStyleThicknessModifier_Calligraphy", !66, i64 0, !42, i64 96, !42, i64 100, !42, i64 104, !41, i64 108}
!173 = !{!172, !42, i64 100}
!174 = !{!172, !42, i64 104}
!175 = !{!176, !42, i64 96}
!176 = !{!"LineStyleGeometryModifier_BezierCurve", !66, i64 0, !42, i64 96, !41, i64 100}
!177 = !{!178, !42, i64 96}
!178 = !{!"LineStyleGeometryModifier_SinusDisplacement", !66, i64 0, !42, i64 96, !42, i64 100, !42, i64 104, !41, i64 108}
!179 = !{!178, !42, i64 100}
!180 = !{!178, !42, i64 104}
!181 = !{!182, !42, i64 96}
!182 = !{!"LineStyleGeometryModifier_SpatialNoise", !66, i64 0, !42, i64 96, !42, i64 100, !41, i64 104, !41, i64 108}
!183 = !{!182, !42, i64 100}
!184 = !{!182, !41, i64 104}
!185 = !{!182, !41, i64 108}
!186 = !{!187, !42, i64 96}
!187 = !{!"LineStyleGeometryModifier_PerlinNoise1D", !66, i64 0, !42, i64 96, !42, i64 100, !42, i64 104, !41, i64 108, !41, i64 112, !41, i64 116}
!188 = !{!187, !42, i64 100}
!189 = !{!187, !42, i64 104}
!190 = !{!187, !41, i64 108}
!191 = !{!187, !41, i64 112}
!192 = !{!193, !42, i64 96}
!193 = !{!"LineStyleGeometryModifier_PerlinNoise2D", !66, i64 0, !42, i64 96, !42, i64 100, !42, i64 104, !41, i64 108, !41, i64 112, !41, i64 116}
!194 = !{!193, !42, i64 100}
!195 = !{!193, !42, i64 104}
!196 = !{!193, !41, i64 108}
!197 = !{!193, !41, i64 112}
!198 = !{!199, !42, i64 96}
!199 = !{!"LineStyleGeometryModifier_BackboneStretcher", !66, i64 0, !42, i64 96, !41, i64 100}
!200 = !{!201, !42, i64 96}
!201 = !{!"LineStyleGeometryModifier_TipRemover", !66, i64 0, !42, i64 96, !41, i64 100}
!202 = !{!203, !42, i64 96}
!203 = !{!"LineStyleGeometryModifier_Polygonalization", !66, i64 0, !42, i64 96, !41, i64 100}
!204 = !{!205, !42, i64 96}
!205 = !{!"LineStyleGeometryModifier_GuidingLines", !66, i64 0, !42, i64 96, !41, i64 100}
!206 = !{!207, !41, i64 96}
!207 = !{!"LineStyleGeometryModifier_Blueprint", !66, i64 0, !41, i64 96, !41, i64 100, !42, i64 104, !41, i64 108, !41, i64 112, !41, i64 116}
!208 = !{!207, !41, i64 100}
!209 = !{!207, !42, i64 104}
!210 = !{!207, !41, i64 108}
!211 = !{!207, !41, i64 112}
!212 = !{!207, !41, i64 116}
!213 = !{!214, !42, i64 96}
!214 = !{!"LineStyleGeometryModifier_2DOffset", !66, i64 0, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108}
!215 = !{!214, !42, i64 100}
!216 = !{!214, !42, i64 104}
!217 = !{!214, !42, i64 108}
!218 = !{!219, !41, i64 96}
!219 = !{!"LineStyleGeometryModifier_2DTransform", !66, i64 0, !41, i64 96, !42, i64 100, !42, i64 104, !42, i64 108, !42, i64 112, !42, i64 116, !42, i64 120, !41, i64 124}
!220 = !{!219, !42, i64 100}
!221 = !{!219, !42, i64 104}
!222 = !{!219, !42, i64 108}
!223 = !{!219, !42, i64 112}
!224 = !{!219, !42, i64 116}
!225 = !{!219, !42, i64 120}
!226 = !{!227, !40, i64 888}
!227 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !228, i64 280, !237, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !238, i64 4400, !239, i64 4416, !242, i64 4600, !37, i64 4608, !243, i64 4616, !37, i64 4640, !119, i64 4648, !119, i64 4656, !230, i64 4664, !231, i64 4824, !244, i64 4888, !37, i64 4952}
!228 = !{!"RenderData", !229, i64 0, !37, i64 248, !37, i64 256, !232, i64 264, !233, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !42, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !234, i64 544, !234, i64 560, !235, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !41, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !42, i64 660, !42, i64 664, !40, i64 668, !40, i64 670, !42, i64 672, !42, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !42, i64 2528, !42, i64 2532, !40, i64 2536, !40, i64 2538, !42, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !42, i64 2560, !42, i64 2564, !37, i64 2568, !41, i64 2576, !42, i64 2580, !38, i64 2584, !236, i64 2616, !41, i64 3976, !41, i64 3980}
!229 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !42, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !230, i64 24, !231, i64 184}
!230 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !42, i64 136, !42, i64 140, !37, i64 144, !37, i64 152}
!231 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!232 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!233 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !42, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!234 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!235 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!236 = !{!"BakeData", !229, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !42, i64 1280, !42, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!237 = !{!"AudioData", !41, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !42, i64 24, !42, i64 28}
!238 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!239 = !{!"GameData", !238, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !240, i64 40, !40, i64 64, !40, i64 66, !42, i64 68, !241, i64 72, !42, i64 128, !42, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!240 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !42, i64 8, !42, i64 12, !37, i64 16}
!241 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !41, i64 40, !42, i64 44, !42, i64 48, !40, i64 52, !40, i64 54}
!242 = !{!"UnitSettings", !42, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!243 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!244 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!245 = !{!246, !37, i64 120}
!246 = !{!"FreestyleLineSet", !37, i64 0, !37, i64 8, !38, i64 16, !41, i64 80, !41, i64 84, !40, i64 88, !40, i64 90, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112, !37, i64 120}
!247 = !{!66, !37, i64 8}
!248 = !{!66, !37, i64 0}
!249 = !{!250, !37, i64 16}
!250 = !{!"LinkData", !37, i64 0, !37, i64 8, !37, i64 16}
!251 = distinct !{!251, !78, !79}
!252 = distinct !{!252, !78, !79}
!253 = distinct !{!253, !78, !79}
!254 = distinct !{!254, !78, !79}
!255 = distinct !{!255, !78, !79}
!256 = !{!35, !40, i64 224}
!257 = !{!258, !37, i64 32}
!258 = !{!"bNode", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 104, !41, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !38, i64 188, !43, i64 200, !43, i64 216, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !43, i64 264, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !41, i64 308, !38, i64 312, !40, i64 376, !40, i64 378, !42, i64 380, !42, i64 384, !40, i64 388, !40, i64 390, !37, i64 392, !234, i64 400, !234, i64 416, !234, i64 432, !40, i64 448, !40, i64 450, !41, i64 452, !37, i64 456}
!259 = !{!260, !40, i64 436}
!260 = !{!"bNodeType", !37, i64 0, !37, i64 8, !40, i64 16, !38, i64 18, !41, i64 84, !38, i64 88, !38, i64 152, !41, i64 408, !42, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !42, i64 432, !40, i64 436, !40, i64 438, !40, i64 440, !37, i64 448, !37, i64 456, !38, i64 464, !37, i64 528, !37, i64 536, !37, i64 544, !37, i64 552, !37, i64 560, !37, i64 568, !37, i64 576, !37, i64 584, !37, i64 592, !37, i64 600, !37, i64 608, !37, i64 616, !37, i64 624, !37, i64 632, !37, i64 640, !37, i64 648, !37, i64 656, !37, i64 664, !37, i64 672, !37, i64 680, !37, i64 688, !37, i64 696, !37, i64 704, !37, i64 712, !261, i64 720}
!261 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!262 = distinct !{!262, !78, !79}
!263 = !{!258, !42, i64 280}
!264 = !{!258, !42, i64 284}
!265 = !{!258, !40, i64 376}
!266 = !{!258, !40, i64 378}
