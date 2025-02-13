; ModuleID = 'blender/source/blender/blenkernel/intern/linestyle.c'
source_filename = "blender/source/blender/blenkernel/intern/linestyle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.LineStyleModifier = type { ptr, ptr, [64 x i8], i32, float, i32, i32 }
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
%struct.LineStyleGeometryModifier_Sampling = type { %struct.LineStyleModifier, float, i32 }
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
@switch.table.alloc_color_modifier = private unnamed_addr constant [4 x i64] [i64 104, i64 112, i64 120, i64 112], align 8
@switch.table.alloc_alpha_modifier = private unnamed_addr constant [4 x i64] [i64 112, i64 120, i64 128, i64 112], align 8
@switch.table.alloc_geometry_modifier = private unnamed_addr constant [14 x i64] [i64 104, i64 104, i64 112, i64 112, i64 120, i64 120, i64 104, i64 104, i64 104, i64 104, i64 104, i64 120, i64 112, i64 128], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_linestyle_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  %4 = load ptr, ptr @G, align 8
  %5 = select i1 %3, ptr %4, ptr %1
  %6 = tail call ptr @BKE_libblock_alloc(ptr noundef %5, i16 noundef signext 21324, ptr noundef %0) #9
  tail call fastcc void @default_linestyle_settings(ptr noundef %6) #10
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @default_linestyle_settings(ptr noundef %0) unnamed_addr #0 !PGOFuncName !34 {
  %2 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 38
  store i32 1, ptr %2, align 4, !tbaa !35
  %3 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 2
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 6
  store float 3.000000e+00, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 7
  store i32 1, ptr %5, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 8
  store float 5.000000e-01, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 9
  store i32 10242, ptr %7, align 4, !tbaa !49
  %8 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 11
  store i32 1, ptr %8, align 4, !tbaa !50
  %9 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 12
  store i32 3, ptr %9, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 17
  store float 1.000000e+04, ptr %10, align 4, !tbaa !52
  %11 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 13
  store <4 x float> <float 1.000000e+02, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %11, align 4, !tbaa !45
  %12 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 18
  store i32 10, ptr %12, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 25
  store i32 1, ptr %13, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 26
  store i32 1, ptr %14, align 4, !tbaa !55
  %15 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 27
  store float 1.000000e+00, ptr %15, align 8, !tbaa !56
  %16 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 29
  store i16 0, ptr %16, align 2, !tbaa !57
  %17 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %17) #10
  %18 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 42
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %18) #10
  %19 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 43
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %19) #10
  %20 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 44
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %20) #10
  %21 = tail call ptr @BKE_linestyle_geometry_modifier_add(ptr noundef %0, ptr noundef null, i32 noundef 5) #10
  %22 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 10
  store i32 1, ptr %22, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_linestyle_free(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %17
  %3 = phi i64 [ 0, %1 ], [ %18, %17 ]
  %4 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 39, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.MTex, ptr %5, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !62
  %14 = add nsw i32 %13, -1
  store i32 %14, ptr %12, align 4, !tbaa !62
  br label %15

15:                                               ; preds = %7, %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %16(ptr noundef nonnull %5) #9
  br label %17

17:                                               ; preds = %2, %15
  %18 = add nuw nsw i64 %3, 1
  %19 = icmp eq i64 %18, 18
  br i1 %19, label %20, label %2, !llvm.loop !65

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 40
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  tail call void @ntreeFreeTree(ptr noundef nonnull %22) #9
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %26 = load ptr, ptr %21, align 8, !tbaa !67
  tail call void %25(ptr noundef %26) #9
  br label %27

27:                                               ; preds = %24, %20
  tail call void @BKE_free_animdata(ptr noundef nonnull %0) #9
  %28 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  %29 = load ptr, ptr %28, align 8, !tbaa !68
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %35, %27
  %32 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 42
  %33 = load ptr, ptr %32, align 8, !tbaa !69
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %44

35:                                               ; preds = %27, %35
  %36 = phi ptr [ %38, %35 ], [ %29, %27 ]
  %37 = tail call i32 @BKE_linestyle_color_modifier_remove(ptr noundef nonnull %0, ptr noundef nonnull %36) #10, !range !70
  %38 = load ptr, ptr %28, align 8, !tbaa !68
  %39 = icmp eq ptr %38, null
  br i1 %39, label %31, label %35, !llvm.loop !71

40:                                               ; preds = %44, %31
  %41 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 43
  %42 = load ptr, ptr %41, align 8, !tbaa !72
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %53

44:                                               ; preds = %31, %44
  %45 = phi ptr [ %47, %44 ], [ %33, %31 ]
  %46 = tail call i32 @BKE_linestyle_alpha_modifier_remove(ptr noundef nonnull %0, ptr noundef nonnull %45) #10, !range !70
  %47 = load ptr, ptr %32, align 8, !tbaa !69
  %48 = icmp eq ptr %47, null
  br i1 %48, label %40, label %44, !llvm.loop !73

49:                                               ; preds = %53, %40
  %50 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 44
  %51 = load ptr, ptr %50, align 8, !tbaa !74
  %52 = icmp eq ptr %51, null
  br i1 %52, label %63, label %58

53:                                               ; preds = %40, %53
  %54 = phi ptr [ %56, %53 ], [ %42, %40 ]
  %55 = tail call i32 @BKE_linestyle_thickness_modifier_remove(ptr noundef nonnull %0, ptr noundef nonnull %54) #10, !range !70
  %56 = load ptr, ptr %41, align 8, !tbaa !72
  %57 = icmp eq ptr %56, null
  br i1 %57, label %49, label %53, !llvm.loop !75

58:                                               ; preds = %49, %58
  %59 = phi ptr [ %61, %58 ], [ %51, %49 ]
  %60 = tail call i32 @BKE_linestyle_geometry_modifier_remove(ptr noundef nonnull %0, ptr noundef nonnull %59) #10, !range !70
  %61 = load ptr, ptr %50, align 8, !tbaa !74
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %58, !llvm.loop !76

63:                                               ; preds = %58, %49
  ret void
}

; Function Attrs: optsize
declare void @ntreeFreeTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BKE_linestyle_color_modifier_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #9
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !77
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
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  %20 = load ptr, ptr %18, align 8, !tbaa !59
  tail call void %19(ptr noundef %20) #9
  br label %21

21:                                               ; preds = %17, %6
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef nonnull %1) #9
  br label %22

22:                                               ; preds = %2, %21
  %23 = phi i32 [ 0, %21 ], [ -1, %2 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BKE_linestyle_alpha_modifier_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 42
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #9
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !77
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
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  tail call void @curvemapping_free(ptr noundef %19) #9
  br label %20

20:                                               ; preds = %17, %6
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef nonnull %1) #9
  br label %21

21:                                               ; preds = %2, %20
  %22 = phi i32 [ 0, %20 ], [ -1, %2 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BKE_linestyle_thickness_modifier_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 43
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #9
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !77
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
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  tail call void @curvemapping_free(ptr noundef %19) #9
  br label %20

20:                                               ; preds = %17, %6
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef nonnull %1) #9
  br label %21

21:                                               ; preds = %2, %20
  %22 = phi i32 [ 0, %20 ], [ -1, %2 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BKE_linestyle_geometry_modifier_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 44
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #9
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef %1) #9
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i32 [ 0, %6 ], [ -1, %2 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_linestyle_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %3 = tail call ptr @BKE_linestyle_new(ptr noundef nonnull %2, ptr noundef null) #10
  tail call void @BKE_linestyle_free(ptr noundef %3) #10
  br label %4

4:                                                ; preds = %1, %17
  %5 = phi i64 [ 0, %1 ], [ %18, %17 ]
  %6 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 39, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %11 = tail call ptr %10(i64 noundef 312, ptr noundef nonnull @.str) #9
  %12 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3, i64 0, i32 39, i64 %5
  store ptr %11, ptr %12, align 8, !tbaa !59
  %13 = load ptr, ptr %6, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %11, ptr noundef nonnull align 8 dereferenceable(312) %13, i64 312, i1 false)
  %14 = load ptr, ptr %12, align 8, !tbaa !59
  %15 = getelementptr inbounds %struct.MTex, ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  tail call void @id_us_plus(ptr noundef %16) #9
  br label %17

17:                                               ; preds = %4, %9
  %18 = add nuw nsw i64 %5, 1
  %19 = icmp eq i64 %18, 18
  br i1 %19, label %20, label %4, !llvm.loop !79

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 40
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @ntreeCopyTree(ptr noundef nonnull %22) #9
  %26 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3, i64 0, i32 40
  store ptr %25, ptr %26, align 8, !tbaa !67
  br label %27

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 2
  %29 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3, i64 0, i32 2
  %30 = load <4 x float>, ptr %28, align 8, !tbaa !45
  store <4 x float> %30, ptr %29, align 8, !tbaa !45
  %31 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 6
  %32 = load float, ptr %31, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3, i64 0, i32 6
  store float %32, ptr %33, align 8, !tbaa !46
  %34 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 7
  %35 = load i32, ptr %34, align 4, !tbaa !47
  %36 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3, i64 0, i32 7
  store i32 %35, ptr %36, align 4, !tbaa !47
  %37 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 8
  %38 = load float, ptr %37, align 8, !tbaa !48
  %39 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3, i64 0, i32 8
  store float %38, ptr %39, align 8, !tbaa !48
  %40 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 9
  %41 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3, i64 0, i32 9
  %42 = load <4 x i32>, ptr %40, align 4, !tbaa !80
  store <4 x i32> %42, ptr %41, align 4, !tbaa !80
  %43 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 13
  %44 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3, i64 0, i32 13
  %45 = load <4 x float>, ptr %43, align 4, !tbaa !45
  store <4 x float> %45, ptr %44, align 4, !tbaa !45
  %46 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 17
  %47 = load float, ptr %46, align 4, !tbaa !52
  %48 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3, i64 0, i32 17
  store float %47, ptr %48, align 4, !tbaa !52
  %49 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 18
  %50 = load i32, ptr %49, align 8, !tbaa !53
  %51 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3, i64 0, i32 18
  store i32 %50, ptr %51, align 8, !tbaa !53
  %52 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 19
  %53 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3, i64 0, i32 19
  %54 = load <4 x i16>, ptr %52, align 4, !tbaa !81
  store <4 x i16> %54, ptr %53, align 4, !tbaa !81
  %55 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 23
  %56 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3, i64 0, i32 23
  %57 = load <2 x i16>, ptr %55, align 4, !tbaa !81
  store <2 x i16> %57, ptr %56, align 4, !tbaa !81
  %58 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 32
  %59 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3, i64 0, i32 32
  %60 = load <4 x i16>, ptr %58, align 8, !tbaa !81
  store <4 x i16> %60, ptr %59, align 8, !tbaa !81
  %61 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 36
  %62 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3, i64 0, i32 36
  %63 = load <2 x i16>, ptr %61, align 8, !tbaa !81
  store <2 x i16> %63, ptr %62, align 8, !tbaa !81
  %64 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 38
  %65 = load i32, ptr %64, align 4, !tbaa !35
  %66 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3, i64 0, i32 38
  store i32 %65, ptr %66, align 4, !tbaa !35
  %67 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 27
  %68 = load float, ptr %67, align 8, !tbaa !56
  %69 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3, i64 0, i32 27
  store float %68, ptr %69, align 8, !tbaa !56
  %70 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 29
  %71 = load i16, ptr %70, align 2, !tbaa !57
  %72 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3, i64 0, i32 29
  store i16 %71, ptr %72, align 2, !tbaa !57
  %73 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  %74 = load ptr, ptr %73, align 8, !tbaa !59
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %27, %76
  %77 = phi ptr [ %79, %76 ], [ %74, %27 ]
  %78 = tail call ptr @BKE_linestyle_color_modifier_copy(ptr noundef %3, ptr noundef nonnull %77) #10
  %79 = load ptr, ptr %77, align 8, !tbaa !59
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %76, !llvm.loop !82

81:                                               ; preds = %76, %27
  %82 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 42
  %83 = load ptr, ptr %82, align 8, !tbaa !59
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %81, %85
  %86 = phi ptr [ %88, %85 ], [ %83, %81 ]
  %87 = tail call ptr @BKE_linestyle_alpha_modifier_copy(ptr noundef %3, ptr noundef nonnull %86) #10
  %88 = load ptr, ptr %86, align 8, !tbaa !59
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %85, !llvm.loop !83

90:                                               ; preds = %85, %81
  %91 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 43
  %92 = load ptr, ptr %91, align 8, !tbaa !59
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %90, %94
  %95 = phi ptr [ %97, %94 ], [ %92, %90 ]
  %96 = tail call ptr @BKE_linestyle_thickness_modifier_copy(ptr noundef %3, ptr noundef nonnull %95) #10
  %97 = load ptr, ptr %95, align 8, !tbaa !59
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %94, !llvm.loop !84

99:                                               ; preds = %94, %90
  %100 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 44
  %101 = load ptr, ptr %100, align 8, !tbaa !59
  %102 = icmp eq ptr %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %99, %103
  %104 = phi ptr [ %106, %103 ], [ %101, %99 ]
  %105 = tail call ptr @BKE_linestyle_geometry_modifier_copy(ptr noundef %3, ptr noundef nonnull %104) #10
  %106 = load ptr, ptr %104, align 8, !tbaa !59
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %103, !llvm.loop !85

108:                                              ; preds = %103, %99
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ntreeCopyTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_linestyle_color_modifier_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !77
  %6 = tail call fastcc ptr @alloc_color_modifier(ptr noundef nonnull %3, i32 noundef %5) #10
  %7 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 4
  %8 = load float, ptr %7, align 4, !tbaa !86
  %9 = getelementptr inbounds %struct.LineStyleModifier, ptr %6, i64 0, i32 4
  store float %8, ptr %9, align 4, !tbaa !86
  %10 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 5
  %11 = getelementptr inbounds %struct.LineStyleModifier, ptr %6, i64 0, i32 5
  %12 = load <2 x i32>, ptr %10, align 8, !tbaa !80
  store <2 x i32> %12, ptr %11, align 8, !tbaa !80
  %13 = load i32, ptr %4, align 8, !tbaa !77
  switch i32 %13, label %58 [
    i32 1, label %14
    i32 2, label %20
    i32 3, label %29
    i32 4, label %47
  ]

14:                                               ; preds = %2
  %15 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.LineStyleColorModifier_AlongStroke, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = tail call ptr %15(ptr noundef %17) #9
  %19 = getelementptr inbounds %struct.LineStyleColorModifier_AlongStroke, ptr %6, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !87
  br label %56

20:                                               ; preds = %2
  %21 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !59
  %22 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !89
  %24 = tail call ptr %21(ptr noundef %23) #9
  %25 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %6, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !89
  %26 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %1, i64 0, i32 2
  %27 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %6, i64 0, i32 2
  %28 = load <2 x float>, ptr %26, align 8, !tbaa !45
  store <2 x float> %28, ptr %27, align 8, !tbaa !45
  br label %56

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !91
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ID, ptr %31, i64 0, i32 6
  %35 = load i32, ptr %34, align 4, !tbaa !93
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %34, align 4, !tbaa !93
  br label %37

37:                                               ; preds = %33, %29
  %38 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %6, i64 0, i32 1
  store ptr %31, ptr %38, align 8, !tbaa !91
  %39 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !59
  %40 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %1, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !97
  %42 = tail call ptr %39(ptr noundef %41) #9
  %43 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %6, i64 0, i32 2
  store ptr %42, ptr %43, align 8, !tbaa !97
  %44 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %1, i64 0, i32 3
  %45 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %6, i64 0, i32 3
  %46 = load <2 x float>, ptr %44, align 8, !tbaa !45
  store <2 x float> %46, ptr %45, align 8, !tbaa !45
  br label %56

47:                                               ; preds = %2
  %48 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !59
  %49 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %1, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !98
  %51 = tail call ptr %48(ptr noundef %50) #9
  %52 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %6, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !98
  %53 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %1, i64 0, i32 2
  %54 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %6, i64 0, i32 2
  %55 = load <2 x i32>, ptr %53, align 8, !tbaa !80
  store <2 x i32> %55, ptr %54, align 8, !tbaa !80
  br label %56

56:                                               ; preds = %47, %37, %20, %14
  %57 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  tail call fastcc void @add_to_modifier_list(ptr noundef nonnull %57, ptr noundef nonnull %6) #10
  br label %58

58:                                               ; preds = %2, %56
  %59 = phi ptr [ %6, %56 ], [ null, %2 ]
  ret ptr %59
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_linestyle_alpha_modifier_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !77
  %6 = tail call fastcc ptr @alloc_alpha_modifier(ptr noundef nonnull %3, i32 noundef %5) #10
  %7 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 4
  %8 = load float, ptr %7, align 4, !tbaa !86
  %9 = getelementptr inbounds %struct.LineStyleModifier, ptr %6, i64 0, i32 4
  store float %8, ptr %9, align 4, !tbaa !86
  %10 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 5
  %11 = getelementptr inbounds %struct.LineStyleModifier, ptr %6, i64 0, i32 5
  %12 = load <2 x i32>, ptr %10, align 8, !tbaa !80
  store <2 x i32> %12, ptr %11, align 8, !tbaa !80
  %13 = load i32, ptr %4, align 8, !tbaa !77
  switch i32 %13, label %63 [
    i32 1, label %14
    i32 2, label %22
    i32 3, label %33
    i32 4, label %53
  ]

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.LineStyleAlphaModifier_AlongStroke, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = tail call ptr @curvemapping_copy(ptr noundef %16) #9
  %18 = getelementptr inbounds %struct.LineStyleAlphaModifier_AlongStroke, ptr %6, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !100
  %19 = getelementptr inbounds %struct.LineStyleAlphaModifier_AlongStroke, ptr %1, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !102
  %21 = getelementptr inbounds %struct.LineStyleAlphaModifier_AlongStroke, ptr %6, i64 0, i32 2
  store i32 %20, ptr %21, align 8, !tbaa !102
  br label %61

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %1, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !103
  %25 = tail call ptr @curvemapping_copy(ptr noundef %24) #9
  %26 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %6, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !103
  %27 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %1, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !105
  %29 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %6, i64 0, i32 2
  store i32 %28, ptr %29, align 8, !tbaa !105
  %30 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %1, i64 0, i32 3
  %31 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %6, i64 0, i32 3
  %32 = load <2 x float>, ptr %30, align 4, !tbaa !45
  store <2 x float> %32, ptr %31, align 4, !tbaa !45
  br label %61

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %1, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !106
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ID, ptr %35, i64 0, i32 6
  %39 = load i32, ptr %38, align 4, !tbaa !93
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %38, align 4, !tbaa !93
  br label %41

41:                                               ; preds = %37, %33
  %42 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %6, i64 0, i32 1
  store ptr %35, ptr %42, align 8, !tbaa !106
  %43 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %1, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !108
  %45 = tail call ptr @curvemapping_copy(ptr noundef %44) #9
  %46 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %6, i64 0, i32 2
  store ptr %45, ptr %46, align 8, !tbaa !108
  %47 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %1, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !109
  %49 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %6, i64 0, i32 3
  store i32 %48, ptr %49, align 8, !tbaa !109
  %50 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %1, i64 0, i32 4
  %51 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %6, i64 0, i32 4
  %52 = load <2 x float>, ptr %50, align 4, !tbaa !45
  store <2 x float> %52, ptr %51, align 4, !tbaa !45
  br label %61

53:                                               ; preds = %2
  %54 = getelementptr inbounds %struct.LineStyleAlphaModifier_Material, ptr %1, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !110
  %56 = tail call ptr @curvemapping_copy(ptr noundef %55) #9
  %57 = getelementptr inbounds %struct.LineStyleAlphaModifier_Material, ptr %6, i64 0, i32 1
  store ptr %56, ptr %57, align 8, !tbaa !110
  %58 = getelementptr inbounds %struct.LineStyleAlphaModifier_Material, ptr %1, i64 0, i32 2
  %59 = getelementptr inbounds %struct.LineStyleAlphaModifier_Material, ptr %6, i64 0, i32 2
  %60 = load <2 x i32>, ptr %58, align 8, !tbaa !80
  store <2 x i32> %60, ptr %59, align 8, !tbaa !80
  br label %61

61:                                               ; preds = %53, %41, %22, %14
  %62 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 42
  tail call fastcc void @add_to_modifier_list(ptr noundef nonnull %62, ptr noundef nonnull %6) #10
  br label %63

63:                                               ; preds = %2, %61
  %64 = phi ptr [ %6, %61 ], [ null, %2 ]
  ret ptr %64
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_linestyle_thickness_modifier_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !77
  %6 = tail call fastcc ptr @alloc_thickness_modifier(ptr noundef nonnull %3, i32 noundef %5) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %81, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 4
  %10 = load float, ptr %9, align 4, !tbaa !86
  %11 = getelementptr inbounds %struct.LineStyleModifier, ptr %6, i64 0, i32 4
  store float %10, ptr %11, align 4, !tbaa !86
  %12 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 5
  %13 = getelementptr inbounds %struct.LineStyleModifier, ptr %6, i64 0, i32 5
  %14 = load <2 x i32>, ptr %12, align 8, !tbaa !80
  store <2 x i32> %14, ptr %13, align 8, !tbaa !80
  %15 = load i32, ptr %4, align 8, !tbaa !77
  switch i32 %15, label %81 [
    i32 1, label %16
    i32 2, label %27
    i32 3, label %38
    i32 4, label %58
    i32 13, label %72
  ]

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !112
  %19 = tail call ptr @curvemapping_copy(ptr noundef %18) #9
  %20 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %6, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !112
  %21 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %1, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !114
  %23 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %6, i64 0, i32 2
  store i32 %22, ptr %23, align 8, !tbaa !114
  %24 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %1, i64 0, i32 3
  %25 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %6, i64 0, i32 3
  %26 = load <2 x float>, ptr %24, align 4, !tbaa !45
  store <2 x float> %26, ptr %25, align 4, !tbaa !45
  br label %79

27:                                               ; preds = %8
  %28 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !115
  %30 = tail call ptr @curvemapping_copy(ptr noundef %29) #9
  %31 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %6, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !115
  %32 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %1, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !117
  %34 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %6, i64 0, i32 2
  store i32 %33, ptr %34, align 8, !tbaa !117
  %35 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %1, i64 0, i32 3
  %36 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %6, i64 0, i32 3
  %37 = load <4 x float>, ptr %35, align 4, !tbaa !45
  store <4 x float> %37, ptr %36, align 4, !tbaa !45
  br label %79

38:                                               ; preds = %8
  %39 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !118
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ID, ptr %40, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !93
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %43, align 4, !tbaa !93
  br label %46

46:                                               ; preds = %42, %38
  %47 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %6, i64 0, i32 1
  store ptr %40, ptr %47, align 8, !tbaa !118
  %48 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %1, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !120
  %50 = tail call ptr @curvemapping_copy(ptr noundef %49) #9
  %51 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %6, i64 0, i32 2
  store ptr %50, ptr %51, align 8, !tbaa !120
  %52 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %1, i64 0, i32 3
  %53 = load i32, ptr %52, align 8, !tbaa !121
  %54 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %6, i64 0, i32 3
  store i32 %53, ptr %54, align 8, !tbaa !121
  %55 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %1, i64 0, i32 4
  %56 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %6, i64 0, i32 4
  %57 = load <4 x float>, ptr %55, align 4, !tbaa !45
  store <4 x float> %57, ptr %56, align 4, !tbaa !45
  br label %79

58:                                               ; preds = %8
  %59 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %1, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !122
  %61 = tail call ptr @curvemapping_copy(ptr noundef %60) #9
  %62 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %6, i64 0, i32 1
  store ptr %61, ptr %62, align 8, !tbaa !122
  %63 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %1, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !124
  %65 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %6, i64 0, i32 2
  store i32 %64, ptr %65, align 8, !tbaa !124
  %66 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %1, i64 0, i32 5
  %67 = load i32, ptr %66, align 4, !tbaa !125
  %68 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %6, i64 0, i32 5
  store i32 %67, ptr %68, align 4, !tbaa !125
  %69 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %1, i64 0, i32 3
  %70 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %6, i64 0, i32 3
  %71 = load <2 x float>, ptr %69, align 4, !tbaa !45
  store <2 x float> %71, ptr %70, align 4, !tbaa !45
  br label %79

72:                                               ; preds = %8
  %73 = getelementptr inbounds %struct.LineStyleThicknessModifier_Calligraphy, ptr %1, i64 0, i32 1
  %74 = getelementptr inbounds %struct.LineStyleThicknessModifier_Calligraphy, ptr %6, i64 0, i32 1
  %75 = load <2 x float>, ptr %73, align 8, !tbaa !45
  store <2 x float> %75, ptr %74, align 8, !tbaa !45
  %76 = getelementptr inbounds %struct.LineStyleThicknessModifier_Calligraphy, ptr %1, i64 0, i32 3
  %77 = load float, ptr %76, align 8, !tbaa !126
  %78 = getelementptr inbounds %struct.LineStyleThicknessModifier_Calligraphy, ptr %6, i64 0, i32 3
  store float %77, ptr %78, align 8, !tbaa !126
  br label %79

79:                                               ; preds = %72, %58, %46, %27, %16
  %80 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 43
  tail call fastcc void @add_to_modifier_list(ptr noundef nonnull %80, ptr noundef nonnull %6) #10
  br label %81

81:                                               ; preds = %8, %2, %79
  %82 = phi ptr [ %6, %79 ], [ null, %2 ], [ null, %8 ]
  ret ptr %82
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_linestyle_geometry_modifier_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !77
  %6 = tail call fastcc ptr @alloc_geometry_modifier(ptr noundef nonnull %3, i32 noundef %5) #10
  %7 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !128
  %9 = getelementptr inbounds %struct.LineStyleModifier, ptr %6, i64 0, i32 5
  store i32 %8, ptr %9, align 8, !tbaa !128
  %10 = load i32, ptr %4, align 8, !tbaa !77
  switch i32 %10, label %98 [
    i32 5, label %11
    i32 6, label %15
    i32 7, label %19
    i32 8, label %26
    i32 9, label %33
    i32 10, label %43
    i32 11, label %53
    i32 12, label %57
    i32 14, label %61
    i32 15, label %65
    i32 16, label %69
    i32 17, label %82
    i32 18, label %86
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.LineStyleGeometryModifier_Sampling, ptr %1, i64 0, i32 1
  %13 = load float, ptr %12, align 8, !tbaa !129
  %14 = getelementptr inbounds %struct.LineStyleGeometryModifier_Sampling, ptr %6, i64 0, i32 1
  store float %13, ptr %14, align 8, !tbaa !129
  br label %96

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.LineStyleGeometryModifier_BezierCurve, ptr %1, i64 0, i32 1
  %17 = load float, ptr %16, align 8, !tbaa !131
  %18 = getelementptr inbounds %struct.LineStyleGeometryModifier_BezierCurve, ptr %6, i64 0, i32 1
  store float %17, ptr %18, align 8, !tbaa !131
  br label %96

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.LineStyleGeometryModifier_SinusDisplacement, ptr %1, i64 0, i32 1
  %21 = getelementptr inbounds %struct.LineStyleGeometryModifier_SinusDisplacement, ptr %6, i64 0, i32 1
  %22 = load <2 x float>, ptr %20, align 8, !tbaa !45
  store <2 x float> %22, ptr %21, align 8, !tbaa !45
  %23 = getelementptr inbounds %struct.LineStyleGeometryModifier_SinusDisplacement, ptr %1, i64 0, i32 3
  %24 = load float, ptr %23, align 8, !tbaa !133
  %25 = getelementptr inbounds %struct.LineStyleGeometryModifier_SinusDisplacement, ptr %6, i64 0, i32 3
  store float %24, ptr %25, align 8, !tbaa !133
  br label %96

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.LineStyleGeometryModifier_SpatialNoise, ptr %1, i64 0, i32 1
  %28 = getelementptr inbounds %struct.LineStyleGeometryModifier_SpatialNoise, ptr %6, i64 0, i32 1
  %29 = load <2 x float>, ptr %27, align 8, !tbaa !45
  store <2 x float> %29, ptr %28, align 8, !tbaa !45
  %30 = getelementptr inbounds %struct.LineStyleGeometryModifier_SpatialNoise, ptr %1, i64 0, i32 3
  %31 = getelementptr inbounds %struct.LineStyleGeometryModifier_SpatialNoise, ptr %6, i64 0, i32 3
  %32 = load <2 x i32>, ptr %30, align 8, !tbaa !80
  store <2 x i32> %32, ptr %31, align 8, !tbaa !80
  br label %96

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %1, i64 0, i32 1
  %35 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %6, i64 0, i32 1
  %36 = load <2 x float>, ptr %34, align 8, !tbaa !45
  store <2 x float> %36, ptr %35, align 8, !tbaa !45
  %37 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %1, i64 0, i32 3
  %38 = load float, ptr %37, align 8, !tbaa !135
  %39 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %6, i64 0, i32 3
  store float %38, ptr %39, align 8, !tbaa !135
  %40 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %1, i64 0, i32 4
  %41 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %6, i64 0, i32 4
  %42 = load <2 x i32>, ptr %40, align 4, !tbaa !80
  store <2 x i32> %42, ptr %41, align 4, !tbaa !80
  br label %96

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %1, i64 0, i32 1
  %45 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %6, i64 0, i32 1
  %46 = load <2 x float>, ptr %44, align 8, !tbaa !45
  store <2 x float> %46, ptr %45, align 8, !tbaa !45
  %47 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %1, i64 0, i32 3
  %48 = load float, ptr %47, align 8, !tbaa !137
  %49 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %6, i64 0, i32 3
  store float %48, ptr %49, align 8, !tbaa !137
  %50 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %1, i64 0, i32 4
  %51 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %6, i64 0, i32 4
  %52 = load <2 x i32>, ptr %50, align 4, !tbaa !80
  store <2 x i32> %52, ptr %51, align 4, !tbaa !80
  br label %96

53:                                               ; preds = %2
  %54 = getelementptr inbounds %struct.LineStyleGeometryModifier_BackboneStretcher, ptr %1, i64 0, i32 1
  %55 = load float, ptr %54, align 8, !tbaa !139
  %56 = getelementptr inbounds %struct.LineStyleGeometryModifier_BackboneStretcher, ptr %6, i64 0, i32 1
  store float %55, ptr %56, align 8, !tbaa !139
  br label %96

57:                                               ; preds = %2
  %58 = getelementptr inbounds %struct.LineStyleGeometryModifier_TipRemover, ptr %1, i64 0, i32 1
  %59 = load float, ptr %58, align 8, !tbaa !141
  %60 = getelementptr inbounds %struct.LineStyleGeometryModifier_TipRemover, ptr %6, i64 0, i32 1
  store float %59, ptr %60, align 8, !tbaa !141
  br label %96

61:                                               ; preds = %2
  %62 = getelementptr inbounds %struct.LineStyleGeometryModifier_Polygonalization, ptr %1, i64 0, i32 1
  %63 = load float, ptr %62, align 8, !tbaa !143
  %64 = getelementptr inbounds %struct.LineStyleGeometryModifier_Polygonalization, ptr %6, i64 0, i32 1
  store float %63, ptr %64, align 8, !tbaa !143
  br label %96

65:                                               ; preds = %2
  %66 = getelementptr inbounds %struct.LineStyleGeometryModifier_GuidingLines, ptr %1, i64 0, i32 1
  %67 = load float, ptr %66, align 8, !tbaa !145
  %68 = getelementptr inbounds %struct.LineStyleGeometryModifier_GuidingLines, ptr %6, i64 0, i32 1
  store float %67, ptr %68, align 8, !tbaa !145
  br label %96

69:                                               ; preds = %2
  %70 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %1, i64 0, i32 1
  %71 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %6, i64 0, i32 1
  %72 = load <2 x i32>, ptr %70, align 8, !tbaa !80
  store <2 x i32> %72, ptr %71, align 8, !tbaa !80
  %73 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %1, i64 0, i32 3
  %74 = load float, ptr %73, align 8, !tbaa !147
  %75 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %6, i64 0, i32 3
  store float %74, ptr %75, align 8, !tbaa !147
  %76 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %1, i64 0, i32 4
  %77 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %6, i64 0, i32 4
  %78 = load <2 x i32>, ptr %76, align 4, !tbaa !80
  store <2 x i32> %78, ptr %77, align 4, !tbaa !80
  %79 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %1, i64 0, i32 6
  %80 = load i32, ptr %79, align 4, !tbaa !149
  %81 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %6, i64 0, i32 6
  store i32 %80, ptr %81, align 4, !tbaa !149
  br label %96

82:                                               ; preds = %2
  %83 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DOffset, ptr %1, i64 0, i32 1
  %84 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DOffset, ptr %6, i64 0, i32 1
  %85 = load <4 x float>, ptr %83, align 8, !tbaa !45
  store <4 x float> %85, ptr %84, align 8, !tbaa !45
  br label %96

86:                                               ; preds = %2
  %87 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %1, i64 0, i32 1
  %88 = load i32, ptr %87, align 8, !tbaa !150
  %89 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %6, i64 0, i32 1
  store i32 %88, ptr %89, align 8, !tbaa !150
  %90 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %1, i64 0, i32 2
  %91 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %6, i64 0, i32 2
  %92 = load <4 x float>, ptr %90, align 4, !tbaa !45
  store <4 x float> %92, ptr %91, align 4, !tbaa !45
  %93 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %1, i64 0, i32 6
  %94 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %6, i64 0, i32 6
  %95 = load <2 x float>, ptr %93, align 4, !tbaa !45
  store <2 x float> %95, ptr %94, align 4, !tbaa !45
  br label %96

96:                                               ; preds = %86, %82, %69, %65, %61, %57, %53, %43, %33, %26, %19, %15, %11
  %97 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 44
  tail call fastcc void @add_to_modifier_list(ptr noundef nonnull %97, ptr noundef nonnull %6) #10
  br label %98

98:                                               ; preds = %2, %96
  %99 = phi ptr [ %6, %96 ], [ null, %2 ]
  ret ptr %99
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_linestyle_active_from_scene(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 60
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 61
  %4 = load i16, ptr %3, align 8, !tbaa !152
  %5 = sext i16 %4 to i32
  %6 = tail call ptr @BLI_findlink(ptr noundef nonnull %2, i32 noundef %5) #9
  %7 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 13
  %8 = tail call ptr @BKE_freestyle_lineset_get_active(ptr noundef nonnull %7) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.FreestyleLineSet, ptr %8, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !171
  br label %13

13:                                               ; preds = %1, %10
  %14 = phi ptr [ %12, %10 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_freestyle_lineset_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_linestyle_color_modifier_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @alloc_color_modifier(ptr noundef %1, i32 noundef %2) #10
  %5 = getelementptr inbounds %struct.LineStyleModifier, ptr %4, i64 0, i32 6
  store i32 0, ptr %5, align 4, !tbaa !173
  switch i32 %2, label %24 [
    i32 1, label %6
    i32 2, label %9
    i32 3, label %13
    i32 4, label %18
  ]

6:                                                ; preds = %3
  %7 = tail call ptr @add_colorband(i8 noundef zeroext 1) #9
  %8 = getelementptr inbounds %struct.LineStyleColorModifier_AlongStroke, ptr %4, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !87
  br label %22

9:                                                ; preds = %3
  %10 = tail call ptr @add_colorband(i8 noundef zeroext 1) #9
  %11 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %4, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !89
  %12 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %4, i64 0, i32 2
  store <2 x float> <float 0.000000e+00, float 1.000000e+04>, ptr %12, align 8, !tbaa !45
  br label %22

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %4, i64 0, i32 1
  store ptr null, ptr %14, align 8, !tbaa !91
  %15 = tail call ptr @add_colorband(i8 noundef zeroext 1) #9
  %16 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %4, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !97
  %17 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %4, i64 0, i32 3
  store <2 x float> <float 0.000000e+00, float 1.000000e+04>, ptr %17, align 8, !tbaa !45
  br label %22

18:                                               ; preds = %3
  %19 = tail call ptr @add_colorband(i8 noundef zeroext 1) #9
  %20 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %4, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !98
  %21 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %4, i64 0, i32 3
  store i32 11, ptr %21, align 4, !tbaa !174
  br label %22

22:                                               ; preds = %18, %13, %9, %6
  %23 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  tail call fastcc void @add_to_modifier_list(ptr noundef nonnull %23, ptr noundef nonnull %4) #10
  br label %24

24:                                               ; preds = %3, %22
  %25 = phi ptr [ %4, %22 ], [ null, %3 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alloc_color_modifier(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !175 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  %7 = getelementptr inbounds [4 x i64], ptr @switch.table.alloc_color_modifier, i64 0, i64 %6
  %8 = load i64, ptr %7, align 8
  %9 = tail call fastcc ptr @new_modifier(ptr noundef %0, i32 noundef %1, i64 noundef %8) #10
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @add_colorband(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_modifier_list(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !176 {
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %1) #9
  %3 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !77
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [19 x ptr], ptr @modifier_name, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  tail call void @BLI_uniquename(ptr noundef %0, ptr noundef %1, ptr noundef %7, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #9
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_linestyle_alpha_modifier_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @alloc_alpha_modifier(ptr noundef %1, i32 noundef %2) #10
  %5 = getelementptr inbounds %struct.LineStyleModifier, ptr %4, i64 0, i32 6
  store i32 0, ptr %5, align 4, !tbaa !173
  switch i32 %2, label %24 [
    i32 1, label %6
    i32 2, label %9
    i32 3, label %13
    i32 4, label %18
  ]

6:                                                ; preds = %3
  %7 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  %8 = getelementptr inbounds %struct.LineStyleAlphaModifier_AlongStroke, ptr %4, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !100
  br label %22

9:                                                ; preds = %3
  %10 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  %11 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %4, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !103
  %12 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %4, i64 0, i32 3
  store <2 x float> <float 0.000000e+00, float 1.000000e+04>, ptr %12, align 4, !tbaa !45
  br label %22

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %4, i64 0, i32 1
  store ptr null, ptr %14, align 8, !tbaa !106
  %15 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  %16 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %4, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !108
  %17 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %4, i64 0, i32 4
  store <2 x float> <float 0.000000e+00, float 1.000000e+04>, ptr %17, align 4, !tbaa !45
  br label %22

18:                                               ; preds = %3
  %19 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  %20 = getelementptr inbounds %struct.LineStyleAlphaModifier_Material, ptr %4, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !110
  %21 = getelementptr inbounds %struct.LineStyleAlphaModifier_Material, ptr %4, i64 0, i32 3
  store i32 15, ptr %21, align 4, !tbaa !177
  br label %22

22:                                               ; preds = %18, %13, %9, %6
  %23 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 42
  tail call fastcc void @add_to_modifier_list(ptr noundef nonnull %23, ptr noundef nonnull %4) #10
  br label %24

24:                                               ; preds = %3, %22
  %25 = phi ptr [ %4, %22 ], [ null, %3 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alloc_alpha_modifier(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !178 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  %7 = getelementptr inbounds [4 x i64], ptr @switch.table.alloc_alpha_modifier, i64 0, i64 %6
  %8 = load i64, ptr %7, align 8
  %9 = tail call fastcc ptr @new_modifier(ptr noundef %0, i32 noundef %1, i64 noundef %8) #10
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @curvemapping_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @curvemapping_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_linestyle_thickness_modifier_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @alloc_thickness_modifier(ptr noundef %1, i32 noundef %2) #10
  %5 = getelementptr inbounds %struct.LineStyleModifier, ptr %4, i64 0, i32 6
  store i32 0, ptr %5, align 4, !tbaa !173
  switch i32 %2, label %29 [
    i32 1, label %6
    i32 2, label %10
    i32 3, label %14
    i32 4, label %19
    i32 13, label %24
  ]

6:                                                ; preds = %3
  %7 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  %8 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %4, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !112
  %9 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %4, i64 0, i32 3
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %9, align 4, !tbaa !45
  br label %27

10:                                               ; preds = %3
  %11 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  %12 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %4, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !115
  %13 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %4, i64 0, i32 3
  store <4 x float> <float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 1.000000e+00>, ptr %13, align 4, !tbaa !45
  br label %27

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %4, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !118
  %16 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  %17 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %4, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !120
  %18 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %4, i64 0, i32 4
  store <4 x float> <float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 1.000000e+00>, ptr %18, align 4, !tbaa !45
  br label %27

19:                                               ; preds = %3
  %20 = tail call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  %21 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %4, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !122
  %22 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %4, i64 0, i32 5
  store i32 11, ptr %22, align 4, !tbaa !125
  %23 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %4, i64 0, i32 3
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %23, align 4, !tbaa !45
  br label %27

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.LineStyleThicknessModifier_Calligraphy, ptr %4, i64 0, i32 1
  store <2 x float> <float 1.000000e+00, float 1.000000e+01>, ptr %25, align 8, !tbaa !45
  %26 = getelementptr inbounds %struct.LineStyleThicknessModifier_Calligraphy, ptr %4, i64 0, i32 3
  store float 0x3FF0C15240000000, ptr %26, align 8, !tbaa !126
  br label %27

27:                                               ; preds = %24, %19, %14, %10, %6
  %28 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 43
  tail call fastcc void @add_to_modifier_list(ptr noundef nonnull %28, ptr noundef nonnull %4) #10
  br label %29

29:                                               ; preds = %3, %27
  %30 = phi ptr [ %4, %27 ], [ null, %3 ]
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alloc_thickness_modifier(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !179 {
  switch i32 %1, label %9 [
    i32 1, label %6
    i32 2, label %3
    i32 3, label %4
    i32 4, label %6
    i32 13, label %5
  ]

3:                                                ; preds = %2
  br label %6

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %2, %2, %5, %4, %3
  %7 = phi i64 [ 112, %5 ], [ 136, %4 ], [ 128, %3 ], [ 120, %2 ], [ 120, %2 ]
  %8 = tail call fastcc ptr @new_modifier(ptr noundef %0, i32 noundef %1, i64 noundef %7) #10
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_linestyle_geometry_modifier_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @alloc_geometry_modifier(ptr noundef %1, i32 noundef %2) #10
  switch i32 %2, label %47 [
    i32 5, label %5
    i32 6, label %7
    i32 7, label %9
    i32 8, label %12
    i32 9, label %16
    i32 10, label %20
    i32 11, label %24
    i32 12, label %26
    i32 14, label %28
    i32 15, label %30
    i32 16, label %32
    i32 17, label %39
    i32 18, label %41
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.LineStyleGeometryModifier_Sampling, ptr %4, i64 0, i32 1
  store float 1.000000e+01, ptr %6, align 8, !tbaa !129
  br label %45

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.LineStyleGeometryModifier_BezierCurve, ptr %4, i64 0, i32 1
  store float 1.000000e+01, ptr %8, align 8, !tbaa !131
  br label %45

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.LineStyleGeometryModifier_SinusDisplacement, ptr %4, i64 0, i32 1
  store <2 x float> <float 2.000000e+01, float 5.000000e+00>, ptr %10, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.LineStyleGeometryModifier_SinusDisplacement, ptr %4, i64 0, i32 3
  store float 0.000000e+00, ptr %11, align 8, !tbaa !133
  br label %45

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.LineStyleGeometryModifier_SpatialNoise, ptr %4, i64 0, i32 1
  store <2 x float> <float 5.000000e+00, float 2.000000e+01>, ptr %13, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.LineStyleGeometryModifier_SpatialNoise, ptr %4, i64 0, i32 3
  store i32 4, ptr %14, align 8, !tbaa !180
  %15 = getelementptr inbounds %struct.LineStyleGeometryModifier_SpatialNoise, ptr %4, i64 0, i32 4
  store i32 3, ptr %15, align 4, !tbaa !182
  br label %45

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %4, i64 0, i32 1
  store <2 x float> <float 1.000000e+01, float 1.000000e+01>, ptr %17, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %4, i64 0, i32 4
  store i32 4, ptr %18, align 4, !tbaa !183
  %19 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise1D, ptr %4, i64 0, i32 3
  store float 0x3FE921FB60000000, ptr %19, align 8, !tbaa !135
  br label %45

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %4, i64 0, i32 1
  store <2 x float> <float 1.000000e+01, float 1.000000e+01>, ptr %21, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %4, i64 0, i32 4
  store i32 4, ptr %22, align 4, !tbaa !184
  %23 = getelementptr inbounds %struct.LineStyleGeometryModifier_PerlinNoise2D, ptr %4, i64 0, i32 3
  store float 0x3FE921FB60000000, ptr %23, align 8, !tbaa !137
  br label %45

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.LineStyleGeometryModifier_BackboneStretcher, ptr %4, i64 0, i32 1
  store float 1.000000e+01, ptr %25, align 8, !tbaa !139
  br label %45

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.LineStyleGeometryModifier_TipRemover, ptr %4, i64 0, i32 1
  store float 1.000000e+01, ptr %27, align 8, !tbaa !141
  br label %45

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.LineStyleGeometryModifier_Polygonalization, ptr %4, i64 0, i32 1
  store float 1.000000e+01, ptr %29, align 8, !tbaa !143
  br label %45

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.LineStyleGeometryModifier_GuidingLines, ptr %4, i64 0, i32 1
  store float 0.000000e+00, ptr %31, align 8, !tbaa !145
  br label %45

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %4, i64 0, i32 1
  store i32 1, ptr %33, align 8, !tbaa !185
  %34 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %4, i64 0, i32 2
  store i32 1, ptr %34, align 4, !tbaa !186
  %35 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %4, i64 0, i32 3
  store float 1.000000e+01, ptr %35, align 8, !tbaa !147
  %36 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %4, i64 0, i32 4
  store i32 3, ptr %36, align 4, !tbaa !187
  %37 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %4, i64 0, i32 5
  store i32 5, ptr %37, align 8, !tbaa !188
  %38 = getelementptr inbounds %struct.LineStyleGeometryModifier_Blueprint, ptr %4, i64 0, i32 6
  store i32 5, ptr %38, align 4, !tbaa !149
  br label %45

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DOffset, ptr %4, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  br label %45

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %4, i64 0, i32 1
  store i32 1, ptr %42, align 8, !tbaa !150
  %43 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %4, i64 0, i32 2
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 5.000000e-01>, ptr %43, align 4, !tbaa !45
  %44 = getelementptr inbounds %struct.LineStyleGeometryModifier_2DTransform, ptr %4, i64 0, i32 6
  store <2 x float> zeroinitializer, ptr %44, align 4, !tbaa !45
  br label %45

45:                                               ; preds = %41, %39, %32, %30, %28, %26, %24, %20, %16, %12, %9, %7, %5
  %46 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 44
  tail call fastcc void @add_to_modifier_list(ptr noundef nonnull %46, ptr noundef nonnull %4) #10
  br label %47

47:                                               ; preds = %3, %45
  %48 = phi ptr [ %4, %45 ], [ null, %3 ]
  ret ptr %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alloc_geometry_modifier(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !189 {
  %3 = add i32 %1, -5
  %4 = icmp ult i32 %3, 14
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = trunc i32 %3 to i16
  %7 = lshr i16 16127, %6
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = zext nneg i32 %3 to i64
  %12 = getelementptr inbounds [14 x i64], ptr @switch.table.alloc_geometry_modifier, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8
  %14 = tail call fastcc ptr @new_modifier(ptr noundef %0, i32 noundef %1, i64 noundef %13) #10
  br label %15

15:                                               ; preds = %5, %2, %10
  %16 = phi ptr [ %14, %10 ], [ null, %2 ], [ null, %5 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_linestyle_color_modifier_move(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  tail call fastcc void @move_modifier(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_modifier(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !190 {
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef %1) #9
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.LineStyleModifier, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !191
  tail call void @BLI_insertlinkbefore(ptr noundef %0, ptr noundef %7, ptr noundef %1) #9
  br label %10

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !tbaa !192
  tail call void @BLI_insertlinkafter(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %1) #9
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_linestyle_alpha_modifier_move(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 42
  tail call fastcc void @move_modifier(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_linestyle_thickness_modifier_move(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 43
  tail call fastcc void @move_modifier(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_linestyle_geometry_modifier_move(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 44
  tail call fastcc void @move_modifier(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %2) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_linestyle_modifier_list_color_ramps(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @BLI_listbase_clear(ptr noundef %1) #10
  %3 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2, %24
  %7 = phi ptr [ %25, %24 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.LineStyleModifier, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !77
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
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %22 = tail call ptr %21(i64 noundef 24, ptr noundef nonnull @.str.1) #9
  %23 = getelementptr inbounds %struct.LinkData, ptr %22, i64 0, i32 2
  store ptr %20, ptr %23, align 8, !tbaa !193
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %22) #9
  br label %24

24:                                               ; preds = %6, %18
  %25 = load ptr, ptr %7, align 8, !tbaa !59
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %6, !llvm.loop !195

27:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !196 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_linestyle_path_to_color_ramp(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %2, %31
  %8 = phi ptr [ %32, %31 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.LineStyleModifier, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !77
  switch i32 %10, label %31 [
    i32 1, label %11
    i32 2, label %15
    i32 3, label %19
    i32 4, label %23
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.LineStyleColorModifier_AlongStroke, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %27, label %31

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %8, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !89
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %27, label %31

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %8, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !97
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %27, label %31

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %8, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !98
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %31

27:                                               ; preds = %19, %15, %11, %23
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #11
  %28 = getelementptr inbounds %struct.LineStyleModifier, ptr %8, i64 0, i32 2
  %29 = call i64 @BLI_strescape(ptr noundef nonnull %3, ptr noundef nonnull %28, i64 noundef 128) #9
  %30 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #11
  br label %36

31:                                               ; preds = %19, %15, %11, %7, %23
  %32 = load ptr, ptr %8, align 8, !tbaa !59
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %7, !llvm.loop !197

34:                                               ; preds = %31, %2
  %35 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %36

36:                                               ; preds = %34, %27
  %37 = phi ptr [ %30, %27 ], [ null, %34 ]
  ret ptr %37
}

; Function Attrs: optsize
declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_linestyle_target_object_unlink(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 41
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2, %16
  %7 = phi ptr [ %17, %16 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.LineStyleModifier, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !77
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store ptr null, ptr %12, align 8, !tbaa !91
  br label %16

16:                                               ; preds = %6, %15, %11
  %17 = load ptr, ptr %7, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !llvm.loop !198

19:                                               ; preds = %16, %2
  %20 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 42
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %19, %33
  %24 = phi ptr [ %34, %33 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.LineStyleModifier, ptr %24, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !77
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !106
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store ptr null, ptr %29, align 8, !tbaa !106
  br label %33

33:                                               ; preds = %23, %32, %28
  %34 = load ptr, ptr %24, align 8, !tbaa !59
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %23, !llvm.loop !199

36:                                               ; preds = %33, %19
  %37 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 43
  %38 = load ptr, ptr %37, align 8, !tbaa !59
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40

40:                                               ; preds = %36, %50
  %41 = phi ptr [ %51, %50 ], [ %38, %36 ]
  %42 = getelementptr inbounds %struct.LineStyleModifier, ptr %41, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !77
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %41, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !118
  %48 = icmp eq ptr %47, %1
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store ptr null, ptr %46, align 8, !tbaa !118
  br label %50

50:                                               ; preds = %40, %49, %45
  %51 = load ptr, ptr %41, align 8, !tbaa !59
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %40, !llvm.loop !200

53:                                               ; preds = %50, %36
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_linestyle_use_textures(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #6 {
  %3 = icmp eq i8 %1, 0
  %4 = icmp eq ptr %0, null
  br i1 %3, label %26, label %5

5:                                                ; preds = %2
  br i1 %4, label %37, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 30
  %8 = load i16, ptr %7, align 8, !tbaa !201
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 40
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = icmp eq ptr %12, null
  br i1 %13, label %37, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.bNodeTree, ptr %12, i64 0, i32 7
  br label %16

16:                                               ; preds = %20, %14
  %17 = phi ptr [ %15, %14 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !202
  %23 = getelementptr inbounds %struct.bNodeType, ptr %22, i64 0, i32 14
  %24 = load i16, ptr %23, align 4, !tbaa !204
  %25 = icmp eq i16 %24, 13
  br i1 %25, label %37, label %16, !llvm.loop !207

26:                                               ; preds = %2
  br i1 %4, label %37, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 9
  %29 = load i32, ptr %28, align 4, !tbaa !49
  %30 = and i32 %29, 8192
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 39
  %34 = load ptr, ptr %33, align 8, !tbaa !59
  %35 = icmp ne ptr %34, null
  %36 = zext i1 %35 to i8
  br label %37

37:                                               ; preds = %16, %20, %10, %6, %5, %27, %26, %32
  %38 = phi i8 [ %36, %32 ], [ 0, %26 ], [ 0, %27 ], [ 0, %5 ], [ 0, %6 ], [ 0, %10 ], [ 0, %16 ], [ 1, %20 ]
  ret i8 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_linestyle_default_shader(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @ntreeAddTree(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  %4 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %1, i64 0, i32 40
  store ptr %3, ptr %4, align 8, !tbaa !67
  %5 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %3, i32 noundef 191) #9
  %6 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 24
  store <2 x float> <float 0.000000e+00, float 3.000000e+02>, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 33
  store i16 0, ptr %7, align 8, !tbaa !208
  %8 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %3, i32 noundef 143) #9
  %9 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 24
  store <2 x float> <float 2.000000e+02, float 3.000000e+02>, ptr %9, align 8, !tbaa !45
  %10 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %3, i32 noundef 190) #9
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 24
  store <2 x float> <float 4.000000e+02, float 3.000000e+02>, ptr %11, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 33
  store i16 0, ptr %12, align 8, !tbaa !208
  %13 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 34
  store i16 0, ptr %13, align 2, !tbaa !209
  tail call void @nodeSetActive(ptr noundef %3, ptr noundef %8) #9
  %14 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 18
  %15 = tail call ptr @BLI_findlink(ptr noundef nonnull %14, i32 noundef 0) #9
  %16 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 17
  %17 = tail call ptr @BLI_findlink(ptr noundef nonnull %16, i32 noundef 0) #9
  %18 = tail call ptr @nodeAddLink(ptr noundef %3, ptr noundef %5, ptr noundef %15, ptr noundef %8, ptr noundef %17) #9
  %19 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 18
  %20 = tail call ptr @BLI_findlink(ptr noundef nonnull %19, i32 noundef 0) #9
  %21 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 17
  %22 = tail call ptr @BLI_findlink(ptr noundef nonnull %21, i32 noundef 0) #9
  %23 = tail call ptr @nodeAddLink(ptr noundef %3, ptr noundef %8, ptr noundef %20, ptr noundef %10, ptr noundef %22) #9
  %24 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  tail call void @ntreeUpdateTree(ptr noundef %24, ptr noundef %3) #9
  ret void
}

; Function Attrs: optsize
declare ptr @ntreeAddTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @nodeAddStaticNode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @nodeSetActive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @nodeAddLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ntreeUpdateTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @new_modifier(ptr noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #0 !PGOFuncName !210 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [19 x ptr], ptr @modifier_name, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi ptr [ %0, %3 ], [ %8, %5 ]
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %12 = tail call ptr %11(i64 noundef %2, ptr noundef nonnull @.str.6) #9
  %13 = getelementptr inbounds %struct.LineStyleModifier, ptr %12, i64 0, i32 3
  store i32 %1, ptr %13, align 8, !tbaa !77
  %14 = getelementptr inbounds %struct.LineStyleModifier, ptr %12, i64 0, i32 2
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %14, ptr noundef %10, i64 noundef 64) #9
  %16 = getelementptr inbounds %struct.LineStyleModifier, ptr %12, i64 0, i32 4
  store float 1.000000e+00, ptr %16, align 4, !tbaa !86
  %17 = getelementptr inbounds %struct.LineStyleModifier, ptr %12, i64 0, i32 5
  store i32 3, ptr %17, align 8, !tbaa !128
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!34 = !{!"linestyle.c:default_linestyle_settings"}
!35 = !{!36, !42, i64 244}
!36 = !{!"FreestyleLineStyle", !37, i64 0, !38, i64 120, !43, i64 128, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !42, i64 148, !43, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !42, i64 192, !41, i64 196, !41, i64 198, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !42, i64 208, !42, i64 212, !43, i64 216, !41, i64 220, !41, i64 222, !41, i64 224, !39, i64 226, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !42, i64 244, !39, i64 248, !38, i64 392, !44, i64 400, !44, i64 416, !44, i64 432, !44, i64 448}
!37 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !41, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !38, i64 112}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"short", !39, i64 0}
!42 = !{!"int", !39, i64 0}
!43 = !{!"float", !39, i64 0}
!44 = !{!"ListBase", !38, i64 0, !38, i64 8}
!45 = !{!43, !43, i64 0}
!46 = !{!36, !43, i64 144}
!47 = !{!36, !42, i64 148}
!48 = !{!36, !43, i64 152}
!49 = !{!36, !42, i64 156}
!50 = !{!36, !42, i64 164}
!51 = !{!36, !42, i64 168}
!52 = !{!36, !43, i64 188}
!53 = !{!36, !42, i64 192}
!54 = !{!36, !42, i64 208}
!55 = !{!36, !42, i64 212}
!56 = !{!36, !43, i64 216}
!57 = !{!36, !41, i64 222}
!58 = !{!36, !42, i64 160}
!59 = !{!38, !38, i64 0}
!60 = !{!61, !38, i64 16}
!61 = !{!"MTex", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !38, i64 8, !38, i64 16, !39, i64 24, !39, i64 88, !39, i64 89, !39, i64 90, !39, i64 91, !39, i64 92, !39, i64 104, !43, i64 116, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !41, i64 128, !41, i64 130, !39, i64 132, !39, i64 133, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !43, i64 216, !43, i64 220, !43, i64 224, !43, i64 228, !43, i64 232, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !43, i64 252, !43, i64 256, !43, i64 260, !43, i64 264, !43, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !43, i64 308}
!62 = !{!63, !42, i64 100}
!63 = !{!"Tex", !37, i64 0, !38, i64 120, !43, i64 128, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !42, i64 252, !42, i64 256, !41, i64 260, !41, i64 262, !41, i64 264, !41, i64 266, !42, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !64, i64 296, !38, i64 336, !38, i64 344, !38, i64 352, !38, i64 360, !38, i64 368, !38, i64 376, !38, i64 384, !38, i64 392, !38, i64 400, !39, i64 408, !39, i64 409}
!64 = !{!"ImageUser", !38, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !39, i64 24, !39, i64 25, !39, i64 26, !39, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !42, i64 36}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!36, !38, i64 392}
!68 = !{!36, !38, i64 400}
!69 = !{!36, !38, i64 416}
!70 = !{i32 -1, i32 1}
!71 = distinct !{!71, !66}
!72 = !{!36, !38, i64 432}
!73 = distinct !{!73, !66}
!74 = !{!36, !38, i64 448}
!75 = distinct !{!75, !66}
!76 = distinct !{!76, !66}
!77 = !{!78, !42, i64 80}
!78 = !{!"LineStyleModifier", !38, i64 0, !38, i64 8, !39, i64 16, !42, i64 80, !43, i64 84, !42, i64 88, !42, i64 92}
!79 = distinct !{!79, !66}
!80 = !{!42, !42, i64 0}
!81 = !{!41, !41, i64 0}
!82 = distinct !{!82, !66}
!83 = distinct !{!83, !66}
!84 = distinct !{!84, !66}
!85 = distinct !{!85, !66}
!86 = !{!78, !43, i64 84}
!87 = !{!88, !38, i64 96}
!88 = !{!"LineStyleColorModifier_AlongStroke", !78, i64 0, !38, i64 96}
!89 = !{!90, !38, i64 96}
!90 = !{!"LineStyleColorModifier_DistanceFromCamera", !78, i64 0, !38, i64 96, !43, i64 104, !43, i64 108}
!91 = !{!92, !38, i64 96}
!92 = !{!"LineStyleColorModifier_DistanceFromObject", !78, i64 0, !38, i64 96, !38, i64 104, !43, i64 112, !43, i64 116}
!93 = !{!94, !42, i64 100}
!94 = !{!"Object", !37, i64 0, !38, i64 120, !38, i64 128, !41, i64 136, !41, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !39, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !95, i64 312, !38, i64 360, !44, i64 368, !44, i64 384, !44, i64 400, !44, i64 416, !42, i64 432, !42, i64 436, !38, i64 440, !38, i64 448, !42, i64 456, !42, i64 460, !39, i64 464, !39, i64 476, !39, i64 488, !39, i64 500, !39, i64 512, !39, i64 524, !39, i64 536, !39, i64 548, !39, i64 560, !39, i64 576, !39, i64 592, !39, i64 604, !43, i64 616, !43, i64 620, !39, i64 624, !39, i64 688, !39, i64 752, !39, i64 816, !39, i64 880, !42, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !39, i64 966, !39, i64 967, !42, i64 968, !42, i64 972, !42, i64 976, !42, i64 980, !42, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !39, i64 1042, !39, i64 1043, !41, i64 1044, !39, i64 1046, !39, i64 1047, !43, i64 1048, !43, i64 1052, !44, i64 1056, !44, i64 1072, !44, i64 1088, !44, i64 1104, !43, i64 1120, !41, i64 1124, !41, i64 1126, !39, i64 1128, !42, i64 1144, !42, i64 1148, !38, i64 1152, !39, i64 1160, !39, i64 1161, !41, i64 1162, !39, i64 1164, !44, i64 1176, !44, i64 1192, !44, i64 1208, !44, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !39, i64 1264, !39, i64 1265, !41, i64 1266, !43, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !96, i64 1304, !96, i64 1312, !42, i64 1320, !42, i64 1324, !44, i64 1328, !44, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !39, i64 1384, !38, i64 1392, !44, i64 1400, !38, i64 1416}
!95 = !{!"bAnimVizSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!96 = !{!"long", !39, i64 0}
!97 = !{!92, !38, i64 104}
!98 = !{!99, !38, i64 96}
!99 = !{!"LineStyleColorModifier_Material", !78, i64 0, !38, i64 96, !42, i64 104, !42, i64 108}
!100 = !{!101, !38, i64 96}
!101 = !{!"LineStyleAlphaModifier_AlongStroke", !78, i64 0, !38, i64 96, !42, i64 104, !42, i64 108}
!102 = !{!101, !42, i64 104}
!103 = !{!104, !38, i64 96}
!104 = !{!"LineStyleAlphaModifier_DistanceFromCamera", !78, i64 0, !38, i64 96, !42, i64 104, !43, i64 108, !43, i64 112, !42, i64 116}
!105 = !{!104, !42, i64 104}
!106 = !{!107, !38, i64 96}
!107 = !{!"LineStyleAlphaModifier_DistanceFromObject", !78, i64 0, !38, i64 96, !38, i64 104, !42, i64 112, !43, i64 116, !43, i64 120, !42, i64 124}
!108 = !{!107, !38, i64 104}
!109 = !{!107, !42, i64 112}
!110 = !{!111, !38, i64 96}
!111 = !{!"LineStyleAlphaModifier_Material", !78, i64 0, !38, i64 96, !42, i64 104, !42, i64 108}
!112 = !{!113, !38, i64 96}
!113 = !{!"LineStyleThicknessModifier_AlongStroke", !78, i64 0, !38, i64 96, !42, i64 104, !43, i64 108, !43, i64 112, !42, i64 116}
!114 = !{!113, !42, i64 104}
!115 = !{!116, !38, i64 96}
!116 = !{!"LineStyleThicknessModifier_DistanceFromCamera", !78, i64 0, !38, i64 96, !42, i64 104, !43, i64 108, !43, i64 112, !43, i64 116, !43, i64 120, !42, i64 124}
!117 = !{!116, !42, i64 104}
!118 = !{!119, !38, i64 96}
!119 = !{!"LineStyleThicknessModifier_DistanceFromObject", !78, i64 0, !38, i64 96, !38, i64 104, !42, i64 112, !43, i64 116, !43, i64 120, !43, i64 124, !43, i64 128, !42, i64 132}
!120 = !{!119, !38, i64 104}
!121 = !{!119, !42, i64 112}
!122 = !{!123, !38, i64 96}
!123 = !{!"LineStyleThicknessModifier_Material", !78, i64 0, !38, i64 96, !42, i64 104, !43, i64 108, !43, i64 112, !42, i64 116}
!124 = !{!123, !42, i64 104}
!125 = !{!123, !42, i64 116}
!126 = !{!127, !43, i64 104}
!127 = !{!"LineStyleThicknessModifier_Calligraphy", !78, i64 0, !43, i64 96, !43, i64 100, !43, i64 104, !42, i64 108}
!128 = !{!78, !42, i64 88}
!129 = !{!130, !43, i64 96}
!130 = !{!"LineStyleGeometryModifier_Sampling", !78, i64 0, !43, i64 96, !42, i64 100}
!131 = !{!132, !43, i64 96}
!132 = !{!"LineStyleGeometryModifier_BezierCurve", !78, i64 0, !43, i64 96, !42, i64 100}
!133 = !{!134, !43, i64 104}
!134 = !{!"LineStyleGeometryModifier_SinusDisplacement", !78, i64 0, !43, i64 96, !43, i64 100, !43, i64 104, !42, i64 108}
!135 = !{!136, !43, i64 104}
!136 = !{!"LineStyleGeometryModifier_PerlinNoise1D", !78, i64 0, !43, i64 96, !43, i64 100, !43, i64 104, !42, i64 108, !42, i64 112, !42, i64 116}
!137 = !{!138, !43, i64 104}
!138 = !{!"LineStyleGeometryModifier_PerlinNoise2D", !78, i64 0, !43, i64 96, !43, i64 100, !43, i64 104, !42, i64 108, !42, i64 112, !42, i64 116}
!139 = !{!140, !43, i64 96}
!140 = !{!"LineStyleGeometryModifier_BackboneStretcher", !78, i64 0, !43, i64 96, !42, i64 100}
!141 = !{!142, !43, i64 96}
!142 = !{!"LineStyleGeometryModifier_TipRemover", !78, i64 0, !43, i64 96, !42, i64 100}
!143 = !{!144, !43, i64 96}
!144 = !{!"LineStyleGeometryModifier_Polygonalization", !78, i64 0, !43, i64 96, !42, i64 100}
!145 = !{!146, !43, i64 96}
!146 = !{!"LineStyleGeometryModifier_GuidingLines", !78, i64 0, !43, i64 96, !42, i64 100}
!147 = !{!148, !43, i64 104}
!148 = !{!"LineStyleGeometryModifier_Blueprint", !78, i64 0, !42, i64 96, !42, i64 100, !43, i64 104, !42, i64 108, !42, i64 112, !42, i64 116}
!149 = !{!148, !42, i64 116}
!150 = !{!151, !42, i64 96}
!151 = !{!"LineStyleGeometryModifier_2DTransform", !78, i64 0, !42, i64 96, !43, i64 100, !43, i64 104, !43, i64 108, !43, i64 112, !43, i64 116, !43, i64 120, !42, i64 124}
!152 = !{!153, !41, i64 888}
!153 = !{!"Scene", !37, i64 0, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !44, i64 152, !38, i64 168, !38, i64 176, !39, i64 184, !39, i64 196, !39, i64 208, !39, i64 220, !42, i64 232, !42, i64 236, !42, i64 240, !41, i64 244, !39, i64 246, !39, i64 247, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !154, i64 280, !163, i64 4264, !44, i64 4296, !44, i64 4312, !38, i64 4328, !38, i64 4336, !38, i64 4344, !38, i64 4352, !38, i64 4360, !38, i64 4368, !41, i64 4376, !41, i64 4378, !42, i64 4380, !44, i64 4384, !164, i64 4400, !165, i64 4416, !168, i64 4600, !38, i64 4608, !169, i64 4616, !38, i64 4640, !96, i64 4648, !96, i64 4656, !156, i64 4664, !157, i64 4824, !170, i64 4888, !38, i64 4952}
!154 = !{!"RenderData", !155, i64 0, !38, i64 248, !38, i64 256, !158, i64 264, !159, i64 328, !42, i64 400, !42, i64 404, !42, i64 408, !43, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !41, i64 432, !41, i64 434, !43, i64 436, !43, i64 440, !43, i64 444, !43, i64 448, !43, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !42, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !42, i64 484, !42, i64 488, !41, i64 492, !41, i64 494, !42, i64 496, !42, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !39, i64 514, !39, i64 515, !42, i64 516, !42, i64 520, !42, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !160, i64 544, !160, i64 560, !161, i64 576, !44, i64 592, !41, i64 608, !41, i64 610, !43, i64 612, !43, i64 616, !43, i64 620, !43, i64 624, !42, i64 628, !43, i64 632, !43, i64 636, !43, i64 640, !43, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !43, i64 660, !43, i64 664, !41, i64 668, !41, i64 670, !43, i64 672, !43, i64 676, !39, i64 680, !42, i64 1704, !41, i64 1708, !41, i64 1710, !39, i64 1712, !39, i64 2480, !39, i64 2496, !39, i64 2512, !39, i64 2513, !39, i64 2514, !39, i64 2515, !42, i64 2520, !41, i64 2524, !41, i64 2526, !43, i64 2528, !43, i64 2532, !41, i64 2536, !41, i64 2538, !43, i64 2540, !41, i64 2544, !41, i64 2546, !42, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !43, i64 2560, !43, i64 2564, !38, i64 2568, !42, i64 2576, !43, i64 2580, !39, i64 2584, !162, i64 2616, !42, i64 3976, !42, i64 3980}
!155 = !{!"ImageFormatData", !39, i64 0, !39, i64 1, !39, i64 2, !39, i64 3, !39, i64 4, !39, i64 5, !39, i64 6, !39, i64 7, !41, i64 8, !41, i64 10, !43, i64 12, !39, i64 16, !39, i64 17, !39, i64 18, !156, i64 24, !157, i64 184}
!156 = !{!"ColorManagedViewSettings", !42, i64 0, !42, i64 4, !39, i64 8, !39, i64 72, !43, i64 136, !43, i64 140, !38, i64 144, !38, i64 152}
!157 = !{!"ColorManagedDisplaySettings", !39, i64 0}
!158 = !{!"QuicktimeCodecSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !41, i64 48, !41, i64 50, !42, i64 52, !42, i64 56, !42, i64 60}
!159 = !{!"FFMpegCodecData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !43, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !38, i64 64}
!160 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!161 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!162 = !{!"BakeData", !155, i64 0, !39, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !43, i64 1280, !43, i64 1284, !39, i64 1288, !39, i64 1291, !39, i64 1292, !39, i64 1293, !39, i64 1296}
!163 = !{!"AudioData", !42, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !42, i64 16, !41, i64 20, !41, i64 22, !43, i64 24, !43, i64 28}
!164 = !{!"GameFraming", !39, i64 0, !39, i64 12, !39, i64 13, !39, i64 14, !39, i64 15}
!165 = !{!"GameData", !164, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !39, i64 34, !166, i64 40, !41, i64 64, !41, i64 66, !43, i64 68, !167, i64 72, !43, i64 128, !43, i64 132, !42, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180}
!166 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !43, i64 8, !43, i64 12, !38, i64 16}
!167 = !{!"RecastData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !42, i64 40, !43, i64 44, !43, i64 48, !41, i64 52, !41, i64 54}
!168 = !{!"UnitSettings", !43, i64 0, !39, i64 4, !39, i64 5, !41, i64 6}
!169 = !{!"PhysicsSettings", !39, i64 0, !42, i64 12, !42, i64 16, !42, i64 20}
!170 = !{!"ColorManagedColorspaceSettings", !39, i64 0}
!171 = !{!172, !38, i64 120}
!172 = !{!"FreestyleLineSet", !38, i64 0, !38, i64 8, !39, i64 16, !42, i64 80, !42, i64 84, !41, i64 88, !41, i64 90, !42, i64 92, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108, !38, i64 112, !38, i64 120}
!173 = !{!78, !42, i64 92}
!174 = !{!99, !42, i64 108}
!175 = !{!"linestyle.c:alloc_color_modifier"}
!176 = !{!"linestyle.c:add_to_modifier_list"}
!177 = !{!111, !42, i64 108}
!178 = !{!"linestyle.c:alloc_alpha_modifier"}
!179 = !{!"linestyle.c:alloc_thickness_modifier"}
!180 = !{!181, !42, i64 104}
!181 = !{!"LineStyleGeometryModifier_SpatialNoise", !78, i64 0, !43, i64 96, !43, i64 100, !42, i64 104, !42, i64 108}
!182 = !{!181, !42, i64 108}
!183 = !{!136, !42, i64 108}
!184 = !{!138, !42, i64 108}
!185 = !{!148, !42, i64 96}
!186 = !{!148, !42, i64 100}
!187 = !{!148, !42, i64 108}
!188 = !{!148, !42, i64 112}
!189 = !{!"linestyle.c:alloc_geometry_modifier"}
!190 = !{!"linestyle.c:move_modifier"}
!191 = !{!78, !38, i64 8}
!192 = !{!78, !38, i64 0}
!193 = !{!194, !38, i64 16}
!194 = !{!"LinkData", !38, i64 0, !38, i64 8, !38, i64 16}
!195 = distinct !{!195, !66}
!196 = !{!"linestyle.c:BLI_listbase_clear"}
!197 = distinct !{!197, !66}
!198 = distinct !{!198, !66}
!199 = distinct !{!199, !66}
!200 = distinct !{!200, !66}
!201 = !{!36, !41, i64 224}
!202 = !{!203, !38, i64 32}
!203 = !{!"bNode", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !39, i64 40, !39, i64 104, !42, i64 168, !41, i64 172, !41, i64 174, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !41, i64 184, !41, i64 186, !39, i64 188, !44, i64 200, !44, i64 216, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !44, i64 264, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !42, i64 308, !39, i64 312, !41, i64 376, !41, i64 378, !43, i64 380, !43, i64 384, !41, i64 388, !41, i64 390, !38, i64 392, !160, i64 400, !160, i64 416, !160, i64 432, !41, i64 448, !41, i64 450, !42, i64 452, !38, i64 456}
!204 = !{!205, !41, i64 436}
!205 = !{!"bNodeType", !38, i64 0, !38, i64 8, !41, i64 16, !39, i64 18, !42, i64 84, !39, i64 88, !39, i64 152, !42, i64 408, !43, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !43, i64 432, !41, i64 436, !41, i64 438, !41, i64 440, !38, i64 448, !38, i64 456, !39, i64 464, !38, i64 528, !38, i64 536, !38, i64 544, !38, i64 552, !38, i64 560, !38, i64 568, !38, i64 576, !38, i64 584, !38, i64 592, !38, i64 600, !38, i64 608, !38, i64 616, !38, i64 624, !38, i64 632, !38, i64 640, !38, i64 648, !38, i64 656, !38, i64 664, !38, i64 672, !38, i64 680, !38, i64 688, !38, i64 696, !38, i64 704, !38, i64 712, !206, i64 720}
!206 = !{!"ExtensionRNA", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24}
!207 = distinct !{!207, !66}
!208 = !{!203, !41, i64 376}
!209 = !{!203, !41, i64 378}
!210 = !{!"linestyle.c:new_modifier"}
