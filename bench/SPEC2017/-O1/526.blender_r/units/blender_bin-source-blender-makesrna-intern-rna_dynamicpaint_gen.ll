; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_dynamicpaint_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_dynamicpaint_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.DynamicPaintCanvasSettings = type { ptr, ptr, %struct.ListBase, i16, i16, i32, [64 x i8] }
%struct.DynamicPaintBrushSettings = type { ptr, ptr, ptr, ptr, i32, i32, float, float, float, float, float, float, float, float, ptr, ptr, i16, i16, i16, i16, float, float, float, float }
%struct.DynamicPaintSurface = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, i32, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x float], ptr, [64 x i8], i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [64 x i8], [1024 x i8], [64 x i8], [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"CANVAS\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Canvas\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"BRUSH\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Brush\00", align 1
@prop_dynamicpaint_type_items = dso_local local_unnamed_addr global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_DynamicPaintCanvasSettings_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintCanvasSettings_rna_type, ptr null, i32 -1, ptr @.str.5, i32 128, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.8, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintCanvasSettings_rna_properties_begin, ptr @DynamicPaintCanvasSettings_rna_properties_next, ptr @DynamicPaintCanvasSettings_rna_properties_end, ptr @DynamicPaintCanvasSettings_rna_properties_get, ptr null, ptr null, ptr @DynamicPaintCanvasSettings_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_DynamicPaintCanvasSettings_canvas_surfaces = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_DynamicPaintCanvasSettings_rna_type, i32 -1, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.14, i32 0, ptr @.str.8, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_DynamicPaintSurfaces, ptr null }, ptr @DynamicPaintCanvasSettings_canvas_surfaces_begin, ptr @DynamicPaintCanvasSettings_canvas_surfaces_next, ptr @DynamicPaintCanvasSettings_canvas_surfaces_end, ptr @DynamicPaintCanvasSettings_canvas_surfaces_get, ptr null, ptr null, ptr null, ptr null, ptr @RNA_DynamicPaintSurface }, align 8
@rna_DynamicPaintSurfaces_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurfaces_rna_type, ptr null, i32 -1, ptr @.str.5, i32 128, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.8, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurfaces_rna_properties_begin, ptr @DynamicPaintSurfaces_rna_properties_next, ptr @DynamicPaintSurfaces_rna_properties_end, ptr @DynamicPaintSurfaces_rna_properties_get, ptr null, ptr null, ptr @DynamicPaintSurfaces_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_DynamicPaintBrushSettings_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_rna_type, ptr null, i32 -1, ptr @.str.5, i32 128, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.8, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_rna_properties_begin, ptr @DynamicPaintBrushSettings_rna_properties_next, ptr @DynamicPaintBrushSettings_rna_properties_end, ptr @DynamicPaintBrushSettings_rna_properties_get, ptr null, ptr null, ptr @DynamicPaintBrushSettings_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Material = external global %struct.StructRNA, align 8
@RNA_ParticleSystem = external global %struct.StructRNA, align 8
@RNA_ColorRamp = external global %struct.StructRNA, align 8
@rna_DynamicPaintSurface_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_rna_type, ptr null, i32 -1, ptr @.str.5, i32 128, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.8, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_rna_properties_begin, ptr @DynamicPaintSurface_rna_properties_next, ptr @DynamicPaintSurface_rna_properties_end, ptr @DynamicPaintSurface_rna_properties_get, ptr null, ptr null, ptr @DynamicPaintSurface_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Group = external global %struct.StructRNA, align 8
@RNA_Texture = external global %struct.StructRNA, align 8
@RNA_EffectorWeights = external global %struct.StructRNA, align 8
@RNA_PointCache = external global %struct.StructRNA, align 8
@rna_DynamicPaintCanvasSettings_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintCanvasSettings_canvas_surfaces, ptr @rna_DynamicPaintCanvasSettings_rna_properties, i32 -1, ptr @.str.9, i32 8912896, ptr @.str.10, ptr @.str.11, i32 0, ptr @.str.8, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintCanvasSettings_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"canvas_surfaces\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Paint Surface List\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Paint surface list\00", align 1
@RNA_DynamicPaintSurfaces = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_DynamicPaintBrushSettings, ptr @RNA_DynamicPaintCanvasSettings, ptr null, %struct.ListBase { ptr @rna_DynamicPaintSurfaces_rna_properties, ptr @rna_DynamicPaintSurfaces_active } }, ptr @.str.23, ptr null, ptr null, i32 4, ptr @.str.24, ptr @.str.25, ptr @.str.8, i32 17, ptr null, ptr @rna_DynamicPaintSurfaces_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_DynamicPaintSurface = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FCurve, ptr @RNA_DynamicPaintBrushSettings, ptr null, %struct.ListBase { ptr @rna_DynamicPaintSurface_rna_properties, ptr @rna_DynamicPaintSurface_use_color_preview } }, ptr @.str.275, ptr null, ptr null, i32 4, ptr @.str.276, ptr @.str.277, ptr @.str.8, i32 17, ptr @rna_DynamicPaintSurface_name, ptr @rna_DynamicPaintSurface_rna_properties, ptr null, ptr null, ptr null, ptr @rna_DynamicPaintSurface_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_DynamicPaintSurface_output_exists_func, ptr @rna_DynamicPaintSurface_output_exists_func } }, align 8
@RNA_SplineBezierPoints = external global %struct.StructRNA, align 8
@.str.15 = private unnamed_addr constant [27 x i8] c"DynamicPaintCanvasSettings\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Canvas Settings\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Dynamic Paint canvas settings\00", align 1
@RNA_DynamicPaintCanvasSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_DynamicPaintSurfaces, ptr @RNA_SplineBezierPoints, ptr null, %struct.ListBase { ptr @rna_DynamicPaintCanvasSettings_rna_properties, ptr @rna_DynamicPaintCanvasSettings_canvas_surfaces } }, ptr @.str.15, ptr null, ptr null, i32 4, ptr @.str.16, ptr @.str.17, ptr @.str.8, i32 17, ptr null, ptr @rna_DynamicPaintCanvasSettings_rna_properties, ptr null, ptr null, ptr null, ptr @rna_DynamicPaintCanvasSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_DynamicPaintSurfaces_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurfaces_active_index, ptr @rna_DynamicPaintSurfaces_rna_properties, i32 -1, ptr @.str.9, i32 8912896, ptr @.str.10, ptr @.str.11, i32 0, ptr @.str.8, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurfaces_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_DynamicPaintSurfaces_active_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurfaces_active, ptr @rna_DynamicPaintSurfaces_rna_type, i32 -1, ptr @.str.18, i32 1, ptr @.str.19, ptr @.str.2, i32 0, ptr @.str.8, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurfaces_active_index_get, ptr @DynamicPaintSurfaces_active_index_set, ptr null, ptr null, ptr @rna_Surface_active_point_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_DynamicPaintSurfaces_active = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_DynamicPaintSurfaces_active_index, i32 -1, ptr @.str.20, i32 8388608, ptr @.str.21, ptr @.str.22, i32 0, ptr @.str.8, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurfaces_active_get, ptr null, ptr null, ptr null, ptr @RNA_DynamicPaintSurface }, align 8
@.str.18 = private unnamed_addr constant [13 x i8] c"active_index\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Active Point Cache Index\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Active Surface\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"Active Dynamic Paint surface being displayed\00", align 1
@RNA_DynamicPaintBrushSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_DynamicPaintSurface, ptr @RNA_DynamicPaintSurfaces, ptr null, %struct.ListBase { ptr @rna_DynamicPaintBrushSettings_rna_properties, ptr @rna_DynamicPaintBrushSettings_velocity_ramp } }, ptr @.str.114, ptr null, ptr null, i32 4, ptr @.str.115, ptr @.str.116, ptr @.str.8, i32 17, ptr null, ptr @rna_DynamicPaintBrushSettings_rna_properties, ptr null, ptr null, ptr null, ptr @rna_DynamicPaintBrushSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.23 = private unnamed_addr constant [21 x i8] c"DynamicPaintSurfaces\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"Canvas Surfaces\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"Collection of Dynamic Paint Canvas surfaces\00", align 1
@rna_DynamicPaintBrushSettings_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_paint_color, ptr @rna_DynamicPaintBrushSettings_rna_properties, i32 -1, ptr @.str.9, i32 8912896, ptr @.str.10, ptr @.str.11, i32 0, ptr @.str.8, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_DynamicPaintBrushSettings_paint_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_paint_alpha, ptr @rna_DynamicPaintBrushSettings_rna_type, i32 -1, ptr @.str.26, i32 8195, ptr @.str.27, ptr @.str.28, i32 0, ptr @.str.8, i32 2, i32 30, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 40, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @DynamicPaintBrushSettings_paint_color_get, ptr @DynamicPaintBrushSettings_paint_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_DynamicPaintBrushSettings_paint_color_default }, align 8
@rna_DynamicPaintBrushSettings_paint_alpha = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_use_material, ptr @rna_DynamicPaintBrushSettings_paint_color, i32 -1, ptr @.str.29, i32 8195, ptr @.str.30, ptr @.str.31, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 52, i32 4, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_paint_alpha_get, ptr @DynamicPaintBrushSettings_paint_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 5.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.26 = private unnamed_addr constant [12 x i8] c"paint_color\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"Paint Color\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"Color of the paint\00", align 1
@rna_DynamicPaintBrushSettings_paint_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_DynamicPaintBrushSettings_use_material = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_material, ptr @rna_DynamicPaintBrushSettings_paint_alpha, i32 -1, ptr @.str.32, i32 3, ptr @.str.33, ptr @.str.34, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_use_material_get, ptr @DynamicPaintBrushSettings_use_material_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.29 = private unnamed_addr constant [12 x i8] c"paint_alpha\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"Paint Alpha\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"Paint alpha\00", align 1
@rna_DynamicPaintBrushSettings_material = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_use_absolute_alpha, ptr @rna_DynamicPaintBrushSettings_use_material, i32 -1, ptr @.str.35, i32 8388673, ptr @.str.36, ptr @.str.37, i32 0, ptr @.str.8, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_material_get, ptr @DynamicPaintBrushSettings_material_set, ptr null, ptr null, ptr @RNA_Material }, align 8
@.str.32 = private unnamed_addr constant [13 x i8] c"use_material\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Use object material\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"Use object material to define color and influence\00", align 1
@rna_DynamicPaintBrushSettings_use_absolute_alpha = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_paint_wetness, ptr @rna_DynamicPaintBrushSettings_material, i32 -1, ptr @.str.38, i32 3, ptr @.str.39, ptr @.str.40, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_use_absolute_alpha_get, ptr @DynamicPaintBrushSettings_use_absolute_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.35 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.37 = private unnamed_addr constant [70 x i8] c"Material to use (if not defined, material linked to the mesh is used)\00", align 1
@rna_DynamicPaintBrushSettings_paint_wetness = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_use_paint_erase, ptr @rna_DynamicPaintBrushSettings_use_absolute_alpha, i32 -1, ptr @.str.41, i32 8195, ptr @.str.42, ptr @.str.43, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 56, i32 4, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_paint_wetness_get, ptr @DynamicPaintBrushSettings_paint_wetness_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 5.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.38 = private unnamed_addr constant [19 x i8] c"use_absolute_alpha\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"Absolute Alpha\00", align 1
@.str.40 = private unnamed_addr constant [65 x i8] c"Only increase alpha value if paint alpha is higher than existing\00", align 1
@rna_DynamicPaintBrushSettings_use_paint_erase = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_wave_type, ptr @rna_DynamicPaintBrushSettings_paint_wetness, i32 -1, ptr @.str.44, i32 3, ptr @.str.45, ptr @.str.46, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_use_paint_erase_get, ptr @DynamicPaintBrushSettings_use_paint_erase_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.41 = private unnamed_addr constant [14 x i8] c"paint_wetness\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"Paint Wetness\00", align 1
@.str.43 = private unnamed_addr constant [70 x i8] c"Paint wetness, visible in wetmap (some effects only affect wet paint)\00", align 1
@rna_DynamicPaintBrushSettings_wave_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_wave_factor, ptr @rna_DynamicPaintBrushSettings_use_paint_erase, i32 -1, ptr @.str.47, i32 1, ptr @.str.48, ptr @.str.2, i32 0, ptr @.str.8, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_wave_type_get, ptr @DynamicPaintBrushSettings_wave_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DynamicPaintBrushSettings_wave_type_items, i32 4, i32 0 }, align 8
@.str.44 = private unnamed_addr constant [16 x i8] c"use_paint_erase\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"Erase Paint\00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c"Erase / remove paint instead of adding it\00", align 1
@rna_DynamicPaintBrushSettings_wave_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_wave_clamp, ptr @rna_DynamicPaintBrushSettings_wave_type, i32 -1, ptr @.str.49, i32 8195, ptr @.str.50, ptr @.str.51, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 96, i32 4, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_wave_factor_get, ptr @DynamicPaintBrushSettings_wave_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+00, float 1.000000e+00, float -2.000000e+00, float 2.000000e+00, float 5.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.47 = private unnamed_addr constant [10 x i8] c"wave_type\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"Wave Type\00", align 1
@rna_DynamicPaintBrushSettings_wave_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 3, ptr @.str.279, i32 0, ptr @.str.280, ptr @.str.2 }, %struct.EnumPropertyItem { i32 0, ptr @.str.281, i32 0, ptr @.str.282, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.283, i32 0, ptr @.str.284, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.285, i32 0, ptr @.str.286, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_DynamicPaintBrushSettings_wave_clamp = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_use_smudge, ptr @rna_DynamicPaintBrushSettings_wave_factor, i32 -1, ptr @.str.52, i32 8195, ptr @.str.53, ptr @.str.54, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 100, i32 4, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_wave_clamp_get, ptr @DynamicPaintBrushSettings_wave_clamp_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00, float 5.000000e+01, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.49 = private unnamed_addr constant [12 x i8] c"wave_factor\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"Factor\00", align 1
@.str.51 = private unnamed_addr constant [44 x i8] c"Multiplier for wave influence of this brush\00", align 1
@rna_DynamicPaintBrushSettings_use_smudge = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_smudge_strength, ptr @rna_DynamicPaintBrushSettings_wave_clamp, i32 -1, ptr @.str.55, i32 3, ptr @.str.56, ptr @.str.57, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_use_smudge_get, ptr @DynamicPaintBrushSettings_use_smudge_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.52 = private unnamed_addr constant [11 x i8] c"wave_clamp\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"Clamp Waves\00", align 1
@.str.54 = private unnamed_addr constant [83 x i8] c"Maximum level of surface intersection used to influence waves (use 0.0 to disable)\00", align 1
@rna_DynamicPaintBrushSettings_smudge_strength = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_velocity_max, ptr @rna_DynamicPaintBrushSettings_use_smudge, i32 -1, ptr @.str.58, i32 8195, ptr @.str.59, ptr @.str.60, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 108, i32 4, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_smudge_strength_get, ptr @DynamicPaintBrushSettings_smudge_strength_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 5.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.55 = private unnamed_addr constant [11 x i8] c"use_smudge\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"Do Smudge\00", align 1
@.str.57 = private unnamed_addr constant [53 x i8] c"Make this brush to smudge existing paint as it moves\00", align 1
@rna_DynamicPaintBrushSettings_velocity_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_use_velocity_alpha, ptr @rna_DynamicPaintBrushSettings_smudge_strength, i32 -1, ptr @.str.61, i32 8195, ptr @.str.62, ptr @.str.63, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 104, i32 4, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_velocity_max_get, ptr @DynamicPaintBrushSettings_velocity_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3FB99999A0000000, float 2.000000e+00, float 0x3F1A36E2E0000000, float 1.000000e+01, float 5.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.58 = private unnamed_addr constant [16 x i8] c"smudge_strength\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"Smudge Strength\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"Smudge effect strength\00", align 1
@rna_DynamicPaintBrushSettings_use_velocity_alpha = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_use_velocity_depth, ptr @rna_DynamicPaintBrushSettings_velocity_max, i32 -1, ptr @.str.64, i32 3, ptr @.str.65, ptr @.str.66, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_use_velocity_alpha_get, ptr @DynamicPaintBrushSettings_use_velocity_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.61 = private unnamed_addr constant [13 x i8] c"velocity_max\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"Max Velocity\00", align 1
@.str.63 = private unnamed_addr constant [67 x i8] c"Velocity considered as maximum influence (Blender units per frame)\00", align 1
@rna_DynamicPaintBrushSettings_use_velocity_depth = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_use_velocity_color, ptr @rna_DynamicPaintBrushSettings_use_velocity_alpha, i32 -1, ptr @.str.67, i32 3, ptr @.str.68, ptr @.str.69, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_use_velocity_depth_get, ptr @DynamicPaintBrushSettings_use_velocity_depth_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.64 = private unnamed_addr constant [19 x i8] c"use_velocity_alpha\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"Multiply Alpha\00", align 1
@.str.66 = private unnamed_addr constant [54 x i8] c"Multiply brush influence by velocity color ramp alpha\00", align 1
@rna_DynamicPaintBrushSettings_use_velocity_color = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_paint_source, ptr @rna_DynamicPaintBrushSettings_use_velocity_depth, i32 -1, ptr @.str.70, i32 3, ptr @.str.71, ptr @.str.72, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_use_velocity_color_get, ptr @DynamicPaintBrushSettings_use_velocity_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.67 = private unnamed_addr constant [19 x i8] c"use_velocity_depth\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"Multiply Depth\00", align 1
@.str.69 = private unnamed_addr constant [75 x i8] c"Multiply brush intersection depth (displace, waves) by velocity ramp alpha\00", align 1
@rna_DynamicPaintBrushSettings_paint_source = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_paint_distance, ptr @rna_DynamicPaintBrushSettings_use_velocity_color, i32 -1, ptr @.str.73, i32 1, ptr @.str.74, ptr @.str.2, i32 0, ptr @.str.8, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_paint_source_get, ptr @DynamicPaintBrushSettings_paint_source_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DynamicPaintBrushSettings_paint_source_items, i32 5, i32 0 }, align 8
@.str.70 = private unnamed_addr constant [19 x i8] c"use_velocity_color\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"Replace Color\00", align 1
@.str.72 = private unnamed_addr constant [43 x i8] c"Replace brush color by velocity color ramp\00", align 1
@rna_DynamicPaintBrushSettings_paint_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_use_proximity_ramp_alpha, ptr @rna_DynamicPaintBrushSettings_paint_source, i32 -1, ptr @.str.75, i32 8195, ptr @.str.76, ptr @.str.77, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 68, i32 4, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_paint_distance_get, ptr @DynamicPaintBrushSettings_paint_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+02, float 0.000000e+00, float 5.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.73 = private unnamed_addr constant [13 x i8] c"paint_source\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"Paint Source\00", align 1
@rna_DynamicPaintBrushSettings_paint_source_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 3, ptr @.str.287, i32 88, ptr @.str.288, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.289, i32 305, ptr @.str.290, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.291, i32 305, ptr @.str.292, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.293, i32 307, ptr @.str.294, ptr @.str.2 }, %struct.EnumPropertyItem { i32 0, ptr @.str.295, i32 287, ptr @.str.296, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_DynamicPaintBrushSettings_use_proximity_ramp_alpha = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_proximity_falloff, ptr @rna_DynamicPaintBrushSettings_paint_distance, i32 -1, ptr @.str.78, i32 3, ptr @.str.79, ptr @.str.80, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_use_proximity_ramp_alpha_get, ptr @DynamicPaintBrushSettings_use_proximity_ramp_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.75 = private unnamed_addr constant [15 x i8] c"paint_distance\00", align 1
@.str.76 = private unnamed_addr constant [19 x i8] c"Proximity Distance\00", align 1
@.str.77 = private unnamed_addr constant [60 x i8] c"Maximum distance from brush to mesh surface to affect paint\00", align 1
@rna_DynamicPaintBrushSettings_proximity_falloff = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_use_proximity_project, ptr @rna_DynamicPaintBrushSettings_use_proximity_ramp_alpha, i32 -1, ptr @.str.81, i32 1, ptr @.str.82, ptr @.str.83, i32 0, ptr @.str.8, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_proximity_falloff_get, ptr @DynamicPaintBrushSettings_proximity_falloff_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DynamicPaintBrushSettings_proximity_falloff_items, i32 3, i32 0 }, align 8
@.str.78 = private unnamed_addr constant [25 x i8] c"use_proximity_ramp_alpha\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"Only Use Alpha\00", align 1
@.str.80 = private unnamed_addr constant [27 x i8] c"Only read color ramp alpha\00", align 1
@rna_DynamicPaintBrushSettings_use_proximity_project = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_ray_direction, ptr @rna_DynamicPaintBrushSettings_proximity_falloff, i32 -1, ptr @.str.84, i32 3, ptr @.str.85, ptr @.str.86, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_use_proximity_project_get, ptr @DynamicPaintBrushSettings_use_proximity_project_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.81 = private unnamed_addr constant [18 x i8] c"proximity_falloff\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"Falloff\00", align 1
@.str.83 = private unnamed_addr constant [23 x i8] c"Proximity falloff type\00", align 1
@rna_DynamicPaintBrushSettings_proximity_falloff_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.297, i32 559, ptr @.str.298, ptr @.str.2 }, %struct.EnumPropertyItem { i32 0, ptr @.str.299, i32 563, ptr @.str.300, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.301, i32 54, ptr @.str.302, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_DynamicPaintBrushSettings_ray_direction = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_invert_proximity, ptr @rna_DynamicPaintBrushSettings_use_proximity_project, i32 -1, ptr @.str.87, i32 3, ptr @.str.88, ptr @.str.89, i32 0, ptr @.str.8, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_ray_direction_get, ptr @DynamicPaintBrushSettings_ray_direction_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DynamicPaintBrushSettings_ray_direction_items, i32 3, i32 0 }, align 8
@.str.84 = private unnamed_addr constant [22 x i8] c"use_proximity_project\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"Project\00", align 1
@.str.86 = private unnamed_addr constant [75 x i8] c"Brush is projected to canvas from defined direction within brush proximity\00", align 1
@rna_DynamicPaintBrushSettings_invert_proximity = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_use_negative_volume, ptr @rna_DynamicPaintBrushSettings_ray_direction, i32 -1, ptr @.str.90, i32 3, ptr @.str.91, ptr @.str.92, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_invert_proximity_get, ptr @DynamicPaintBrushSettings_invert_proximity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.87 = private unnamed_addr constant [14 x i8] c"ray_direction\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"Ray Direction\00", align 1
@.str.89 = private unnamed_addr constant [96 x i8] c"Ray direction to use for projection (if brush object is located in that direction it's painted)\00", align 1
@rna_DynamicPaintBrushSettings_ray_direction_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.303, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.304, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.305, i32 0, ptr @.str.306, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_DynamicPaintBrushSettings_use_negative_volume = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_particle_system, ptr @rna_DynamicPaintBrushSettings_invert_proximity, i32 -1, ptr @.str.93, i32 3, ptr @.str.94, ptr @.str.95, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_use_negative_volume_get, ptr @DynamicPaintBrushSettings_use_negative_volume_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.90 = private unnamed_addr constant [17 x i8] c"invert_proximity\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"Inner Proximity\00", align 1
@.str.92 = private unnamed_addr constant [47 x i8] c"Proximity falloff is applied inside the volume\00", align 1
@rna_DynamicPaintBrushSettings_particle_system = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_use_particle_radius, ptr @rna_DynamicPaintBrushSettings_use_negative_volume, i32 -1, ptr @.str.96, i32 8388609, ptr @.str.97, ptr @.str.98, i32 0, ptr @.str.8, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_reset_dependency, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_particle_system_get, ptr @DynamicPaintBrushSettings_particle_system_set, ptr null, ptr null, ptr @RNA_ParticleSystem }, align 8
@.str.93 = private unnamed_addr constant [20 x i8] c"use_negative_volume\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"Negate Volume\00", align 1
@.str.95 = private unnamed_addr constant [35 x i8] c"Negate influence inside the volume\00", align 1
@rna_DynamicPaintBrushSettings_use_particle_radius = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_solid_radius, ptr @rna_DynamicPaintBrushSettings_particle_system, i32 -1, ptr @.str.99, i32 3, ptr @.str.100, ptr @.str.101, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_use_particle_radius_get, ptr @DynamicPaintBrushSettings_use_particle_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.96 = private unnamed_addr constant [16 x i8] c"particle_system\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"Particle Systems\00", align 1
@.str.98 = private unnamed_addr constant [34 x i8] c"The particle system to paint with\00", align 1
@rna_DynamicPaintBrushSettings_solid_radius = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_smooth_radius, ptr @rna_DynamicPaintBrushSettings_use_particle_radius, i32 -1, ptr @.str.102, i32 8195, ptr @.str.103, ptr @.str.104, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 60, i32 4, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_solid_radius_get, ptr @DynamicPaintBrushSettings_solid_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 2.000000e+00, float 0x3F847AE140000000, float 1.000000e+01, float 5.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.99 = private unnamed_addr constant [20 x i8] c"use_particle_radius\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"Use Particle Radius\00", align 1
@.str.101 = private unnamed_addr constant [34 x i8] c"Use radius from particle settings\00", align 1
@rna_DynamicPaintBrushSettings_smooth_radius = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_paint_ramp, ptr @rna_DynamicPaintBrushSettings_solid_radius, i32 -1, ptr @.str.105, i32 8195, ptr @.str.106, ptr @.str.107, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 64, i32 4, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_smooth_radius_get, ptr @DynamicPaintBrushSettings_smooth_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+01, float 5.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@.str.102 = private unnamed_addr constant [13 x i8] c"solid_radius\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"Solid Radius\00", align 1
@.str.104 = private unnamed_addr constant [34 x i8] c"Radius that will be painted solid\00", align 1
@rna_DynamicPaintBrushSettings_paint_ramp = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintBrushSettings_velocity_ramp, ptr @rna_DynamicPaintBrushSettings_smooth_radius, i32 -1, ptr @.str.108, i32 8388608, ptr @.str.109, ptr @.str.110, i32 0, ptr @.str.8, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_paint_ramp_get, ptr null, ptr null, ptr null, ptr @RNA_ColorRamp }, align 8
@.str.105 = private unnamed_addr constant [14 x i8] c"smooth_radius\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"Smooth Radius\00", align 1
@.str.107 = private unnamed_addr constant [40 x i8] c"Smooth falloff added after solid radius\00", align 1
@rna_DynamicPaintBrushSettings_velocity_ramp = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_DynamicPaintBrushSettings_paint_ramp, i32 -1, ptr @.str.111, i32 8388608, ptr @.str.112, ptr @.str.113, i32 0, ptr @.str.8, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintBrushSettings_velocity_ramp_get, ptr null, ptr null, ptr null, ptr @RNA_ColorRamp }, align 8
@.str.108 = private unnamed_addr constant [11 x i8] c"paint_ramp\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"Paint Color Ramp\00", align 1
@.str.110 = private unnamed_addr constant [44 x i8] c"Color ramp used to define proximity falloff\00", align 1
@.str.111 = private unnamed_addr constant [14 x i8] c"velocity_ramp\00", align 1
@.str.112 = private unnamed_addr constant [20 x i8] c"Velocity Color Ramp\00", align 1
@.str.113 = private unnamed_addr constant [48 x i8] c"Color ramp used to define brush velocity effect\00", align 1
@.str.114 = private unnamed_addr constant [26 x i8] c"DynamicPaintBrushSettings\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"Brush Settings\00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c"Brush settings\00", align 1
@rna_DynamicPaintSurface_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_surface_format, ptr @rna_DynamicPaintSurface_rna_properties, i32 -1, ptr @.str.9, i32 8912896, ptr @.str.10, ptr @.str.11, i32 0, ptr @.str.8, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_DynamicPaintSurface_surface_format = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_surface_type, ptr @rna_DynamicPaintSurface_rna_type, i32 -1, ptr @.str.117, i32 1, ptr @.str.118, ptr @.str.119, i32 0, ptr @.str.8, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaintSurfaces_changeFormat, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_surface_format_get, ptr @DynamicPaintSurface_surface_format_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DynamicPaintSurface_surface_format_items, i32 2, i32 1 }, align 8
@rna_DynamicPaintSurface_surface_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_is_active, ptr @rna_DynamicPaintSurface_surface_format, i32 -1, ptr @.str.120, i32 1, ptr @.str.121, ptr @.str.121, i32 0, ptr @.str.8, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaintSurface_changeType, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_surface_type_get, ptr @DynamicPaintSurface_surface_type_set, ptr @rna_DynamicPaint_surface_type_itemf, ptr null, ptr null, ptr null, ptr @rna_DynamicPaintSurface_surface_type_items, i32 1, i32 0 }, align 8
@.str.117 = private unnamed_addr constant [15 x i8] c"surface_format\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"Surface Format\00", align 1
@rna_DynamicPaintSurface_surface_format_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.308, i32 261, ptr @.str.309, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.310, i32 696, ptr @.str.311, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_DynamicPaintSurface_is_active = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_show_preview, ptr @rna_DynamicPaintSurface_surface_type, i32 -1, ptr @.str.122, i32 3, ptr @.str.123, ptr @.str.124, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_is_active_get, ptr @DynamicPaintSurface_is_active_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.120 = private unnamed_addr constant [13 x i8] c"surface_type\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"Surface Type\00", align 1
@rna_DynamicPaintSurface_surface_type_items = internal global [2 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.312, i32 0, ptr @.str.313, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_DynamicPaintSurface_show_preview = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_name, ptr @rna_DynamicPaintSurface_is_active, i32 -1, ptr @.str.125, i32 3, ptr @.str.126, ptr @.str.127, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaintSurface_changePreview, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_show_preview_get, ptr @DynamicPaintSurface_show_preview_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.122 = private unnamed_addr constant [10 x i8] c"is_active\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"Is Active\00", align 1
@.str.124 = private unnamed_addr constant [47 x i8] c"Toggle whether surface is processed or ignored\00", align 1
@rna_DynamicPaintSurface_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_brush_group, ptr @rna_DynamicPaintSurface_show_preview, i32 -1, ptr @.str.128, i32 262145, ptr @.str.129, ptr @.str.130, i32 0, ptr @.str.8, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_DynamicPaintSurface_uniqueName, i32 83886080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_name_get, ptr @DynamicPaintSurface_name_length, ptr @DynamicPaintSurface_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@.str.125 = private unnamed_addr constant [13 x i8] c"show_preview\00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"Show Preview\00", align 1
@.str.127 = private unnamed_addr constant [36 x i8] c"Display surface preview in 3D-views\00", align 1
@rna_DynamicPaintSurface_brush_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_use_dissolve, ptr @rna_DynamicPaintSurface_name, i32 -1, ptr @.str.131, i32 8388609, ptr @.str.132, ptr @.str.133, i32 0, ptr @.str.8, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_reset_dependency, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_brush_group_get, ptr @DynamicPaintSurface_brush_group_set, ptr null, ptr null, ptr @RNA_Group }, align 8
@.str.128 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"Surface name\00", align 1
@rna_DynamicPaintSurface_use_dissolve = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_dissolve_speed, ptr @rna_DynamicPaintSurface_brush_group, i32 -1, ptr @.str.134, i32 3, ptr @.str.135, ptr @.str.136, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_use_dissolve_get, ptr @DynamicPaintSurface_use_dissolve_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.131 = private unnamed_addr constant [12 x i8] c"brush_group\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c"Brush Group\00", align 1
@.str.133 = private unnamed_addr constant [39 x i8] c"Only use brush objects from this group\00", align 1
@rna_DynamicPaintSurface_dissolve_speed = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_use_drying, ptr @rna_DynamicPaintSurface_use_dissolve, i32 -1, ptr @.str.137, i32 8195, ptr @.str.138, ptr @.str.139, i32 0, ptr @.str.8, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 276, i32 0, ptr null, ptr null }, ptr @DynamicPaintSurface_dissolve_speed_get, ptr @DynamicPaintSurface_dissolve_speed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 10000, i32 1, i32 10000, i32 5, i32 0, ptr null }, align 8
@.str.134 = private unnamed_addr constant [13 x i8] c"use_dissolve\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"Dissolve\00", align 1
@.str.136 = private unnamed_addr constant [51 x i8] c"Enable to make surface changes disappear over time\00", align 1
@rna_DynamicPaintSurface_use_drying = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_dry_speed, ptr @rna_DynamicPaintSurface_dissolve_speed, i32 -1, ptr @.str.140, i32 3, ptr @.str.141, ptr @.str.142, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_use_drying_get, ptr @DynamicPaintSurface_use_drying_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.137 = private unnamed_addr constant [15 x i8] c"dissolve_speed\00", align 1
@.str.138 = private unnamed_addr constant [15 x i8] c"Dissolve Speed\00", align 1
@.str.139 = private unnamed_addr constant [56 x i8] c"Approximately in how many frames should dissolve happen\00", align 1
@rna_DynamicPaintSurface_dry_speed = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_image_resolution, ptr @rna_DynamicPaintSurface_use_drying, i32 -1, ptr @.str.143, i32 8195, ptr @.str.144, ptr @.str.145, i32 0, ptr @.str.8, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 272, i32 0, ptr null, ptr null }, ptr @DynamicPaintSurface_dry_speed_get, ptr @DynamicPaintSurface_dry_speed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 10000, i32 1, i32 10000, i32 5, i32 0, ptr null }, align 8
@.str.140 = private unnamed_addr constant [11 x i8] c"use_drying\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"Dry\00", align 1
@.str.142 = private unnamed_addr constant [45 x i8] c"Enable to make surface wetness dry over time\00", align 1
@rna_DynamicPaintSurface_image_resolution = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_uv_layer, ptr @rna_DynamicPaintSurface_dry_speed, i32 -1, ptr @.str.146, i32 8193, ptr @.str.147, ptr @.str.148, i32 0, ptr @.str.8, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 164, i32 0, ptr null, ptr null }, ptr @DynamicPaintSurface_image_resolution_get, ptr @DynamicPaintSurface_image_resolution_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16, i32 4096, i32 16, i32 4096, i32 1, i32 0, ptr null }, align 8
@.str.143 = private unnamed_addr constant [10 x i8] c"dry_speed\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"Dry Speed\00", align 1
@.str.145 = private unnamed_addr constant [54 x i8] c"Approximately in how many frames should drying happen\00", align 1
@rna_DynamicPaintSurface_uv_layer = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_frame_start, ptr @rna_DynamicPaintSurface_image_resolution, i32 -1, ptr @.str.149, i32 262145, ptr @.str.150, ptr @.str.151, i32 0, ptr @.str.8, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_uv_layer_get, ptr @DynamicPaintSurface_uv_layer_length, ptr @DynamicPaintSurface_uv_layer_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@.str.146 = private unnamed_addr constant [17 x i8] c"image_resolution\00", align 1
@.str.147 = private unnamed_addr constant [11 x i8] c"Resolution\00", align 1
@.str.148 = private unnamed_addr constant [24 x i8] c"Output image resolution\00", align 1
@rna_DynamicPaintSurface_frame_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_frame_end, ptr @rna_DynamicPaintSurface_uv_layer, i32 -1, ptr @.str.152, i32 8193, ptr @.str.153, ptr @.str.154, i32 0, ptr @.str.8, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaintSurfaces_updateFrames, i32 85458944, ptr null, ptr null, i32 172, i32 0, ptr null, ptr null }, ptr @DynamicPaintSurface_frame_start_get, ptr @DynamicPaintSurface_frame_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 9999, i32 1, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.149 = private unnamed_addr constant [9 x i8] c"uv_layer\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"UV Map\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"UV map name\00", align 1
@rna_DynamicPaintSurface_frame_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_frame_substeps, ptr @rna_DynamicPaintSurface_frame_start, i32 -1, ptr @.str.155, i32 8193, ptr @.str.156, ptr @.str.157, i32 0, ptr @.str.8, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaintSurfaces_updateFrames, i32 85458944, ptr null, ptr null, i32 176, i32 0, ptr null, ptr null }, ptr @DynamicPaintSurface_frame_end_get, ptr @DynamicPaintSurface_frame_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 9999, i32 1, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.152 = private unnamed_addr constant [12 x i8] c"frame_start\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"Start Frame\00", align 1
@.str.154 = private unnamed_addr constant [23 x i8] c"Simulation start frame\00", align 1
@rna_DynamicPaintSurface_frame_substeps = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_use_antialiasing, ptr @rna_DynamicPaintSurface_frame_end, i32 -1, ptr @.str.158, i32 8195, ptr @.str.159, ptr @.str.160, i32 0, ptr @.str.8, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 168, i32 0, ptr null, ptr null }, ptr @DynamicPaintSurface_frame_substeps_get, ptr @DynamicPaintSurface_frame_substeps_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10, i32 0, i32 20, i32 1, i32 0, ptr null }, align 8
@.str.155 = private unnamed_addr constant [10 x i8] c"frame_end\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"End Frame\00", align 1
@.str.157 = private unnamed_addr constant [21 x i8] c"Simulation end frame\00", align 1
@rna_DynamicPaintSurface_use_antialiasing = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_brush_influence_scale, ptr @rna_DynamicPaintSurface_frame_substeps, i32 -1, ptr @.str.161, i32 1, ptr @.str.162, ptr @.str.163, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaintSurface_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_use_antialiasing_get, ptr @DynamicPaintSurface_use_antialiasing_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.158 = private unnamed_addr constant [15 x i8] c"frame_substeps\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"Sub-Steps\00", align 1
@.str.160 = private unnamed_addr constant [61 x i8] c"Do extra frames between scene frames to ensure smooth motion\00", align 1
@rna_DynamicPaintSurface_brush_influence_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_brush_radius_scale, ptr @rna_DynamicPaintSurface_use_antialiasing, i32 -1, ptr @.str.164, i32 8195, ptr @.str.165, ptr @.str.166, i32 0, ptr @.str.8, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 312, i32 4, ptr null, ptr null }, ptr @DynamicPaintSurface_brush_influence_scale_get, ptr @DynamicPaintSurface_brush_influence_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.161 = private unnamed_addr constant [17 x i8] c"use_antialiasing\00", align 1
@.str.162 = private unnamed_addr constant [14 x i8] c"Anti-aliasing\00", align 1
@.str.163 = private unnamed_addr constant [43 x i8] c"Use 5x multisampling to smooth paint edges\00", align 1
@rna_DynamicPaintSurface_brush_radius_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_init_color_type, ptr @rna_DynamicPaintSurface_brush_influence_scale, i32 -1, ptr @.str.167, i32 8195, ptr @.str.168, ptr @.str.169, i32 0, ptr @.str.8, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 316, i32 4, ptr null, ptr null }, ptr @DynamicPaintSurface_brush_radius_scale_get, ptr @DynamicPaintSurface_brush_radius_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+01, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.164 = private unnamed_addr constant [22 x i8] c"brush_influence_scale\00", align 1
@.str.165 = private unnamed_addr constant [16 x i8] c"Influence Scale\00", align 1
@.str.166 = private unnamed_addr constant [52 x i8] c"Adjust influence brush objects have on this surface\00", align 1
@rna_DynamicPaintSurface_init_color_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_init_color, ptr @rna_DynamicPaintSurface_brush_radius_scale, i32 -1, ptr @.str.170, i32 1, ptr @.str.171, ptr @.str.2, i32 0, ptr @.str.8, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaintSurface_initialcolortype, i32 102694912, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_init_color_type_get, ptr @DynamicPaintSurface_init_color_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DynamicPaintSurface_init_color_type_items, i32 4, i32 0 }, align 8
@.str.167 = private unnamed_addr constant [19 x i8] c"brush_radius_scale\00", align 1
@.str.168 = private unnamed_addr constant [13 x i8] c"Radius Scale\00", align 1
@.str.169 = private unnamed_addr constant [65 x i8] c"Adjust radius of proximity brushes or particles for this surface\00", align 1
@rna_DynamicPaintSurface_init_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_init_texture, ptr @rna_DynamicPaintSurface_init_color_type, i32 -1, ptr @.str.172, i32 8193, ptr @.str.173, ptr @.str.174, i32 0, ptr @.str.8, i32 2, i32 30, ptr null, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 4, ptr @rna_DynamicPaintSurface_reset, i32 102694912, ptr null, ptr null, i32 184, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @DynamicPaintSurface_init_color_get, ptr @DynamicPaintSurface_init_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_DynamicPaintSurface_init_color_default }, align 8
@.str.170 = private unnamed_addr constant [16 x i8] c"init_color_type\00", align 1
@.str.171 = private unnamed_addr constant [14 x i8] c"Initial Color\00", align 1
@rna_DynamicPaintSurface_init_color_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.320, i32 0, ptr @.str.321, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.322, i32 54, ptr @.str.173, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.323, i32 80, ptr @.str.324, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.325, i32 202, ptr @.str.326, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_DynamicPaintSurface_init_texture = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_init_layername, ptr @rna_DynamicPaintSurface_init_color, i32 -1, ptr @.str.175, i32 8388673, ptr @.str.176, ptr @.str.2, i32 0, ptr @.str.8, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaintSurface_reset, i32 102694912, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_init_texture_get, ptr @DynamicPaintSurface_init_texture_set, ptr null, ptr null, ptr @RNA_Texture }, align 8
@.str.172 = private unnamed_addr constant [11 x i8] c"init_color\00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.174 = private unnamed_addr constant [29 x i8] c"Initial color of the surface\00", align 1
@rna_DynamicPaintSurface_init_color_default = internal global [4 x float] zeroinitializer, align 16
@rna_DynamicPaintSurface_init_layername = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_effect_ui, ptr @rna_DynamicPaintSurface_init_texture, i32 -1, ptr @.str.177, i32 262145, ptr @.str.178, ptr @.str.2, i32 0, ptr @.str.8, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_DynamicPaintSurface_reset, i32 102694912, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_init_layername_get, ptr @DynamicPaintSurface_init_layername_length, ptr @DynamicPaintSurface_init_layername_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@.str.175 = private unnamed_addr constant [13 x i8] c"init_texture\00", align 1
@.str.176 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@rna_DynamicPaintSurface_effect_ui = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_use_dry_log, ptr @rna_DynamicPaintSurface_init_layername, i32 -1, ptr @.str.179, i32 1, ptr @.str.180, ptr @.str.2, i32 0, ptr @.str.8, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_effect_ui_get, ptr @DynamicPaintSurface_effect_ui_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DynamicPaintSurface_effect_ui_items, i32 3, i32 1 }, align 8
@.str.177 = private unnamed_addr constant [15 x i8] c"init_layername\00", align 1
@.str.178 = private unnamed_addr constant [11 x i8] c"Data Layer\00", align 1
@rna_DynamicPaintSurface_use_dry_log = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_use_dissolve_log, ptr @rna_DynamicPaintSurface_effect_ui, i32 -1, ptr @.str.181, i32 3, ptr @.str.182, ptr @.str.183, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_use_dry_log_get, ptr @DynamicPaintSurface_use_dry_log_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.179 = private unnamed_addr constant [10 x i8] c"effect_ui\00", align 1
@.str.180 = private unnamed_addr constant [12 x i8] c"Effect Type\00", align 1
@rna_DynamicPaintSurface_effect_ui_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.327, i32 0, ptr @.str.328, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.329, i32 0, ptr @.str.330, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.331, i32 0, ptr @.str.332, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_DynamicPaintSurface_use_dissolve_log = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_use_spread, ptr @rna_DynamicPaintSurface_use_dry_log, i32 -1, ptr @.str.184, i32 3, ptr @.str.182, ptr @.str.185, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_use_dissolve_log_get, ptr @DynamicPaintSurface_use_dissolve_log_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.181 = private unnamed_addr constant [12 x i8] c"use_dry_log\00", align 1
@.str.182 = private unnamed_addr constant [5 x i8] c"Slow\00", align 1
@.str.183 = private unnamed_addr constant [73 x i8] c"Use logarithmic drying (makes high values to dry faster than low values)\00", align 1
@rna_DynamicPaintSurface_use_spread = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_spread_speed, ptr @rna_DynamicPaintSurface_use_dissolve_log, i32 -1, ptr @.str.186, i32 1, ptr @.str.187, ptr @.str.188, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaintSurface_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_use_spread_get, ptr @DynamicPaintSurface_use_spread_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.184 = private unnamed_addr constant [17 x i8] c"use_dissolve_log\00", align 1
@.str.185 = private unnamed_addr constant [76 x i8] c"Use logarithmic dissolve (makes high values to fade faster than low values)\00", align 1
@rna_DynamicPaintSurface_spread_speed = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_color_dry_threshold, ptr @rna_DynamicPaintSurface_use_spread, i32 -1, ptr @.str.189, i32 8195, ptr @.str.190, ptr @.str.191, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 292, i32 4, ptr null, ptr null }, ptr @DynamicPaintSurface_spread_speed_get, ptr @DynamicPaintSurface_spread_speed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 5.000000e+00, float 0x3F50624DE0000000, float 1.000000e+01, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.186 = private unnamed_addr constant [11 x i8] c"use_spread\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"Use Spread\00", align 1
@.str.188 = private unnamed_addr constant [56 x i8] c"Process spread effect (spread wet paint around surface)\00", align 1
@rna_DynamicPaintSurface_color_dry_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_color_spread_speed, ptr @rna_DynamicPaintSurface_spread_speed, i32 -1, ptr @.str.192, i32 8195, ptr @.str.193, ptr @.str.194, i32 0, ptr @.str.8, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 280, i32 4, ptr null, ptr null }, ptr @DynamicPaintSurface_color_dry_threshold_get, ptr @DynamicPaintSurface_color_dry_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.189 = private unnamed_addr constant [13 x i8] c"spread_speed\00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"Spread Speed\00", align 1
@.str.191 = private unnamed_addr constant [51 x i8] c"How fast spread effect moves on the canvas surface\00", align 1
@rna_DynamicPaintSurface_color_spread_speed = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_use_drip, ptr @rna_DynamicPaintSurface_color_dry_threshold, i32 -1, ptr @.str.195, i32 8195, ptr @.str.196, ptr @.str.197, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 296, i32 4, ptr null, ptr null }, ptr @DynamicPaintSurface_color_spread_speed_get, ptr @DynamicPaintSurface_color_spread_speed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.192 = private unnamed_addr constant [20 x i8] c"color_dry_threshold\00", align 1
@.str.193 = private unnamed_addr constant [10 x i8] c"Color Dry\00", align 1
@.str.194 = private unnamed_addr constant [63 x i8] c"The wetness level when colors start to shift to the background\00", align 1
@rna_DynamicPaintSurface_use_drip = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_use_shrink, ptr @rna_DynamicPaintSurface_color_spread_speed, i32 -1, ptr @.str.198, i32 1, ptr @.str.199, ptr @.str.200, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaintSurface_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_use_drip_get, ptr @DynamicPaintSurface_use_drip_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.195 = private unnamed_addr constant [19 x i8] c"color_spread_speed\00", align 1
@.str.196 = private unnamed_addr constant [13 x i8] c"Color Spread\00", align 1
@.str.197 = private unnamed_addr constant [43 x i8] c"How fast colors get mixed within wet paint\00", align 1
@rna_DynamicPaintSurface_use_shrink = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_shrink_speed, ptr @rna_DynamicPaintSurface_use_drip, i32 -1, ptr @.str.201, i32 1, ptr @.str.202, ptr @.str.203, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaintSurface_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_use_shrink_get, ptr @DynamicPaintSurface_use_shrink_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.198 = private unnamed_addr constant [9 x i8] c"use_drip\00", align 1
@.str.199 = private unnamed_addr constant [9 x i8] c"Use Drip\00", align 1
@.str.200 = private unnamed_addr constant [58 x i8] c"Process drip effect (drip wet paint to gravity direction)\00", align 1
@rna_DynamicPaintSurface_shrink_speed = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_effector_weights, ptr @rna_DynamicPaintSurface_use_shrink, i32 -1, ptr @.str.204, i32 8195, ptr @.str.205, ptr @.str.206, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 300, i32 4, ptr null, ptr null }, ptr @DynamicPaintSurface_shrink_speed_get, ptr @DynamicPaintSurface_shrink_speed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 5.000000e+00, float 0x3F50624DE0000000, float 1.000000e+01, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.201 = private unnamed_addr constant [11 x i8] c"use_shrink\00", align 1
@.str.202 = private unnamed_addr constant [11 x i8] c"Use Shrink\00", align 1
@.str.203 = private unnamed_addr constant [43 x i8] c"Process shrink effect (shrink paint areas)\00", align 1
@rna_DynamicPaintSurface_effector_weights = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_drip_velocity, ptr @rna_DynamicPaintSurface_shrink_speed, i32 -1, ptr @.str.207, i32 8388608, ptr @.str.208, ptr @.str.2, i32 0, ptr @.str.8, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_effector_weights_get, ptr null, ptr null, ptr null, ptr @RNA_EffectorWeights }, align 8
@.str.204 = private unnamed_addr constant [13 x i8] c"shrink_speed\00", align 1
@.str.205 = private unnamed_addr constant [13 x i8] c"Shrink Speed\00", align 1
@.str.206 = private unnamed_addr constant [51 x i8] c"How fast shrink effect moves on the canvas surface\00", align 1
@rna_DynamicPaintSurface_drip_velocity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_drip_acceleration, ptr @rna_DynamicPaintSurface_effector_weights, i32 -1, ptr @.str.209, i32 8195, ptr @.str.210, ptr @.str.211, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 304, i32 4, ptr null, ptr null }, ptr @DynamicPaintSurface_drip_velocity_get, ptr @DynamicPaintSurface_drip_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float -2.000000e+02, float 2.000000e+02, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.207 = private unnamed_addr constant [17 x i8] c"effector_weights\00", align 1
@.str.208 = private unnamed_addr constant [17 x i8] c"Effector Weights\00", align 1
@rna_DynamicPaintSurface_drip_acceleration = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_use_premultiply, ptr @rna_DynamicPaintSurface_drip_velocity, i32 -1, ptr @.str.212, i32 8195, ptr @.str.213, ptr @.str.214, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 308, i32 4, ptr null, ptr null }, ptr @DynamicPaintSurface_drip_acceleration_get, ptr @DynamicPaintSurface_drip_acceleration_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float -2.000000e+02, float 2.000000e+02, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.209 = private unnamed_addr constant [14 x i8] c"drip_velocity\00", align 1
@.str.210 = private unnamed_addr constant [9 x i8] c"Velocity\00", align 1
@.str.211 = private unnamed_addr constant [43 x i8] c"How much surface velocity affects dripping\00", align 1
@rna_DynamicPaintSurface_use_premultiply = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_image_output_path, ptr @rna_DynamicPaintSurface_drip_acceleration, i32 -1, ptr @.str.215, i32 1, ptr @.str.216, ptr @.str.217, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_use_premultiply_get, ptr @DynamicPaintSurface_use_premultiply_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.212 = private unnamed_addr constant [18 x i8] c"drip_acceleration\00", align 1
@.str.213 = private unnamed_addr constant [13 x i8] c"Acceleration\00", align 1
@.str.214 = private unnamed_addr constant [47 x i8] c"How much surface acceleration affects dripping\00", align 1
@rna_DynamicPaintSurface_image_output_path = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_output_name_a, ptr @rna_DynamicPaintSurface_use_premultiply, i32 -1, ptr @.str.218, i32 262145, ptr @.str.219, ptr @.str.220, i32 0, ptr @.str.8, i32 3, i32 2, ptr null, i32 0, [3 x i32] [i32 1024, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_image_output_path_get, ptr @DynamicPaintSurface_image_output_path_length, ptr @DynamicPaintSurface_image_output_path_set, ptr null, ptr null, ptr null, i32 1024, ptr @.str.2 }, align 8
@.str.215 = private unnamed_addr constant [16 x i8] c"use_premultiply\00", align 1
@.str.216 = private unnamed_addr constant [18 x i8] c"Premultiply alpha\00", align 1
@.str.217 = private unnamed_addr constant [56 x i8] c"Multiply color by alpha (recommended for Blender input)\00", align 1
@rna_DynamicPaintSurface_output_name_a = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_use_output_a, ptr @rna_DynamicPaintSurface_image_output_path, i32 -1, ptr @.str.221, i32 262145, ptr @.str.222, ptr @.str.223, i32 0, ptr @.str.8, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_output_name_a_get, ptr @DynamicPaintSurface_output_name_a_length, ptr @DynamicPaintSurface_output_name_a_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@.str.218 = private unnamed_addr constant [18 x i8] c"image_output_path\00", align 1
@.str.219 = private unnamed_addr constant [12 x i8] c"Output Path\00", align 1
@.str.220 = private unnamed_addr constant [31 x i8] c"Directory to save the textures\00", align 1
@rna_DynamicPaintSurface_use_output_a = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_output_name_b, ptr @rna_DynamicPaintSurface_output_name_a, i32 -1, ptr @.str.224, i32 3, ptr @.str.225, ptr @.str.226, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_use_output_a_get, ptr @DynamicPaintSurface_use_output_a_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.221 = private unnamed_addr constant [14 x i8] c"output_name_a\00", align 1
@.str.222 = private unnamed_addr constant [12 x i8] c"Output Name\00", align 1
@.str.223 = private unnamed_addr constant [43 x i8] c"Name used to save output from this surface\00", align 1
@rna_DynamicPaintSurface_output_name_b = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_use_output_b, ptr @rna_DynamicPaintSurface_use_output_a, i32 -1, ptr @.str.227, i32 262145, ptr @.str.222, ptr @.str.223, i32 0, ptr @.str.8, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_output_name_b_get, ptr @DynamicPaintSurface_output_name_b_length, ptr @DynamicPaintSurface_output_name_b_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@.str.224 = private unnamed_addr constant [13 x i8] c"use_output_a\00", align 1
@.str.225 = private unnamed_addr constant [11 x i8] c"Use Output\00", align 1
@.str.226 = private unnamed_addr constant [23 x i8] c"Save this output layer\00", align 1
@rna_DynamicPaintSurface_use_output_b = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_preview_id, ptr @rna_DynamicPaintSurface_output_name_b, i32 -1, ptr @.str.228, i32 3, ptr @.str.225, ptr @.str.226, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_use_output_b_get, ptr @DynamicPaintSurface_use_output_b_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.227 = private unnamed_addr constant [14 x i8] c"output_name_b\00", align 1
@rna_DynamicPaintSurface_preview_id = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_depth_clamp, ptr @rna_DynamicPaintSurface_use_output_b, i32 -1, ptr @.str.229, i32 1, ptr @.str.230, ptr @.str.2, i32 0, ptr @.str.8, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_preview_id_get, ptr @DynamicPaintSurface_preview_id_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DynamicPaintSurface_preview_id_items, i32 2, i32 0 }, align 8
@.str.228 = private unnamed_addr constant [13 x i8] c"use_output_b\00", align 1
@rna_DynamicPaintSurface_depth_clamp = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_displace_factor, ptr @rna_DynamicPaintSurface_preview_id, i32 -1, ptr @.str.231, i32 8193, ptr @.str.232, ptr @.str.233, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 284, i32 4, ptr null, ptr null }, ptr @DynamicPaintSurface_depth_clamp_get, ptr @DynamicPaintSurface_depth_clamp_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00, float 5.000000e+01, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.229 = private unnamed_addr constant [11 x i8] c"preview_id\00", align 1
@.str.230 = private unnamed_addr constant [8 x i8] c"Preview\00", align 1
@rna_DynamicPaintSurface_preview_id_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.312, i32 0, ptr @.str.313, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.333, i32 0, ptr @.str.334, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_DynamicPaintSurface_displace_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_image_fileformat, ptr @rna_DynamicPaintSurface_depth_clamp, i32 -1, ptr @.str.234, i32 8193, ptr @.str.235, ptr @.str.236, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaint_redoModifier, i32 85458944, ptr null, ptr null, i32 288, i32 4, ptr null, ptr null }, ptr @DynamicPaintSurface_displace_factor_get, ptr @DynamicPaintSurface_displace_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -5.000000e+00, float 5.000000e+00, float -5.000000e+01, float 5.000000e+01, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.231 = private unnamed_addr constant [12 x i8] c"depth_clamp\00", align 1
@.str.232 = private unnamed_addr constant [13 x i8] c"Max Displace\00", align 1
@.str.233 = private unnamed_addr constant [73 x i8] c"Maximum level of depth intersection in object space (use 0.0 to disable)\00", align 1
@rna_DynamicPaintSurface_image_fileformat = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_displace_type, ptr @rna_DynamicPaintSurface_displace_factor, i32 -1, ptr @.str.237, i32 1, ptr @.str.238, ptr @.str.2, i32 0, ptr @.str.8, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_image_fileformat_get, ptr @DynamicPaintSurface_image_fileformat_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DynamicPaintSurface_image_fileformat_items, i32 1, i32 0 }, align 8
@.str.234 = private unnamed_addr constant [16 x i8] c"displace_factor\00", align 1
@.str.235 = private unnamed_addr constant [16 x i8] c"Displace Factor\00", align 1
@.str.236 = private unnamed_addr constant [46 x i8] c"Strength of displace when applied to the mesh\00", align 1
@rna_DynamicPaintSurface_displace_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_use_incremental_displace, ptr @rna_DynamicPaintSurface_image_fileformat, i32 -1, ptr @.str.239, i32 1, ptr @.str.240, ptr @.str.2, i32 0, ptr @.str.8, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_displace_type_get, ptr @DynamicPaintSurface_displace_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DynamicPaintSurface_displace_type_items, i32 2, i32 0 }, align 8
@.str.237 = private unnamed_addr constant [17 x i8] c"image_fileformat\00", align 1
@.str.238 = private unnamed_addr constant [12 x i8] c"File Format\00", align 1
@rna_DynamicPaintSurface_image_fileformat_items = internal global [2 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.335, i32 0, ptr @.str.335, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_DynamicPaintSurface_use_incremental_displace = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_wave_damping, ptr @rna_DynamicPaintSurface_displace_type, i32 -1, ptr @.str.241, i32 1, ptr @.str.242, ptr @.str.243, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DynamicPaintSurface_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_use_incremental_displace_get, ptr @DynamicPaintSurface_use_incremental_displace_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.239 = private unnamed_addr constant [14 x i8] c"displace_type\00", align 1
@.str.240 = private unnamed_addr constant [10 x i8] c"Data Type\00", align 1
@rna_DynamicPaintSurface_displace_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.314, i32 0, ptr @.str.336, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.281, i32 0, ptr @.str.337, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_DynamicPaintSurface_wave_damping = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_wave_speed, ptr @rna_DynamicPaintSurface_use_incremental_displace, i32 -1, ptr @.str.244, i32 8195, ptr @.str.245, ptr @.str.246, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 320, i32 4, ptr null, ptr null }, ptr @DynamicPaintSurface_wave_damping_get, ptr @DynamicPaintSurface_wave_damping_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.241 = private unnamed_addr constant [25 x i8] c"use_incremental_displace\00", align 1
@.str.242 = private unnamed_addr constant [12 x i8] c"Incremental\00", align 1
@.str.243 = private unnamed_addr constant [54 x i8] c"New displace is added cumulatively on top of existing\00", align 1
@rna_DynamicPaintSurface_wave_speed = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_wave_timescale, ptr @rna_DynamicPaintSurface_wave_damping, i32 -1, ptr @.str.247, i32 8195, ptr @.str.248, ptr @.str.249, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 324, i32 4, ptr null, ptr null }, ptr @DynamicPaintSurface_wave_speed_get, ptr @DynamicPaintSurface_wave_speed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3FC99999A0000000, float 4.000000e+00, float 0x3F847AE140000000, float 5.000000e+00, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.244 = private unnamed_addr constant [13 x i8] c"wave_damping\00", align 1
@.str.245 = private unnamed_addr constant [8 x i8] c"Damping\00", align 1
@.str.246 = private unnamed_addr constant [20 x i8] c"Wave damping factor\00", align 1
@rna_DynamicPaintSurface_wave_timescale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_wave_spring, ptr @rna_DynamicPaintSurface_wave_speed, i32 -1, ptr @.str.250, i32 8195, ptr @.str.251, ptr @.str.252, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 328, i32 4, ptr null, ptr null }, ptr @DynamicPaintSurface_wave_timescale_get, ptr @DynamicPaintSurface_wave_timescale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.500000e+00, float 0x3F847AE140000000, float 3.000000e+00, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.247 = private unnamed_addr constant [11 x i8] c"wave_speed\00", align 1
@.str.248 = private unnamed_addr constant [6 x i8] c"Speed\00", align 1
@.str.249 = private unnamed_addr constant [23 x i8] c"Wave propagation speed\00", align 1
@rna_DynamicPaintSurface_wave_spring = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_wave_smoothness, ptr @rna_DynamicPaintSurface_wave_timescale, i32 -1, ptr @.str.253, i32 8195, ptr @.str.254, ptr @.str.255, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 332, i32 4, ptr null, ptr null }, ptr @DynamicPaintSurface_wave_spring_get, ptr @DynamicPaintSurface_wave_spring_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.250 = private unnamed_addr constant [15 x i8] c"wave_timescale\00", align 1
@.str.251 = private unnamed_addr constant [10 x i8] c"Timescale\00", align 1
@.str.252 = private unnamed_addr constant [25 x i8] c"Wave time scaling factor\00", align 1
@rna_DynamicPaintSurface_wave_smoothness = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_use_wave_open_border, ptr @rna_DynamicPaintSurface_wave_spring, i32 -1, ptr @.str.256, i32 8195, ptr @.str.257, ptr @.str.258, i32 0, ptr @.str.8, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 336, i32 4, ptr null, ptr null }, ptr @DynamicPaintSurface_wave_smoothness_get, ptr @DynamicPaintSurface_wave_smoothness_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3FB99999A0000000, float 5.000000e+00, float 0.000000e+00, float 1.000000e+01, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.253 = private unnamed_addr constant [12 x i8] c"wave_spring\00", align 1
@.str.254 = private unnamed_addr constant [7 x i8] c"Spring\00", align 1
@.str.255 = private unnamed_addr constant [49 x i8] c"Spring force that pulls water level back to zero\00", align 1
@rna_DynamicPaintSurface_use_wave_open_border = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_point_cache, ptr @rna_DynamicPaintSurface_wave_smoothness, i32 -1, ptr @.str.259, i32 3, ptr @.str.260, ptr @.str.261, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_use_wave_open_border_get, ptr @DynamicPaintSurface_use_wave_open_border_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.256 = private unnamed_addr constant [16 x i8] c"wave_smoothness\00", align 1
@.str.257 = private unnamed_addr constant [11 x i8] c"Smoothness\00", align 1
@.str.258 = private unnamed_addr constant [132 x i8] c"Limit maximum steepness of wave slope between simulation points (use higher values for smoother waves at expense of reduced detail)\00", align 1
@rna_DynamicPaintSurface_point_cache = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_is_cache_user, ptr @rna_DynamicPaintSurface_use_wave_open_border, i32 -1, ptr @.str.262, i32 8650752, ptr @.str.263, ptr @.str.2, i32 0, ptr @.str.8, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_point_cache_get, ptr null, ptr null, ptr null, ptr @RNA_PointCache }, align 8
@.str.259 = private unnamed_addr constant [21 x i8] c"use_wave_open_border\00", align 1
@.str.260 = private unnamed_addr constant [13 x i8] c"Open Borders\00", align 1
@.str.261 = private unnamed_addr constant [30 x i8] c"Pass waves through mesh edges\00", align 1
@rna_DynamicPaintSurface_is_cache_user = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_use_color_preview, ptr @rna_DynamicPaintSurface_point_cache, i32 -1, ptr @.str.264, i32 0, ptr @.str.265, ptr @.str.2, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_is_cache_user_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.262 = private unnamed_addr constant [12 x i8] c"point_cache\00", align 1
@.str.263 = private unnamed_addr constant [12 x i8] c"Point Cache\00", align 1
@rna_DynamicPaintSurface_use_color_preview = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_DynamicPaintSurface_is_cache_user, i32 -1, ptr @.str.266, i32 0, ptr @.str.267, ptr @.str.268, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintSurface_use_color_preview_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.264 = private unnamed_addr constant [14 x i8] c"is_cache_user\00", align 1
@.str.265 = private unnamed_addr constant [10 x i8] c"Use Cache\00", align 1
@.str.266 = private unnamed_addr constant [18 x i8] c"use_color_preview\00", align 1
@.str.267 = private unnamed_addr constant [18 x i8] c"Use Color Preview\00", align 1
@.str.268 = private unnamed_addr constant [56 x i8] c"Whether this surface has some color preview for 3D view\00", align 1
@rna_DynamicPaintSurface_output_exists_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_output_exists_exists, ptr @rna_DynamicPaintSurface_output_exists_object, i32 -1, ptr @.str.270, i32 7, ptr @.str.271, ptr @.str.2, i32 0, ptr @.str.8, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, i32 0, i32 1, i32 1, i32 0, ptr null }, align 8
@.str.269 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@RNA_Object = external global %struct.StructRNA, align 8
@rna_DynamicPaintSurface_output_exists_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintSurface_output_exists_index, ptr null, i32 -1, ptr @.str.269, i32 8650756, ptr @.str.2, ptr @.str.2, i32 0, ptr @.str.8, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_DynamicPaintSurface_output_exists_exists = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_DynamicPaintSurface_output_exists_index, i32 -1, ptr @.str.272, i32 11, ptr @.str.2, ptr @.str.2, i32 0, ptr @.str.8, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.270 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.271 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.272 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@.str.273 = private unnamed_addr constant [14 x i8] c"output_exists\00", align 1
@.str.274 = private unnamed_addr constant [52 x i8] c"Checks if surface output layer of given name exists\00", align 1
@rna_DynamicPaintSurface_output_exists_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_DynamicPaintSurface_output_exists_object, ptr @rna_DynamicPaintSurface_output_exists_exists } }, ptr @.str.273, i32 0, ptr @.str.274, ptr @DynamicPaintSurface_output_exists_call, ptr @rna_DynamicPaintSurface_output_exists_exists }, align 8
@RNA_FCurve = external global %struct.StructRNA, align 8
@.str.275 = private unnamed_addr constant [20 x i8] c"DynamicPaintSurface\00", align 1
@.str.276 = private unnamed_addr constant [14 x i8] c"Paint Surface\00", align 1
@.str.277 = private unnamed_addr constant [23 x i8] c"A canvas surface layer\00", align 1
@.str.278 = private unnamed_addr constant [32 x i8] c"modifiers[\22%s\22].canvas_settings\00", align 1
@.str.279 = private unnamed_addr constant [7 x i8] c"CHANGE\00", align 1
@.str.280 = private unnamed_addr constant [13 x i8] c"Depth Change\00", align 1
@.str.281 = private unnamed_addr constant [6 x i8] c"DEPTH\00", align 1
@.str.282 = private unnamed_addr constant [9 x i8] c"Obstacle\00", align 1
@.str.283 = private unnamed_addr constant [6 x i8] c"FORCE\00", align 1
@.str.284 = private unnamed_addr constant [6 x i8] c"Force\00", align 1
@.str.285 = private unnamed_addr constant [8 x i8] c"REFLECT\00", align 1
@.str.286 = private unnamed_addr constant [13 x i8] c"Reflect Only\00", align 1
@.str.287 = private unnamed_addr constant [16 x i8] c"PARTICLE_SYSTEM\00", align 1
@.str.288 = private unnamed_addr constant [16 x i8] c"Particle System\00", align 1
@.str.289 = private unnamed_addr constant [6 x i8] c"POINT\00", align 1
@.str.290 = private unnamed_addr constant [14 x i8] c"Object Center\00", align 1
@.str.291 = private unnamed_addr constant [9 x i8] c"DISTANCE\00", align 1
@.str.292 = private unnamed_addr constant [10 x i8] c"Proximity\00", align 1
@.str.293 = private unnamed_addr constant [16 x i8] c"VOLUME_DISTANCE\00", align 1
@.str.294 = private unnamed_addr constant [24 x i8] c"Mesh Volume + Proximity\00", align 1
@.str.295 = private unnamed_addr constant [7 x i8] c"VOLUME\00", align 1
@.str.296 = private unnamed_addr constant [12 x i8] c"Mesh Volume\00", align 1
@.str.297 = private unnamed_addr constant [7 x i8] c"SMOOTH\00", align 1
@.str.298 = private unnamed_addr constant [7 x i8] c"Smooth\00", align 1
@.str.299 = private unnamed_addr constant [9 x i8] c"CONSTANT\00", align 1
@.str.300 = private unnamed_addr constant [9 x i8] c"Constant\00", align 1
@.str.301 = private unnamed_addr constant [5 x i8] c"RAMP\00", align 1
@.str.302 = private unnamed_addr constant [11 x i8] c"Color Ramp\00", align 1
@.str.303 = private unnamed_addr constant [14 x i8] c"Canvas Normal\00", align 1
@.str.304 = private unnamed_addr constant [13 x i8] c"Brush Normal\00", align 1
@.str.305 = private unnamed_addr constant [7 x i8] c"Z_AXIS\00", align 1
@.str.306 = private unnamed_addr constant [7 x i8] c"Z-Axis\00", align 1
@.str.307 = private unnamed_addr constant [31 x i8] c"modifiers[\22%s\22].brush_settings\00", align 1
@.str.308 = private unnamed_addr constant [7 x i8] c"VERTEX\00", align 1
@.str.309 = private unnamed_addr constant [7 x i8] c"Vertex\00", align 1
@.str.310 = private unnamed_addr constant [6 x i8] c"IMAGE\00", align 1
@.str.311 = private unnamed_addr constant [15 x i8] c"Image Sequence\00", align 1
@__const.rna_DynamicPaint_surface_type_itemf.tmp = private unnamed_addr constant %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.2, ptr @.str.2 }, align 8
@.str.312 = private unnamed_addr constant [6 x i8] c"PAINT\00", align 1
@.str.313 = private unnamed_addr constant [6 x i8] c"Paint\00", align 1
@.str.314 = private unnamed_addr constant [9 x i8] c"DISPLACE\00", align 1
@.str.315 = private unnamed_addr constant [9 x i8] c"Displace\00", align 1
@.str.316 = private unnamed_addr constant [7 x i8] c"WEIGHT\00", align 1
@.str.317 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@.str.318 = private unnamed_addr constant [5 x i8] c"WAVE\00", align 1
@.str.319 = private unnamed_addr constant [6 x i8] c"Waves\00", align 1
@.str.320 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.321 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.322 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.323 = private unnamed_addr constant [8 x i8] c"TEXTURE\00", align 1
@.str.324 = private unnamed_addr constant [11 x i8] c"UV Texture\00", align 1
@.str.325 = private unnamed_addr constant [13 x i8] c"VERTEX_COLOR\00", align 1
@.str.326 = private unnamed_addr constant [13 x i8] c"Vertex Color\00", align 1
@.str.327 = private unnamed_addr constant [7 x i8] c"SPREAD\00", align 1
@.str.328 = private unnamed_addr constant [7 x i8] c"Spread\00", align 1
@.str.329 = private unnamed_addr constant [5 x i8] c"DRIP\00", align 1
@.str.330 = private unnamed_addr constant [5 x i8] c"Drip\00", align 1
@.str.331 = private unnamed_addr constant [7 x i8] c"SHRINK\00", align 1
@.str.332 = private unnamed_addr constant [7 x i8] c"Shrink\00", align 1
@.str.333 = private unnamed_addr constant [7 x i8] c"WETMAP\00", align 1
@.str.334 = private unnamed_addr constant [7 x i8] c"Wetmap\00", align 1
@.str.335 = private unnamed_addr constant [4 x i8] c"PNG\00", align 1
@.str.336 = private unnamed_addr constant [13 x i8] c"Displacement\00", align 1
@.str.337 = private unnamed_addr constant [6 x i8] c"Depth\00", align 1
@.str.338 = private unnamed_addr constant [54 x i8] c"modifiers[\22%s\22].canvas_settings.canvas_surfaces[\22%s\22]\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintCanvasSettings_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_DynamicPaintCanvasSettings_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define internal void @DynamicPaintCanvasSettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintCanvasSettings_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintCanvasSettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @DynamicPaintCanvasSettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintCanvasSettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintCanvasSettings_canvas_surfaces_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_DynamicPaintCanvasSettings_canvas_surfaces, ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %6, i64 0, i32 2
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #13
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #13, !noalias !46
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_DynamicPaintSurface, ptr noundef %13) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DynamicPaintCanvasSettings_canvas_surfaces_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #13
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_DynamicPaintSurface, ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintCanvasSettings_canvas_surfaces_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #13, !noalias !49
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_DynamicPaintSurface, ptr noundef %8) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintCanvasSettings_canvas_surfaces_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurfaces_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_DynamicPaintSurfaces_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DynamicPaintSurfaces_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurfaces_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurfaces_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DynamicPaintSurfaces_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurfaces_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurfaces_active_index_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !52
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurfaces_active_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %4, i64 0, i32 3
  store i16 %5, ptr %6, align 8, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurfaces_active_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45, !noalias !56
  %5 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !35, !noalias !56
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %4, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !52, !noalias !56
  %11 = sext i16 %10 to i32
  br label %16

12:                                               ; preds = %16
  %13 = add nuw nsw i32 %18, 1
  %14 = load ptr, ptr %17, align 8, !tbaa !35, !noalias !56
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16, !llvm.loop !59

16:                                               ; preds = %8, %12
  %17 = phi ptr [ %6, %8 ], [ %14, %12 ]
  %18 = phi i32 [ 0, %8 ], [ %13, %12 ]
  %19 = icmp eq i32 %18, %11
  br i1 %19, label %20, label %12

20:                                               ; preds = %16
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_DynamicPaintSurface, ptr noundef nonnull %17) #13
  br label %22

21:                                               ; preds = %12, %2
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_DynamicPaintSurface, ptr noundef null) #13
  br label %22

22:                                               ; preds = %20, %21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintBrushSettings_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_DynamicPaintBrushSettings_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DynamicPaintBrushSettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintBrushSettings_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintBrushSettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DynamicPaintBrushSettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintBrushSettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_paint_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 6
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !62
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !65
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !66

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_paint_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 6
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !65
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 0x47EFFFFFE0000000
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0.000000e+00, %6 ], [ %9, %13 ], [ 0x47EFFFFFE0000000, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !62
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !67

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintBrushSettings_paint_alpha_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 9
  %5 = load float, ptr %4, align 4, !tbaa !68
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_paint_alpha_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 9
  store float %8, ptr %9, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintBrushSettings_use_material_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_use_material_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !69
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintBrushSettings_material_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Material, ptr noundef %6) #13
  ret void
}

declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintBrushSettings_material_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #13
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #13
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !70
  ret void
}

declare void @id_us_min(ptr noundef) local_unnamed_addr #3

declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintBrushSettings_use_absolute_alpha_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_use_absolute_alpha_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintBrushSettings_paint_wetness_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 8, !tbaa !71
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_paint_wetness_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 10
  store float %8, ptr %9, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintBrushSettings_use_paint_erase_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_use_paint_erase_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintBrushSettings_wave_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 17
  %5 = load i16, ptr %4, align 2, !tbaa !72
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_wave_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 17
  store i16 %5, ptr %6, align 2, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintBrushSettings_wave_factor_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 20
  %5 = load float, ptr %4, align 8, !tbaa !73
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_wave_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -2.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+00
  %7 = select i1 %6, float 2.000000e+00, float %1
  %8 = select i1 %5, float -2.000000e+00, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 20
  store float %8, ptr %9, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintBrushSettings_wave_clamp_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 21
  %5 = load float, ptr %4, align 4, !tbaa !74
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_wave_clamp_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+01
  %7 = select i1 %6, float 5.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 21
  store float %8, ptr %9, align 4, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintBrushSettings_use_smudge_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_use_smudge_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = and i32 %7, -257
  %9 = select i1 %5, i32 0, i32 256
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintBrushSettings_smudge_strength_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 23
  %5 = load float, ptr %4, align 4, !tbaa !75
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_smudge_strength_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 23
  store float %8, ptr %9, align 4, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintBrushSettings_velocity_max_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 22
  %5 = load float, ptr %4, align 8, !tbaa !76
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_velocity_max_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0x3F1A36E2E0000000
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0x3F1A36E2E0000000, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 22
  store float %8, ptr %9, align 8, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintBrushSettings_use_velocity_alpha_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_use_velocity_alpha_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = and i32 %7, -513
  %9 = select i1 %5, i32 0, i32 512
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintBrushSettings_use_velocity_depth_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_use_velocity_depth_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintBrushSettings_use_velocity_color_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = lshr i32 %5, 10
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_use_velocity_color_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = and i32 %7, -1025
  %9 = select i1 %5, i32 0, i32 1024
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintBrushSettings_paint_source_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !77
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_paint_source_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 5
  store i32 %1, ptr %5, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintBrushSettings_paint_distance_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 4, !tbaa !78
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_paint_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+02
  %7 = select i1 %6, float 5.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 13
  store float %8, ptr %9, align 4, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintBrushSettings_use_proximity_ramp_alpha_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_use_proximity_ramp_alpha_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintBrushSettings_proximity_falloff_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 16
  %5 = load i16, ptr %4, align 8, !tbaa !79
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_proximity_falloff_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 16
  store i16 %5, ptr %6, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintBrushSettings_use_proximity_project_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_use_proximity_project_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintBrushSettings_ray_direction_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 18
  %5 = load i16, ptr %4, align 4, !tbaa !80
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_ray_direction_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 18
  store i16 %5, ptr %6, align 4, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintBrushSettings_invert_proximity_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_invert_proximity_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = and i32 %7, -65
  %9 = select i1 %5, i32 0, i32 64
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintBrushSettings_use_negative_volume_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_use_negative_volume_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !69
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintBrushSettings_particle_system_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ParticleSystem, ptr noundef %6) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_particle_system_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintBrushSettings_use_particle_radius_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_use_particle_radius_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintBrushSettings_solid_radius_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 4, !tbaa !82
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_solid_radius_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0x3F847AE140000000
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0x3F847AE140000000, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 11
  store float %8, ptr %9, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintBrushSettings_smooth_radius_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 8, !tbaa !83
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintBrushSettings_smooth_radius_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 12
  store float %8, ptr %9, align 8, !tbaa !83
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintBrushSettings_paint_ramp_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ColorRamp, ptr noundef %6) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintBrushSettings_velocity_ramp_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %4, i64 0, i32 15
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ColorRamp, ptr noundef %6) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_DynamicPaintSurface_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DynamicPaintSurface_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DynamicPaintSurface_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_surface_format_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 4, !tbaa !86
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_surface_format_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 10
  store i16 %5, ptr %6, align 4, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_surface_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !88
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_surface_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 11
  store i16 %5, ptr %6, align 2, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_is_active_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !89
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_is_active_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !89
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_show_preview_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !89
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_show_preview_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !89
  %8 = and i32 %7, -65
  %9 = select i1 %5, i32 0, i32 64
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !89
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 9
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #13
  ret void
}

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_name_length(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 9
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 9
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_brush_group_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Group, ptr noundef %6) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_brush_group_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #13
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 4
  store ptr %6, ptr %10, align 8, !tbaa !90
  ret void
}

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_use_dissolve_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !89
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_use_dissolve_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !89
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_dissolve_speed_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 29
  %5 = load i32, ptr %4, align 4, !tbaa !91
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_dissolve_speed_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 10000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 29
  store i32 %6, ptr %7, align 4, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_use_drying_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !89
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_use_drying_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !89
  %8 = and i32 %7, -513
  %9 = select i1 %5, i32 0, i32 512
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_dry_speed_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 28
  %5 = load i32, ptr %4, align 8, !tbaa !92
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_dry_speed_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 10000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 28
  store i32 %6, ptr %7, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_image_resolution_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 20
  %5 = load i32, ptr %4, align 4, !tbaa !93
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_image_resolution_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 4096)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 16)
  %7 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 20
  store i32 %6, ptr %7, align 4, !tbaa !93
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_uv_layer_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 46
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_uv_layer_length(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 46
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_uv_layer_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %6, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !52
  %13 = sext i16 %12 to i32
  br label %18

14:                                               ; preds = %18
  %15 = add nuw nsw i32 %20, 1
  %16 = load ptr, ptr %19, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18, !llvm.loop !95

18:                                               ; preds = %10, %14
  %19 = phi ptr [ %8, %10 ], [ %16, %14 ]
  %20 = phi i32 [ 0, %10 ], [ %15, %14 ]
  %21 = icmp eq i32 %20, %13
  br i1 %21, label %22, label %14

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %19, i64 0, i32 46
  tail call void @rna_object_uvlayer_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %23, i32 noundef 64) #13
  br label %24

24:                                               ; preds = %14, %2, %22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_frame_start_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 22
  %5 = load i32, ptr %4, align 4, !tbaa !96
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_frame_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 300000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 22
  store i32 %6, ptr %7, align 4, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_frame_end_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !97
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_frame_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 300000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 23
  store i32 %6, ptr %7, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_frame_substeps_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 21
  %5 = load i32, ptr %4, align 8, !tbaa !98
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_frame_substeps_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 20)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 21
  store i32 %6, ptr %7, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_use_antialiasing_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !89
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_use_antialiasing_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !89
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintSurface_brush_influence_scale_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 38
  %5 = load float, ptr %4, align 8, !tbaa !99
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_brush_influence_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 38
  store float %8, ptr %9, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintSurface_brush_radius_scale_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 39
  %5 = load float, ptr %4, align 4, !tbaa !100
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_brush_radius_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 39
  store float %8, ptr %9, align 4, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_init_color_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 16
  %5 = load i16, ptr %4, align 8, !tbaa !101
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_init_color_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 16
  store i16 %5, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_init_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 25
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !65
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !65
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %6, !llvm.loop !102

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_init_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 25
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !65
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 0x47EFFFFFE0000000
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0.000000e+00, %6 ], [ %9, %13 ], [ 0x47EFFFFFE0000000, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !65
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %19, label %6, !llvm.loop !103

19:                                               ; preds = %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_init_texture_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Texture, ptr noundef %6) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_init_texture_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !104
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #13
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #13
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !104
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_init_layername_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 27
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_init_layername_length(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 27
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_init_layername_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 27
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_effect_ui_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 4, !tbaa !105
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_effect_ui_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 14
  store i16 %5, ptr %6, align 4, !tbaa !105
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_use_dry_log_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !89
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_use_dry_log_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !89
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_use_dissolve_log_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !89
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_use_dissolve_log_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !89
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_use_spread_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 19
  %5 = load i32, ptr %4, align 8, !tbaa !106
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_use_spread_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 19
  %7 = load i32, ptr %6, align 8, !tbaa !106
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintSurface_spread_speed_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 33
  %5 = load float, ptr %4, align 4, !tbaa !107
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_spread_speed_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0x3F50624DE0000000
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0x3F50624DE0000000, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 33
  store float %8, ptr %9, align 4, !tbaa !107
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintSurface_color_dry_threshold_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 30
  %5 = load float, ptr %4, align 8, !tbaa !108
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_color_dry_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 30
  store float %8, ptr %9, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintSurface_color_spread_speed_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 34
  %5 = load float, ptr %4, align 8, !tbaa !109
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_color_spread_speed_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+00
  %7 = select i1 %6, float 2.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 34
  store float %8, ptr %9, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_use_drip_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 19
  %5 = load i32, ptr %4, align 8, !tbaa !106
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_use_drip_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 19
  %7 = load i32, ptr %6, align 8, !tbaa !106
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_use_shrink_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 19
  %5 = load i32, ptr %4, align 8, !tbaa !106
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_use_shrink_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 19
  %7 = load i32, ptr %6, align 8, !tbaa !106
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintSurface_shrink_speed_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 35
  %5 = load float, ptr %4, align 4, !tbaa !110
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_shrink_speed_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0x3F50624DE0000000
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0x3F50624DE0000000, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 35
  store float %8, ptr %9, align 4, !tbaa !110
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_effector_weights_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_EffectorWeights, ptr noundef %6) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintSurface_drip_velocity_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 36
  %5 = load float, ptr %4, align 8, !tbaa !112
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_drip_velocity_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -2.000000e+02
  %6 = fcmp ogt float %1, 2.000000e+02
  %7 = select i1 %6, float 2.000000e+02, float %1
  %8 = select i1 %5, float -2.000000e+02, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 36
  store float %8, ptr %9, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintSurface_drip_acceleration_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 37
  %5 = load float, ptr %4, align 4, !tbaa !113
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_drip_acceleration_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -2.000000e+02
  %6 = fcmp ogt float %1, 2.000000e+02
  %7 = select i1 %6, float 2.000000e+02, float %1
  %8 = select i1 %5, float -2.000000e+02, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 37
  store float %8, ptr %9, align 4, !tbaa !113
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_use_premultiply_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !89
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_use_premultiply_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !89
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !89
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_image_output_path_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 47
  %6 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #13
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_image_output_path_length(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 47
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_image_output_path_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 47
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 1024) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_output_name_a_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 48
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_output_name_a_length(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 48
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_output_name_a_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 48
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_use_output_a_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !89
  %6 = lshr i32 %5, 10
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_use_output_a_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !89
  %8 = and i32 %7, -1025
  %9 = select i1 %5, i32 0, i32 1024
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !89
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_output_name_b_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 49
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_output_name_b_length(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 49
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_output_name_b_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 49
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_use_output_b_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !89
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_use_output_b_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !89
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_preview_id_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 15
  %5 = load i16, ptr %4, align 2, !tbaa !114
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_preview_id_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 15
  store i16 %5, ptr %6, align 2, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintSurface_depth_clamp_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 31
  %5 = load float, ptr %4, align 4, !tbaa !115
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_depth_clamp_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+01
  %7 = select i1 %6, float 5.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 31
  store float %8, ptr %9, align 4, !tbaa !115
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintSurface_displace_factor_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 32
  %5 = load float, ptr %4, align 8, !tbaa !116
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_displace_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -5.000000e+01
  %6 = fcmp ogt float %1, 5.000000e+01
  %7 = select i1 %6, float 5.000000e+01, float %1
  %8 = select i1 %5, float -5.000000e+01, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 32
  store float %8, ptr %9, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_image_fileformat_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 2, !tbaa !117
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_image_fileformat_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 13
  store i16 %5, ptr %6, align 2, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_displace_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 12
  %5 = load i16, ptr %4, align 8, !tbaa !118
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_displace_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 12
  store i16 %5, ptr %6, align 8, !tbaa !118
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_use_incremental_displace_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !89
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_use_incremental_displace_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !89
  %8 = and i32 %7, -257
  %9 = select i1 %5, i32 0, i32 256
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintSurface_wave_damping_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 40
  %5 = load float, ptr %4, align 8, !tbaa !119
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_wave_damping_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 40
  store float %8, ptr %9, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintSurface_wave_speed_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 41
  %5 = load float, ptr %4, align 4, !tbaa !120
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_wave_speed_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0x3F847AE140000000
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float 0x3F847AE140000000, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 41
  store float %8, ptr %9, align 4, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintSurface_wave_timescale_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 42
  %5 = load float, ptr %4, align 8, !tbaa !121
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_wave_timescale_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0x3F847AE140000000
  %6 = fcmp ogt float %1, 3.000000e+00
  %7 = select i1 %6, float 3.000000e+00, float %1
  %8 = select i1 %5, float 0x3F847AE140000000, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 42
  store float %8, ptr %9, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintSurface_wave_spring_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 43
  %5 = load float, ptr %4, align 4, !tbaa !122
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_wave_spring_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 43
  store float %8, ptr %9, align 4, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DynamicPaintSurface_wave_smoothness_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 44
  %5 = load float, ptr %4, align 8, !tbaa !123
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_wave_smoothness_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 44
  store float %8, ptr %9, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_use_wave_open_border_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !89
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintSurface_use_wave_open_border_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !89
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !89
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_point_cache_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_PointCache, ptr noundef %6) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintSurface_is_cache_user_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 4, !tbaa !86
  %6 = icmp ne i16 %5, 2
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DynamicPaintSurface_use_color_preview_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = tail call zeroext i8 @dynamicPaint_surfaceHasColorPreview(ptr noundef %3) #13
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DynamicPaintSurface_output_exists(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call zeroext i8 @dynamicPaint_outputLayerExists(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintSurface_output_exists_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !125
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !127
  %11 = getelementptr inbounds i8, ptr %7, i64 12
  %12 = tail call zeroext i8 @dynamicPaint_outputLayerExists(ptr noundef %6, ptr noundef %8, i32 noundef %10) #13
  %13 = zext i8 %12 to i32
  store i32 %13, ptr %11, align 4, !tbaa !127
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_DynamicPaintCanvasSettings_path(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [128 x i8], align 16
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %4, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #13
  %6 = getelementptr inbounds %struct.ModifierData, ptr %5, i64 0, i32 6
  %7 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %6, i64 noundef 128) #13
  %8 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.278, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #13
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal void @rna_Surface_active_point_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  store i32 0, ptr %1, align 4, !tbaa !127
  %8 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %7, i64 0, i32 2
  %9 = tail call i32 @BLI_countlist(ptr noundef nonnull %8) #13
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %2, align 4, !tbaa !127
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_DynamicPaint_redoModifier(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !129
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_DynamicPaint_reset_dependency(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = tail call zeroext i8 @dynamicPaint_resetSurface(ptr noundef %1, ptr noundef %5) #13
  %7 = load ptr, ptr %2, align 8, !tbaa !129
  tail call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #13
  tail call void @DAG_relations_tag_update(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_DynamicPaintBrushSettings_path(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [128 x i8], align 16
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %4, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #13
  %6 = getelementptr inbounds %struct.ModifierData, ptr %5, i64 0, i32 6
  %7 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %6, i64 noundef 128) #13
  %8 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.307, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #13
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal void @rna_DynamicPaintSurfaces_changeFormat(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 11
  store i16 0, ptr %6, align 2, !tbaa !88
  tail call void @dynamicPaintSurface_updateType(ptr noundef %5) #13
  %7 = load ptr, ptr %4, align 8, !tbaa !45
  %8 = tail call zeroext i8 @dynamicPaint_resetSurface(ptr noundef %1, ptr noundef %7) #13
  %9 = load ptr, ptr %2, align 8, !tbaa !129
  tail call void @DAG_id_tag_update(ptr noundef %9, i16 noundef signext 2) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_DynamicPaintSurface_changeType(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @dynamicPaintSurface_updateType(ptr noundef %5) #13
  %6 = load ptr, ptr %4, align 8, !tbaa !45
  %7 = tail call zeroext i8 @dynamicPaint_resetSurface(ptr noundef %1, ptr noundef %6) #13
  %8 = load ptr, ptr %4, align 8, !tbaa !45
  %9 = tail call zeroext i8 @dynamicPaint_resetSurface(ptr noundef %1, ptr noundef %8) #13
  %10 = load ptr, ptr %2, align 8, !tbaa !129
  tail call void @DAG_id_tag_update(ptr noundef %10, i16 noundef signext 2) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_DynamicPaint_surface_type_itemf(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.EnumPropertyItem, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr null, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) @__const.rna_DynamicPaint_surface_type_itemf.tmp, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !tbaa !127
  store i32 0, ptr %6, align 8, !tbaa !131
  %10 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 1
  store ptr @.str.312, ptr %10, align 8, !tbaa !133
  %11 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 3
  store ptr @.str.313, ptr %11, align 8, !tbaa !134
  %12 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 2
  store i32 134, ptr %12, align 8, !tbaa !135
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #13
  %13 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %9, i64 0, i32 10
  %14 = load i16, ptr %13, align 4, !tbaa !86
  %15 = add i16 %14, -1
  %16 = icmp ult i16 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 1, ptr %6, align 8, !tbaa !131
  store ptr @.str.314, ptr %10, align 8, !tbaa !133
  store ptr @.str.315, ptr %11, align 8, !tbaa !134
  store i32 456, ptr %12, align 8, !tbaa !135
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #13
  br label %18

18:                                               ; preds = %4, %17
  %19 = load i16, ptr %13, align 4, !tbaa !86
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 2, ptr %6, align 8, !tbaa !131
  store ptr @.str.316, ptr %10, align 8, !tbaa !133
  store ptr @.str.317, ptr %11, align 8, !tbaa !134
  store i32 475, ptr %12, align 8, !tbaa !135
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #13
  br label %22

22:                                               ; preds = %21, %18
  store i32 3, ptr %6, align 8, !tbaa !131
  store ptr @.str.318, ptr %10, align 8, !tbaa !133
  store ptr @.str.319, ptr %11, align 8, !tbaa !134
  store i32 443, ptr %12, align 8, !tbaa !135
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #13
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %7) #13
  store i8 1, ptr %3, align 1, !tbaa !136
  %23 = load ptr, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret ptr %23
}

; Function Attrs: nounwind uwtable
define internal void @rna_DynamicPaintSurface_changePreview(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  %8 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %3, %18
  %12 = phi ptr [ %19, %18 ], [ %9, %3 ]
  %13 = icmp eq ptr %12, %5
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %12, i64 0, i32 18
  %16 = load i32, ptr %15, align 4, !tbaa !89
  %17 = and i32 %16, -65
  store i32 %17, ptr %15, align 4, !tbaa !89
  br label %18

18:                                               ; preds = %11, %14
  %19 = load ptr, ptr %12, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %11, !llvm.loop !137

21:                                               ; preds = %18, %3
  %22 = load ptr, ptr %2, align 8, !tbaa !129
  tail call void @DAG_id_tag_update(ptr noundef %22, i16 noundef signext 2) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_DynamicPaintSurface_uniqueName(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 9
  tail call void @dynamicPaintSurface_setUniqueName(ptr noundef %5, ptr noundef nonnull %6) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_DynamicPaintSurfaces_updateFrames(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @dynamicPaint_cacheUpdateFrames(ptr noundef %5) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_DynamicPaintSurface_reset(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = tail call zeroext i8 @dynamicPaint_resetSurface(ptr noundef %1, ptr noundef %5) #13
  %7 = load ptr, ptr %2, align 8, !tbaa !129
  tail call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_DynamicPaintSurface_initialcolortype(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 27
  store i8 0, ptr %6, align 8, !tbaa !136
  tail call void @dynamicPaint_clearSurface(ptr noundef %1, ptr noundef %5) #13
  %7 = load ptr, ptr %2, align 8, !tbaa !129
  tail call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_DynamicPaintSurface_path(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [128 x i8], align 16
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  %8 = load ptr, ptr %7, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #13
  %9 = getelementptr inbounds %struct.ModifierData, ptr %8, i64 0, i32 6
  %10 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %9, i64 noundef 128) #13
  %11 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 9
  %12 = call i64 @BLI_strescape(ptr noundef nonnull %3, ptr noundef nonnull %11, i64 noundef 128) #13
  %13 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.338, ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #13
  ret ptr %13
}

declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #3

declare void @rna_object_uvlayer_name_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @dynamicPaint_surfaceHasColorPreview(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dynamicPaint_outputLayerExists(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #3

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #3

declare void @dynamicPaintSurface_updateType(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dynamicPaint_resetSurface(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dynamicPaintSurface_setUniqueName(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dynamicPaint_cacheUpdateFrames(ptr noundef) local_unnamed_addr #3

declare void @dynamicPaint_clearSurface(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

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
!34 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 48}
!40 = !{!"CollectionPropertyIterator", !41, i64 0, !41, i64 24, !36, i64 48, !37, i64 56, !43, i64 96, !43, i64 100, !41, i64 104, !43, i64 128}
!41 = !{!"PointerRNA", !42, i64 0, !36, i64 8, !36, i64 16}
!42 = !{!"", !36, i64 0}
!43 = !{!"int", !37, i64 0}
!44 = !{!40, !43, i64 128}
!45 = !{!41, !36, i64 16}
!46 = !{!47}
!47 = distinct !{!47, !48, !"DynamicPaintCanvasSettings_canvas_surfaces_get: argument 0"}
!48 = distinct !{!48, !"DynamicPaintCanvasSettings_canvas_surfaces_get"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"DynamicPaintCanvasSettings_canvas_surfaces_get: argument 0"}
!51 = distinct !{!51, !"DynamicPaintCanvasSettings_canvas_surfaces_get"}
!52 = !{!53, !55, i64 32}
!53 = !{!"DynamicPaintCanvasSettings", !36, i64 0, !36, i64 8, !54, i64 16, !55, i64 32, !55, i64 34, !43, i64 36, !37, i64 40}
!54 = !{!"ListBase", !36, i64 0, !36, i64 8}
!55 = !{!"short", !37, i64 0}
!56 = !{!57}
!57 = distinct !{!57, !58, !"rna_PaintSurface_active_get: argument 0"}
!58 = distinct !{!58, !"rna_PaintSurface_active_get"}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!63, !64, i64 40}
!63 = !{!"DynamicPaintBrushSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !43, i64 32, !43, i64 36, !64, i64 40, !64, i64 44, !64, i64 48, !64, i64 52, !64, i64 56, !64, i64 60, !64, i64 64, !64, i64 68, !36, i64 72, !36, i64 80, !55, i64 88, !55, i64 90, !55, i64 92, !55, i64 94, !64, i64 96, !64, i64 100, !64, i64 104, !64, i64 108}
!64 = !{!"float", !37, i64 0}
!65 = !{!64, !64, i64 0}
!66 = distinct !{!66, !60, !61}
!67 = distinct !{!67, !60, !61}
!68 = !{!63, !64, i64 52}
!69 = !{!63, !43, i64 32}
!70 = !{!63, !36, i64 24}
!71 = !{!63, !64, i64 56}
!72 = !{!63, !55, i64 90}
!73 = !{!63, !64, i64 96}
!74 = !{!63, !64, i64 100}
!75 = !{!63, !64, i64 108}
!76 = !{!63, !64, i64 104}
!77 = !{!63, !43, i64 36}
!78 = !{!63, !64, i64 68}
!79 = !{!63, !55, i64 88}
!80 = !{!63, !55, i64 92}
!81 = !{!63, !36, i64 16}
!82 = !{!63, !64, i64 60}
!83 = !{!63, !64, i64 64}
!84 = !{!63, !36, i64 72}
!85 = !{!63, !36, i64 80}
!86 = !{!87, !55, i64 140}
!87 = !{!"DynamicPaintSurface", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !54, i64 56, !43, i64 72, !37, i64 76, !55, i64 140, !55, i64 142, !55, i64 144, !55, i64 146, !55, i64 148, !55, i64 150, !55, i64 152, !55, i64 154, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !37, i64 184, !36, i64 200, !37, i64 208, !43, i64 272, !43, i64 276, !64, i64 280, !64, i64 284, !64, i64 288, !64, i64 292, !64, i64 296, !64, i64 300, !64, i64 304, !64, i64 308, !64, i64 312, !64, i64 316, !64, i64 320, !64, i64 324, !64, i64 328, !64, i64 332, !64, i64 336, !43, i64 340, !37, i64 344, !37, i64 408, !37, i64 1432, !37, i64 1496}
!88 = !{!87, !55, i64 142}
!89 = !{!87, !43, i64 156}
!90 = !{!87, !36, i64 32}
!91 = !{!87, !43, i64 276}
!92 = !{!87, !43, i64 272}
!93 = !{!87, !43, i64 164}
!94 = !{!87, !36, i64 16}
!95 = distinct !{!95, !60, !61}
!96 = !{!87, !43, i64 172}
!97 = !{!87, !43, i64 176}
!98 = !{!87, !43, i64 168}
!99 = !{!87, !64, i64 312}
!100 = !{!87, !64, i64 316}
!101 = !{!87, !55, i64 152}
!102 = distinct !{!102, !60, !61}
!103 = distinct !{!103, !60, !61}
!104 = !{!87, !36, i64 200}
!105 = !{!87, !55, i64 148}
!106 = !{!87, !43, i64 160}
!107 = !{!87, !64, i64 292}
!108 = !{!87, !64, i64 280}
!109 = !{!87, !64, i64 296}
!110 = !{!87, !64, i64 300}
!111 = !{!87, !36, i64 40}
!112 = !{!87, !64, i64 304}
!113 = !{!87, !64, i64 308}
!114 = !{!87, !55, i64 150}
!115 = !{!87, !64, i64 284}
!116 = !{!87, !64, i64 288}
!117 = !{!87, !55, i64 146}
!118 = !{!87, !55, i64 144}
!119 = !{!87, !64, i64 320}
!120 = !{!87, !64, i64 324}
!121 = !{!87, !64, i64 328}
!122 = !{!87, !64, i64 332}
!123 = !{!87, !64, i64 336}
!124 = !{!87, !36, i64 48}
!125 = !{!126, !36, i64 0}
!126 = !{!"ParameterList", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24}
!127 = !{!43, !43, i64 0}
!128 = !{!53, !36, i64 0}
!129 = !{!41, !36, i64 0}
!130 = !{!63, !36, i64 0}
!131 = !{!132, !43, i64 0}
!132 = !{!"EnumPropertyItem", !43, i64 0, !36, i64 8, !43, i64 16, !36, i64 24, !36, i64 32}
!133 = !{!132, !36, i64 8}
!134 = !{!132, !36, i64 24}
!135 = !{!132, !43, i64 16}
!136 = !{!37, !37, i64 0}
!137 = distinct !{!137, !60, !61}
