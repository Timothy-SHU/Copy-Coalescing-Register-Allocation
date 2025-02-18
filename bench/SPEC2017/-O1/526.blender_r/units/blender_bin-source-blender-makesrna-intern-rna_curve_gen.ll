; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_curve_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_curve_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.TextBox = type { float, float, float, float }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }

@.str = private unnamed_addr constant [5 x i8] c"FREE\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Free\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"VECTOR\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Vector\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ALIGNED\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Aligned\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"AUTO\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Automatic\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"AUTO_CLAMPED\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Auto Clamped\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Auto handles clamped to not overshoot\00", align 1
@keyframe_handle_type_items = dso_local local_unnamed_addr global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.7, i32 0, ptr @.str.8, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [14 x i8] c"Interpolation\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Standard transitions between keyframes\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"CONSTANT\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Constant\00", align 1
@.str.16 = private unnamed_addr constant [62 x i8] c"No interpolation, value of A gets held until B is encountered\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"LINEAR\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.19 = private unnamed_addr constant [66 x i8] c"Straight-line interpolation between A and B (i.e. no ease in/out)\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"BEZIER\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Bezier\00", align 1
@.str.22 = private unnamed_addr constant [73 x i8] c"Smooth interpolation between A and B, with some control over curve shape\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Easing (by strength)\00", align 1
@.str.24 = private unnamed_addr constant [94 x i8] c"Predefined inertial transitions, useful for motion graphics (from least to most ''dramatic'')\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"SINE\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"Sinusoidal\00", align 1
@.str.27 = private unnamed_addr constant [71 x i8] c"Sinusoidal easing (weakest, almost linear but with a slight curvature)\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"QUAD\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"Quadratic\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Quadratic easing\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"CUBIC\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"Cubic\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"Cubic easing\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"QUART\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"Quartic\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"Quartic easing\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"QUINT\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"Quintic\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"Quintic easing\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"EXPO\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"Exponential\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"Exponential easing (dramatic)\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"CIRC\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"Circular\00", align 1
@.str.45 = private unnamed_addr constant [45 x i8] c"Circular easing (strongest and most dynamic)\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"Dynamic Effects\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"Simple physics-inspired easing effects\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"BACK\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"Back\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"Cubic easing with overshoot and settle\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"BOUNCE\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"Bounce\00", align 1
@.str.53 = private unnamed_addr constant [67 x i8] c"Exponentially decaying parabolic bounce, like when objects collide\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"ELASTIC\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"Elastic\00", align 1
@.str.56 = private unnamed_addr constant [55 x i8] c"Exponentially decaying sine wave, like an elastic band\00", align 1
@beztriple_interpolation_mode_items = dso_local local_unnamed_addr global [17 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.12, ptr @.str.13 }, %struct.EnumPropertyItem { i32 0, ptr @.str.14, i32 525, ptr @.str.15, ptr @.str.16 }, %struct.EnumPropertyItem { i32 1, ptr @.str.17, i32 526, ptr @.str.18, ptr @.str.19 }, %struct.EnumPropertyItem { i32 2, ptr @.str.20, i32 527, ptr @.str.21, ptr @.str.22 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.23, ptr @.str.24 }, %struct.EnumPropertyItem { i32 12, ptr @.str.25, i32 528, ptr @.str.26, ptr @.str.27 }, %struct.EnumPropertyItem { i32 9, ptr @.str.28, i32 529, ptr @.str.29, ptr @.str.30 }, %struct.EnumPropertyItem { i32 6, ptr @.str.31, i32 530, ptr @.str.32, ptr @.str.33 }, %struct.EnumPropertyItem { i32 10, ptr @.str.34, i32 531, ptr @.str.35, ptr @.str.36 }, %struct.EnumPropertyItem { i32 11, ptr @.str.37, i32 532, ptr @.str.38, ptr @.str.39 }, %struct.EnumPropertyItem { i32 8, ptr @.str.40, i32 533, ptr @.str.41, ptr @.str.42 }, %struct.EnumPropertyItem { i32 5, ptr @.str.43, i32 534, ptr @.str.44, ptr @.str.45 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.46, ptr @.str.47 }, %struct.EnumPropertyItem { i32 3, ptr @.str.48, i32 537, ptr @.str.49, ptr @.str.50 }, %struct.EnumPropertyItem { i32 4, ptr @.str.51, i32 535, ptr @.str.52, ptr @.str.53 }, %struct.EnumPropertyItem { i32 7, ptr @.str.54, i32 536, ptr @.str.55, ptr @.str.56 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_Key = external global %struct.StructRNA, align 8
@rna_Curve_splines = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_show_handles, ptr @rna_Curve_shape_keys, i32 -1, ptr @.str.62, i32 0, ptr @.str.63, ptr @.str.64, i32 0, ptr @.str.61, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_CurveSplines, ptr null }, ptr @Curve_splines_begin, ptr @Curve_splines_next, ptr @Curve_splines_end, ptr @Curve_splines_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Spline }, align 8
@rna_Curve_materials = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_bevel_factor_start, ptr @rna_Curve_use_uv_as_generated, i32 -1, ptr @.str.161, i32 0, ptr @.str.162, ptr @.str.2, i32 0, ptr @.str.61, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_IDMaterials, ptr null }, ptr @Curve_materials_begin, ptr @Curve_materials_next, ptr @Curve_materials_end, ptr @Curve_materials_get, ptr @Curve_materials_length, ptr @Curve_materials_lookup_int, ptr @Curve_materials_lookup_string, ptr @rna_IDMaterials_assign_int, ptr @RNA_Material }, align 8
@.str.57 = private unnamed_addr constant [44 x i8] c"Array iterator out of range: %s (index %d)\0A\00", align 1
@__func__.Curve_materials_lookup_int = private unnamed_addr constant [27 x i8] c"Curve_materials_lookup_int\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.58 = private unnamed_addr constant [12 x i8] c"name string\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@RNA_AnimData = external global %struct.StructRNA, align 8
@rna_CurveSplines_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveSplines_rna_type, ptr null, i32 -1, ptr @.str.186, i32 128, ptr @.str.187, ptr @.str.188, i32 0, ptr @.str.61, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurveSplines_rna_properties_begin, ptr @CurveSplines_rna_properties_next, ptr @CurveSplines_rna_properties_end, ptr @CurveSplines_rna_properties_get, ptr null, ptr null, ptr @CurveSplines_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_TextCurve_text_boxes = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_active_textbox, ptr @rna_TextCurve_underline_height, i32 -1, ptr @.str.241, i32 16384, ptr @.str.242, ptr @.str.2, i32 0, ptr @.str.61, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCurve_text_boxes_begin, ptr @TextCurve_text_boxes_next, ptr @TextCurve_text_boxes_end, ptr @TextCurve_text_boxes_get, ptr @TextCurve_text_boxes_length, ptr @TextCurve_text_boxes_lookup_int, ptr null, ptr null, ptr @RNA_TextBox }, align 8
@__func__.TextCurve_text_boxes_lookup_int = private unnamed_addr constant [32 x i8] c"TextCurve_text_boxes_lookup_int\00", align 1
@rna_TextCurve_body_format = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_follow_curve, ptr @rna_TextCurve_body, i32 -1, ptr @.str.251, i32 16384, ptr @.str.252, ptr @.str.253, i32 0, ptr @.str.61, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCurve_body_format_begin, ptr @TextCurve_body_format_next, ptr @TextCurve_body_format_end, ptr @TextCurve_body_format_get, ptr @TextCurve_body_format_length, ptr @TextCurve_body_format_lookup_int, ptr null, ptr null, ptr @RNA_TextCharacterFormat }, align 8
@__func__.TextCurve_body_format_lookup_int = private unnamed_addr constant [33 x i8] c"TextCurve_body_format_lookup_int\00", align 1
@RNA_Object = external global %struct.StructRNA, align 8
@RNA_VectorFont = external global %struct.StructRNA, align 8
@RNA_TextCharacterFormat = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SplinePoint, ptr @RNA_TextBox, ptr null, %struct.ListBase { ptr @rna_TextCharacterFormat_rna_properties, ptr @rna_TextCharacterFormat_material_index } }, ptr @.str.294, ptr null, ptr null, i32 4, ptr @.str.295, ptr @.str.296, ptr @.str.61, i32 17, ptr null, ptr @rna_TextCharacterFormat_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_TextBox_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_TextBox_rna_type, ptr null, i32 -1, ptr @.str.186, i32 128, ptr @.str.187, ptr @.str.188, i32 0, ptr @.str.61, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextBox_rna_properties_begin, ptr @TextBox_rna_properties_next, ptr @TextBox_rna_properties_end, ptr @TextBox_rna_properties_get, ptr null, ptr null, ptr @TextBox_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_TextCharacterFormat_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCharacterFormat_rna_type, ptr null, i32 -1, ptr @.str.186, i32 128, ptr @.str.187, ptr @.str.188, i32 0, ptr @.str.61, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCharacterFormat_rna_properties_begin, ptr @TextCharacterFormat_rna_properties_next, ptr @TextCharacterFormat_rna_properties_end, ptr @TextCharacterFormat_rna_properties_get, ptr null, ptr null, ptr @TextCharacterFormat_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_SplinePoint_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SplinePoint_rna_type, ptr null, i32 -1, ptr @.str.186, i32 128, ptr @.str.187, ptr @.str.188, i32 0, ptr @.str.61, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SplinePoint_rna_properties_begin, ptr @SplinePoint_rna_properties_next, ptr @SplinePoint_rna_properties_end, ptr @SplinePoint_rna_properties_get, ptr null, ptr null, ptr @SplinePoint_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BezierSplinePoint_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BezierSplinePoint_rna_type, ptr null, i32 -1, ptr @.str.186, i32 128, ptr @.str.187, ptr @.str.188, i32 0, ptr @.str.61, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BezierSplinePoint_rna_properties_begin, ptr @BezierSplinePoint_rna_properties_next, ptr @BezierSplinePoint_rna_properties_end, ptr @BezierSplinePoint_rna_properties_get, ptr null, ptr null, ptr @BezierSplinePoint_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Spline_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_rna_type, ptr null, i32 -1, ptr @.str.186, i32 128, ptr @.str.187, ptr @.str.188, i32 0, ptr @.str.61, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Spline_rna_properties_begin, ptr @Spline_rna_properties_next, ptr @Spline_rna_properties_end, ptr @Spline_rna_properties_get, ptr null, ptr null, ptr @Spline_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Spline_points = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_bezier_points, ptr @rna_Spline_rna_type, i32 -1, ptr @.str.344, i32 16384, ptr @.str.345, ptr @.str.346, i32 0, ptr @.str.61, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_SplinePoints, ptr null }, ptr @Spline_points_begin, ptr @Spline_points_next, ptr @Spline_points_end, ptr @Spline_points_get, ptr @rna_Nurb_length, ptr @Spline_points_lookup_int, ptr null, ptr null, ptr @RNA_SplinePoint }, align 8
@__func__.Spline_points_lookup_int = private unnamed_addr constant [25 x i8] c"Spline_points_lookup_int\00", align 1
@rna_Spline_bezier_points = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_tilt_interpolation, ptr @rna_Spline_points, i32 -1, ptr @.str.347, i32 16384, ptr @.str.348, ptr @.str.349, i32 0, ptr @.str.61, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_SplineBezierPoints, ptr null }, ptr @Spline_bezier_points_begin, ptr @Spline_bezier_points_next, ptr @Spline_bezier_points_end, ptr @Spline_bezier_points_get, ptr @Spline_bezier_points_length, ptr @Spline_bezier_points_lookup_int, ptr null, ptr null, ptr @RNA_BezierSplinePoint }, align 8
@__func__.Spline_bezier_points_lookup_int = private unnamed_addr constant [32 x i8] c"Spline_bezier_points_lookup_int\00", align 1
@rna_SplinePoints_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SplinePoints_rna_type, ptr null, i32 -1, ptr @.str.186, i32 128, ptr @.str.187, ptr @.str.188, i32 0, ptr @.str.61, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SplinePoints_rna_properties_begin, ptr @SplinePoints_rna_properties_next, ptr @SplinePoints_rna_properties_end, ptr @SplinePoints_rna_properties_get, ptr null, ptr null, ptr @SplinePoints_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_SplineBezierPoints_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SplineBezierPoints_rna_type, ptr null, i32 -1, ptr @.str.186, i32 128, ptr @.str.187, ptr @.str.188, i32 0, ptr @.str.61, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SplineBezierPoints_rna_properties_begin, ptr @SplineBezierPoints_rna_properties_next, ptr @SplineBezierPoints_rna_properties_end, ptr @SplineBezierPoints_rna_properties_get, ptr null, ptr null, ptr @SplineBezierPoints_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@.str.59 = private unnamed_addr constant [11 x i8] c"shape_keys\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"Shape Keys\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rna_Curve_shape_keys = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_splines, ptr null, i32 -1, ptr @.str.59, i32 8388672, ptr @.str.60, ptr @.str.2, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_shape_keys_get, ptr null, ptr null, ptr null, ptr @RNA_Key }, align 8
@rna_Curve_show_handles = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_show_normal_face, ptr @rna_Curve_splines, i32 -1, ptr @.str.65, i32 3, ptr @.str.66, ptr @.str.67, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 274399232, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_show_handles_get, ptr @Curve_show_handles_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.62 = private unnamed_addr constant [8 x i8] c"splines\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"Splines\00", align 1
@.str.64 = private unnamed_addr constant [48 x i8] c"Collection of splines in this curve data object\00", align 1
@RNA_CurveSplines = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SurfaceCurve, ptr @RNA_Curve, ptr null, %struct.ListBase { ptr @rna_CurveSplines_rna_properties, ptr @rna_CurveSplines_active } }, ptr @.str.206, ptr null, ptr null, i32 4, ptr @.str.207, ptr @.str.208, ptr @.str.61, i32 17, ptr null, ptr @rna_CurveSplines_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_CurveSplines_new_func, ptr @rna_CurveSplines_clear_func } }, align 8
@RNA_Spline = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SplinePoints, ptr @RNA_BezierSplinePoint, ptr null, %struct.ListBase { ptr @rna_Spline_rna_properties, ptr @rna_Spline_character_index } }, ptr @.str.397, ptr null, ptr null, i32 4, ptr @.str.397, ptr @.str.398, ptr @.str.61, i32 17, ptr null, ptr @rna_Spline_rna_properties, ptr null, ptr null, ptr null, ptr @rna_Curve_spline_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Curve_show_normal_face = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_path_duration, ptr @rna_Curve_show_handles, i32 -1, ptr @.str.68, i32 3, ptr @.str.69, ptr @.str.70, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 274399232, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_show_normal_face_get, ptr @Curve_show_normal_face_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.65 = private unnamed_addr constant [13 x i8] c"show_handles\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"Draw Handles\00", align 1
@.str.67 = private unnamed_addr constant [35 x i8] c"Display Bezier handles in editmode\00", align 1
@rna_Curve_path_duration = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_use_path, ptr @rna_Curve_show_normal_face, i32 -1, ptr @.str.71, i32 8195, ptr @.str.72, ptr @.str.73, i32 0, ptr @.str.61, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 260, i32 0, ptr null, ptr null }, ptr @Curve_path_duration_get, ptr @Curve_path_duration_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 300000, i32 1, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.68 = private unnamed_addr constant [17 x i8] c"show_normal_face\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"Draw Normals\00", align 1
@.str.70 = private unnamed_addr constant [37 x i8] c"Display 3D curve normals in editmode\00", align 1
@rna_Curve_use_path = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_use_path_follow, ptr @rna_Curve_path_duration, i32 -1, ptr @.str.74, i32 3, ptr @.str.75, ptr @.str.76, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_use_path_get, ptr @Curve_use_path_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.71 = private unnamed_addr constant [14 x i8] c"path_duration\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"Path Length\00", align 1
@.str.73 = private unnamed_addr constant [120 x i8] c"The number of frames that are needed to traverse the path, defining the maximum value for the 'Evaluation Time' setting\00", align 1
@rna_Curve_use_path_follow = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_use_stretch, ptr @rna_Curve_use_path, i32 -1, ptr @.str.77, i32 3, ptr @.str.78, ptr @.str.79, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_use_path_follow_get, ptr @Curve_use_path_follow_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.74 = private unnamed_addr constant [9 x i8] c"use_path\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.76 = private unnamed_addr constant [46 x i8] c"Enable the curve to become a translation path\00", align 1
@rna_Curve_use_stretch = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_use_deform_bounds, ptr @rna_Curve_use_path_follow, i32 -1, ptr @.str.80, i32 3, ptr @.str.81, ptr @.str.82, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_use_stretch_get, ptr @Curve_use_stretch_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.77 = private unnamed_addr constant [16 x i8] c"use_path_follow\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"Follow\00", align 1
@.str.79 = private unnamed_addr constant [50 x i8] c"Make curve path children to rotate along the path\00", align 1
@rna_Curve_use_deform_bounds = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_use_radius, ptr @rna_Curve_use_stretch, i32 -1, ptr @.str.83, i32 3, ptr @.str.84, ptr @.str.85, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_use_deform_bounds_get, ptr @Curve_use_deform_bounds_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.80 = private unnamed_addr constant [12 x i8] c"use_stretch\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"Stretch\00", align 1
@.str.82 = private unnamed_addr constant [74 x i8] c"Option for curve-deform: make deformed child to stretch along entire path\00", align 1
@rna_Curve_use_radius = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_bevel_resolution, ptr @rna_Curve_use_deform_bounds, i32 -1, ptr @.str.86, i32 3, ptr @.str.87, ptr @.str.88, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_use_radius_get, ptr @Curve_use_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.83 = private unnamed_addr constant [18 x i8] c"use_deform_bounds\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"Bounds Clamp\00", align 1
@.str.85 = private unnamed_addr constant [70 x i8] c"Option for curve-deform: Use the mesh bounds to clamp the deformation\00", align 1
@rna_Curve_bevel_resolution = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_offset, ptr @rna_Curve_use_radius, i32 -1, ptr @.str.89, i32 8195, ptr @.str.90, ptr @.str.91, i32 0, ptr @.str.61, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 264, i32 1, ptr null, ptr null }, ptr @Curve_bevel_resolution_get, ptr @Curve_bevel_resolution_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 32, i32 0, i32 32, i32 1, i32 0, ptr null }, align 8
@.str.86 = private unnamed_addr constant [11 x i8] c"use_radius\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@.str.88 = private unnamed_addr constant [95 x i8] c"Option for paths and curve-deform: apply the curve radius with path following it and deforming\00", align 1
@rna_Curve_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_extrude, ptr @rna_Curve_bevel_resolution, i32 -1, ptr @.str.92, i32 3, ptr @.str.93, ptr @.str.94, i32 0, ptr @.str.61, i32 2, i32 65536, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_offset_get, ptr @Curve_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.89 = private unnamed_addr constant [17 x i8] c"bevel_resolution\00", align 1
@.str.90 = private unnamed_addr constant [17 x i8] c"Bevel Resolution\00", align 1
@.str.91 = private unnamed_addr constant [86 x i8] c"Bevel resolution when depth is non-zero and no specific bevel object has been defined\00", align 1
@rna_Curve_extrude = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_bevel_depth, ptr @rna_Curve_offset, i32 -1, ptr @.str.95, i32 8195, ptr @.str.96, ptr @.str.97, i32 0, ptr @.str.61, i32 2, i32 65536, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 276, i32 4, ptr null, ptr null }, ptr @Curve_extrude_get, ptr @Curve_extrude_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.92 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.94 = private unnamed_addr constant [47 x i8] c"Offset the curve to adjust the width of a text\00", align 1
@rna_Curve_bevel_depth = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_resolution_u, ptr @rna_Curve_extrude, i32 -1, ptr @.str.98, i32 8195, ptr @.str.99, ptr @.str.100, i32 0, ptr @.str.61, i32 2, i32 65536, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 280, i32 4, ptr null, ptr null }, ptr @Curve_bevel_depth_get, ptr @Curve_bevel_depth_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.95 = private unnamed_addr constant [8 x i8] c"extrude\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"Extrude\00", align 1
@.str.97 = private unnamed_addr constant [56 x i8] c"Amount of curve extrusion when not using a bevel object\00", align 1
@rna_Curve_resolution_u = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_resolution_v, ptr @rna_Curve_bevel_depth, i32 -1, ptr @.str.101, i32 8195, ptr @.str.102, ptr @.str.103, i32 0, ptr @.str.61, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_resolution_u_update_data, i32 0, ptr null, ptr null, i32 284, i32 1, ptr null, ptr null }, ptr @Curve_resolution_u_get, ptr @Curve_resolution_u_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 64, i32 1, i32 1024, i32 1, i32 0, ptr null }, align 8
@.str.98 = private unnamed_addr constant [12 x i8] c"bevel_depth\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"Bevel Depth\00", align 1
@.str.100 = private unnamed_addr constant [42 x i8] c"Bevel depth when not using a bevel object\00", align 1
@rna_Curve_resolution_v = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_render_resolution_u, ptr @rna_Curve_resolution_u, i32 -1, ptr @.str.104, i32 8195, ptr @.str.105, ptr @.str.106, i32 0, ptr @.str.61, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_resolution_v_update_data, i32 0, ptr null, ptr null, i32 286, i32 1, ptr null, ptr null }, ptr @Curve_resolution_v_get, ptr @Curve_resolution_v_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 1024, i32 1, i32 1024, i32 1, i32 0, ptr null }, align 8
@.str.101 = private unnamed_addr constant [13 x i8] c"resolution_u\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"Resolution U\00", align 1
@.str.103 = private unnamed_addr constant [34 x i8] c"Surface resolution in U direction\00", align 1
@rna_Curve_render_resolution_u = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_render_resolution_v, ptr @rna_Curve_resolution_v, i32 -1, ptr @.str.107, i32 8195, ptr @.str.108, ptr @.str.109, i32 0, ptr @.str.61, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 288, i32 1, ptr null, ptr null }, ptr @Curve_render_resolution_u_get, ptr @Curve_render_resolution_u_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 64, i32 0, i32 1024, i32 1, i32 0, ptr null }, align 8
@.str.104 = private unnamed_addr constant [13 x i8] c"resolution_v\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"Resolution V\00", align 1
@.str.106 = private unnamed_addr constant [34 x i8] c"Surface resolution in V direction\00", align 1
@rna_Curve_render_resolution_v = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_eval_time, ptr @rna_Curve_render_resolution_u, i32 -1, ptr @.str.110, i32 8195, ptr @.str.111, ptr @.str.112, i32 0, ptr @.str.61, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 290, i32 1, ptr null, ptr null }, ptr @Curve_render_resolution_v_get, ptr @Curve_render_resolution_v_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1024, i32 0, i32 1024, i32 1, i32 0, ptr null }, align 8
@.str.107 = private unnamed_addr constant [20 x i8] c"render_resolution_u\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"Render Resolution U\00", align 1
@.str.109 = private unnamed_addr constant [86 x i8] c"Surface resolution in U direction used while rendering (zero uses preview resolution)\00", align 1
@rna_Curve_eval_time = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_bevel_object, ptr @rna_Curve_render_resolution_v, i32 -1, ptr @.str.113, i32 8195, ptr @.str.114, ptr @.str.115, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 512, i32 4, ptr null, ptr null }, ptr @Curve_eval_time_get, ptr @Curve_eval_time_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.110 = private unnamed_addr constant [20 x i8] c"render_resolution_v\00", align 1
@.str.111 = private unnamed_addr constant [20 x i8] c"Render Resolution V\00", align 1
@.str.112 = private unnamed_addr constant [86 x i8] c"Surface resolution in V direction used while rendering (zero uses preview resolution)\00", align 1
@rna_Curve_bevel_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_taper_object, ptr @rna_Curve_eval_time, i32 -1, ptr @.str.116, i32 8388609, ptr @.str.117, ptr @.str.118, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_deps, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_bevel_object_get, ptr @Curve_bevel_object_set, ptr null, ptr @rna_Curve_otherObject_poll, ptr @RNA_Object }, align 8
@.str.113 = private unnamed_addr constant [10 x i8] c"eval_time\00", align 1
@.str.114 = private unnamed_addr constant [16 x i8] c"Evaluation Time\00", align 1
@.str.115 = private unnamed_addr constant [154 x i8] c"Parametric position along the length of the curve that Objects 'following' it should be at (position is evaluated by dividing by the 'Path Length' value)\00", align 1
@rna_Curve_taper_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_dimensions, ptr @rna_Curve_bevel_object, i32 -1, ptr @.str.119, i32 8388609, ptr @.str.120, ptr @.str.121, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_deps, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_taper_object_get, ptr @Curve_taper_object_set, ptr null, ptr @rna_Curve_otherObject_poll, ptr @RNA_Object }, align 8
@.str.116 = private unnamed_addr constant [13 x i8] c"bevel_object\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"Bevel Object\00", align 1
@.str.118 = private unnamed_addr constant [47 x i8] c"Curve object name that defines the bevel shape\00", align 1
@rna_Curve_dimensions = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_fill_mode, ptr @rna_Curve_taper_object, i32 -1, ptr @.str.122, i32 3, ptr @.str.123, ptr @.str.124, i32 0, ptr @.str.61, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_dimensions_get, ptr @Curve_dimensions_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Curve_dimensions_items, i32 2, i32 0 }, align 8
@.str.119 = private unnamed_addr constant [13 x i8] c"taper_object\00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c"Taper Object\00", align 1
@.str.121 = private unnamed_addr constant [49 x i8] c"Curve object name that defines the taper (width)\00", align 1
@rna_Curve_fill_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_twist_mode, ptr @rna_Curve_dimensions, i32 -1, ptr @.str.125, i32 3, ptr @.str.126, ptr @.str.127, i32 0, ptr @.str.61, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_fill_mode_get, ptr @Curve_fill_mode_set, ptr @rna_Curve_fill_mode_itemf, ptr null, ptr null, ptr null, ptr @rna_Curve_fill_mode_items, i32 4, i32 0 }, align 8
@.str.122 = private unnamed_addr constant [11 x i8] c"dimensions\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"Dimensions\00", align 1
@.str.124 = private unnamed_addr constant [27 x i8] c"Select 2D or 3D curve type\00", align 1
@rna_Curve_dimensions_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.418, i32 0, ptr @.str.418, ptr @.str.419 }, %struct.EnumPropertyItem { i32 1, ptr @.str.420, i32 0, ptr @.str.420, ptr @.str.421 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Curve_twist_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_bevel_factor_mapping_start, ptr @rna_Curve_fill_mode, i32 -1, ptr @.str.128, i32 3, ptr @.str.129, ptr @.str.130, i32 0, ptr @.str.61, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_twist_mode_get, ptr @Curve_twist_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Curve_twist_mode_items, i32 3, i32 0 }, align 8
@.str.125 = private unnamed_addr constant [10 x i8] c"fill_mode\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"Fill Mode\00", align 1
@.str.127 = private unnamed_addr constant [22 x i8] c"Mode of filling curve\00", align 1
@rna_Curve_fill_mode_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.422, i32 0, ptr @.str.423, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.48, i32 0, ptr @.str.49, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.424, i32 0, ptr @.str.425, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.426, i32 0, ptr @.str.427, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Curve_bevel_factor_mapping_start = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_bevel_factor_mapping_end, ptr @rna_Curve_twist_mode, i32 -1, ptr @.str.131, i32 3, ptr @.str.132, ptr @.str.133, i32 0, ptr @.str.61, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_bevel_factor_mapping_start_get, ptr @Curve_bevel_factor_mapping_start_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Curve_bevel_factor_mapping_start_items, i32 3, i32 0 }, align 8
@.str.128 = private unnamed_addr constant [11 x i8] c"twist_mode\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"Twist Method\00", align 1
@.str.130 = private unnamed_addr constant [43 x i8] c"The type of tilt calculation for 3D Curves\00", align 1
@rna_Curve_twist_mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.432, i32 0, ptr @.str.433, ptr @.str.434 }, %struct.EnumPropertyItem { i32 3, ptr @.str.435, i32 0, ptr @.str.436, ptr @.str.437 }, %struct.EnumPropertyItem { i32 4, ptr @.str.438, i32 0, ptr @.str.439, ptr @.str.440 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Curve_bevel_factor_mapping_end = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_twist_smooth, ptr @rna_Curve_bevel_factor_mapping_start, i32 -1, ptr @.str.134, i32 3, ptr @.str.135, ptr @.str.136, i32 0, ptr @.str.61, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_bevel_factor_mapping_end_get, ptr @Curve_bevel_factor_mapping_end_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Curve_bevel_factor_mapping_end_items, i32 3, i32 0 }, align 8
@.str.131 = private unnamed_addr constant [27 x i8] c"bevel_factor_mapping_start\00", align 1
@.str.132 = private unnamed_addr constant [19 x i8] c"Start Mapping Type\00", align 1
@.str.133 = private unnamed_addr constant [60 x i8] c"Determines how the start bevel factor is mapped to a spline\00", align 1
@rna_Curve_bevel_factor_mapping_start_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.441, i32 0, ptr @.str.442, ptr @.str.443 }, %struct.EnumPropertyItem { i32 1, ptr @.str.444, i32 0, ptr @.str.445, ptr @.str.446 }, %struct.EnumPropertyItem { i32 2, ptr @.str.447, i32 0, ptr @.str.397, ptr @.str.448 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Curve_twist_smooth = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_use_fill_deform, ptr @rna_Curve_bevel_factor_mapping_end, i32 -1, ptr @.str.137, i32 8195, ptr @.str.138, ptr @.str.139, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 252, i32 4, ptr null, ptr null }, ptr @Curve_twist_smooth_get, ptr @Curve_twist_smooth_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.134 = private unnamed_addr constant [25 x i8] c"bevel_factor_mapping_end\00", align 1
@.str.135 = private unnamed_addr constant [17 x i8] c"End Mapping Type\00", align 1
@.str.136 = private unnamed_addr constant [58 x i8] c"Determines how the end bevel factor is mapped to a spline\00", align 1
@rna_Curve_bevel_factor_mapping_end_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.441, i32 0, ptr @.str.442, ptr @.str.443 }, %struct.EnumPropertyItem { i32 1, ptr @.str.444, i32 0, ptr @.str.445, ptr @.str.446 }, %struct.EnumPropertyItem { i32 2, ptr @.str.447, i32 0, ptr @.str.397, ptr @.str.448 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Curve_use_fill_deform = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_use_fill_caps, ptr @rna_Curve_twist_smooth, i32 -1, ptr @.str.140, i32 3, ptr @.str.141, ptr @.str.142, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_use_fill_deform_get, ptr @Curve_use_fill_deform_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.137 = private unnamed_addr constant [13 x i8] c"twist_smooth\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"Twist Smooth\00", align 1
@.str.139 = private unnamed_addr constant [33 x i8] c"Smoothing iteration for tangents\00", align 1
@rna_Curve_use_fill_caps = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_use_map_taper, ptr @rna_Curve_use_fill_deform, i32 -1, ptr @.str.143, i32 3, ptr @.str.144, ptr @.str.145, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_use_fill_caps_get, ptr @Curve_use_fill_caps_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.140 = private unnamed_addr constant [16 x i8] c"use_fill_deform\00", align 1
@.str.141 = private unnamed_addr constant [14 x i8] c"Fill Deformed\00", align 1
@.str.142 = private unnamed_addr constant [55 x i8] c"Fill curve after applying shape keys and all modifiers\00", align 1
@rna_Curve_use_map_taper = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_use_auto_texspace, ptr @rna_Curve_use_fill_caps, i32 -1, ptr @.str.146, i32 3, ptr @.str.147, ptr @.str.148, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_use_map_taper_get, ptr @Curve_use_map_taper_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.143 = private unnamed_addr constant [14 x i8] c"use_fill_caps\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"Fill Caps\00", align 1
@.str.145 = private unnamed_addr constant [29 x i8] c"Fill caps for beveled curves\00", align 1
@rna_Curve_use_auto_texspace = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_texspace_location, ptr @rna_Curve_use_map_taper, i32 -1, ptr @.str.149, i32 3, ptr @.str.150, ptr @.str.151, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_texspace_set, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_use_auto_texspace_get, ptr @Curve_use_auto_texspace_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.146 = private unnamed_addr constant [14 x i8] c"use_map_taper\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"Map Taper\00", align 1
@.str.148 = private unnamed_addr constant [53 x i8] c"Map effect of taper object on actually beveled curve\00", align 1
@rna_Curve_texspace_location = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_texspace_size, ptr @rna_Curve_use_auto_texspace, i32 -1, ptr @.str.152, i32 3, ptr @.str.153, ptr @.str.154, i32 0, ptr @.str.61, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Curve_update_data, i32 0, ptr @rna_Curve_texspace_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Curve_texspace_location_get, ptr @Curve_texspace_location_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 5, float 0.000000e+00, ptr @rna_Curve_texspace_location_default }, align 8
@.str.149 = private unnamed_addr constant [18 x i8] c"use_auto_texspace\00", align 1
@.str.150 = private unnamed_addr constant [19 x i8] c"Auto Texture Space\00", align 1
@.str.151 = private unnamed_addr constant [76 x i8] c"Adjust active object's texture space automatically when transforming object\00", align 1
@rna_Curve_texspace_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_use_uv_as_generated, ptr @rna_Curve_texspace_location, i32 -1, ptr @.str.155, i32 67108867, ptr @.str.156, ptr @.str.157, i32 0, ptr @.str.61, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Curve_update_data, i32 0, ptr @rna_Curve_texspace_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Curve_texspace_size_get, ptr @Curve_texspace_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Curve_texspace_size_default }, align 8
@.str.152 = private unnamed_addr constant [18 x i8] c"texspace_location\00", align 1
@.str.153 = private unnamed_addr constant [23 x i8] c"Texture Space Location\00", align 1
@.str.154 = private unnamed_addr constant [23 x i8] c"Texture space location\00", align 1
@rna_Curve_texspace_location_default = internal global [3 x float] zeroinitializer, align 4
@rna_Curve_use_uv_as_generated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_materials, ptr @rna_Curve_texspace_size, i32 -1, ptr @.str.158, i32 3, ptr @.str.159, ptr @.str.160, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_use_uv_as_generated_get, ptr @Curve_use_uv_as_generated_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.155 = private unnamed_addr constant [14 x i8] c"texspace_size\00", align 1
@.str.156 = private unnamed_addr constant [19 x i8] c"Texture Space Size\00", align 1
@.str.157 = private unnamed_addr constant [19 x i8] c"Texture space size\00", align 1
@rna_Curve_texspace_size_default = internal global [3 x float] zeroinitializer, align 4
@.str.158 = private unnamed_addr constant [20 x i8] c"use_uv_as_generated\00", align 1
@.str.159 = private unnamed_addr constant [19 x i8] c"Use UV for mapping\00", align 1
@.str.160 = private unnamed_addr constant [53 x i8] c"Uses the UV values as Generated textured coordinates\00", align 1
@rna_Curve_bevel_factor_start = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_bevel_factor_end, ptr @rna_Curve_materials, i32 -1, ptr @.str.163, i32 8195, ptr @.str.164, ptr @.str.165, i32 0, ptr @.str.61, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 516, i32 4, ptr null, ptr null }, ptr @Curve_bevel_factor_start_get, ptr @Curve_bevel_factor_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.161 = private unnamed_addr constant [10 x i8] c"materials\00", align 1
@.str.162 = private unnamed_addr constant [10 x i8] c"Materials\00", align 1
@RNA_IDMaterials = external global %struct.StructRNA, align 8
@RNA_Material = external global %struct.StructRNA, align 8
@rna_Curve_bevel_factor_end = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_is_editmode, ptr @rna_Curve_bevel_factor_start, i32 -1, ptr @.str.166, i32 8195, ptr @.str.167, ptr @.str.168, i32 0, ptr @.str.61, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 520, i32 4, ptr null, ptr null }, ptr @Curve_bevel_factor_end_get, ptr @Curve_bevel_factor_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.163 = private unnamed_addr constant [19 x i8] c"bevel_factor_start\00", align 1
@.str.164 = private unnamed_addr constant [19 x i8] c"Start Bevel Factor\00", align 1
@.str.165 = private unnamed_addr constant [107 x i8] c"Factor that defines from where beveling of spline happens (0=from the very beginning, 1=from the very end)\00", align 1
@rna_Curve_is_editmode = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_animation_data, ptr @rna_Curve_bevel_factor_end, i32 -1, ptr @.str.169, i32 2, ptr @.str.170, ptr @.str.171, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_is_editmode_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.166 = private unnamed_addr constant [17 x i8] c"bevel_factor_end\00", align 1
@.str.167 = private unnamed_addr constant [17 x i8] c"End Bevel Factor\00", align 1
@.str.168 = private unnamed_addr constant [101 x i8] c"Factor that defines to where beveling of spline happens (0=to the very beginning, 1=to the very end)\00", align 1
@rna_Curve_animation_data = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Curve_is_editmode, i32 -1, ptr @.str.172, i32 8388608, ptr @.str.173, ptr @.str.174, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Curve_animation_data_get, ptr null, ptr null, ptr null, ptr @RNA_AnimData }, align 8
@.str.169 = private unnamed_addr constant [12 x i8] c"is_editmode\00", align 1
@.str.170 = private unnamed_addr constant [12 x i8] c"Is Editmode\00", align 1
@.str.171 = private unnamed_addr constant [27 x i8] c"True when used in editmode\00", align 1
@.str.172 = private unnamed_addr constant [15 x i8] c"animation_data\00", align 1
@.str.173 = private unnamed_addr constant [15 x i8] c"Animation Data\00", align 1
@.str.174 = private unnamed_addr constant [34 x i8] c"Animation data for this datablock\00", align 1
@rna_Curve_transform_shape_keys = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Curve_transform_matrix, i32 -1, ptr @.str.59, i32 3, ptr @.str.2, ptr @.str.177, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.175 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"Matrix\00", align 1
@rna_Curve_transform_matrix_default = internal global [16 x float] zeroinitializer, align 16
@rna_Curve_transform_matrix = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Curve_transform_shape_keys, ptr null, i32 -1, ptr @.str.175, i32 7, ptr @.str.2, ptr @.str.176, i32 0, ptr @.str.61, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 4, i32 4, i32 0], i32 16, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_Curve_transform_matrix_default }, align 8
@.str.177 = private unnamed_addr constant [21 x i8] c"Transform Shape Keys\00", align 1
@rna_Curve_validate_material_indices_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_Curve_transform_func, ptr null, %struct.ListBase { ptr @rna_Curve_validate_material_indices_result, ptr @rna_Curve_validate_material_indices_result } }, ptr @.str.182, i32 0, ptr @.str.183, ptr @Curve_validate_material_indices_call, ptr @rna_Curve_validate_material_indices_result }, align 8
@.str.178 = private unnamed_addr constant [10 x i8] c"transform\00", align 1
@.str.179 = private unnamed_addr constant [28 x i8] c"Transform curve by a matrix\00", align 1
@rna_Curve_transform_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Curve_validate_material_indices_func, ptr null, ptr null, %struct.ListBase { ptr @rna_Curve_transform_matrix, ptr @rna_Curve_transform_shape_keys } }, ptr @.str.178, i32 0, ptr @.str.179, ptr @Curve_transform_call, ptr null }, align 8
@.str.180 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.181 = private unnamed_addr constant [7 x i8] c"Result\00", align 1
@rna_Curve_validate_material_indices_result = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.180, i32 11, ptr @.str.181, ptr @.str.2, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.182 = private unnamed_addr constant [26 x i8] c"validate_material_indices\00", align 1
@.str.183 = private unnamed_addr constant [125 x i8] c"Validate material indices of splines or letters, return True when the curve has had invalid indices corrected (to default 0)\00", align 1
@RNA_XnorController = external global %struct.StructRNA, align 8
@.str.184 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.185 = private unnamed_addr constant [50 x i8] c"Curve datablock storing curves, splines and NURBS\00", align 1
@rna_ID_name = external global %struct.StringPropertyRNA, align 8
@rna_ID_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@RNA_Curve = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_CurveSplines, ptr @RNA_XnorController, ptr null, %struct.ListBase { ptr @rna_Curve_shape_keys, ptr @rna_Curve_animation_data } }, ptr @.str.184, ptr null, ptr null, i32 7, ptr @.str.184, ptr @.str.185, ptr @.str.61, i32 161, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_Curve_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase { ptr @rna_Curve_transform_func, ptr @rna_Curve_validate_material_indices_func } }, align 8
@rna_CurveSplines_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveSplines_active, ptr @rna_CurveSplines_rna_properties, i32 -1, ptr @.str.189, i32 8912896, ptr @.str.190, ptr @.str.191, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurveSplines_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.186 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.188 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_CurveSplines_active = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_CurveSplines_rna_type, i32 -1, ptr @.str.192, i32 8388609, ptr @.str.193, ptr @.str.194, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 67567616, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurveSplines_active_get, ptr @CurveSplines_active_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.189 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.190 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.191 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@.str.192 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.193 = private unnamed_addr constant [14 x i8] c"Active Spline\00", align 1
@.str.194 = private unnamed_addr constant [20 x i8] c"Active curve spline\00", align 1
@rna_CurveSplines_new_spline = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_CurveSplines_new_type, i32 -1, ptr @.str.197, i32 8388616, ptr @.str.2, ptr @.str.198, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Spline }, align 8
@.str.195 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.196 = private unnamed_addr constant [24 x i8] c"type for the new spline\00", align 1
@rna_CurveSplines_new_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.449, i32 0, ptr @.str.450, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.20, i32 0, ptr @.str.21, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.451, i32 0, ptr @.str.452, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.453, i32 0, ptr @.str.454, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.455, i32 0, ptr @.str.456, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_CurveSplines_new_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveSplines_new_spline, ptr null, i32 -1, ptr @.str.195, i32 7, ptr @.str.2, ptr @.str.196, i32 0, ptr @.str.61, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_CurveSplines_new_type_items, i32 5, i32 0 }, align 8
@.str.197 = private unnamed_addr constant [7 x i8] c"spline\00", align 1
@.str.198 = private unnamed_addr constant [25 x i8] c"The newly created spline\00", align 1
@rna_CurveSplines_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_CurveSplines_clear_func, ptr @rna_CurveSplines_new_func, ptr null, %struct.ListBase { ptr @rna_CurveSplines_remove_spline, ptr @rna_CurveSplines_remove_spline } }, ptr @.str.202, i32 16, ptr @.str.203, ptr @CurveSplines_remove_call, ptr null }, align 8
@.str.199 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.200 = private unnamed_addr constant [30 x i8] c"Add a new spline to the curve\00", align 1
@rna_CurveSplines_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_CurveSplines_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_CurveSplines_new_type, ptr @rna_CurveSplines_new_spline } }, ptr @.str.199, i32 0, ptr @.str.200, ptr @CurveSplines_new_call, ptr @rna_CurveSplines_new_spline }, align 8
@.str.201 = private unnamed_addr constant [21 x i8] c"The spline to remove\00", align 1
@rna_CurveSplines_remove_spline = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.197, i32 264196, ptr @.str.2, ptr @.str.201, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Spline }, align 8
@rna_CurveSplines_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_CurveSplines_remove_func, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.204, i32 0, ptr @.str.205, ptr @CurveSplines_clear_call, ptr null }, align 8
@.str.202 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.203 = private unnamed_addr constant [29 x i8] c"Remove a spline from a curve\00", align 1
@.str.204 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.205 = private unnamed_addr constant [31 x i8] c"Remove all spline from a curve\00", align 1
@RNA_SurfaceCurve = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_TextCurve, ptr @RNA_CurveSplines, ptr null, %struct.ListBase { ptr @rna_SurfaceCurve_use_uv_as_generated, ptr @rna_SurfaceCurve_use_uv_as_generated } }, ptr @.str.210, ptr null, ptr null, i32 7, ptr @.str.211, ptr @.str.212, ptr @.str.61, i32 188, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_Curve, ptr null, ptr @rna_Curve_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8
@.str.206 = private unnamed_addr constant [13 x i8] c"CurveSplines\00", align 1
@.str.207 = private unnamed_addr constant [14 x i8] c"Curve Splines\00", align 1
@.str.208 = private unnamed_addr constant [28 x i8] c"Collection of curve splines\00", align 1
@.str.209 = private unnamed_addr constant [19 x i8] c"Use UV for Mapping\00", align 1
@rna_SurfaceCurve_use_uv_as_generated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.158, i32 3, ptr @.str.209, ptr @.str.160, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SurfaceCurve_use_uv_as_generated_get, ptr @SurfaceCurve_use_uv_as_generated_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@RNA_TextCurve = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_TextBox, ptr @RNA_SurfaceCurve, ptr null, %struct.ListBase { ptr @rna_TextCurve_align, ptr @rna_TextCurve_use_uv_as_generated } }, ptr @.str.271, ptr null, ptr null, i32 7, ptr @.str.272, ptr @.str.273, ptr @.str.61, i32 186, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_Curve, ptr null, ptr @rna_Curve_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8
@.str.210 = private unnamed_addr constant [13 x i8] c"SurfaceCurve\00", align 1
@.str.211 = private unnamed_addr constant [14 x i8] c"Surface Curve\00", align 1
@.str.212 = private unnamed_addr constant [42 x i8] c"Curve datablock used for storing surfaces\00", align 1
@rna_TextCurve_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_small_caps_scale, ptr @rna_TextCurve_align, i32 -1, ptr @.str.216, i32 8195, ptr @.str.217, ptr @.str.2, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] [i32 3, i32 0, i32 0], i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 320, i32 4, ptr null, ptr null }, ptr @TextCurve_size_get, ptr @TextCurve_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.000000e+01, float 0x3F1A36E2E0000000, float 1.000000e+04, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.213 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.214 = private unnamed_addr constant [11 x i8] c"Text Align\00", align 1
@.str.215 = private unnamed_addr constant [34 x i8] c"Text align from the object center\00", align 1
@rna_TextCurve_align_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.457, i32 0, ptr @.str.458, ptr @.str.459 }, %struct.EnumPropertyItem { i32 1, ptr @.str.460, i32 0, ptr @.str.461, ptr @.str.462 }, %struct.EnumPropertyItem { i32 2, ptr @.str.463, i32 0, ptr @.str.464, ptr @.str.465 }, %struct.EnumPropertyItem { i32 3, ptr @.str.466, i32 0, ptr @.str.467, ptr @.str.468 }, %struct.EnumPropertyItem { i32 4, ptr @.str.469, i32 0, ptr @.str.470, ptr @.str.471 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_TextCurve_align = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_size, ptr null, i32 -1, ptr @.str.213, i32 3, ptr @.str.214, ptr @.str.215, i32 0, ptr @.str.61, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCurve_align_get, ptr @TextCurve_align_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_TextCurve_align_items, i32 5, i32 0 }, align 8
@rna_TextCurve_small_caps_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_space_line, ptr @rna_TextCurve_size, i32 -1, ptr @.str.218, i32 8195, ptr @.str.219, ptr @.str.220, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 256, i32 4, ptr null, ptr null }, ptr @TextCurve_small_caps_scale_get, ptr @TextCurve_small_caps_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.216 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.217 = private unnamed_addr constant [10 x i8] c"Font size\00", align 1
@rna_TextCurve_space_line = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_space_word, ptr @rna_TextCurve_small_caps_scale, i32 -1, ptr @.str.221, i32 8195, ptr @.str.222, ptr @.str.2, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 312, i32 4, ptr null, ptr null }, ptr @TextCurve_space_line_get, ptr @TextCurve_space_line_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.218 = private unnamed_addr constant [17 x i8] c"small_caps_scale\00", align 1
@.str.219 = private unnamed_addr constant [11 x i8] c"Small Caps\00", align 1
@.str.220 = private unnamed_addr constant [24 x i8] c"Scale of small capitals\00", align 1
@rna_TextCurve_space_word = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_space_character, ptr @rna_TextCurve_space_line, i32 -1, ptr @.str.223, i32 8195, ptr @.str.224, ptr @.str.2, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 324, i32 4, ptr null, ptr null }, ptr @TextCurve_space_word_get, ptr @TextCurve_space_word_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.221 = private unnamed_addr constant [11 x i8] c"space_line\00", align 1
@.str.222 = private unnamed_addr constant [31 x i8] c"Distance between lines of text\00", align 1
@rna_TextCurve_space_character = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_shear, ptr @rna_TextCurve_space_word, i32 -1, ptr @.str.225, i32 8195, ptr @.str.226, ptr @.str.2, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 308, i32 4, ptr null, ptr null }, ptr @TextCurve_space_character_get, ptr @TextCurve_space_character_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.223 = private unnamed_addr constant [11 x i8] c"space_word\00", align 1
@.str.224 = private unnamed_addr constant [22 x i8] c"Spacing between words\00", align 1
@rna_TextCurve_shear = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_offset_x, ptr @rna_TextCurve_space_character, i32 -1, ptr @.str.227, i32 8195, ptr @.str.228, ptr @.str.229, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 316, i32 4, ptr null, ptr null }, ptr @TextCurve_shear_get, ptr @TextCurve_shear_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.225 = private unnamed_addr constant [16 x i8] c"space_character\00", align 1
@.str.226 = private unnamed_addr constant [34 x i8] c"Global spacing between characters\00", align 1
@rna_TextCurve_offset_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_offset_y, ptr @rna_TextCurve_shear, i32 -1, ptr @.str.230, i32 8195, ptr @.str.231, ptr @.str.232, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 336, i32 4, ptr null, ptr null }, ptr @TextCurve_offset_x_get, ptr @TextCurve_offset_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -5.000000e+01, float 5.000000e+01, float -5.000000e+01, float 5.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.227 = private unnamed_addr constant [6 x i8] c"shear\00", align 1
@.str.228 = private unnamed_addr constant [6 x i8] c"Shear\00", align 1
@.str.229 = private unnamed_addr constant [31 x i8] c"Italic angle of the characters\00", align 1
@rna_TextCurve_offset_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_underline_position, ptr @rna_TextCurve_offset_x, i32 -1, ptr @.str.233, i32 8195, ptr @.str.234, ptr @.str.235, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 340, i32 4, ptr null, ptr null }, ptr @TextCurve_offset_y_get, ptr @TextCurve_offset_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -5.000000e+01, float 5.000000e+01, float -5.000000e+01, float 5.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.230 = private unnamed_addr constant [9 x i8] c"offset_x\00", align 1
@.str.231 = private unnamed_addr constant [9 x i8] c"X Offset\00", align 1
@.str.232 = private unnamed_addr constant [41 x i8] c"Horizontal offset from the object origin\00", align 1
@rna_TextCurve_underline_position = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_underline_height, ptr @rna_TextCurve_offset_y, i32 -1, ptr @.str.236, i32 8195, ptr @.str.237, ptr @.str.238, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 328, i32 4, ptr null, ptr null }, ptr @TextCurve_underline_position_get, ptr @TextCurve_underline_position_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xBFC99999A0000000, float 0x3FE99999A0000000, float 0xBFC99999A0000000, float 0x3FE99999A0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.233 = private unnamed_addr constant [9 x i8] c"offset_y\00", align 1
@.str.234 = private unnamed_addr constant [9 x i8] c"Y Offset\00", align 1
@.str.235 = private unnamed_addr constant [39 x i8] c"Vertical offset from the object origin\00", align 1
@rna_TextCurve_underline_height = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_text_boxes, ptr @rna_TextCurve_underline_position, i32 -1, ptr @.str.239, i32 8195, ptr @.str.240, ptr @.str.2, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 332, i32 4, ptr null, ptr null }, ptr @TextCurve_underline_height_get, ptr @TextCurve_underline_height_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x3FE99999A0000000, float 0.000000e+00, float 0x3FE99999A0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.236 = private unnamed_addr constant [19 x i8] c"underline_position\00", align 1
@.str.237 = private unnamed_addr constant [19 x i8] c"Underline Position\00", align 1
@.str.238 = private unnamed_addr constant [31 x i8] c"Vertical position of underline\00", align 1
@.str.239 = private unnamed_addr constant [17 x i8] c"underline_height\00", align 1
@.str.240 = private unnamed_addr constant [20 x i8] c"Underline Thickness\00", align 1
@rna_TextCurve_active_textbox = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_family, ptr @rna_TextCurve_text_boxes, i32 -1, ptr @.str.243, i32 8195, ptr @.str.244, ptr @.str.2, i32 0, ptr @.str.61, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 492, i32 0, ptr null, ptr null }, ptr @TextCurve_active_textbox_get, ptr @TextCurve_active_textbox_set, ptr null, ptr null, ptr @rna_Curve_active_textbox_index_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.241 = private unnamed_addr constant [11 x i8] c"text_boxes\00", align 1
@.str.242 = private unnamed_addr constant [10 x i8] c"Textboxes\00", align 1
@RNA_TextBox = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_TextCharacterFormat, ptr @RNA_TextCurve, ptr null, %struct.ListBase { ptr @rna_TextBox_rna_properties, ptr @rna_TextBox_height } }, ptr @.str.282, ptr null, ptr null, i32 4, ptr @.str.283, ptr @.str.284, ptr @.str.61, i32 17, ptr null, ptr @rna_TextBox_rna_properties, ptr null, ptr null, ptr null, ptr @rna_TextBox_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_TextCurve_family = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_body, ptr @rna_TextCurve_active_textbox, i32 -1, ptr @.str.245, i32 262145, ptr @.str.246, ptr @.str.247, i32 0, ptr @.str.61, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCurve_family_get, ptr @TextCurve_family_length, ptr @TextCurve_family_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@.str.243 = private unnamed_addr constant [15 x i8] c"active_textbox\00", align 1
@.str.244 = private unnamed_addr constant [20 x i8] c"The active text box\00", align 1
@rna_TextCurve_body = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_body_format, ptr @rna_TextCurve_family, i32 -1, ptr @.str.248, i32 262145, ptr @.str.249, ptr @.str.250, i32 0, ptr @.str.61, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCurve_body_get, ptr @TextCurve_body_length, ptr @TextCurve_body_set, ptr null, ptr null, ptr null, i32 8192, ptr @.str.2 }, align 8
@.str.245 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.246 = private unnamed_addr constant [12 x i8] c"Object Font\00", align 1
@.str.247 = private unnamed_addr constant [202 x i8] c"Use Objects as font characters (give font objects a common name followed by the character they represent, eg. 'family_a', 'family_b', etc, set this setting to 'family_', and turn on Vertex Duplication)\00", align 1
@.str.248 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.249 = private unnamed_addr constant [10 x i8] c"Body Text\00", align 1
@.str.250 = private unnamed_addr constant [28 x i8] c"Content of this text object\00", align 1
@rna_TextCurve_follow_curve = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_font, ptr @rna_TextCurve_body_format, i32 -1, ptr @.str.254, i32 8388609, ptr @.str.255, ptr @.str.256, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_deps, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCurve_follow_curve_get, ptr @TextCurve_follow_curve_set, ptr null, ptr @rna_Curve_otherObject_poll, ptr @RNA_Object }, align 8
@.str.251 = private unnamed_addr constant [12 x i8] c"body_format\00", align 1
@.str.252 = private unnamed_addr constant [15 x i8] c"Character Info\00", align 1
@.str.253 = private unnamed_addr constant [35 x i8] c"Stores the style of each character\00", align 1
@rna_TextCurve_font = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_font_bold, ptr @rna_TextCurve_follow_curve, i32 -1, ptr @.str.257, i32 8388673, ptr @.str.258, ptr @.str.2, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCurve_font_get, ptr @TextCurve_font_set, ptr null, ptr null, ptr @RNA_VectorFont }, align 8
@.str.254 = private unnamed_addr constant [13 x i8] c"follow_curve\00", align 1
@.str.255 = private unnamed_addr constant [14 x i8] c"Text on Curve\00", align 1
@.str.256 = private unnamed_addr constant [28 x i8] c"Curve deforming text object\00", align 1
@rna_TextCurve_font_bold = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_font_italic, ptr @rna_TextCurve_font, i32 -1, ptr @.str.259, i32 8388673, ptr @.str.260, ptr @.str.2, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCurve_font_bold_get, ptr @TextCurve_font_bold_set, ptr null, ptr null, ptr @RNA_VectorFont }, align 8
@.str.257 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.258 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@rna_TextCurve_font_italic = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_font_bold_italic, ptr @rna_TextCurve_font_bold, i32 -1, ptr @.str.261, i32 8388673, ptr @.str.262, ptr @.str.2, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCurve_font_italic_get, ptr @TextCurve_font_italic_set, ptr null, ptr null, ptr @RNA_VectorFont }, align 8
@.str.259 = private unnamed_addr constant [10 x i8] c"font_bold\00", align 1
@.str.260 = private unnamed_addr constant [10 x i8] c"Font Bold\00", align 1
@rna_TextCurve_font_bold_italic = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_edit_format, ptr @rna_TextCurve_font_italic, i32 -1, ptr @.str.263, i32 8388673, ptr @.str.264, ptr @.str.2, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCurve_font_bold_italic_get, ptr @TextCurve_font_bold_italic_set, ptr null, ptr null, ptr @RNA_VectorFont }, align 8
@.str.261 = private unnamed_addr constant [12 x i8] c"font_italic\00", align 1
@.str.262 = private unnamed_addr constant [12 x i8] c"Font Italic\00", align 1
@rna_TextCurve_edit_format = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_use_fast_edit, ptr @rna_TextCurve_font_bold_italic, i32 -1, ptr @.str.265, i32 8388608, ptr @.str.266, ptr @.str.267, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCurve_edit_format_get, ptr null, ptr null, ptr null, ptr @RNA_TextCharacterFormat }, align 8
@.str.263 = private unnamed_addr constant [17 x i8] c"font_bold_italic\00", align 1
@.str.264 = private unnamed_addr constant [17 x i8] c"Font Bold Italic\00", align 1
@rna_TextCurve_use_fast_edit = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCurve_use_uv_as_generated, ptr @rna_TextCurve_edit_format, i32 -1, ptr @.str.268, i32 3, ptr @.str.269, ptr @.str.270, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCurve_use_fast_edit_get, ptr @TextCurve_use_fast_edit_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.265 = private unnamed_addr constant [12 x i8] c"edit_format\00", align 1
@.str.266 = private unnamed_addr constant [12 x i8] c"Edit Format\00", align 1
@.str.267 = private unnamed_addr constant [38 x i8] c"Editing settings character formatting\00", align 1
@rna_TextCurve_use_uv_as_generated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_TextCurve_use_fast_edit, i32 -1, ptr @.str.158, i32 3, ptr @.str.209, ptr @.str.160, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCurve_use_uv_as_generated_get, ptr @TextCurve_use_uv_as_generated_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.268 = private unnamed_addr constant [14 x i8] c"use_fast_edit\00", align 1
@.str.269 = private unnamed_addr constant [13 x i8] c"Fast Editing\00", align 1
@.str.270 = private unnamed_addr constant [34 x i8] c"Don't fill polygons while editing\00", align 1
@.str.271 = private unnamed_addr constant [10 x i8] c"TextCurve\00", align 1
@.str.272 = private unnamed_addr constant [11 x i8] c"Text Curve\00", align 1
@.str.273 = private unnamed_addr constant [38 x i8] c"Curve datablock used for storing text\00", align 1
@rna_TextBox_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_TextBox_x, ptr @rna_TextBox_rna_properties, i32 -1, ptr @.str.189, i32 8912896, ptr @.str.190, ptr @.str.191, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextBox_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_TextBox_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TextBox_y, ptr @rna_TextBox_rna_type, i32 -1, ptr @.str.274, i32 8195, ptr @.str.275, ptr @.str.2, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr @TextBox_x_get, ptr @TextBox_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -5.000000e+01, float 5.000000e+01, float -5.000000e+01, float 5.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_TextBox_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TextBox_width, ptr @rna_TextBox_x, i32 -1, ptr @.str.276, i32 8195, ptr @.str.277, ptr @.str.2, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 4, i32 4, ptr null, ptr null }, ptr @TextBox_y_get, ptr @TextBox_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -5.000000e+01, float 5.000000e+01, float -5.000000e+01, float 5.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.274 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.275 = private unnamed_addr constant [17 x i8] c"Textbox X Offset\00", align 1
@rna_TextBox_width = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TextBox_height, ptr @rna_TextBox_y, i32 -1, ptr @.str.278, i32 8195, ptr @.str.279, ptr @.str.2, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 8, i32 4, ptr null, ptr null }, ptr @TextBox_width_get, ptr @TextBox_width_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+01, float 0.000000e+00, float 5.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.276 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.277 = private unnamed_addr constant [17 x i8] c"Textbox Y Offset\00", align 1
@rna_TextBox_height = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_TextBox_width, i32 -1, ptr @.str.280, i32 8195, ptr @.str.281, ptr @.str.2, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @TextBox_height_get, ptr @TextBox_height_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+01, float 0.000000e+00, float 5.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.278 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.279 = private unnamed_addr constant [14 x i8] c"Textbox Width\00", align 1
@.str.280 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.281 = private unnamed_addr constant [15 x i8] c"Textbox Height\00", align 1
@.str.282 = private unnamed_addr constant [8 x i8] c"TextBox\00", align 1
@.str.283 = private unnamed_addr constant [9 x i8] c"Text Box\00", align 1
@.str.284 = private unnamed_addr constant [29 x i8] c"Text bounding box for layout\00", align 1
@rna_TextCharacterFormat_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCharacterFormat_use_bold, ptr @rna_TextCharacterFormat_rna_properties, i32 -1, ptr @.str.189, i32 8912896, ptr @.str.190, ptr @.str.191, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCharacterFormat_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_TextCharacterFormat_use_bold = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCharacterFormat_use_italic, ptr @rna_TextCharacterFormat_rna_type, i32 -1, ptr @.str.285, i32 3, ptr @.str.286, ptr @.str.2, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCharacterFormat_use_bold_get, ptr @TextCharacterFormat_use_bold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_TextCharacterFormat_use_italic = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCharacterFormat_use_underline, ptr @rna_TextCharacterFormat_use_bold, i32 -1, ptr @.str.287, i32 3, ptr @.str.288, ptr @.str.2, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCharacterFormat_use_italic_get, ptr @TextCharacterFormat_use_italic_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.285 = private unnamed_addr constant [9 x i8] c"use_bold\00", align 1
@.str.286 = private unnamed_addr constant [5 x i8] c"Bold\00", align 1
@rna_TextCharacterFormat_use_underline = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCharacterFormat_use_small_caps, ptr @rna_TextCharacterFormat_use_italic, i32 -1, ptr @.str.289, i32 3, ptr @.str.290, ptr @.str.2, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCharacterFormat_use_underline_get, ptr @TextCharacterFormat_use_underline_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.287 = private unnamed_addr constant [11 x i8] c"use_italic\00", align 1
@.str.288 = private unnamed_addr constant [7 x i8] c"Italic\00", align 1
@rna_TextCharacterFormat_use_small_caps = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_TextCharacterFormat_material_index, ptr @rna_TextCharacterFormat_use_underline, i32 -1, ptr @.str.291, i32 3, ptr @.str.219, ptr @.str.2, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCharacterFormat_use_small_caps_get, ptr @TextCharacterFormat_use_small_caps_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.289 = private unnamed_addr constant [14 x i8] c"use_underline\00", align 1
@.str.290 = private unnamed_addr constant [10 x i8] c"Underline\00", align 1
@rna_TextCharacterFormat_material_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_TextCharacterFormat_use_small_caps, i32 -1, ptr @.str.292, i32 3, ptr @.str.293, ptr @.str.2, i32 0, ptr @.str.61, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TextCharacterFormat_material_index_get, ptr @TextCharacterFormat_material_index_set, ptr null, ptr null, ptr @rna_Curve_material_index_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.291 = private unnamed_addr constant [15 x i8] c"use_small_caps\00", align 1
@.str.292 = private unnamed_addr constant [15 x i8] c"material_index\00", align 1
@.str.293 = private unnamed_addr constant [15 x i8] c"Material Index\00", align 1
@RNA_SplinePoint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BezierSplinePoint, ptr @RNA_TextCharacterFormat, ptr null, %struct.ListBase { ptr @rna_SplinePoint_rna_properties, ptr @rna_SplinePoint_radius } }, ptr @.str.317, ptr null, ptr null, i32 4, ptr @.str.317, ptr @.str.318, ptr @.str.61, i32 17, ptr null, ptr @rna_SplinePoint_rna_properties, ptr null, ptr null, ptr null, ptr @rna_Curve_spline_point_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.294 = private unnamed_addr constant [20 x i8] c"TextCharacterFormat\00", align 1
@.str.295 = private unnamed_addr constant [22 x i8] c"Text Character Format\00", align 1
@.str.296 = private unnamed_addr constant [35 x i8] c"Text character formatting settings\00", align 1
@rna_SplinePoint_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SplinePoint_select, ptr @rna_SplinePoint_rna_properties, i32 -1, ptr @.str.189, i32 8912896, ptr @.str.190, ptr @.str.191, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SplinePoint_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_SplinePoint_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SplinePoint_hide, ptr @rna_SplinePoint_rna_type, i32 -1, ptr @.str.297, i32 8195, ptr @.str.298, ptr @.str.299, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 24, i32 1, ptr null, ptr null }, ptr @SplinePoint_select_get, ptr @SplinePoint_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SplinePoint_hide = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SplinePoint_co, ptr @rna_SplinePoint_select, i32 -1, ptr @.str.300, i32 8195, ptr @.str.301, ptr @.str.302, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 26, i32 1, ptr null, ptr null }, ptr @SplinePoint_hide_get, ptr @SplinePoint_hide_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.297 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.298 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.299 = private unnamed_addr constant [17 x i8] c"Selection status\00", align 1
@rna_SplinePoint_co = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SplinePoint_weight, ptr @rna_SplinePoint_hide, i32 -1, ptr @.str.303, i32 8195, ptr @.str.304, ptr @.str.305, i32 0, ptr @.str.61, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 4, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @SplinePoint_co_get, ptr @SplinePoint_co_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 5, float 0.000000e+00, ptr @rna_SplinePoint_co_default }, align 8
@.str.300 = private unnamed_addr constant [5 x i8] c"hide\00", align 1
@.str.301 = private unnamed_addr constant [5 x i8] c"Hide\00", align 1
@.str.302 = private unnamed_addr constant [18 x i8] c"Visibility status\00", align 1
@rna_SplinePoint_weight = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SplinePoint_tilt, ptr @rna_SplinePoint_co, i32 -1, ptr @.str.306, i32 8195, ptr @.str.307, ptr @.str.308, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @SplinePoint_weight_get, ptr @SplinePoint_weight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.303 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.304 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.305 = private unnamed_addr constant [18 x i8] c"Point coordinates\00", align 1
@rna_SplinePoint_co_default = internal global [4 x float] zeroinitializer, align 16
@rna_SplinePoint_tilt = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SplinePoint_weight_softbody, ptr @rna_SplinePoint_weight, i32 -1, ptr @.str.309, i32 8195, ptr @.str.310, ptr @.str.311, i32 0, ptr @.str.61, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @SplinePoint_tilt_get, ptr @SplinePoint_tilt_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC0778FDBA0000000, float 0x40778FDBA0000000, float 0xC0778FDBA0000000, float 0x40778FDBA0000000, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.306 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.307 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@.str.308 = private unnamed_addr constant [13 x i8] c"NURBS weight\00", align 1
@rna_SplinePoint_weight_softbody = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SplinePoint_radius, ptr @rna_SplinePoint_tilt, i32 -1, ptr @.str.312, i32 8195, ptr @.str.307, ptr @.str.313, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr @SplinePoint_weight_softbody_get, ptr @SplinePoint_weight_softbody_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.000000e+02, float 0x3F847AE140000000, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.309 = private unnamed_addr constant [5 x i8] c"tilt\00", align 1
@.str.310 = private unnamed_addr constant [5 x i8] c"Tilt\00", align 1
@.str.311 = private unnamed_addr constant [16 x i8] c"Tilt in 3D View\00", align 1
@rna_SplinePoint_radius = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SplinePoint_weight_softbody, i32 -1, ptr @.str.314, i32 8195, ptr @.str.315, ptr @.str.316, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 28, i32 4, ptr null, ptr null }, ptr @SplinePoint_radius_get, ptr @SplinePoint_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.312 = private unnamed_addr constant [16 x i8] c"weight_softbody\00", align 1
@.str.313 = private unnamed_addr constant [21 x i8] c"Softbody goal weight\00", align 1
@.str.314 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.315 = private unnamed_addr constant [13 x i8] c"Bevel Radius\00", align 1
@.str.316 = private unnamed_addr constant [20 x i8] c"Radius for beveling\00", align 1
@RNA_BezierSplinePoint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Spline, ptr @RNA_SplinePoint, ptr null, %struct.ListBase { ptr @rna_BezierSplinePoint_rna_properties, ptr @rna_BezierSplinePoint_radius } }, ptr @.str.341, ptr null, ptr null, i32 4, ptr @.str.342, ptr @.str.343, ptr @.str.61, i32 17, ptr null, ptr @rna_BezierSplinePoint_rna_properties, ptr null, ptr null, ptr null, ptr @rna_Curve_spline_point_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.317 = private unnamed_addr constant [12 x i8] c"SplinePoint\00", align 1
@.str.318 = private unnamed_addr constant [29 x i8] c"Spline point without handles\00", align 1
@rna_BezierSplinePoint_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BezierSplinePoint_select_left_handle, ptr @rna_BezierSplinePoint_rna_properties, i32 -1, ptr @.str.189, i32 8912896, ptr @.str.190, ptr @.str.191, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BezierSplinePoint_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BezierSplinePoint_select_left_handle = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BezierSplinePoint_select_right_handle, ptr @rna_BezierSplinePoint_rna_type, i32 -1, ptr @.str.319, i32 8195, ptr @.str.320, ptr @.str.321, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 51, i32 2, ptr null, ptr null }, ptr @BezierSplinePoint_select_left_handle_get, ptr @BezierSplinePoint_select_left_handle_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BezierSplinePoint_select_right_handle = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BezierSplinePoint_select_control_point, ptr @rna_BezierSplinePoint_select_left_handle, i32 -1, ptr @.str.322, i32 8195, ptr @.str.323, ptr @.str.324, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 53, i32 2, ptr null, ptr null }, ptr @BezierSplinePoint_select_right_handle_get, ptr @BezierSplinePoint_select_right_handle_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.319 = private unnamed_addr constant [19 x i8] c"select_left_handle\00", align 1
@.str.320 = private unnamed_addr constant [18 x i8] c"Handle 1 selected\00", align 1
@.str.321 = private unnamed_addr constant [26 x i8] c"Handle 1 selection status\00", align 1
@rna_BezierSplinePoint_select_control_point = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BezierSplinePoint_hide, ptr @rna_BezierSplinePoint_select_right_handle, i32 -1, ptr @.str.325, i32 8195, ptr @.str.326, ptr @.str.327, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 52, i32 2, ptr null, ptr null }, ptr @BezierSplinePoint_select_control_point_get, ptr @BezierSplinePoint_select_control_point_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.322 = private unnamed_addr constant [20 x i8] c"select_right_handle\00", align 1
@.str.323 = private unnamed_addr constant [18 x i8] c"Handle 2 selected\00", align 1
@.str.324 = private unnamed_addr constant [26 x i8] c"Handle 2 selection status\00", align 1
@rna_BezierSplinePoint_hide = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BezierSplinePoint_handle_left_type, ptr @rna_BezierSplinePoint_select_control_point, i32 -1, ptr @.str.300, i32 8195, ptr @.str.301, ptr @.str.302, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 54, i32 2, ptr null, ptr null }, ptr @BezierSplinePoint_hide_get, ptr @BezierSplinePoint_hide_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.325 = private unnamed_addr constant [21 x i8] c"select_control_point\00", align 1
@.str.326 = private unnamed_addr constant [23 x i8] c"Control Point selected\00", align 1
@.str.327 = private unnamed_addr constant [31 x i8] c"Control point selection status\00", align 1
@rna_BezierSplinePoint_handle_left_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_BezierSplinePoint_handle_right_type, ptr @rna_BezierSplinePoint_hide, i32 -1, ptr @.str.328, i32 3, ptr @.str.329, ptr @.str.330, i32 0, ptr @.str.61, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_points, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BezierSplinePoint_handle_left_type_get, ptr @BezierSplinePoint_handle_left_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_BezierSplinePoint_handle_left_type_items, i32 4, i32 0 }, align 8
@rna_BezierSplinePoint_handle_right_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_BezierSplinePoint_handle_left, ptr @rna_BezierSplinePoint_handle_left_type, i32 -1, ptr @.str.331, i32 3, ptr @.str.332, ptr @.str.330, i32 0, ptr @.str.61, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_points, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BezierSplinePoint_handle_right_type_get, ptr @BezierSplinePoint_handle_right_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_BezierSplinePoint_handle_right_type_items, i32 4, i32 0 }, align 8
@.str.328 = private unnamed_addr constant [17 x i8] c"handle_left_type\00", align 1
@.str.329 = private unnamed_addr constant [14 x i8] c"Handle 1 Type\00", align 1
@.str.330 = private unnamed_addr constant [13 x i8] c"Handle types\00", align 1
@rna_BezierSplinePoint_handle_left_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.7, i32 0, ptr @.str.475, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_BezierSplinePoint_handle_left = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BezierSplinePoint_co, ptr @rna_BezierSplinePoint_handle_right_type, i32 -1, ptr @.str.333, i32 3, ptr @.str.334, ptr @.str.335, i32 0, ptr @.str.61, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Curve_update_points, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @BezierSplinePoint_handle_left_get, ptr @BezierSplinePoint_handle_left_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 5, float 0.000000e+00, ptr @rna_BezierSplinePoint_handle_left_default }, align 8
@.str.331 = private unnamed_addr constant [18 x i8] c"handle_right_type\00", align 1
@.str.332 = private unnamed_addr constant [14 x i8] c"Handle 2 Type\00", align 1
@rna_BezierSplinePoint_handle_right_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.7, i32 0, ptr @.str.475, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_BezierSplinePoint_co = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BezierSplinePoint_handle_right, ptr @rna_BezierSplinePoint_handle_left, i32 -1, ptr @.str.303, i32 3, ptr @.str.336, ptr @.str.337, i32 0, ptr @.str.61, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Curve_update_points, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @BezierSplinePoint_co_get, ptr @BezierSplinePoint_co_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 5, float 0.000000e+00, ptr @rna_BezierSplinePoint_co_default }, align 8
@.str.333 = private unnamed_addr constant [12 x i8] c"handle_left\00", align 1
@.str.334 = private unnamed_addr constant [9 x i8] c"Handle 1\00", align 1
@.str.335 = private unnamed_addr constant [32 x i8] c"Coordinates of the first handle\00", align 1
@rna_BezierSplinePoint_handle_left_default = internal global [3 x float] zeroinitializer, align 4
@rna_BezierSplinePoint_handle_right = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BezierSplinePoint_tilt, ptr @rna_BezierSplinePoint_co, i32 -1, ptr @.str.338, i32 3, ptr @.str.339, ptr @.str.340, i32 0, ptr @.str.61, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Curve_update_points, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @BezierSplinePoint_handle_right_get, ptr @BezierSplinePoint_handle_right_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 5, float 0.000000e+00, ptr @rna_BezierSplinePoint_handle_right_default }, align 8
@.str.336 = private unnamed_addr constant [14 x i8] c"Control Point\00", align 1
@.str.337 = private unnamed_addr constant [33 x i8] c"Coordinates of the control point\00", align 1
@rna_BezierSplinePoint_co_default = internal global [3 x float] zeroinitializer, align 4
@rna_BezierSplinePoint_tilt = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BezierSplinePoint_weight_softbody, ptr @rna_BezierSplinePoint_handle_right, i32 -1, ptr @.str.309, i32 8195, ptr @.str.310, ptr @.str.311, i32 0, ptr @.str.61, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 36, i32 4, ptr null, ptr null }, ptr @BezierSplinePoint_tilt_get, ptr @BezierSplinePoint_tilt_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.338 = private unnamed_addr constant [13 x i8] c"handle_right\00", align 1
@.str.339 = private unnamed_addr constant [9 x i8] c"Handle 2\00", align 1
@.str.340 = private unnamed_addr constant [33 x i8] c"Coordinates of the second handle\00", align 1
@rna_BezierSplinePoint_handle_right_default = internal global [3 x float] zeroinitializer, align 4
@rna_BezierSplinePoint_weight_softbody = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BezierSplinePoint_radius, ptr @rna_BezierSplinePoint_tilt, i32 -1, ptr @.str.312, i32 8195, ptr @.str.307, ptr @.str.313, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 40, i32 4, ptr null, ptr null }, ptr @BezierSplinePoint_weight_softbody_get, ptr @BezierSplinePoint_weight_softbody_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.000000e+02, float 0x3F847AE140000000, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_BezierSplinePoint_radius = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BezierSplinePoint_weight_softbody, i32 -1, ptr @.str.314, i32 8195, ptr @.str.315, ptr @.str.316, i32 0, ptr @.str.61, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 44, i32 4, ptr null, ptr null }, ptr @BezierSplinePoint_radius_get, ptr @BezierSplinePoint_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.341 = private unnamed_addr constant [18 x i8] c"BezierSplinePoint\00", align 1
@.str.342 = private unnamed_addr constant [19 x i8] c"Bezier Curve Point\00", align 1
@.str.343 = private unnamed_addr constant [36 x i8] c"Bezier curve point with two handles\00", align 1
@rna_Spline_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_points, ptr @rna_Spline_rna_properties, i32 -1, ptr @.str.189, i32 8912896, ptr @.str.190, ptr @.str.191, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Spline_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.344 = private unnamed_addr constant [7 x i8] c"points\00", align 1
@.str.345 = private unnamed_addr constant [7 x i8] c"Points\00", align 1
@.str.346 = private unnamed_addr constant [60 x i8] c"Collection of points that make up this poly or nurbs spline\00", align 1
@RNA_SplinePoints = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SplineBezierPoints, ptr @RNA_Spline, ptr null, %struct.ListBase { ptr @rna_SplinePoints_rna_properties, ptr @rna_SplinePoints_rna_type } }, ptr @.str.404, ptr null, ptr null, i32 4, ptr @.str.405, ptr @.str.406, ptr @.str.61, i32 17, ptr null, ptr @rna_SplinePoints_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_SplinePoints_add_func, ptr @rna_SplinePoints_add_func } }, align 8
@rna_Spline_tilt_interpolation = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_radius_interpolation, ptr @rna_Spline_bezier_points, i32 -1, ptr @.str.350, i32 3, ptr @.str.351, ptr @.str.352, i32 0, ptr @.str.61, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Spline_tilt_interpolation_get, ptr @Spline_tilt_interpolation_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Spline_tilt_interpolation_items, i32 4, i32 0 }, align 8
@.str.347 = private unnamed_addr constant [14 x i8] c"bezier_points\00", align 1
@.str.348 = private unnamed_addr constant [14 x i8] c"Bezier Points\00", align 1
@.str.349 = private unnamed_addr constant [44 x i8] c"Collection of points for Bezier curves only\00", align 1
@RNA_SplineBezierPoints = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_DynamicPaintCanvasSettings, ptr @RNA_SplinePoints, ptr null, %struct.ListBase { ptr @rna_SplineBezierPoints_rna_properties, ptr @rna_SplineBezierPoints_rna_type } }, ptr @.str.407, ptr null, ptr null, i32 4, ptr @.str.408, ptr @.str.409, ptr @.str.61, i32 17, ptr null, ptr @rna_SplineBezierPoints_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_SplineBezierPoints_add_func, ptr @rna_SplineBezierPoints_add_func } }, align 8
@rna_Spline_radius_interpolation = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_type, ptr @rna_Spline_tilt_interpolation, i32 -1, ptr @.str.353, i32 3, ptr @.str.354, ptr @.str.355, i32 0, ptr @.str.61, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Spline_radius_interpolation_get, ptr @Spline_radius_interpolation_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Spline_radius_interpolation_items, i32 4, i32 0 }, align 8
@.str.350 = private unnamed_addr constant [19 x i8] c"tilt_interpolation\00", align 1
@.str.351 = private unnamed_addr constant [19 x i8] c"Tilt Interpolation\00", align 1
@.str.352 = private unnamed_addr constant [53 x i8] c"The type of tilt interpolation for 3D, Bezier curves\00", align 1
@rna_Spline_tilt_interpolation_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.17, i32 0, ptr @.str.18, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.453, i32 0, ptr @.str.454, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.451, i32 0, ptr @.str.452, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.476, i32 0, ptr @.str.456, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Spline_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_point_count_u, ptr @rna_Spline_radius_interpolation, i32 -1, ptr @.str.195, i32 3, ptr @.str.356, ptr @.str.357, i32 0, ptr @.str.61, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Spline_type_get, ptr @Spline_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Spline_type_items, i32 5, i32 0 }, align 8
@.str.353 = private unnamed_addr constant [21 x i8] c"radius_interpolation\00", align 1
@.str.354 = private unnamed_addr constant [21 x i8] c"Radius Interpolation\00", align 1
@.str.355 = private unnamed_addr constant [51 x i8] c"The type of radius interpolation for Bezier curves\00", align 1
@rna_Spline_radius_interpolation_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.17, i32 0, ptr @.str.18, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.453, i32 0, ptr @.str.454, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.451, i32 0, ptr @.str.452, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.476, i32 0, ptr @.str.456, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Spline_point_count_u = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_point_count_v, ptr @rna_Spline_type, i32 -1, ptr @.str.358, i32 8194, ptr @.str.359, ptr @.str.360, i32 0, ptr @.str.61, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 24, i32 0, ptr null, ptr null }, ptr @Spline_point_count_u_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.356 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.357 = private unnamed_addr constant [46 x i8] c"The interpolation type for this curve element\00", align 1
@rna_Spline_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.449, i32 0, ptr @.str.450, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.20, i32 0, ptr @.str.21, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.451, i32 0, ptr @.str.452, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.453, i32 0, ptr @.str.454, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.455, i32 0, ptr @.str.456, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Spline_point_count_v = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_order_u, ptr @rna_Spline_point_count_u, i32 -1, ptr @.str.361, i32 8194, ptr @.str.362, ptr @.str.363, i32 0, ptr @.str.61, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 28, i32 0, ptr null, ptr null }, ptr @Spline_point_count_v_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.358 = private unnamed_addr constant [14 x i8] c"point_count_u\00", align 1
@.str.359 = private unnamed_addr constant [9 x i8] c"Points U\00", align 1
@.str.360 = private unnamed_addr constant [64 x i8] c"Total number points for the curve or surface in the U direction\00", align 1
@rna_Spline_order_u = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_order_v, ptr @rna_Spline_point_count_v, i32 -1, ptr @.str.364, i32 8195, ptr @.str.365, ptr @.str.366, i32 0, ptr @.str.61, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Nurb_update_knot_u, i32 0, ptr null, ptr null, i32 40, i32 1, ptr null, ptr null }, ptr @Spline_order_u_get, ptr @Spline_order_u_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 2, i32 6, i32 2, i32 6, i32 1, i32 0, ptr null }, align 8
@.str.361 = private unnamed_addr constant [14 x i8] c"point_count_v\00", align 1
@.str.362 = private unnamed_addr constant [9 x i8] c"Points V\00", align 1
@.str.363 = private unnamed_addr constant [55 x i8] c"Total number points for the surface on the V direction\00", align 1
@rna_Spline_order_v = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_resolution_u, ptr @rna_Spline_order_u, i32 -1, ptr @.str.367, i32 8195, ptr @.str.368, ptr @.str.369, i32 0, ptr @.str.61, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Nurb_update_knot_v, i32 0, ptr null, ptr null, i32 42, i32 1, ptr null, ptr null }, ptr @Spline_order_v_get, ptr @Spline_order_v_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 2, i32 6, i32 2, i32 6, i32 1, i32 0, ptr null }, align 8
@.str.364 = private unnamed_addr constant [8 x i8] c"order_u\00", align 1
@.str.365 = private unnamed_addr constant [8 x i8] c"Order U\00", align 1
@.str.366 = private unnamed_addr constant [109 x i8] c"NURBS order in the U direction (for splines and surfaces, higher values let points influence a greater area)\00", align 1
@rna_Spline_resolution_u = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_resolution_v, ptr @rna_Spline_order_v, i32 -1, ptr @.str.101, i32 8195, ptr @.str.102, ptr @.str.370, i32 0, ptr @.str.61, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 36, i32 1, ptr null, ptr null }, ptr @Spline_resolution_u_get, ptr @Spline_resolution_u_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 64, i32 1, i32 1024, i32 1, i32 0, ptr null }, align 8
@.str.367 = private unnamed_addr constant [8 x i8] c"order_v\00", align 1
@.str.368 = private unnamed_addr constant [8 x i8] c"Order V\00", align 1
@.str.369 = private unnamed_addr constant [102 x i8] c"NURBS order in the V direction (for surfaces only, higher values let points influence a greater area)\00", align 1
@rna_Spline_resolution_v = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_use_cyclic_u, ptr @rna_Spline_resolution_u, i32 -1, ptr @.str.104, i32 8195, ptr @.str.105, ptr @.str.371, i32 0, ptr @.str.61, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 38, i32 1, ptr null, ptr null }, ptr @Spline_resolution_v_get, ptr @Spline_resolution_v_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 64, i32 1, i32 1024, i32 1, i32 0, ptr null }, align 8
@.str.370 = private unnamed_addr constant [42 x i8] c"Curve or Surface subdivisions per segment\00", align 1
@rna_Spline_use_cyclic_u = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_use_cyclic_v, ptr @rna_Spline_resolution_v, i32 -1, ptr @.str.372, i32 3, ptr @.str.373, ptr @.str.374, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Nurb_update_cyclic_u, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Spline_use_cyclic_u_get, ptr @Spline_use_cyclic_u_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.371 = private unnamed_addr constant [33 x i8] c"Surface subdivisions per segment\00", align 1
@rna_Spline_use_cyclic_v = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_use_endpoint_u, ptr @rna_Spline_use_cyclic_u, i32 -1, ptr @.str.375, i32 3, ptr @.str.376, ptr @.str.377, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Nurb_update_cyclic_v, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Spline_use_cyclic_v_get, ptr @Spline_use_cyclic_v_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.372 = private unnamed_addr constant [13 x i8] c"use_cyclic_u\00", align 1
@.str.373 = private unnamed_addr constant [9 x i8] c"Cyclic U\00", align 1
@.str.374 = private unnamed_addr constant [60 x i8] c"Make this curve or surface a closed loop in the U direction\00", align 1
@rna_Spline_use_endpoint_u = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_use_endpoint_v, ptr @rna_Spline_use_cyclic_v, i32 -1, ptr @.str.378, i32 3, ptr @.str.379, ptr @.str.380, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Nurb_update_knot_u, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Spline_use_endpoint_u_get, ptr @Spline_use_endpoint_u_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.375 = private unnamed_addr constant [13 x i8] c"use_cyclic_v\00", align 1
@.str.376 = private unnamed_addr constant [9 x i8] c"Cyclic V\00", align 1
@.str.377 = private unnamed_addr constant [51 x i8] c"Make this surface a closed loop in the V direction\00", align 1
@rna_Spline_use_endpoint_v = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_use_bezier_u, ptr @rna_Spline_use_endpoint_u, i32 -1, ptr @.str.381, i32 3, ptr @.str.382, ptr @.str.383, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Nurb_update_knot_v, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Spline_use_endpoint_v_get, ptr @Spline_use_endpoint_v_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.378 = private unnamed_addr constant [15 x i8] c"use_endpoint_u\00", align 1
@.str.379 = private unnamed_addr constant [11 x i8] c"Endpoint U\00", align 1
@.str.380 = private unnamed_addr constant [99 x i8] c"Make this nurbs curve or surface meet the endpoints in the U direction (Cyclic U must be disabled)\00", align 1
@rna_Spline_use_bezier_u = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_use_bezier_v, ptr @rna_Spline_use_endpoint_v, i32 -1, ptr @.str.384, i32 3, ptr @.str.385, ptr @.str.386, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Nurb_update_knot_u, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Spline_use_bezier_u_get, ptr @Spline_use_bezier_u_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.381 = private unnamed_addr constant [15 x i8] c"use_endpoint_v\00", align 1
@.str.382 = private unnamed_addr constant [11 x i8] c"Endpoint V\00", align 1
@.str.383 = private unnamed_addr constant [90 x i8] c"Make this nurbs surface meet the endpoints in the V direction (Cyclic V must be disabled)\00", align 1
@rna_Spline_use_bezier_v = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_use_smooth, ptr @rna_Spline_use_bezier_u, i32 -1, ptr @.str.387, i32 3, ptr @.str.388, ptr @.str.389, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Nurb_update_knot_v, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Spline_use_bezier_v_get, ptr @Spline_use_bezier_v_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.384 = private unnamed_addr constant [13 x i8] c"use_bezier_u\00", align 1
@.str.385 = private unnamed_addr constant [9 x i8] c"Bezier U\00", align 1
@.str.386 = private unnamed_addr constant [129 x i8] c"Make this nurbs curve or surface act like a Bezier spline in the U direction (Order U must be 3 or 4, Cyclic U must be disabled)\00", align 1
@rna_Spline_use_smooth = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_hide, ptr @rna_Spline_use_bezier_v, i32 -1, ptr @.str.390, i32 3, ptr @.str.391, ptr @.str.392, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Spline_use_smooth_get, ptr @Spline_use_smooth_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.387 = private unnamed_addr constant [13 x i8] c"use_bezier_v\00", align 1
@.str.388 = private unnamed_addr constant [9 x i8] c"Bezier V\00", align 1
@.str.389 = private unnamed_addr constant [120 x i8] c"Make this nurbs surface act like a Bezier spline in the V direction (Order V must be 3 or 4, Cyclic V must be disabled)\00", align 1
@rna_Spline_hide = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_material_index, ptr @rna_Spline_use_smooth, i32 -1, ptr @.str.300, i32 3, ptr @.str.301, ptr @.str.393, i32 0, ptr @.str.61, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Spline_hide_get, ptr @Spline_hide_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.390 = private unnamed_addr constant [11 x i8] c"use_smooth\00", align 1
@.str.391 = private unnamed_addr constant [7 x i8] c"Smooth\00", align 1
@.str.392 = private unnamed_addr constant [51 x i8] c"Smooth the normals of the surface or beveled curve\00", align 1
@rna_Spline_material_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Spline_character_index, ptr @rna_Spline_hide, i32 -1, ptr @.str.292, i32 8195, ptr @.str.293, ptr @.str.2, i32 0, ptr @.str.61, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 18, i32 1, ptr null, ptr null }, ptr @Spline_material_index_get, ptr @Spline_material_index_set, ptr null, ptr null, ptr @rna_Curve_material_index_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 32767, i32 0, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.393 = private unnamed_addr constant [29 x i8] c"Hide this curve in Edit mode\00", align 1
@rna_Spline_character_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Spline_material_index, i32 -1, ptr @.str.394, i32 8194, ptr @.str.395, ptr @.str.396, i32 0, ptr @.str.61, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Curve_update_data, i32 0, ptr null, ptr null, i32 84, i32 0, ptr null, ptr null }, ptr @Spline_character_index_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.394 = private unnamed_addr constant [16 x i8] c"character_index\00", align 1
@.str.395 = private unnamed_addr constant [16 x i8] c"Character Index\00", align 1
@.str.396 = private unnamed_addr constant [67 x i8] c"Location of this character in the text data (only for text curves)\00", align 1
@.str.397 = private unnamed_addr constant [7 x i8] c"Spline\00", align 1
@.str.398 = private unnamed_addr constant [86 x i8] c"Element of a curve, either NURBS, Bezier or Polyline or a character with text objects\00", align 1
@rna_SplinePoints_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SplinePoints_rna_properties, i32 -1, ptr @.str.189, i32 8912896, ptr @.str.190, ptr @.str.191, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SplinePoints_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.399 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.400 = private unnamed_addr constant [7 x i8] c"Number\00", align 1
@.str.401 = private unnamed_addr constant [38 x i8] c"Number of points to add to the spline\00", align 1
@rna_SplinePoints_add_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.399, i32 3, ptr @.str.400, ptr @.str.401, i32 0, ptr @.str.61, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 1, i32 1, ptr null }, align 8
@.str.402 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.403 = private unnamed_addr constant [38 x i8] c"Add a number of points to this spline\00", align 1
@rna_SplinePoints_add_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_SplinePoints_add_count, ptr @rna_SplinePoints_add_count } }, ptr @.str.402, i32 2064, ptr @.str.403, ptr @SplinePoints_add_call, ptr null }, align 8
@.str.404 = private unnamed_addr constant [13 x i8] c"SplinePoints\00", align 1
@.str.405 = private unnamed_addr constant [14 x i8] c"Spline Points\00", align 1
@.str.406 = private unnamed_addr constant [28 x i8] c"Collection of spline points\00", align 1
@rna_SplineBezierPoints_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SplineBezierPoints_rna_properties, i32 -1, ptr @.str.189, i32 8912896, ptr @.str.190, ptr @.str.191, i32 0, ptr @.str.61, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SplineBezierPoints_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_SplineBezierPoints_add_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.399, i32 3, ptr @.str.400, ptr @.str.401, i32 0, ptr @.str.61, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 1, i32 1, ptr null }, align 8
@rna_SplineBezierPoints_add_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_SplineBezierPoints_add_count, ptr @rna_SplineBezierPoints_add_count } }, ptr @.str.402, i32 2064, ptr @.str.403, ptr @SplineBezierPoints_add_call, ptr null }, align 8
@RNA_DynamicPaintCanvasSettings = external global %struct.StructRNA, align 8
@.str.407 = private unnamed_addr constant [19 x i8] c"SplineBezierPoints\00", align 1
@.str.408 = private unnamed_addr constant [21 x i8] c"Spline Bezier Points\00", align 1
@.str.409 = private unnamed_addr constant [35 x i8] c"Collection of spline bezirt points\00", align 1
@.str.410 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.411 = private unnamed_addr constant [8 x i8] c"strinfo\00", align 1
@.str.412 = private unnamed_addr constant [11 x i8] c"spline.new\00", align 1
@.str.413 = private unnamed_addr constant [16 x i8] c"spline.new.bezt\00", align 1
@.str.414 = private unnamed_addr constant [14 x i8] c"spline.new.bp\00", align 1
@.str.415 = private unnamed_addr constant [41 x i8] c"Curve '%s' does not contain spline given\00", align 1
@.str.416 = private unnamed_addr constant [39 x i8] c"Bezier spline cannot have points added\00", align 1
@.str.417 = private unnamed_addr constant [33 x i8] c"Only Bezier splines can be added\00", align 1
@.str.418 = private unnamed_addr constant [3 x i8] c"2D\00", align 1
@.str.419 = private unnamed_addr constant [30 x i8] c"Clamp the Z axis of the curve\00", align 1
@.str.420 = private unnamed_addr constant [3 x i8] c"3D\00", align 1
@.str.421 = private unnamed_addr constant [88 x i8] c"Allow editing on the Z axis of this curve, also allows tilt and curve radius to be used\00", align 1
@curve3d_fill_mode_items = internal constant [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.422, i32 0, ptr @.str.423, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.48, i32 0, ptr @.str.49, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.424, i32 0, ptr @.str.425, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.426, i32 0, ptr @.str.427, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@curve2d_fill_mode_items = internal constant [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.428, i32 0, ptr @.str.429, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.48, i32 0, ptr @.str.49, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.424, i32 0, ptr @.str.425, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.430, i32 0, ptr @.str.431, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.422 = private unnamed_addr constant [5 x i8] c"FULL\00", align 1
@.str.423 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.424 = private unnamed_addr constant [6 x i8] c"FRONT\00", align 1
@.str.425 = private unnamed_addr constant [6 x i8] c"Front\00", align 1
@.str.426 = private unnamed_addr constant [5 x i8] c"HALF\00", align 1
@.str.427 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.428 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.429 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.430 = private unnamed_addr constant [5 x i8] c"BOTH\00", align 1
@.str.431 = private unnamed_addr constant [5 x i8] c"Both\00", align 1
@.str.432 = private unnamed_addr constant [5 x i8] c"Z_UP\00", align 1
@.str.433 = private unnamed_addr constant [5 x i8] c"Z-Up\00", align 1
@.str.434 = private unnamed_addr constant [57 x i8] c"Use Z-Up axis to calculate the curve twist at each point\00", align 1
@.str.435 = private unnamed_addr constant [8 x i8] c"MINIMUM\00", align 1
@.str.436 = private unnamed_addr constant [8 x i8] c"Minimum\00", align 1
@.str.437 = private unnamed_addr constant [42 x i8] c"Use the least twist over the entire curve\00", align 1
@.str.438 = private unnamed_addr constant [8 x i8] c"TANGENT\00", align 1
@.str.439 = private unnamed_addr constant [8 x i8] c"Tangent\00", align 1
@.str.440 = private unnamed_addr constant [35 x i8] c"Use the tangent to calculate twist\00", align 1
@.str.441 = private unnamed_addr constant [11 x i8] c"RESOLUTION\00", align 1
@.str.442 = private unnamed_addr constant [11 x i8] c"Resolution\00", align 1
@.str.443 = private unnamed_addr constant [78 x i8] c"Map the bevel factor to the number of subdivisions of a spline (U resolution)\00", align 1
@.str.444 = private unnamed_addr constant [9 x i8] c"SEGMENTS\00", align 1
@.str.445 = private unnamed_addr constant [9 x i8] c"Segments\00", align 1
@.str.446 = private unnamed_addr constant [95 x i8] c"Map the bevel factor to the length of a segment and to the number of subdivisions of a segment\00", align 1
@.str.447 = private unnamed_addr constant [7 x i8] c"SPLINE\00", align 1
@.str.448 = private unnamed_addr constant [47 x i8] c"Map the bevel factor to the length of a spline\00", align 1
@.str.449 = private unnamed_addr constant [5 x i8] c"POLY\00", align 1
@.str.450 = private unnamed_addr constant [5 x i8] c"Poly\00", align 1
@.str.451 = private unnamed_addr constant [8 x i8] c"BSPLINE\00", align 1
@.str.452 = private unnamed_addr constant [8 x i8] c"BSpline\00", align 1
@.str.453 = private unnamed_addr constant [9 x i8] c"CARDINAL\00", align 1
@.str.454 = private unnamed_addr constant [9 x i8] c"Cardinal\00", align 1
@.str.455 = private unnamed_addr constant [6 x i8] c"NURBS\00", align 1
@.str.456 = private unnamed_addr constant [5 x i8] c"Ease\00", align 1
@.str.457 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1
@.str.458 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.459 = private unnamed_addr constant [23 x i8] c"Align text to the left\00", align 1
@.str.460 = private unnamed_addr constant [7 x i8] c"CENTER\00", align 1
@.str.461 = private unnamed_addr constant [7 x i8] c"Center\00", align 1
@.str.462 = private unnamed_addr constant [12 x i8] c"Center text\00", align 1
@.str.463 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1
@.str.464 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.465 = private unnamed_addr constant [24 x i8] c"Align text to the right\00", align 1
@.str.466 = private unnamed_addr constant [8 x i8] c"JUSTIFY\00", align 1
@.str.467 = private unnamed_addr constant [8 x i8] c"Justify\00", align 1
@.str.468 = private unnamed_addr constant [32 x i8] c"Align to the left and the right\00", align 1
@.str.469 = private unnamed_addr constant [6 x i8] c"FLUSH\00", align 1
@.str.470 = private unnamed_addr constant [6 x i8] c"Flush\00", align 1
@.str.471 = private unnamed_addr constant [62 x i8] c"Align to the left and the right, with equal character spacing\00", align 1
@.str.472 = private unnamed_addr constant [15 x i8] c"text_boxes[%d]\00", align 1
@.str.473 = private unnamed_addr constant [30 x i8] c"splines[%d].bezier_points[%d]\00", align 1
@.str.474 = private unnamed_addr constant [23 x i8] c"splines[%d].points[%d]\00", align 1
@.str.475 = private unnamed_addr constant [5 x i8] c"Auto\00", align 1
@.str.476 = private unnamed_addr constant [5 x i8] c"EASE\00", align 1
@.str.477 = private unnamed_addr constant [12 x i8] c"splines[%d]\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @Curve_shape_keys_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Key, ptr noundef %6) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @Curve_splines_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !48
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Curve_splines, ptr %4, align 8, !tbaa !50
  %5 = load ptr, ptr %1, align 8, !tbaa !52
  %6 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %5) #15
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef %6, ptr noundef null) #15
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !53
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %12 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #15, !noalias !54
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_Spline, ptr noundef %12) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %13

13:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal void @Curve_splines_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #15
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Spline, ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Curve_splines_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #15, !noalias !57
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_Spline, ptr noundef %8) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Curve_splines_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_show_handles_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 16
  %5 = load i16, ptr %4, align 8, !tbaa !60
  %6 = and i16 %5, 1
  %7 = xor i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_show_handles_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 16
  %7 = load i16, ptr %6, align 8, !tbaa !60
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_show_normal_face_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 16
  %5 = load i16, ptr %4, align 8, !tbaa !60
  %6 = and i16 %5, 2
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_show_normal_face_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 16
  %7 = load i16, ptr %6, align 8, !tbaa !60
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 2, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_path_duration_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 20
  %5 = load i32, ptr %4, align 4, !tbaa !61
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_path_duration_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 300000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 20
  store i32 %6, ptr %7, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_use_path_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !62
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_use_path_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_use_path_follow_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !62
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_use_path_follow_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_use_stretch_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !62
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_use_stretch_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_use_deform_bounds_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !62
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_use_deform_bounds_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = and i32 %7, -65
  %9 = select i1 %5, i32 64, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_use_radius_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !62
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_use_radius_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 0, i32 4096
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_bevel_resolution_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 21
  %5 = load i16, ptr %4, align 8, !tbaa !63
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_bevel_resolution_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 21
  store i16 %7, ptr %8, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Curve_offset_get(ptr nocapture noundef readonly %0) #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 24
  %4 = load float, ptr %3, align 8, !tbaa !64
  %5 = fadd float %4, -1.000000e+00
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_offset_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = fadd float %1, 1.000000e+00
  %5 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 24
  store float %4, ptr %5, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Curve_extrude_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 25
  %5 = load float, ptr %4, align 4, !tbaa !65
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_extrude_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 25
  store float %8, ptr %9, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Curve_bevel_depth_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 26
  %5 = load float, ptr %4, align 8, !tbaa !66
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_bevel_depth_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 26
  store float %1, ptr %5, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_resolution_u_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 27
  %5 = load i16, ptr %4, align 4, !tbaa !67
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_resolution_u_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1024)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 27
  store i16 %7, ptr %8, align 4, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_resolution_v_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 28
  %5 = load i16, ptr %4, align 2, !tbaa !68
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_resolution_v_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1024)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 28
  store i16 %7, ptr %8, align 2, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_render_resolution_u_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 29
  %5 = load i16, ptr %4, align 8, !tbaa !69
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_render_resolution_u_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1024)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 29
  store i16 %7, ptr %8, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_render_resolution_v_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 30
  %5 = load i16, ptr %4, align 2, !tbaa !70
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_render_resolution_v_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1024)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 30
  store i16 %7, ptr %8, align 2, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Curve_eval_time_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 64
  %5 = load float, ptr %4, align 8, !tbaa !71
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_eval_time_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 64
  store float %1, ptr %5, align 8, !tbaa !71
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Curve_bevel_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !52, !noalias !72
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !75, !noalias !72
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_Object, ptr noundef nonnull %5) #15
  br label %9

8:                                                ; preds = %2
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #15
  br label %9

9:                                                ; preds = %7, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_bevel_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #6 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !52
  %6 = icmp eq ptr %4, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !76
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = icmp eq ptr %13, %5
  br i1 %14, label %18, label %15

15:                                               ; preds = %2, %11
  %16 = phi ptr [ %4, %11 ], [ null, %2 ]
  %17 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 5
  store ptr %16, ptr %17, align 8, !tbaa !75
  br label %18

18:                                               ; preds = %15, %7, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Curve_taper_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !52, !noalias !81
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !84, !noalias !81
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_Object, ptr noundef nonnull %5) #15
  br label %9

8:                                                ; preds = %2
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #15
  br label %9

9:                                                ; preds = %7, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_taper_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #6 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !52
  %6 = icmp eq ptr %4, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !76
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = icmp eq ptr %13, %5
  br i1 %14, label %18, label %15

15:                                               ; preds = %2, %11
  %16 = phi ptr [ %4, %11 ], [ null, %2 ]
  %17 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 6
  store ptr %16, ptr %17, align 8, !tbaa !84
  br label %18

18:                                               ; preds = %15, %7, %11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_dimensions_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !62
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @Curve_dimensions_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = icmp eq i32 %1, 1
  %5 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 23
  %6 = load i32, ptr %5, align 4, !tbaa !62
  %7 = and i32 %6, -2
  %8 = zext i1 %4 to i32
  %9 = or disjoint i32 %7, %8
  store i32 %9, ptr %5, align 4, !tbaa !62
  tail call void @BKE_curve_curve_dimension_update(ptr noundef %3) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_fill_mode_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !62
  %6 = and i32 %5, 6
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_fill_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 23
  %6 = load i32, ptr %5, align 4, !tbaa !62
  %7 = and i32 %6, -7
  %8 = or i32 %7, %1
  store i32 %8, ptr %5, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_twist_mode_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 17
  %5 = load i16, ptr %4, align 2, !tbaa !85
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_twist_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 17
  store i16 %5, ptr %6, align 2, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_bevel_factor_mapping_start_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 67
  %5 = load i8, ptr %4, align 4, !tbaa !86
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_bevel_factor_mapping_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 67
  store i8 %5, ptr %6, align 4, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_bevel_factor_mapping_end_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 68
  %5 = load i8, ptr %4, align 1, !tbaa !87
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_bevel_factor_mapping_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 68
  store i8 %5, ptr %6, align 1, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Curve_twist_smooth_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 18
  %5 = load float, ptr %4, align 4, !tbaa !88
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_twist_smooth_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 18
  store float %1, ptr %5, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_use_fill_deform_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !62
  %6 = lshr i32 %5, 13
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_use_fill_deform_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = and i32 %7, -8193
  %9 = select i1 %5, i32 0, i32 8192
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_use_fill_caps_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !62
  %6 = lshr i32 %5, 14
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_use_fill_caps_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = and i32 %7, -16385
  %9 = select i1 %5, i32 0, i32 16384
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_use_map_taper_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !62
  %6 = lshr i32 %5, 15
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_use_map_taper_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = and i32 %7, -32769
  %9 = select i1 %5, i32 0, i32 32768
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_use_auto_texspace_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 15
  %5 = load i16, ptr %4, align 2, !tbaa !89
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_use_auto_texspace_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 15
  %7 = load i16, ptr %6, align 2, !tbaa !89
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !89
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Curve_texspace_location_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @BKE_curve_texspace_calc(ptr noundef %4) #15
  br label %9

9:                                                ; preds = %2, %8
  %10 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 11
  %11 = load float, ptr %10, align 4, !tbaa !91
  store float %11, ptr %1, align 4, !tbaa !91
  %12 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 11, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !91
  %14 = getelementptr inbounds float, ptr %1, i64 1
  store float %13, ptr %14, align 4, !tbaa !91
  %15 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 11, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !91
  %17 = getelementptr inbounds float, ptr %1, i64 2
  store float %16, ptr %17, align 4, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_texspace_location_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 11
  %6 = load float, ptr %1, align 4, !tbaa !91
  store float %6, ptr %5, align 4, !tbaa !91
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !91
  %9 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 11, i64 1
  store float %8, ptr %9, align 4, !tbaa !91
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !91
  %12 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 11, i64 2
  store float %11, ptr %12, align 4, !tbaa !91
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Curve_texspace_size_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @BKE_curve_texspace_calc(ptr noundef %4) #15
  br label %9

9:                                                ; preds = %2, %8
  %10 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 12
  %11 = load float, ptr %10, align 4, !tbaa !91
  store float %11, ptr %1, align 4, !tbaa !91
  %12 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 12, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !91
  %14 = getelementptr inbounds float, ptr %1, i64 1
  store float %13, ptr %14, align 4, !tbaa !91
  %15 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 12, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !91
  %17 = getelementptr inbounds float, ptr %1, i64 2
  store float %16, ptr %17, align 4, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_texspace_size_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 12
  %6 = load float, ptr %1, align 4, !tbaa !91
  store float %6, ptr %5, align 4, !tbaa !91
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !91
  %9 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 12, i64 1
  store float %8, ptr %9, align 4, !tbaa !91
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !91
  %12 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 12, i64 2
  store float %11, ptr %12, align 4, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_use_uv_as_generated_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !62
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_use_uv_as_generated_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Curve_materials_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 22
  %9 = load i16, ptr %8, align 2, !tbaa !93
  %10 = sext i16 %9 to i32
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local void @Curve_materials_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !48
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Curve_materials, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 22
  %10 = load i16, ptr %9, align 2, !tbaa !93
  %11 = sext i16 %10 to i32
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %8, i32 noundef 8, i32 noundef %11, i8 noundef zeroext 0, ptr noundef null) #15
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !53
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %17 = tail call ptr @rna_iterator_array_dereference_get(ptr noundef %0) #15, !noalias !94
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_Material, ptr noundef %17) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %18

18:                                               ; preds = %15, %2
  ret void
}

declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @Curve_materials_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_dereference_get(ptr noundef %1) #15
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Material, ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Curve_materials_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %8 = tail call ptr @rna_iterator_array_dereference_get(ptr noundef %0) #15, !noalias !97
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_Material, ptr noundef %8) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Curve_materials_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #15
  ret void
}

declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Curve_materials_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #15
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !48
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_Curve_materials, ptr %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  %13 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 22
  %14 = load i16, ptr %13, align 2, !tbaa !93
  %15 = sext i16 %14 to i32
  call void @rna_iterator_array_begin(ptr noundef nonnull %5, ptr noundef %12, i32 noundef 8, i32 noundef %15, i8 noundef zeroext 0, ptr noundef null) #15
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !53
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %21 = call ptr @rna_iterator_array_dereference_get(ptr noundef nonnull %5) #15, !noalias !100
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_Material, ptr noundef %21) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  br label %22

22:                                               ; preds = %3, %19
  %23 = load i32, ptr %16, align 8, !tbaa !53
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %68, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %27 = icmp sgt i32 %1, -1
  %28 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %29, %1
  %31 = select i1 %27, i1 %30, i1 false
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, ptr noundef nonnull @__func__.Curve_materials_lookup_int, i32 noundef %1)
  br label %63

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !103
  %37 = icmp eq ptr %36, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %34
  %39 = icmp sgt i32 %1, 0
  %40 = load i32, ptr %16, align 8
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %50

43:                                               ; preds = %38, %43
  %44 = phi i32 [ %45, %43 ], [ %1, %38 ]
  %45 = add nsw i32 %44, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %5) #15
  %46 = icmp sgt i32 %44, 1
  %47 = load i32, ptr %16, align 8
  %48 = icmp ne i32 %47, 0
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %43, label %50, !llvm.loop !105

50:                                               ; preds = %43, %38
  %51 = phi i32 [ %1, %38 ], [ %45, %43 ]
  %52 = phi i1 [ %41, %38 ], [ %48, %43 ]
  %53 = icmp eq i32 %51, 0
  %54 = select i1 %53, i1 %52, i1 false
  %55 = zext i1 %54 to i32
  br label %63

56:                                               ; preds = %34
  %57 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !108
  %59 = mul nsw i32 %58, %1
  %60 = load ptr, ptr %26, align 8, !tbaa !109
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  store ptr %62, ptr %26, align 8, !tbaa !109
  br label %63

63:                                               ; preds = %50, %56, %32
  %64 = phi i32 [ 0, %32 ], [ %55, %50 ], [ 1, %56 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  %67 = call ptr @rna_iterator_array_dereference_get(ptr noundef nonnull %5) #15, !noalias !110
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_Material, ptr noundef %67) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  br label %68

68:                                               ; preds = %63, %66, %22
  %69 = phi i32 [ 0, %22 ], [ %64, %66 ], [ %64, %63 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #15
  ret i32 %69
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @Curve_materials_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #15
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %10, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !48
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 2
  store ptr @rna_Curve_materials, ptr %11, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.Curve, ptr %9, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !92
  %14 = getelementptr inbounds %struct.Curve, ptr %9, i64 0, i32 22
  %15 = load i16, ptr %14, align 2, !tbaa !93
  %16 = sext i16 %15 to i32
  call void @rna_iterator_array_begin(ptr noundef nonnull %6, ptr noundef %13, i32 noundef 8, i32 noundef %16, i8 noundef zeroext 0, ptr noundef null) #15
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !53
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %22 = call ptr @rna_iterator_array_dereference_get(ptr noundef nonnull %6) #15, !noalias !113
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull @RNA_Material, ptr noundef %22) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  br label %23

23:                                               ; preds = %3, %20
  %24 = load i32, ptr %17, align 8, !tbaa !53
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %63, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %28 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  br label %29

29:                                               ; preds = %26, %57
  %30 = phi i8 [ 0, %26 ], [ %52, %57 ]
  %31 = load ptr, ptr %28, align 8, !tbaa !116
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %29
  %34 = call i32 @ID_name_length(ptr noundef nonnull %27) #15
  %35 = icmp slt i32 %34, 1024
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  call void @ID_name_get(ptr noundef nonnull %27, ptr noundef nonnull %7) #15
  %37 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %48

39:                                               ; preds = %33
  %40 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %41 = add nuw nsw i32 %34, 1
  %42 = zext nneg i32 %41 to i64
  %43 = call ptr %40(i64 noundef %42, ptr noundef nonnull @.str.58) #15
  call void @ID_name_get(ptr noundef nonnull %27, ptr noundef %43) #15
  %44 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(1) %1) #16
  %45 = icmp eq i32 %44, 0
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %46(ptr noundef %43) #15
  br i1 %45, label %47, label %48

47:                                               ; preds = %39, %36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %27, i64 24, i1 false)
  br label %48

48:                                               ; preds = %47, %39, %36
  %49 = phi i8 [ %30, %36 ], [ %30, %39 ], [ 1, %47 ]
  %50 = phi i1 [ true, %36 ], [ true, %39 ], [ false, %47 ]
  br i1 %50, label %51, label %60

51:                                               ; preds = %48, %29
  %52 = phi i8 [ %49, %48 ], [ %30, %29 ]
  call void @rna_iterator_array_next(ptr noundef nonnull %6) #15
  %53 = load i32, ptr %17, align 8, !tbaa !53
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %56 = call ptr @rna_iterator_array_dereference_get(ptr noundef nonnull %6) #15, !noalias !117
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %6, ptr noundef nonnull @RNA_Material, ptr noundef %56) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  br label %57

57:                                               ; preds = %51, %55
  %58 = load i32, ptr %17, align 8, !tbaa !53
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %29, !llvm.loop !120

60:                                               ; preds = %48, %57
  %61 = phi i8 [ %52, %57 ], [ %49, %48 ]
  %62 = zext nneg i8 %61 to i32
  br label %63

63:                                               ; preds = %60, %23
  %64 = phi i32 [ 0, %23 ], [ %62, %60 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #15
  ret i32 %64
}

declare i32 @ID_name_length(ptr noundef) local_unnamed_addr #2

declare void @ID_name_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Curve_bevel_factor_start_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 65
  %5 = load float, ptr %4, align 4, !tbaa !121
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_bevel_factor_start_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 65
  store float %8, ptr %9, align 4, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Curve_bevel_factor_end_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 66
  %5 = load float, ptr %4, align 8, !tbaa !122
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Curve_bevel_factor_end_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 66
  store float %8, ptr %9, align 8, !tbaa !122
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Curve_is_editmode_get(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = tail call signext i16 @BKE_curve_type_get(ptr noundef %2) #15
  %4 = icmp eq i16 %3, 4
  %5 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 53
  %6 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 4
  %7 = select i1 %4, ptr %5, ptr %6
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local void @Curve_animation_data_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !123
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_AnimData, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveSplines_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !48
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_CurveSplines_rna_properties, ptr %4, align 8, !tbaa !50
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !53
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @CurveSplines_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveSplines_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CurveSplines_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @CurveSplines_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CurveSplines_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CurveSplines_active_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34, !noalias !124
  %5 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %4) #15, !noalias !124
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 31
  %7 = load i32, ptr %6, align 4, !tbaa !127, !noalias !124
  %8 = tail call ptr @BLI_findlink(ptr noundef %5, i32 noundef %7) #15, !noalias !124
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Spline, ptr noundef nonnull %8) #15
  br label %12

11:                                               ; preds = %2
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef null, ptr noundef null) #15
  br label %12

12:                                               ; preds = %10, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveSplines_active_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %6) #15
  %8 = icmp eq ptr %4, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @BLI_findindex(ptr noundef %7, ptr noundef nonnull %4) #15
  br label %11

11:                                               ; preds = %2, %9
  %12 = phi i32 [ %10, %9 ], [ -1, %2 ]
  %13 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 31
  store i32 %12, ptr %13, align 4, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SurfaceCurve_use_uv_as_generated_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !62
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SurfaceCurve_use_uv_as_generated_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TextCurve_align_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 35
  %5 = load i8, ptr %4, align 2, !tbaa !128
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextCurve_align_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 35
  store i8 %5, ptr %6, align 2, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TextCurve_size_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 40
  %5 = load float, ptr %4, align 8, !tbaa !129
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextCurve_size_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0x3F1A36E2E0000000
  %6 = fcmp ogt float %1, 1.000000e+04
  %7 = select i1 %6, float 1.000000e+04, float %1
  %8 = select i1 %5, float 0x3F1A36E2E0000000, float %7
  %9 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 40
  store float %8, ptr %9, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TextCurve_small_caps_scale_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 19
  %5 = load float, ptr %4, align 8, !tbaa !130
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextCurve_small_caps_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 19
  store float %1, ptr %5, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TextCurve_space_line_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 38
  %5 = load float, ptr %4, align 8, !tbaa !131
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextCurve_space_line_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 38
  store float %8, ptr %9, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TextCurve_space_word_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 41
  %5 = load float, ptr %4, align 4, !tbaa !132
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextCurve_space_word_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 41
  store float %8, ptr %9, align 4, !tbaa !132
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TextCurve_space_character_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 37
  %5 = load float, ptr %4, align 4, !tbaa !133
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextCurve_space_character_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 37
  store float %8, ptr %9, align 4, !tbaa !133
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TextCurve_shear_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 39
  %5 = load float, ptr %4, align 4, !tbaa !134
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextCurve_shear_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, -1.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float -1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 39
  store float %8, ptr %9, align 4, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TextCurve_offset_x_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 44
  %5 = load float, ptr %4, align 8, !tbaa !135
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextCurve_offset_x_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, -5.000000e+01
  %6 = fcmp ogt float %1, 5.000000e+01
  %7 = select i1 %6, float 5.000000e+01, float %1
  %8 = select i1 %5, float -5.000000e+01, float %7
  %9 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 44
  store float %8, ptr %9, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TextCurve_offset_y_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 45
  %5 = load float, ptr %4, align 4, !tbaa !136
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextCurve_offset_y_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, -5.000000e+01
  %6 = fcmp ogt float %1, 5.000000e+01
  %7 = select i1 %6, float 5.000000e+01, float %1
  %8 = select i1 %5, float -5.000000e+01, float %7
  %9 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 45
  store float %8, ptr %9, align 4, !tbaa !136
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TextCurve_underline_position_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 42
  %5 = load float, ptr %4, align 8, !tbaa !137
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextCurve_underline_position_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0xBFC99999A0000000
  %6 = fcmp ogt float %1, 0x3FE99999A0000000
  %7 = select i1 %6, float 0x3FE99999A0000000, float %1
  %8 = select i1 %5, float 0xBFC99999A0000000, float %7
  %9 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 42
  store float %8, ptr %9, align 8, !tbaa !137
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TextCurve_underline_height_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 43
  %5 = load float, ptr %4, align 4, !tbaa !138
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextCurve_underline_height_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x3FE99999A0000000
  %7 = select i1 %6, float 0x3FE99999A0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 43
  store float %8, ptr %9, align 4, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TextCurve_text_boxes_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !139
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 60
  %9 = load i32, ptr %8, align 8, !tbaa !140
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_text_boxes_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !48
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_TextCurve_text_boxes, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 59
  %8 = load ptr, ptr %7, align 8, !tbaa !139
  %9 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 60
  %10 = load i32, ptr %9, align 8, !tbaa !140
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %8, i32 noundef 16, i32 noundef %10, i8 noundef zeroext 0, ptr noundef null) #15
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !53
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %16 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #15, !noalias !141
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_TextBox, ptr noundef %16) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %17

17:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TextCurve_text_boxes_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #15
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_TextBox, ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_text_boxes_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #15, !noalias !144
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_TextBox, ptr noundef %8) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_text_boxes_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TextCurve_text_boxes_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #15
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !48
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_TextCurve_text_boxes, ptr %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 59
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  %13 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 60
  %14 = load i32, ptr %13, align 8, !tbaa !140
  call void @rna_iterator_array_begin(ptr noundef nonnull %5, ptr noundef %12, i32 noundef 16, i32 noundef %14, i8 noundef zeroext 0, ptr noundef null) #15
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %20 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #15, !noalias !147
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_TextBox, ptr noundef %20) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  br label %21

21:                                               ; preds = %3, %18
  %22 = load i32, ptr %15, align 8, !tbaa !53
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %67, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %26 = icmp sgt i32 %1, -1
  %27 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, %1
  %30 = select i1 %26, i1 %29, i1 false
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, ptr noundef nonnull @__func__.TextCurve_text_boxes_lookup_int, i32 noundef %1)
  br label %62

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !103
  %36 = icmp eq ptr %35, null
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = icmp sgt i32 %1, 0
  %39 = load i32, ptr %15, align 8
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %49

42:                                               ; preds = %37, %42
  %43 = phi i32 [ %44, %42 ], [ %1, %37 ]
  %44 = add nsw i32 %43, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %5) #15
  %45 = icmp sgt i32 %43, 1
  %46 = load i32, ptr %15, align 8
  %47 = icmp ne i32 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %42, label %49, !llvm.loop !150

49:                                               ; preds = %42, %37
  %50 = phi i32 [ %1, %37 ], [ %44, %42 ]
  %51 = phi i1 [ %40, %37 ], [ %47, %42 ]
  %52 = icmp eq i32 %50, 0
  %53 = select i1 %52, i1 %51, i1 false
  %54 = zext i1 %53 to i32
  br label %62

55:                                               ; preds = %33
  %56 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !108
  %58 = mul nsw i32 %57, %1
  %59 = load ptr, ptr %25, align 8, !tbaa !109
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  store ptr %61, ptr %25, align 8, !tbaa !109
  br label %62

62:                                               ; preds = %49, %55, %31
  %63 = phi i32 [ 0, %31 ], [ %54, %49 ], [ 1, %55 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  %66 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #15, !noalias !151
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_TextBox, ptr noundef %66) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  br label %67

67:                                               ; preds = %62, %65, %21
  %68 = phi i32 [ 0, %21 ], [ %63, %65 ], [ %63, %62 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #15
  ret i32 %68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TextCurve_active_textbox_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 61
  %5 = load i32, ptr %4, align 4, !tbaa !154
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextCurve_active_textbox_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = load ptr, ptr %0, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 60
  %7 = load i32, ptr %6, align 8, !tbaa !140
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 1)
  %9 = add nsw i32 %8, -1
  %10 = icmp slt i32 %1, 0
  %11 = tail call i32 @llvm.smin.i32(i32 %9, i32 %1)
  %12 = select i1 %10, i32 0, i32 %11
  %13 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 61
  store i32 %12, ptr %13, align 4, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_Curve_active_textbox_index_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #10 {
  %6 = load ptr, ptr %0, align 8, !tbaa !52
  store i32 0, ptr %1, align 4, !tbaa !155
  %7 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 60
  %8 = load i32, ptr %7, align 8, !tbaa !140
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 1)
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %2, align 4, !tbaa !155
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_family_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 54
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TextCurve_family_length(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 54
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_family_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 54
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_body_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 52
  %5 = load ptr, ptr %4, align 8, !tbaa !156
  %6 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 51
  %7 = load i32, ptr %6, align 4, !tbaa !157
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef %5, i64 noundef %9) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TextCurve_body_length(ptr nocapture noundef readonly %0) #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 51
  %4 = load i32, ptr %3, align 4, !tbaa !157
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_body_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = call i64 @BLI_strlen_utf8_ex(ptr noundef %1, ptr noundef nonnull %3) #15
  %5 = load ptr, ptr %0, align 8, !tbaa !52
  %6 = trunc i64 %4 to i32
  %7 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 50
  store i32 %6, ptr %7, align 8, !tbaa !158
  %8 = load i64, ptr %3, align 8, !tbaa !159
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 51
  store i32 %9, ptr %10, align 4, !tbaa !157
  %11 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 47
  store i32 %6, ptr %11, align 4, !tbaa !160
  %12 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 52
  %13 = load ptr, ptr %12, align 8, !tbaa !156
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %16(ptr noundef nonnull %13) #15
  br label %17

17:                                               ; preds = %15, %2
  %18 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 62
  %19 = load ptr, ptr %18, align 8, !tbaa !161
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %22(ptr noundef nonnull %19) #15
  br label %23

23:                                               ; preds = %17, %21
  %24 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %25 = load i64, ptr %3, align 8, !tbaa !159
  %26 = add i64 %25, 4
  %27 = call ptr %24(i64 noundef %26, ptr noundef nonnull @.str.410) #15
  store ptr %27, ptr %12, align 8, !tbaa !156
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %29 = shl i64 %4, 3
  %30 = add i64 %29, 32
  %31 = call ptr %28(i64 noundef %30, ptr noundef nonnull @.str.411) #15
  store ptr %31, ptr %18, align 8, !tbaa !161
  %32 = load ptr, ptr %12, align 8, !tbaa !156
  %33 = load i64, ptr %3, align 8, !tbaa !159
  %34 = add i64 %33, 1
  %35 = call ptr @BLI_strncpy(ptr noundef %32, ptr noundef %1, i64 noundef %34) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TextCurve_body_format_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 62
  %5 = load ptr, ptr %4, align 8, !tbaa !161
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 50
  %9 = load i32, ptr %8, align 8, !tbaa !158
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_body_format_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !48
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_TextCurve_body_format, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 62
  %8 = load ptr, ptr %7, align 8, !tbaa !161
  %9 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 50
  %10 = load i32, ptr %9, align 8, !tbaa !158
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %8, i32 noundef 8, i32 noundef %10, i8 noundef zeroext 0, ptr noundef null) #15
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !53
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %16 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #15, !noalias !162
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_TextCharacterFormat, ptr noundef %16) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %17

17:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TextCurve_body_format_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #15
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_TextCharacterFormat, ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_body_format_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #15, !noalias !165
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_TextCharacterFormat, ptr noundef %8) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_body_format_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TextCurve_body_format_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #15
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !48
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_TextCurve_body_format, ptr %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 62
  %12 = load ptr, ptr %11, align 8, !tbaa !161
  %13 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 50
  %14 = load i32, ptr %13, align 8, !tbaa !158
  call void @rna_iterator_array_begin(ptr noundef nonnull %5, ptr noundef %12, i32 noundef 8, i32 noundef %14, i8 noundef zeroext 0, ptr noundef null) #15
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %20 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #15, !noalias !168
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_TextCharacterFormat, ptr noundef %20) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  br label %21

21:                                               ; preds = %3, %18
  %22 = load i32, ptr %15, align 8, !tbaa !53
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %67, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %26 = icmp sgt i32 %1, -1
  %27 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, %1
  %30 = select i1 %26, i1 %29, i1 false
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, ptr noundef nonnull @__func__.TextCurve_body_format_lookup_int, i32 noundef %1)
  br label %62

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !103
  %36 = icmp eq ptr %35, null
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = icmp sgt i32 %1, 0
  %39 = load i32, ptr %15, align 8
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %49

42:                                               ; preds = %37, %42
  %43 = phi i32 [ %44, %42 ], [ %1, %37 ]
  %44 = add nsw i32 %43, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %5) #15
  %45 = icmp sgt i32 %43, 1
  %46 = load i32, ptr %15, align 8
  %47 = icmp ne i32 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %42, label %49, !llvm.loop !171

49:                                               ; preds = %42, %37
  %50 = phi i32 [ %1, %37 ], [ %44, %42 ]
  %51 = phi i1 [ %40, %37 ], [ %47, %42 ]
  %52 = icmp eq i32 %50, 0
  %53 = select i1 %52, i1 %51, i1 false
  %54 = zext i1 %53 to i32
  br label %62

55:                                               ; preds = %33
  %56 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !108
  %58 = mul nsw i32 %57, %1
  %59 = load ptr, ptr %25, align 8, !tbaa !109
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  store ptr %61, ptr %25, align 8, !tbaa !109
  br label %62

62:                                               ; preds = %49, %55, %31
  %63 = phi i32 [ 0, %31 ], [ %54, %49 ], [ 1, %55 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  %66 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #15, !noalias !172
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_TextCharacterFormat, ptr noundef %66) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  br label %67

67:                                               ; preds = %62, %65, %21
  %68 = phi i32 [ 0, %21 ], [ %63, %65 ], [ %63, %62 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #15
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_follow_curve_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !175
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_follow_curve_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 7
  store ptr %6, ptr %10, align 8, !tbaa !175
  ret void
}

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_font_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 55
  %6 = load ptr, ptr %5, align 8, !tbaa !176
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_VectorFont, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_font_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 55
  %6 = load ptr, ptr %5, align 8, !tbaa !176
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !176
  ret void
}

declare void @id_us_min(ptr noundef) local_unnamed_addr #2

declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_font_bold_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 56
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_VectorFont, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_font_bold_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 56
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !177
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_font_italic_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 57
  %6 = load ptr, ptr %5, align 8, !tbaa !178
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_VectorFont, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_font_italic_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 57
  %6 = load ptr, ptr %5, align 8, !tbaa !178
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !178
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_font_bold_italic_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !179
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_VectorFont, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_font_bold_italic_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !179
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !179
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCurve_edit_format_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 63
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_TextCharacterFormat, ptr noundef nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TextCurve_use_fast_edit_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !62
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextCurve_use_fast_edit_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = and i32 %7, -513
  %9 = select i1 %5, i32 0, i32 512
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TextCurve_use_uv_as_generated_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 4, !tbaa !62
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextCurve_use_uv_as_generated_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 23
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !62
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextBox_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !48
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_TextBox_rna_properties, ptr %4, align 8, !tbaa !50
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !53
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TextBox_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextBox_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextBox_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TextBox_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @TextBox_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TextBox_x_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = load float, ptr %3, align 4, !tbaa !180
  ret float %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextBox_x_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, -5.000000e+01
  %6 = fcmp ogt float %1, 5.000000e+01
  %7 = select i1 %6, float 5.000000e+01, float %1
  %8 = select i1 %5, float -5.000000e+01, float %7
  store float %8, ptr %4, align 4, !tbaa !180
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TextBox_y_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.TextBox, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !182
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextBox_y_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, -5.000000e+01
  %6 = fcmp ogt float %1, 5.000000e+01
  %7 = select i1 %6, float 5.000000e+01, float %1
  %8 = select i1 %5, float -5.000000e+01, float %7
  %9 = getelementptr inbounds %struct.TextBox, ptr %4, i64 0, i32 1
  store float %8, ptr %9, align 4, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TextBox_width_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.TextBox, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !183
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextBox_width_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+01
  %7 = select i1 %6, float 5.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.TextBox, ptr %4, i64 0, i32 2
  store float %8, ptr %9, align 4, !tbaa !183
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TextBox_height_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.TextBox, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !184
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextBox_height_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+01
  %7 = select i1 %6, float 5.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.TextBox, ptr %4, i64 0, i32 3
  store float %8, ptr %9, align 4, !tbaa !184
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCharacterFormat_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !48
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_TextCharacterFormat_rna_properties, ptr %4, align 8, !tbaa !50
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !53
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TextCharacterFormat_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCharacterFormat_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCharacterFormat_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @TextCharacterFormat_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @TextCharacterFormat_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TextCharacterFormat_use_bold_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.CharInfo, ptr %3, i64 0, i32 2
  %5 = load i8, ptr %4, align 2, !tbaa !185
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextCharacterFormat_use_bold_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.CharInfo, ptr %4, i64 0, i32 2
  %7 = load i8, ptr %6, align 2, !tbaa !185
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 2, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TextCharacterFormat_use_italic_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.CharInfo, ptr %3, i64 0, i32 2
  %5 = load i8, ptr %4, align 2, !tbaa !185
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextCharacterFormat_use_italic_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.CharInfo, ptr %4, i64 0, i32 2
  %7 = load i8, ptr %6, align 2, !tbaa !185
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 2, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TextCharacterFormat_use_underline_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.CharInfo, ptr %3, i64 0, i32 2
  %5 = load i8, ptr %4, align 2, !tbaa !185
  %6 = lshr i8 %5, 2
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextCharacterFormat_use_underline_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.CharInfo, ptr %4, i64 0, i32 2
  %7 = load i8, ptr %6, align 2, !tbaa !185
  %8 = and i8 %7, -5
  %9 = select i1 %5, i8 0, i8 4
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 2, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TextCharacterFormat_use_small_caps_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.CharInfo, ptr %3, i64 0, i32 2
  %5 = load i8, ptr %4, align 2, !tbaa !185
  %6 = lshr i8 %5, 4
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextCharacterFormat_use_small_caps_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.CharInfo, ptr %4, i64 0, i32 2
  %7 = load i8, ptr %6, align 2, !tbaa !185
  %8 = and i8 %7, -17
  %9 = select i1 %5, i8 0, i8 16
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 2, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TextCharacterFormat_material_index_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.CharInfo, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !186
  %6 = icmp eq i16 %5, 0
  %7 = sext i16 %5 to i32
  %8 = add nsw i32 %7, -1
  %9 = select i1 %6, i32 0, i32 %8
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TextCharacterFormat_material_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = add i16 %5, 1
  %7 = getelementptr inbounds %struct.CharInfo, ptr %4, i64 0, i32 1
  store i16 %6, ptr %7, align 2, !tbaa !186
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SplinePoint_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !48
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SplinePoint_rna_properties, ptr %4, align 8, !tbaa !50
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !53
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SplinePoint_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SplinePoint_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SplinePoint_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SplinePoint_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @SplinePoint_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SplinePoint_select_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BPoint, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 4, !tbaa !187
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SplinePoint_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.BPoint, ptr %4, i64 0, i32 3
  store i16 %5, ptr %6, align 4, !tbaa !187
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SplinePoint_hide_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BPoint, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !189
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SplinePoint_hide_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.BPoint, ptr %4, i64 0, i32 4
  store i16 %5, ptr %6, align 2, !tbaa !189
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SplinePoint_co_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds float, ptr %4, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !91
  %9 = getelementptr inbounds float, ptr %1, i64 %6
  store float %8, ptr %9, align 4, !tbaa !91
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 4
  br i1 %11, label %12, label %5, !llvm.loop !190

12:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SplinePoint_co_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds float, ptr %1, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !91
  %9 = getelementptr inbounds float, ptr %4, i64 %6
  store float %8, ptr %9, align 4, !tbaa !91
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 4
  br i1 %11, label %12, label %5, !llvm.loop !191

12:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SplinePoint_weight_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !91
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SplinePoint_weight_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float %1, ptr %5, align 4, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SplinePoint_tilt_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BPoint, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !192
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SplinePoint_tilt_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0xC0778FDBA0000000
  %6 = fcmp ogt float %1, 0x40778FDBA0000000
  %7 = select i1 %6, float 0x40778FDBA0000000, float %1
  %8 = select i1 %5, float 0xC0778FDBA0000000, float %7
  %9 = getelementptr inbounds %struct.BPoint, ptr %4, i64 0, i32 1
  store float %8, ptr %9, align 4, !tbaa !192
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SplinePoint_weight_softbody_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BPoint, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !193
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SplinePoint_weight_softbody_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0x3F847AE140000000
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0x3F847AE140000000, float %7
  %9 = getelementptr inbounds %struct.BPoint, ptr %4, i64 0, i32 2
  store float %8, ptr %9, align 4, !tbaa !193
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SplinePoint_radius_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BPoint, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 4, !tbaa !194
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SplinePoint_radius_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BPoint, ptr %4, i64 0, i32 5
  store float %8, ptr %9, align 4, !tbaa !194
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BezierSplinePoint_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !48
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BezierSplinePoint_rna_properties, ptr %4, align 8, !tbaa !50
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !53
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @BezierSplinePoint_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BezierSplinePoint_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BezierSplinePoint_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BezierSplinePoint_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @BezierSplinePoint_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BezierSplinePoint_select_left_handle_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !195
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BezierSplinePoint_select_left_handle_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 7
  store i8 %5, ptr %6, align 1, !tbaa !195
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BezierSplinePoint_select_right_handle_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  %5 = load i8, ptr %4, align 1, !tbaa !197
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BezierSplinePoint_select_right_handle_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 9
  store i8 %5, ptr %6, align 1, !tbaa !197
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BezierSplinePoint_select_control_point_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %5 = load i8, ptr %4, align 4, !tbaa !198
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BezierSplinePoint_select_control_point_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 8
  store i8 %5, ptr %6, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BezierSplinePoint_hide_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 10
  %5 = load i8, ptr %4, align 2, !tbaa !199
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BezierSplinePoint_hide_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 10
  store i8 %5, ptr %6, align 2, !tbaa !199
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BezierSplinePoint_handle_left_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !200
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BezierSplinePoint_handle_left_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 5
  store i8 %5, ptr %6, align 1, !tbaa !200
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BezierSplinePoint_handle_right_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 2, !tbaa !201
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BezierSplinePoint_handle_right_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 6
  store i8 %5, ptr %6, align 2, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BezierSplinePoint_handle_left_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = load float, ptr %4, align 4, !tbaa !91
  store float %5, ptr %1, align 4, !tbaa !91
  %6 = getelementptr inbounds float, ptr %4, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !91
  %8 = getelementptr inbounds float, ptr %1, i64 1
  store float %7, ptr %8, align 4, !tbaa !91
  %9 = getelementptr inbounds float, ptr %4, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !91
  %11 = getelementptr inbounds float, ptr %1, i64 2
  store float %10, ptr %11, align 4, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BezierSplinePoint_handle_left_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !91
  store float %5, ptr %4, align 4, !tbaa !91
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !91
  %8 = getelementptr inbounds float, ptr %4, i64 1
  store float %7, ptr %8, align 4, !tbaa !91
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !91
  %11 = getelementptr inbounds float, ptr %4, i64 2
  store float %10, ptr %11, align 4, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BezierSplinePoint_co_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !91
  store float %6, ptr %1, align 4, !tbaa !91
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !91
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !91
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !91
  %12 = getelementptr inbounds float, ptr %1, i64 2
  store float %11, ptr %12, align 4, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BezierSplinePoint_co_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %6 = load float, ptr %1, align 4, !tbaa !91
  store float %6, ptr %5, align 4, !tbaa !91
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !91
  %9 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  store float %8, ptr %9, align 4, !tbaa !91
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !91
  %12 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  store float %11, ptr %12, align 4, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BezierSplinePoint_handle_right_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !91
  store float %6, ptr %1, align 4, !tbaa !91
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !91
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !91
  %10 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !91
  %12 = getelementptr inbounds float, ptr %1, i64 2
  store float %11, ptr %12, align 4, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BezierSplinePoint_handle_right_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %6 = load float, ptr %1, align 4, !tbaa !91
  store float %6, ptr %5, align 4, !tbaa !91
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !91
  %9 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  store float %8, ptr %9, align 4, !tbaa !91
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !91
  %12 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 2
  store float %11, ptr %12, align 4, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BezierSplinePoint_tilt_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !202
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BezierSplinePoint_tilt_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 1
  store float %1, ptr %5, align 4, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BezierSplinePoint_weight_softbody_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !203
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BezierSplinePoint_weight_softbody_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0x3F847AE140000000
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0x3F847AE140000000, float %7
  %9 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 2
  store float %8, ptr %9, align 4, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BezierSplinePoint_radius_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !204
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BezierSplinePoint_radius_set(ptr nocapture noundef readonly %0, float noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 3
  store float %8, ptr %9, align 4, !tbaa !204
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Spline_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !48
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Spline_rna_properties, ptr %4, align 8, !tbaa !50
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !53
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Spline_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Spline_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Spline_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Spline_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @Spline_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Spline_points_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !48
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Spline_points, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !205
  %9 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 7
  %10 = load i32, ptr %9, align 4, !tbaa !207
  %11 = getelementptr inbounds %struct.Nurb, ptr %6, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !208
  %13 = tail call i32 @llvm.smax.i32(i32 %10, i32 1)
  %14 = mul nsw i32 %12, %13
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %8, i32 noundef 36, i32 noundef %14, i8 noundef zeroext 0, ptr noundef null) #15
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %20 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #15, !noalias !209
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_SplinePoint, ptr noundef %20) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %21

21:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Spline_points_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #15
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SplinePoint, ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Spline_points_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #15, !noalias !212
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_SplinePoint, ptr noundef %8) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Spline_points_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Spline_points_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #15
  %7 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %7, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !48
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_Spline_points, ptr %8, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !205
  %13 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 7
  %14 = load i32, ptr %13, align 4, !tbaa !207
  %15 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !208
  %17 = tail call i32 @llvm.smax.i32(i32 %14, i32 1)
  %18 = mul nsw i32 %16, %17
  call void @rna_iterator_array_begin(ptr noundef nonnull %5, ptr noundef %12, i32 noundef 36, i32 noundef %18, i8 noundef zeroext 0, ptr noundef null) #15
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !53
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %24 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #15, !noalias !215
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_SplinePoint, ptr noundef %24) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  br label %25

25:                                               ; preds = %3, %22
  %26 = load i32, ptr %19, align 8, !tbaa !53
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %71, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %30 = icmp sgt i32 %1, -1
  %31 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp sgt i32 %32, %1
  %34 = select i1 %30, i1 %33, i1 false
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, ptr noundef nonnull @__func__.Spline_points_lookup_int, i32 noundef %1)
  br label %66

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !103
  %40 = icmp eq ptr %39, null
  br i1 %40, label %59, label %41

41:                                               ; preds = %37
  %42 = icmp sgt i32 %1, 0
  %43 = load i32, ptr %19, align 8
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %53

46:                                               ; preds = %41, %46
  %47 = phi i32 [ %48, %46 ], [ %1, %41 ]
  %48 = add nsw i32 %47, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %5) #15
  %49 = icmp sgt i32 %47, 1
  %50 = load i32, ptr %19, align 8
  %51 = icmp ne i32 %50, 0
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %46, label %53, !llvm.loop !218

53:                                               ; preds = %46, %41
  %54 = phi i32 [ %1, %41 ], [ %48, %46 ]
  %55 = phi i1 [ %44, %41 ], [ %51, %46 ]
  %56 = icmp eq i32 %54, 0
  %57 = select i1 %56, i1 %55, i1 false
  %58 = zext i1 %57 to i32
  br label %66

59:                                               ; preds = %37
  %60 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !108
  %62 = mul nsw i32 %61, %1
  %63 = load ptr, ptr %29, align 8, !tbaa !109
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, ptr %63, i64 %64
  store ptr %65, ptr %29, align 8, !tbaa !109
  br label %66

66:                                               ; preds = %53, %59, %35
  %67 = phi i32 [ 0, %35 ], [ %58, %53 ], [ 1, %59 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  %70 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #15, !noalias !219
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_SplinePoint, ptr noundef %70) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  br label %71

71:                                               ; preds = %66, %69, %25
  %72 = phi i32 [ 0, %25 ], [ %67, %69 ], [ %67, %66 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #15
  ret i32 %72
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_bezier_points_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !222
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !208
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @Spline_bezier_points_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !48
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Spline_bezier_points, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !222
  %9 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !208
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %8, i32 noundef 72, i32 noundef %10, i8 noundef zeroext 0, ptr noundef null) #15
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !53
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %16 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #15, !noalias !223
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_BezierSplinePoint, ptr noundef %16) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %17

17:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Spline_bezier_points_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #15
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_BezierSplinePoint, ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Spline_bezier_points_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #15, !noalias !226
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_BezierSplinePoint, ptr noundef %8) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Spline_bezier_points_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Spline_bezier_points_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #15
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !48
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_Spline_bezier_points, ptr %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !222
  %13 = getelementptr inbounds %struct.Nurb, ptr %8, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !208
  call void @rna_iterator_array_begin(ptr noundef nonnull %5, ptr noundef %12, i32 noundef 72, i32 noundef %14, i8 noundef zeroext 0, ptr noundef null) #15
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %20 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #15, !noalias !229
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_BezierSplinePoint, ptr noundef %20) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  br label %21

21:                                               ; preds = %3, %18
  %22 = load i32, ptr %15, align 8, !tbaa !53
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %67, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %26 = icmp sgt i32 %1, -1
  %27 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, %1
  %30 = select i1 %26, i1 %29, i1 false
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, ptr noundef nonnull @__func__.Spline_bezier_points_lookup_int, i32 noundef %1)
  br label %62

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !103
  %36 = icmp eq ptr %35, null
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = icmp sgt i32 %1, 0
  %39 = load i32, ptr %15, align 8
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %49

42:                                               ; preds = %37, %42
  %43 = phi i32 [ %44, %42 ], [ %1, %37 ]
  %44 = add nsw i32 %43, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %5) #15
  %45 = icmp sgt i32 %43, 1
  %46 = load i32, ptr %15, align 8
  %47 = icmp ne i32 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %42, label %49, !llvm.loop !232

49:                                               ; preds = %42, %37
  %50 = phi i32 [ %1, %37 ], [ %44, %42 ]
  %51 = phi i1 [ %40, %37 ], [ %47, %42 ]
  %52 = icmp eq i32 %50, 0
  %53 = select i1 %52, i1 %51, i1 false
  %54 = zext i1 %53 to i32
  br label %62

55:                                               ; preds = %33
  %56 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !108
  %58 = mul nsw i32 %57, %1
  %59 = load ptr, ptr %25, align 8, !tbaa !109
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  store ptr %61, ptr %25, align 8, !tbaa !109
  br label %62

62:                                               ; preds = %49, %55, %31
  %63 = phi i32 [ 0, %31 ], [ %54, %49 ], [ 1, %55 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  %66 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #15, !noalias !233
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_BezierSplinePoint, ptr noundef %66) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  br label %67

67:                                               ; preds = %62, %65, %21
  %68 = phi i32 [ 0, %21 ], [ %63, %65 ], [ %63, %62 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #15
  ret i32 %68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_tilt_interpolation_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 19
  %5 = load i16, ptr %4, align 8, !tbaa !236
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Spline_tilt_interpolation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 19
  store i16 %5, ptr %6, align 8, !tbaa !236
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_radius_interpolation_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 20
  %5 = load i16, ptr %4, align 2, !tbaa !237
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Spline_radius_interpolation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 20
  store i16 %5, ptr %6, align 2, !tbaa !237
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !238
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @Spline_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !208
  %8 = trunc i32 %1 to i16
  %9 = tail call zeroext i8 @BKE_nurb_type_convert(ptr noundef %5, i16 noundef signext %8, i8 noundef zeroext 1) #15
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %6, align 8, !tbaa !208
  %13 = icmp eq i32 %12, %7
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 32
  store i32 -1, ptr %15, align 8, !tbaa !239
  br label %16

16:                                               ; preds = %2, %11, %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_point_count_u_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !208
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_point_count_v_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !207
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_order_u_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 8, !tbaa !240
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Spline_order_u_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 6)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 2)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 11
  store i16 %7, ptr %8, align 8, !tbaa !240
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_order_v_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 12
  %5 = load i16, ptr %4, align 2, !tbaa !241
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Spline_order_v_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 6)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 2)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 12
  store i16 %7, ptr %8, align 2, !tbaa !241
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_resolution_u_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 4, !tbaa !242
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Spline_resolution_u_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1024)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 9
  store i16 %7, ptr %8, align 4, !tbaa !242
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_resolution_v_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !243
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Spline_resolution_v_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1024)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 10
  store i16 %7, ptr %8, align 2, !tbaa !243
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_use_cyclic_u_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !244
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Spline_use_cyclic_u_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 4, !tbaa !244
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !244
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_use_cyclic_v_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 2, !tbaa !245
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Spline_use_cyclic_v_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 14
  %7 = load i16, ptr %6, align 2, !tbaa !245
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !245
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_use_endpoint_u_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !244
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Spline_use_endpoint_u_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 4, !tbaa !244
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !244
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_use_endpoint_v_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 2, !tbaa !245
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Spline_use_endpoint_v_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 14
  %7 = load i16, ptr %6, align 2, !tbaa !245
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !245
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_use_bezier_u_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !244
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Spline_use_bezier_u_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 4, !tbaa !244
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !244
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_use_bezier_v_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 2, !tbaa !245
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Spline_use_bezier_v_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 14
  %7 = load i16, ptr %6, align 2, !tbaa !245
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !245
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_use_smooth_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !246
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Spline_use_smooth_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !246
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !246
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_hide_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 4, !tbaa !247
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Spline_hide_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 4, !tbaa !247
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !247
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_material_index_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !248
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Spline_material_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = load ptr, ptr %0, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 22
  %7 = load i16, ptr %6, align 2, !tbaa !93
  %8 = tail call i16 @llvm.smax.i16(i16 %7, i16 1)
  %9 = zext nneg i16 %8 to i32
  %10 = add nsw i32 %9, -1
  %11 = icmp slt i32 %1, 0
  %12 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  %13 = trunc i32 %12 to i16
  %14 = select i1 %11, i16 0, i16 %13
  %15 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 3
  store i16 %14, ptr %15, align 2, !tbaa !248
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_Curve_material_index_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #10 {
  %6 = load ptr, ptr %0, align 8, !tbaa !52
  store i32 0, ptr %1, align 4, !tbaa !155
  %7 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 22
  %8 = load i16, ptr %7, align 2, !tbaa !93
  %9 = tail call i16 @llvm.smax.i16(i16 %8, i16 1)
  %10 = zext nneg i16 %9 to i32
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr %2, align 4, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Spline_character_index_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 21
  %5 = load i32, ptr %4, align 4, !tbaa !249
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @SplinePoints_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !48
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SplinePoints_rna_properties, ptr %4, align 8, !tbaa !50
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !53
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SplinePoints_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SplinePoints_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SplinePoints_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SplinePoints_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @SplinePoints_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SplineBezierPoints_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !48
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SplineBezierPoints_rna_properties, ptr %4, align 8, !tbaa !50
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !53
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SplineBezierPoints_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SplineBezierPoints_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SplineBezierPoints_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SplineBezierPoints_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @SplineBezierPoints_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Curve_transform(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = trunc i32 %2 to i8
  tail call void @BKE_curve_transform(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %4) #15
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Curve_transform_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !250
  %8 = getelementptr inbounds i8, ptr %7, i64 64
  %9 = load i32, ptr %8, align 4, !tbaa !155
  %10 = trunc i32 %9 to i8
  tail call void @BKE_curve_transform(ptr noundef %6, ptr noundef %7, i8 noundef zeroext %10) #15
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Curve_validate_material_indices(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @BKE_curve_material_index_validate(ptr noundef %0) #15
  ret i32 %2
}

declare i32 @BKE_curve_material_index_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Curve_validate_material_indices_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !250
  %8 = tail call i32 @BKE_curve_material_index_validate(ptr noundef %6) #15
  store i32 %8, ptr %7, align 4, !tbaa !155
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CurveSplines_new(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %4 = tail call ptr %3(i64 noundef 88, ptr noundef nonnull @.str.412) #15
  %5 = icmp eq i32 %1, 1
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  br i1 %5, label %7, label %11

7:                                                ; preds = %2
  %8 = tail call ptr %6(i64 noundef 72, ptr noundef nonnull @.str.413) #15
  %9 = getelementptr inbounds %struct.BezTriple, ptr %8, i64 0, i32 3
  store float 1.000000e+00, ptr %9, align 4, !tbaa !204
  %10 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 18
  store ptr %8, ptr %10, align 8, !tbaa !222
  br label %15

11:                                               ; preds = %2
  %12 = tail call ptr %6(i64 noundef 36, ptr noundef nonnull @.str.414) #15
  %13 = getelementptr inbounds %struct.BPoint, ptr %12, i64 0, i32 5
  store float 1.000000e+00, ptr %13, align 4, !tbaa !194
  %14 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 17
  store ptr %12, ptr %14, align 8, !tbaa !205
  br label %15

15:                                               ; preds = %7, %11
  %16 = trunc i32 %1 to i16
  %17 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 2
  store i16 %16, ptr %17, align 8, !tbaa !238
  %18 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 6
  store i32 1, ptr %18, align 8, !tbaa !208
  %19 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 7
  store i32 1, ptr %19, align 4, !tbaa !207
  %20 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 12
  store i16 4, ptr %20, align 2, !tbaa !241
  %21 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 11
  store i16 4, ptr %21, align 8, !tbaa !240
  %22 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 10
  store i16 12, ptr %22, align 2, !tbaa !243
  %23 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 9
  store i16 12, ptr %23, align 4, !tbaa !242
  %24 = getelementptr inbounds %struct.Nurb, ptr %4, i64 0, i32 5
  store i16 1, ptr %24, align 2, !tbaa !246
  %25 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 23
  %26 = load i32, ptr %25, align 4, !tbaa !62
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i16 9, i16 1
  store i16 %29, ptr %24, align 2
  %30 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %0) #15
  tail call void @BLI_addtail(ptr noundef %30, ptr noundef %4) #15
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveSplines_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !250
  %8 = load i32, ptr %7, align 4, !tbaa !155
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %10 = tail call ptr %9(i64 noundef 88, ptr noundef nonnull @.str.412) #15
  %11 = icmp eq i32 %8, 1
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  br i1 %11, label %13, label %17

13:                                               ; preds = %4
  %14 = tail call ptr %12(i64 noundef 72, ptr noundef nonnull @.str.413) #15
  %15 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 0, i32 3
  store float 1.000000e+00, ptr %15, align 4, !tbaa !204
  %16 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 18
  store ptr %14, ptr %16, align 8, !tbaa !222
  br label %21

17:                                               ; preds = %4
  %18 = tail call ptr %12(i64 noundef 36, ptr noundef nonnull @.str.414) #15
  %19 = getelementptr inbounds %struct.BPoint, ptr %18, i64 0, i32 5
  store float 1.000000e+00, ptr %19, align 4, !tbaa !194
  %20 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 17
  store ptr %18, ptr %20, align 8, !tbaa !205
  br label %21

21:                                               ; preds = %13, %17
  %22 = getelementptr inbounds i8, ptr %7, i64 4
  %23 = trunc i32 %8 to i16
  %24 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 2
  store i16 %23, ptr %24, align 8, !tbaa !238
  %25 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 6
  store i32 1, ptr %25, align 8, !tbaa !208
  %26 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 7
  store i32 1, ptr %26, align 4, !tbaa !207
  %27 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 12
  store i16 4, ptr %27, align 2, !tbaa !241
  %28 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 11
  store i16 4, ptr %28, align 8, !tbaa !240
  %29 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 10
  store i16 12, ptr %29, align 2, !tbaa !243
  %30 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 9
  store i16 12, ptr %30, align 4, !tbaa !242
  %31 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 5
  store i16 1, ptr %31, align 2, !tbaa !246
  %32 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 23
  %33 = load i32, ptr %32, align 4, !tbaa !62
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i16 9, i16 1
  store i16 %36, ptr %31, align 2
  %37 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %6) #15
  tail call void @BLI_addtail(ptr noundef %37, ptr noundef %10) #15
  store ptr %10, ptr %22, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveSplines_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %0) #15
  %7 = tail call zeroext i8 @BLI_remlink_safe(ptr noundef %6, ptr noundef %5) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.415, ptr noundef nonnull %10) #15
  br label %12

11:                                               ; preds = %3
  tail call void @BKE_nurb_free(ptr noundef %5) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 2) #15
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef null) #15
  br label %12

12:                                               ; preds = %9, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveSplines_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !250
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %6) #15
  %12 = tail call zeroext i8 @BLI_remlink_safe(ptr noundef %11, ptr noundef %10) #15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.415, ptr noundef nonnull %15) #15
  br label %17

16:                                               ; preds = %4
  tail call void @BKE_nurb_free(ptr noundef %10) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #15
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef null) #15
  br label %17

17:                                               ; preds = %14, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveSplines_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %0) #15
  tail call void @BKE_nurbList_free(ptr noundef %2) #15
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 2) #15
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef null) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveSplines_clear_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %6) #15
  tail call void @BKE_nurbList_free(ptr noundef %7) #15
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #15
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef null) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SplinePoints_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !238
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.416) #15
  br label %12

9:                                                ; preds = %4
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @BKE_nurb_points_add(ptr noundef %1, i32 noundef %3) #15
  tail call void @BKE_nurb_knot_calc_u(ptr noundef %1) #15
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #15
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %0) #15
  br label %12

12:                                               ; preds = %8, %9, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SplinePoints_add_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load ptr, ptr %3, align 8, !tbaa !250
  %9 = load i32, ptr %8, align 4, !tbaa !155
  %10 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !238
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.416) #15
  br label %17

14:                                               ; preds = %4
  %15 = icmp eq i32 %9, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  tail call void @BKE_nurb_points_add(ptr noundef %7, i32 noundef %9) #15
  tail call void @BKE_nurb_knot_calc_u(ptr noundef %7) #15
  tail call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 0) #15
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %5) #15
  br label %17

17:                                               ; preds = %13, %14, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SplineBezierPoints_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Nurb, ptr %1, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !238
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @BKE_report(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.417) #15
  br label %12

9:                                                ; preds = %4
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @BKE_nurb_bezierPoints_add(ptr noundef %1, i32 noundef %3) #15
  tail call void @BKE_nurb_knot_calc_u(ptr noundef %1) #15
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 0) #15
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %0) #15
  br label %12

12:                                               ; preds = %8, %9, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SplineBezierPoints_add_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load ptr, ptr %3, align 8, !tbaa !250
  %9 = load i32, ptr %8, align 4, !tbaa !155
  %10 = getelementptr inbounds %struct.Nurb, ptr %7, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !238
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.417) #15
  br label %17

14:                                               ; preds = %4
  %15 = icmp eq i32 %9, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  tail call void @BKE_nurb_bezierPoints_add(ptr noundef %7, i32 noundef %9) #15
  tail call void @BKE_nurb_knot_calc_u(ptr noundef %7) #15
  tail call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 0) #15
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %5) #15
  br label %17

17:                                               ; preds = %13, %14, %16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_Curve_update_data(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #15
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_Curve_resolution_u_update_data(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !52
  %5 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %4) #15
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 27
  %10 = load i16, ptr %9, align 4, !tbaa !67
  br label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %6, %8 ], [ %14, %11 ]
  %13 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 9
  store i16 %10, ptr %13, align 4, !tbaa !242
  %14 = load ptr, ptr %12, align 8, !tbaa !49
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !252

16:                                               ; preds = %11, %3
  %17 = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @DAG_id_tag_update(ptr noundef %17, i16 noundef signext 0) #15
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %17) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_Curve_resolution_v_update_data(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !52
  %5 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %4) #15
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 28
  %10 = load i16, ptr %9, align 2, !tbaa !68
  br label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %6, %8 ], [ %14, %11 ]
  %13 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 10
  store i16 %10, ptr %13, align 2, !tbaa !243
  %14 = load ptr, ptr %12, align 8, !tbaa !49
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !253

16:                                               ; preds = %11, %3
  %17 = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @DAG_id_tag_update(ptr noundef %17, i16 noundef signext 0) #15
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %17) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_Curve_update_deps(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  tail call void @DAG_relations_tag_update(ptr noundef %0) #15
  %4 = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #15
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %4) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @rna_Curve_otherObject_poll(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !76
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = icmp eq ptr %13, %3
  br i1 %14, label %15, label %16

15:                                               ; preds = %7, %11, %2
  br label %16

16:                                               ; preds = %11, %15
  %17 = phi i32 [ 0, %15 ], [ 1, %11 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal nonnull ptr @rna_Curve_fill_mode_itemf(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #5 {
  %5 = load ptr, ptr %1, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 23
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @curve2d_fill_mode_items, ptr @curve3d_fill_mode_items
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @rna_Curve_texspace_set(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 15
  %7 = load i16, ptr %6, align 2, !tbaa !89
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @BKE_curve_texspace_calc(ptr noundef %5) #15
  br label %11

11:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_Curve_texspace_editable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 15
  %5 = load i16, ptr %4, align 2, !tbaa !89
  %6 = and i16 %5, 1
  %7 = xor i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

declare i32 @rna_IDMaterials_assign_int(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal nonnull ptr @rna_Curve_refine(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = tail call signext i16 @BKE_curve_type_get(ptr noundef %3) #15
  %5 = icmp eq i16 %4, 3
  %6 = select i1 %5, ptr @RNA_SurfaceCurve, ptr @RNA_Curve
  %7 = icmp eq i16 %4, 4
  %8 = select i1 %7, ptr @RNA_TextCurve, ptr %6
  ret ptr %8
}

declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: nounwind uwtable
define internal ptr @rna_TextBox_path(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !139
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 60
  %15 = load i32, ptr %14, align 8, !tbaa !140
  %16 = icmp sgt i32 %15, %11
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.472, i32 noundef %11) #15
  br label %21

19:                                               ; preds = %13, %1
  %20 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.2) #15
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ]
  ret ptr %22
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_Curve_spline_point_path(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %2) #15
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %52, label %8

8:                                                ; preds = %1, %37
  %9 = phi ptr [ %39, %37 ], [ %6, %1 ]
  %10 = phi i32 [ %38, %37 ], [ 0, %1 ]
  %11 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !238
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !222
  %17 = icmp ugt ptr %16, %4
  br i1 %17, label %37, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !208
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 %21
  %23 = icmp ugt ptr %22, %4
  br i1 %23, label %41, label %37

24:                                               ; preds = %8
  %25 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !205
  %27 = icmp ugt ptr %26, %4
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !208
  %31 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 7
  %32 = load i32, ptr %31, align 4, !tbaa !207
  %33 = mul nsw i32 %32, %30
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.BPoint, ptr %26, i64 %34
  %36 = icmp ugt ptr %35, %4
  br i1 %36, label %41, label %37

37:                                               ; preds = %28, %24, %18, %14
  %38 = add nuw nsw i32 %10, 1
  %39 = load ptr, ptr %9, align 8, !tbaa !49
  %40 = icmp eq ptr %39, null
  br i1 %40, label %52, label %8, !llvm.loop !254

41:                                               ; preds = %28, %18
  %42 = phi i64 [ 36, %28 ], [ 72, %18 ]
  %43 = ptrtoint ptr %4 to i64
  %44 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 18
  %45 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 17
  %46 = select i1 %13, ptr %44, ptr %45
  %47 = load ptr, ptr %46, align 8, !tbaa !49
  %48 = ptrtoint ptr %47 to i64
  %49 = sub i64 %43, %48
  %50 = sdiv exact i64 %49, %42
  %51 = trunc i64 %50 to i32
  br label %52

52:                                               ; preds = %37, %41, %1
  %53 = phi i32 [ undef, %1 ], [ %10, %41 ], [ undef, %37 ]
  %54 = phi i32 [ undef, %1 ], [ %51, %41 ], [ undef, %37 ]
  %55 = phi ptr [ %6, %1 ], [ %9, %41 ], [ %39, %37 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.Nurb, ptr %55, i64 0, i32 2
  %59 = load i16, ptr %58, align 8, !tbaa !238
  %60 = icmp eq i16 %59, 1
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.473, i32 noundef %53, i32 noundef %54) #15
  br label %67

63:                                               ; preds = %57
  %64 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.474, i32 noundef %53, i32 noundef %54) #15
  br label %67

65:                                               ; preds = %52
  %66 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.2) #15
  br label %67

67:                                               ; preds = %65, %63, %61
  %68 = phi ptr [ %62, %61 ], [ %64, %63 ], [ %66, %65 ]
  ret ptr %68
}

; Function Attrs: nounwind uwtable
define internal void @rna_Curve_update_points(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %4) #15
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = icmp eq ptr %8, null
  br i1 %9, label %41, label %10

10:                                               ; preds = %3, %38
  %11 = phi ptr [ %39, %38 ], [ %8, %3 ]
  %12 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !238
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !222
  %18 = icmp ugt ptr %17, %6
  br i1 %18, label %38, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !208
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.BezTriple, ptr %17, i64 %22
  %24 = icmp ugt ptr %23, %6
  br i1 %24, label %41, label %38

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 17
  %27 = load ptr, ptr %26, align 8, !tbaa !205
  %28 = icmp ugt ptr %27, %6
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !208
  %32 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 7
  %33 = load i32, ptr %32, align 4, !tbaa !207
  %34 = mul nsw i32 %33, %31
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.BPoint, ptr %27, i64 %35
  %37 = icmp ugt ptr %36, %6
  br i1 %37, label %41, label %38

38:                                               ; preds = %29, %25, %19, %15
  %39 = load ptr, ptr %11, align 8, !tbaa !49
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %10, !llvm.loop !254

41:                                               ; preds = %19, %29, %38, %3
  %42 = phi ptr [ %8, %3 ], [ %39, %38 ], [ %11, %29 ], [ %11, %19 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @BKE_nurb_handles_calc(ptr noundef nonnull %42) #15
  br label %45

45:                                               ; preds = %44, %41
  %46 = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @DAG_id_tag_update(ptr noundef %46, i16 noundef signext 0) #15
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %46) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_Nurb_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !238
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !207
  %10 = getelementptr inbounds %struct.Nurb, ptr %3, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !208
  %12 = tail call i32 @llvm.smax.i32(i32 %9, i32 1)
  %13 = mul nsw i32 %11, %12
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i32 [ 0, %1 ], [ %13, %7 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal void @rna_Nurb_update_knot_u(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call zeroext i8 @BKE_nurb_order_clamp_u(ptr noundef %5) #15
  tail call void @BKE_nurb_knot_calc_u(ptr noundef %5) #15
  %7 = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 0) #15
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %7) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_Nurb_update_knot_v(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call zeroext i8 @BKE_nurb_order_clamp_v(ptr noundef %5) #15
  tail call void @BKE_nurb_knot_calc_v(ptr noundef %5) #15
  %7 = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 0) #15
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %7) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_Nurb_update_cyclic_u(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Nurb, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !238
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @BKE_nurb_handles_calc(ptr noundef %5) #15
  br label %11

10:                                               ; preds = %3
  tail call void @BKE_nurb_knot_calc_u(ptr noundef %5) #15
  br label %11

11:                                               ; preds = %10, %9
  %12 = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @DAG_id_tag_update(ptr noundef %12, i16 noundef signext 0) #15
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %12) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_Nurb_update_cyclic_v(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @BKE_nurb_knot_calc_v(ptr noundef %5) #15
  %6 = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 0) #15
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_Curve_spline_path(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %2) #15
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call i32 @BLI_findindex(ptr noundef %3, ptr noundef %5) #15
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.477, i32 noundef %6) #15
  br label %12

10:                                               ; preds = %1
  %11 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.2) #15
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ]
  ret ptr %13
}

declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_curve_nurbs_get(ptr noundef) local_unnamed_addr #2

declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #2

declare void @BKE_curve_curve_dimension_update(ptr noundef) local_unnamed_addr #2

declare void @BKE_curve_texspace_calc(ptr noundef) local_unnamed_addr #2

declare ptr @rna_iterator_array_dereference_get(ptr noundef) local_unnamed_addr #2

declare signext i16 @BKE_curve_type_get(ptr noundef) local_unnamed_addr #2

declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rna_iterator_array_get(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @BLI_strlen_utf8_ex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_nurb_type_convert(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_curve_transform(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_remlink_safe(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BKE_nurb_free(ptr noundef) local_unnamed_addr #2

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_nurbList_free(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_nurb_points_add(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_nurb_knot_calc_u(ptr noundef) local_unnamed_addr #2

declare void @BKE_nurb_bezierPoints_add(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #2

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

declare void @BKE_nurb_handles_calc(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_nurb_order_clamp_u(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_nurb_order_clamp_v(ptr noundef) local_unnamed_addr #2

declare void @BKE_nurb_knot_calc_v(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !37, i64 16}
!35 = !{!"PointerRNA", !36, i64 0, !37, i64 8, !37, i64 16}
!36 = !{!"", !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !37, i64 192}
!41 = !{!"Curve", !42, i64 0, !37, i64 120, !37, i64 128, !45, i64 136, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !38, i64 220, !38, i64 232, !43, i64 244, !43, i64 246, !43, i64 248, !43, i64 250, !46, i64 252, !46, i64 256, !44, i64 260, !43, i64 264, !43, i64 266, !44, i64 268, !46, i64 272, !46, i64 276, !46, i64 280, !43, i64 284, !43, i64 286, !43, i64 288, !43, i64 290, !44, i64 292, !44, i64 296, !38, i64 300, !43, i64 304, !38, i64 306, !38, i64 307, !46, i64 308, !46, i64 312, !46, i64 316, !46, i64 320, !46, i64 324, !46, i64 328, !46, i64 332, !46, i64 336, !46, i64 340, !46, i64 344, !44, i64 348, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !37, i64 368, !37, i64 376, !38, i64 384, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !37, i64 480, !44, i64 488, !44, i64 492, !37, i64 496, !47, i64 504, !46, i64 512, !46, i64 516, !46, i64 520, !38, i64 524, !38, i64 525, !38, i64 526}
!42 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !43, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !37, i64 112}
!43 = !{!"short", !38, i64 0}
!44 = !{!"int", !38, i64 0}
!45 = !{!"ListBase", !37, i64 0, !37, i64 8}
!46 = !{!"float", !38, i64 0}
!47 = !{!"CharInfo", !43, i64 0, !43, i64 2, !38, i64 4, !38, i64 5, !43, i64 6}
!48 = !{i64 0, i64 8, !49, i64 8, i64 8, !49, i64 16, i64 8, !49}
!49 = !{!37, !37, i64 0}
!50 = !{!51, !37, i64 48}
!51 = !{!"CollectionPropertyIterator", !35, i64 0, !35, i64 24, !37, i64 48, !38, i64 56, !44, i64 96, !44, i64 100, !35, i64 104, !44, i64 128}
!52 = !{!35, !37, i64 0}
!53 = !{!51, !44, i64 128}
!54 = !{!55}
!55 = distinct !{!55, !56, !"Curve_splines_get: argument 0"}
!56 = distinct !{!56, !"Curve_splines_get"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"Curve_splines_get: argument 0"}
!59 = distinct !{!59, !"Curve_splines_get"}
!60 = !{!41, !43, i64 248}
!61 = !{!41, !44, i64 260}
!62 = !{!41, !44, i64 268}
!63 = !{!41, !43, i64 264}
!64 = !{!41, !46, i64 272}
!65 = !{!41, !46, i64 276}
!66 = !{!41, !46, i64 280}
!67 = !{!41, !43, i64 284}
!68 = !{!41, !43, i64 286}
!69 = !{!41, !43, i64 288}
!70 = !{!41, !43, i64 290}
!71 = !{!41, !46, i64 512}
!72 = !{!73}
!73 = distinct !{!73, !74, !"rna_Curve_bevelObject_get: argument 0"}
!74 = distinct !{!74, !"rna_Curve_bevelObject_get"}
!75 = !{!41, !37, i64 160}
!76 = !{!77, !43, i64 136}
!77 = !{!"Object", !42, i64 0, !37, i64 120, !37, i64 128, !43, i64 136, !43, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !78, i64 312, !37, i64 360, !45, i64 368, !45, i64 384, !45, i64 400, !45, i64 416, !44, i64 432, !44, i64 436, !37, i64 440, !37, i64 448, !44, i64 456, !44, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !46, i64 616, !46, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !44, i64 944, !43, i64 948, !43, i64 950, !43, i64 952, !43, i64 954, !43, i64 956, !43, i64 958, !43, i64 960, !43, i64 962, !43, i64 964, !38, i64 966, !38, i64 967, !44, i64 968, !44, i64 972, !44, i64 976, !44, i64 980, !44, i64 984, !46, i64 988, !46, i64 992, !46, i64 996, !46, i64 1000, !46, i64 1004, !46, i64 1008, !46, i64 1012, !46, i64 1016, !46, i64 1020, !46, i64 1024, !46, i64 1028, !46, i64 1032, !43, i64 1036, !43, i64 1038, !43, i64 1040, !38, i64 1042, !38, i64 1043, !43, i64 1044, !38, i64 1046, !38, i64 1047, !46, i64 1048, !46, i64 1052, !45, i64 1056, !45, i64 1072, !45, i64 1088, !45, i64 1104, !46, i64 1120, !43, i64 1124, !43, i64 1126, !38, i64 1128, !44, i64 1144, !44, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !43, i64 1162, !38, i64 1164, !45, i64 1176, !45, i64 1192, !45, i64 1208, !45, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !43, i64 1266, !46, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !79, i64 1304, !79, i64 1312, !44, i64 1320, !44, i64 1324, !45, i64 1328, !45, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !45, i64 1400, !37, i64 1416}
!78 = !{!"bAnimVizSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44}
!79 = !{!"long", !38, i64 0}
!80 = !{!77, !37, i64 296}
!81 = !{!82}
!82 = distinct !{!82, !83, !"rna_Curve_taperObject_get: argument 0"}
!83 = distinct !{!83, !"rna_Curve_taperObject_get"}
!84 = !{!41, !37, i64 168}
!85 = !{!41, !43, i64 250}
!86 = !{!41, !38, i64 524}
!87 = !{!41, !38, i64 525}
!88 = !{!41, !46, i64 252}
!89 = !{!41, !43, i64 246}
!90 = !{!41, !37, i64 128}
!91 = !{!46, !46, i64 0}
!92 = !{!41, !37, i64 200}
!93 = !{!41, !43, i64 266}
!94 = !{!95}
!95 = distinct !{!95, !96, !"Curve_materials_get: argument 0"}
!96 = distinct !{!96, !"Curve_materials_get"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"Curve_materials_get: argument 0"}
!99 = distinct !{!99, !"Curve_materials_get"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"Curve_materials_get: argument 0"}
!102 = distinct !{!102, !"Curve_materials_get"}
!103 = !{!104, !37, i64 32}
!104 = !{!"ArrayIterator", !37, i64 0, !37, i64 8, !37, i64 16, !44, i64 24, !44, i64 28, !37, i64 32}
!105 = distinct !{!105, !106, !107}
!106 = !{!"llvm.loop.mustprogress"}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = !{!104, !44, i64 24}
!109 = !{!104, !37, i64 0}
!110 = !{!111}
!111 = distinct !{!111, !112, !"Curve_materials_get: argument 0"}
!112 = distinct !{!112, !"Curve_materials_get"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"Curve_materials_get: argument 0"}
!115 = distinct !{!115, !"Curve_materials_get"}
!116 = !{!51, !37, i64 120}
!117 = !{!118}
!118 = distinct !{!118, !119, !"Curve_materials_get: argument 0"}
!119 = distinct !{!119, !"Curve_materials_get"}
!120 = distinct !{!120, !106, !107}
!121 = !{!41, !46, i64 516}
!122 = !{!41, !46, i64 520}
!123 = !{!41, !37, i64 120}
!124 = !{!125}
!125 = distinct !{!125, !126, !"rna_Curve_active_spline_get: argument 0"}
!126 = distinct !{!126, !"rna_Curve_active_spline_get"}
!127 = !{!41, !44, i64 292}
!128 = !{!41, !38, i64 306}
!129 = !{!41, !46, i64 320}
!130 = !{!41, !46, i64 256}
!131 = !{!41, !46, i64 312}
!132 = !{!41, !46, i64 324}
!133 = !{!41, !46, i64 308}
!134 = !{!41, !46, i64 316}
!135 = !{!41, !46, i64 336}
!136 = !{!41, !46, i64 340}
!137 = !{!41, !46, i64 328}
!138 = !{!41, !46, i64 332}
!139 = !{!41, !37, i64 480}
!140 = !{!41, !44, i64 488}
!141 = !{!142}
!142 = distinct !{!142, !143, !"TextCurve_text_boxes_get: argument 0"}
!143 = distinct !{!143, !"TextCurve_text_boxes_get"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"TextCurve_text_boxes_get: argument 0"}
!146 = distinct !{!146, !"TextCurve_text_boxes_get"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"TextCurve_text_boxes_get: argument 0"}
!149 = distinct !{!149, !"TextCurve_text_boxes_get"}
!150 = distinct !{!150, !106, !107}
!151 = !{!152}
!152 = distinct !{!152, !153, !"TextCurve_text_boxes_get: argument 0"}
!153 = distinct !{!153, !"TextCurve_text_boxes_get"}
!154 = !{!41, !44, i64 492}
!155 = !{!44, !44, i64 0}
!156 = !{!41, !37, i64 368}
!157 = !{!41, !44, i64 364}
!158 = !{!41, !44, i64 360}
!159 = !{!79, !79, i64 0}
!160 = !{!41, !44, i64 348}
!161 = !{!41, !37, i64 496}
!162 = !{!163}
!163 = distinct !{!163, !164, !"TextCurve_body_format_get: argument 0"}
!164 = distinct !{!164, !"TextCurve_body_format_get"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"TextCurve_body_format_get: argument 0"}
!167 = distinct !{!167, !"TextCurve_body_format_get"}
!168 = !{!169}
!169 = distinct !{!169, !170, !"TextCurve_body_format_get: argument 0"}
!170 = distinct !{!170, !"TextCurve_body_format_get"}
!171 = distinct !{!171, !106, !107}
!172 = !{!173}
!173 = distinct !{!173, !174, !"TextCurve_body_format_get: argument 0"}
!174 = distinct !{!174, !"TextCurve_body_format_get"}
!175 = !{!41, !37, i64 176}
!176 = !{!41, !37, i64 448}
!177 = !{!41, !37, i64 456}
!178 = !{!41, !37, i64 464}
!179 = !{!41, !37, i64 472}
!180 = !{!181, !46, i64 0}
!181 = !{!"TextBox", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!182 = !{!181, !46, i64 4}
!183 = !{!181, !46, i64 8}
!184 = !{!181, !46, i64 12}
!185 = !{!47, !38, i64 4}
!186 = !{!47, !43, i64 2}
!187 = !{!188, !43, i64 24}
!188 = !{!"BPoint", !38, i64 0, !46, i64 16, !46, i64 20, !43, i64 24, !43, i64 26, !46, i64 28, !46, i64 32}
!189 = !{!188, !43, i64 26}
!190 = distinct !{!190, !106, !107}
!191 = distinct !{!191, !106, !107}
!192 = !{!188, !46, i64 16}
!193 = !{!188, !46, i64 20}
!194 = !{!188, !46, i64 28}
!195 = !{!196, !38, i64 51}
!196 = !{!"BezTriple", !38, i64 0, !46, i64 36, !46, i64 40, !46, i64 44, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !38, i64 52, !38, i64 53, !38, i64 54, !38, i64 55, !46, i64 56, !46, i64 60, !46, i64 64, !38, i64 68}
!197 = !{!196, !38, i64 53}
!198 = !{!196, !38, i64 52}
!199 = !{!196, !38, i64 54}
!200 = !{!196, !38, i64 49}
!201 = !{!196, !38, i64 50}
!202 = !{!196, !46, i64 36}
!203 = !{!196, !46, i64 40}
!204 = !{!196, !46, i64 44}
!205 = !{!206, !37, i64 64}
!206 = !{!"Nurb", !37, i64 0, !37, i64 8, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !44, i64 24, !44, i64 28, !38, i64 32, !43, i64 36, !43, i64 38, !43, i64 40, !43, i64 42, !43, i64 44, !43, i64 46, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !43, i64 80, !43, i64 82, !44, i64 84}
!207 = !{!206, !44, i64 28}
!208 = !{!206, !44, i64 24}
!209 = !{!210}
!210 = distinct !{!210, !211, !"Spline_points_get: argument 0"}
!211 = distinct !{!211, !"Spline_points_get"}
!212 = !{!213}
!213 = distinct !{!213, !214, !"Spline_points_get: argument 0"}
!214 = distinct !{!214, !"Spline_points_get"}
!215 = !{!216}
!216 = distinct !{!216, !217, !"Spline_points_get: argument 0"}
!217 = distinct !{!217, !"Spline_points_get"}
!218 = distinct !{!218, !106, !107}
!219 = !{!220}
!220 = distinct !{!220, !221, !"Spline_points_get: argument 0"}
!221 = distinct !{!221, !"Spline_points_get"}
!222 = !{!206, !37, i64 72}
!223 = !{!224}
!224 = distinct !{!224, !225, !"Spline_bezier_points_get: argument 0"}
!225 = distinct !{!225, !"Spline_bezier_points_get"}
!226 = !{!227}
!227 = distinct !{!227, !228, !"Spline_bezier_points_get: argument 0"}
!228 = distinct !{!228, !"Spline_bezier_points_get"}
!229 = !{!230}
!230 = distinct !{!230, !231, !"Spline_bezier_points_get: argument 0"}
!231 = distinct !{!231, !"Spline_bezier_points_get"}
!232 = distinct !{!232, !106, !107}
!233 = !{!234}
!234 = distinct !{!234, !235, !"Spline_bezier_points_get: argument 0"}
!235 = distinct !{!235, !"Spline_bezier_points_get"}
!236 = !{!206, !43, i64 80}
!237 = !{!206, !43, i64 82}
!238 = !{!206, !43, i64 16}
!239 = !{!41, !44, i64 296}
!240 = !{!206, !43, i64 40}
!241 = !{!206, !43, i64 42}
!242 = !{!206, !43, i64 36}
!243 = !{!206, !43, i64 38}
!244 = !{!206, !43, i64 44}
!245 = !{!206, !43, i64 46}
!246 = !{!206, !43, i64 22}
!247 = !{!206, !43, i64 20}
!248 = !{!206, !43, i64 18}
!249 = !{!206, !44, i64 84}
!250 = !{!251, !37, i64 0}
!251 = !{!"ParameterList", !37, i64 0, !37, i64 8, !44, i64 16, !44, i64 20, !44, i64 24}
!252 = distinct !{!252, !106, !107}
!253 = distinct !{!253, !106, !107}
!254 = distinct !{!254, !106, !107}
