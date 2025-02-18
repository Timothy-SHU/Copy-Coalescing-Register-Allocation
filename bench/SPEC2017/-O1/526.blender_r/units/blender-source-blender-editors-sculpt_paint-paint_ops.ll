; ModuleID = 'blender/source/blender/editors/sculpt_paint/paint_ops.c'
source_filename = "blender/source/blender/editors/sculpt_paint/paint_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperatorTypeMacro = type { ptr, ptr, [64 x i8], ptr, ptr }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.PaletteColor = type { ptr, ptr, [3 x float], float }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Palette = type { %struct.ID, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.StencilControlData = type { [2 x float], [2 x float], [2 x float], float, float, float, [2 x float], i32, i32, i32, ptr, ptr, ptr, ptr, i16 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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

@.str = private unnamed_addr constant [30 x i8] c"PAINTCURVE_OT_add_point_slide\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Add Curve Point and Slide\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Add new curve point and slide it\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"PAINTCURVE_OT_add_point\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"PAINTCURVE_OT_slide\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Paint Curve\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Sculpt\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"SCULPT_OT_brush_stroke\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_subdivision_set\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"PAINT_OT_mask_flood_fill\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"PAINT_OT_mask_lasso_gesture\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"SCULPT_OT_dynamic_topology_toggle\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"WM_OT_radial_control\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"sculpt\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"detail_size\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"data_path_primary\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"tool_settings.sculpt.detail_size\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"create_missing\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"WM_OT_context_menu_enum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"data_path\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"tool_settings.sculpt.brush.stroke_method\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"WM_OT_context_toggle\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"tool_settings.sculpt.brush.use_smooth_stroke\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"tool_settings.sculpt.brush.texture_angle_source_random\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"Vertex Paint\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"PAINT_OT_vertex_paint\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"PAINT_OT_sample_color\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"PAINT_OT_vertex_color_set\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"vertex_paint\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"vertex_paint_object.data.use_paint_mask\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"tool_settings.vertex_paint.brush.use_smooth_stroke\00", align 1
@.str.40 = private unnamed_addr constant [61 x i8] c"tool_settings.vertex_paint.brush.texture_angle_source_random\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"tool_settings.vertex_paint.brush.stroke_method\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"Weight Paint\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"PAINT_OT_weight_paint\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"PAINT_OT_weight_sample\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"PAINT_OT_weight_sample_group\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"PAINT_OT_weight_gradient\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"PAINT_OT_weight_set\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"weight_paint\00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"weight_paint_object.data.use_paint_mask\00", align 1
@.str.52 = private unnamed_addr constant [47 x i8] c"weight_paint_object.data.use_paint_mask_vertex\00", align 1
@.str.53 = private unnamed_addr constant [51 x i8] c"tool_settings.weight_paint.brush.use_smooth_stroke\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"Weight Paint Vertex Selection\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"PAINT_OT_vert_select_all\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"VIEW3D_OT_select_border\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"VIEW3D_OT_select_lasso\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"VIEW3D_OT_select_circle\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"Image Paint\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"PAINT_OT_image_paint\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"PAINT_OT_brush_colors_flip\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"PAINT_OT_grab_clone\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"image_paint\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"image_paint_object.data.use_paint_mask\00", align 1
@.str.68 = private unnamed_addr constant [50 x i8] c"tool_settings.image_paint.brush.use_smooth_stroke\00", align 1
@.str.69 = private unnamed_addr constant [60 x i8] c"tool_settings.image_paint.brush.texture_angle_source_random\00", align 1
@.str.70 = private unnamed_addr constant [46 x i8] c"tool_settings.image_paint.brush.stroke_method\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"Face Mask\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"PAINT_OT_face_select_all\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"PAINT_OT_face_select_hide\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"PAINT_OT_face_select_reveal\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"PAINT_OT_face_select_linked\00", align 1
@.str.77 = private unnamed_addr constant [33 x i8] c"PAINT_OT_face_select_linked_pick\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"UV Sculpt\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"tool_settings.use_uv_sculpt\00", align 1
@.str.80 = private unnamed_addr constant [27 x i8] c"SCULPT_OT_uv_sculpt_stroke\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"uv_sculpt\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"BRUSH_OT_uv_sculpt_tool_set\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"tool\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"Add New Palette\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"Add new palette\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"PALETTE_OT_new\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"Palette\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"New Palette Color\00", align 1
@.str.90 = private unnamed_addr constant [32 x i8] c"Add new color to active palette\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"PALETTE_OT_color_add\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"Delete Palette Color\00", align 1
@.str.93 = private unnamed_addr constant [33 x i8] c"Remove active color from palette\00", align 1
@.str.94 = private unnamed_addr constant [24 x i8] c"PALETTE_OT_color_delete\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"Add Brush\00", align 1
@.str.96 = private unnamed_addr constant [23 x i8] c"Add brush by mode type\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"BRUSH_OT_add\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"Brush\00", align 1
@.str.99 = private unnamed_addr constant [30 x i8] c"Scale Sculpt/Paint Brush Size\00", align 1
@.str.100 = private unnamed_addr constant [30 x i8] c"Change brush size by a scalar\00", align 1
@.str.101 = private unnamed_addr constant [20 x i8] c"BRUSH_OT_scale_size\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"Scalar\00", align 1
@.str.104 = private unnamed_addr constant [30 x i8] c"Factor to scale brush size by\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"Reset Brush\00", align 1
@.str.106 = private unnamed_addr constant [47 x i8] c"Return brush to defaults based on current tool\00", align 1
@.str.107 = private unnamed_addr constant [15 x i8] c"BRUSH_OT_reset\00", align 1
@BRUSH_OT_stencil_control.stencil_control_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.108, i32 0, ptr @.str.109, ptr @.str.110 }, %struct.EnumPropertyItem { i32 1, ptr @.str.111, i32 0, ptr @.str.112, ptr @.str.110 }, %struct.EnumPropertyItem { i32 2, ptr @.str.113, i32 0, ptr @.str.114, ptr @.str.110 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.108 = private unnamed_addr constant [12 x i8] c"TRANSLATION\00", align 1
@.str.109 = private unnamed_addr constant [12 x i8] c"Translation\00", align 1
@.str.110 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"SCALE\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"Scale\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"ROTATION\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"Rotation\00", align 1
@BRUSH_OT_stencil_control.stencil_texture_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.115, i32 0, ptr @.str.116, ptr @.str.110 }, %struct.EnumPropertyItem { i32 1, ptr @.str.117, i32 0, ptr @.str.118, ptr @.str.110 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.115 = private unnamed_addr constant [8 x i8] c"PRIMARY\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"Primary\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"SECONDARY\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"Secondary\00", align 1
@.str.119 = private unnamed_addr constant [22 x i8] c"Stencil Brush Control\00", align 1
@.str.120 = private unnamed_addr constant [26 x i8] c"Control the stencil brush\00", align 1
@.str.121 = private unnamed_addr constant [25 x i8] c"BRUSH_OT_stencil_control\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"Tool\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"texmode\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.124 = private unnamed_addr constant [16 x i8] c"stencil_control\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.125 = private unnamed_addr constant [13 x i8] c"Image Aspect\00", align 1
@.str.126 = private unnamed_addr constant [83 x i8] c"When using an image texture, adjust the stencil size to fit the image aspect ratio\00", align 1
@.str.127 = private unnamed_addr constant [34 x i8] c"BRUSH_OT_stencil_fit_image_aspect\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"use_repeat\00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c"Use Repeat\00", align 1
@.str.130 = private unnamed_addr constant [26 x i8] c"Use repeat mapping values\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"use_scale\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"Use Scale\00", align 1
@.str.133 = private unnamed_addr constant [25 x i8] c"Use texture scale values\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.135 = private unnamed_addr constant [20 x i8] c"Modify Mask Stencil\00", align 1
@.str.136 = private unnamed_addr constant [42 x i8] c"Modify either the primary or mask stencil\00", align 1
@.str.137 = private unnamed_addr constant [16 x i8] c"Reset Transform\00", align 1
@.str.138 = private unnamed_addr constant [48 x i8] c"Reset the stencil transformation to the default\00", align 1
@.str.139 = private unnamed_addr constant [33 x i8] c"BRUSH_OT_stencil_reset_transform\00", align 1
@PAINT_OT_brush_select.paint_mode_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.140, i32 0, ptr @.str.141, ptr @.str.142 }, %struct.EnumPropertyItem { i32 2, ptr @.str.143, i32 136, ptr @.str.8, ptr @.str.110 }, %struct.EnumPropertyItem { i32 4, ptr @.str.144, i32 133, ptr @.str.32, ptr @.str.110 }, %struct.EnumPropertyItem { i32 8, ptr @.str.145, i32 135, ptr @.str.42, ptr @.str.110 }, %struct.EnumPropertyItem { i32 16, ptr @.str.146, i32 134, ptr @.str.147, ptr @.str.110 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.140 = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"Current\00", align 1
@.str.142 = private unnamed_addr constant [32 x i8] c"Set brush for active paint mode\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"SCULPT\00", align 1
@.str.144 = private unnamed_addr constant [13 x i8] c"VERTEX_PAINT\00", align 1
@.str.145 = private unnamed_addr constant [13 x i8] c"WEIGHT_PAINT\00", align 1
@.str.146 = private unnamed_addr constant [14 x i8] c"TEXTURE_PAINT\00", align 1
@.str.147 = private unnamed_addr constant [14 x i8] c"Texture Paint\00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"Brush Select\00", align 1
@.str.149 = private unnamed_addr constant [41 x i8] c"Select a paint mode's brush by tool type\00", align 1
@.str.150 = private unnamed_addr constant [22 x i8] c"PAINT_OT_brush_select\00", align 1
@.str.151 = private unnamed_addr constant [11 x i8] c"paint_mode\00", align 1
@.str.152 = private unnamed_addr constant [11 x i8] c"Paint Mode\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"sculpt_tool\00", align 1
@brush_sculpt_tool_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.154 = private unnamed_addr constant [12 x i8] c"Sculpt Tool\00", align 1
@.str.155 = private unnamed_addr constant [18 x i8] c"vertex_paint_tool\00", align 1
@brush_vertex_tool_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.156 = private unnamed_addr constant [18 x i8] c"Vertex Paint Tool\00", align 1
@.str.157 = private unnamed_addr constant [18 x i8] c"weight_paint_tool\00", align 1
@.str.158 = private unnamed_addr constant [18 x i8] c"Weight Paint Tool\00", align 1
@.str.159 = private unnamed_addr constant [19 x i8] c"texture_paint_tool\00", align 1
@brush_image_tool_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.160 = private unnamed_addr constant [19 x i8] c"Texture Paint Tool\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"Toggle\00", align 1
@.str.162 = private unnamed_addr constant [47 x i8] c"Toggle between two brushes rather than cycling\00", align 1
@.str.163 = private unnamed_addr constant [15 x i8] c"Create Missing\00", align 1
@.str.164 = private unnamed_addr constant [63 x i8] c"If the requested brush type does not exist, create a new brush\00", align 1
@.str.165 = private unnamed_addr constant [19 x i8] c"UV Sculpt Tool Set\00", align 1
@.str.166 = private unnamed_addr constant [23 x i8] c"Set the UV sculpt tool\00", align 1
@uv_sculpt_tool_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.167 = private unnamed_addr constant [18 x i8] c"Set Vertex Colors\00", align 1
@.str.168 = private unnamed_addr constant [64 x i8] c"Fill the active vertex color layer with the current paint color\00", align 1
@.str.169 = private unnamed_addr constant [21 x i8] c"Smooth Vertex Colors\00", align 1
@.str.170 = private unnamed_addr constant [29 x i8] c"PAINT_OT_vertex_color_smooth\00", align 1
@.str.171 = private unnamed_addr constant [30 x i8] c"Smooth colors across vertices\00", align 1
@.str.172 = private unnamed_addr constant [21 x i8] c"PAINTCURVE_OT_select\00", align 1
@.str.173 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.174 = private unnamed_addr constant [21 x i8] c"PAINTCURVE_OT_cursor\00", align 1
@.str.175 = private unnamed_addr constant [27 x i8] c"PAINTCURVE_OT_delete_point\00", align 1
@.str.176 = private unnamed_addr constant [19 x i8] c"PAINTCURVE_OT_draw\00", align 1
@.str.177 = private unnamed_addr constant [23 x i8] c"TRANSFORM_OT_translate\00", align 1
@.str.178 = private unnamed_addr constant [20 x i8] c"TRANSFORM_OT_rotate\00", align 1
@.str.179 = private unnamed_addr constant [20 x i8] c"TRANSFORM_OT_resize\00", align 1
@.str.180 = private unnamed_addr constant [19 x i8] c"PAINT_OT_hide_show\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c"area\00", align 1
@.str.182 = private unnamed_addr constant [37 x i8] c"tool_settings.unified_paint_settings\00", align 1
@.str.183 = private unnamed_addr constant [23 x i8] c"tool_settings.%s.brush\00", align 1
@.str.184 = private unnamed_addr constant [14 x i8] c"use_secondary\00", align 1
@.str.185 = private unnamed_addr constant [20 x i8] c"data_path_secondary\00", align 1
@.str.186 = private unnamed_addr constant [11 x i8] c"color_path\00", align 1
@.str.187 = private unnamed_addr constant [17 x i8] c"cursor_color_add\00", align 1
@.str.188 = private unnamed_addr constant [14 x i8] c"rotation_path\00", align 1
@.str.189 = private unnamed_addr constant [24 x i8] c"mask_texture_slot.angle\00", align 1
@.str.190 = private unnamed_addr constant [19 x i8] c"texture_slot.angle\00", align 1
@.str.191 = private unnamed_addr constant [9 x i8] c"image_id\00", align 1
@.str.192 = private unnamed_addr constant [16 x i8] c"fill_color_path\00", align 1
@.str.193 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.194 = private unnamed_addr constant [10 x i8] c"zoom_path\00", align 1
@.str.195 = private unnamed_addr constant [16 x i8] c"space_data.zoom\00", align 1
@.str.196 = private unnamed_addr constant [14 x i8] c"secondary_tex\00", align 1
@.str.197 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.198 = private unnamed_addr constant [26 x i8] c"BRUSH_OT_active_index_set\00", align 1
@.str.199 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.200 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.201 = private unnamed_addr constant [17 x i8] c"use_unified_size\00", align 1
@.str.202 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.203 = private unnamed_addr constant [21 x i8] c"use_unified_strength\00", align 1
@.str.204 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.205 = private unnamed_addr constant [19 x i8] c"use_unified_weight\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ED_operatormacros_paint() local_unnamed_addr #0 {
  %1 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 2) #8
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 3
  store ptr @.str.2, ptr %2, align 8, !tbaa !34
  %3 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.3) #8
  %4 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.4) #8
  %5 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  tail call void @RNA_boolean_set(ptr noundef %6, ptr noundef nonnull @.str.5, i32 noundef 1) #8
  %7 = load ptr, ptr %5, align 8, !tbaa !42
  tail call void @RNA_boolean_set(ptr noundef %7, ptr noundef nonnull @.str.6, i32 noundef 0) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @WM_operatortype_append_macro(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_operatortype_macro_define(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_operatortypes_paint() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @PALETTE_OT_new) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PALETTE_OT_color_add) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PALETTE_OT_color_delete) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINTCURVE_OT_new) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINTCURVE_OT_add_point) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINTCURVE_OT_delete_point) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINTCURVE_OT_select) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINTCURVE_OT_slide) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINTCURVE_OT_draw) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINTCURVE_OT_cursor) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @BRUSH_OT_add) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @BRUSH_OT_scale_size) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @BRUSH_OT_curve_preset) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @BRUSH_OT_reset) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @BRUSH_OT_stencil_control) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @BRUSH_OT_stencil_fit_image_aspect) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @BRUSH_OT_stencil_reset_transform) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_brush_select) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @BRUSH_OT_uv_sculpt_tool_set) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_texture_paint_toggle) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_image_paint) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_sample_color) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_grab_clone) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_project_image) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_image_from_view) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_brush_colors_flip) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_add_texture_paint_slot) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_delete_texture_paint_slot) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_weight_paint_toggle) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_weight_paint) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_weight_set) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_weight_from_bones) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_weight_gradient) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_weight_sample) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_weight_sample_group) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCULPT_OT_uv_sculpt_stroke) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_vert_select_all) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_vert_select_ungrouped) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_vertex_paint_toggle) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_vertex_paint) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_vertex_color_set) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_vertex_color_smooth) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_face_select_linked) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_face_select_linked_pick) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_face_select_all) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_face_select_hide) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_face_select_reveal) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_hide_show) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_mask_flood_fill) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_mask_lasso_gesture) #8
  ret void
}

declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @PALETTE_OT_new(ptr nocapture noundef writeonly %0) #3 {
  store ptr @.str.85, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.86, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.87, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @palette_new_exec, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @PALETTE_OT_color_add(ptr nocapture noundef writeonly %0) #3 {
  store ptr @.str.89, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.90, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.91, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @palette_color_add_exec, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @palette_poll, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @PALETTE_OT_color_delete(ptr nocapture noundef writeonly %0) #3 {
  store ptr @.str.92, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.93, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.94, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @palette_color_delete_exec, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @palette_poll, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

declare void @PAINTCURVE_OT_new(ptr noundef) #2

declare void @PAINTCURVE_OT_add_point(ptr noundef) #2

declare void @PAINTCURVE_OT_delete_point(ptr noundef) #2

declare void @PAINTCURVE_OT_select(ptr noundef) #2

declare void @PAINTCURVE_OT_slide(ptr noundef) #2

declare void @PAINTCURVE_OT_draw(ptr noundef) #2

declare void @PAINTCURVE_OT_cursor(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @BRUSH_OT_add(ptr nocapture noundef writeonly %0) #3 {
  store ptr @.str.95, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.96, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.97, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @brush_add_exec, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @BRUSH_OT_scale_size(ptr nocapture noundef %0) #0 {
  store ptr @.str.99, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.100, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.101, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @brush_scale_size_exec, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call ptr @RNA_def_float(ptr noundef %7, ptr noundef nonnull @.str.102, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, float noundef 0.000000e+00, float noundef 2.000000e+00) #8
  ret void
}

declare void @BRUSH_OT_curve_preset(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @BRUSH_OT_reset(ptr nocapture noundef writeonly %0) #3 {
  store ptr @.str.105, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.106, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.107, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @brush_reset_exec, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @BRUSH_OT_stencil_control(ptr nocapture noundef %0) #0 {
  store ptr @.str.119, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.120, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.121, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @stencil_control_invoke, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @stencil_control_modal, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @stencil_control_cancel, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @stencil_control_poll, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.10, ptr noundef nonnull @BRUSH_OT_stencil_control.stencil_control_items, i32 noundef 0, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.110) #8
  %12 = load ptr, ptr %9, align 8, !tbaa !49
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.123, ptr noundef nonnull @BRUSH_OT_stencil_control.stencil_texture_items, i32 noundef 0, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.110) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @BRUSH_OT_stencil_fit_image_aspect(ptr nocapture noundef %0) #0 {
  store ptr @.str.125, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.126, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.127, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @stencil_fit_image_aspect_exec, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @stencil_control_poll, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.128, i32 noundef 1, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !49
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.131, i32 noundef 1, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133) #8
  %12 = load ptr, ptr %7, align 8, !tbaa !49
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.134, i32 noundef 0, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @BRUSH_OT_stencil_reset_transform(ptr nocapture noundef %0) #0 {
  store ptr @.str.137, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.138, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.139, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @stencil_reset_transform_exec, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @stencil_control_poll, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.134, i32 noundef 0, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PAINT_OT_brush_select(ptr nocapture noundef %0) #0 {
  store ptr @.str.148, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.149, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.150, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @brush_select_exec, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.151, ptr noundef nonnull @PAINT_OT_brush_select.paint_mode_items, i32 noundef 0, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.110) #8
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.153, ptr noundef nonnull @brush_sculpt_tool_items, i32 noundef 0, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.110) #8
  %11 = load ptr, ptr %6, align 8, !tbaa !49
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.155, ptr noundef nonnull @brush_vertex_tool_items, i32 noundef 0, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.110) #8
  %13 = load ptr, ptr %6, align 8, !tbaa !49
  %14 = tail call ptr @RNA_def_enum(ptr noundef %13, ptr noundef nonnull @.str.157, ptr noundef nonnull @brush_vertex_tool_items, i32 noundef 0, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.110) #8
  %15 = load ptr, ptr %6, align 8, !tbaa !49
  %16 = tail call ptr @RNA_def_enum(ptr noundef %15, ptr noundef nonnull @.str.159, ptr noundef nonnull @brush_image_tool_items, i32 noundef 0, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.110) #8
  %17 = load ptr, ptr %6, align 8, !tbaa !49
  %18 = tail call ptr @RNA_def_boolean(ptr noundef %17, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.162) #8
  tail call void @RNA_def_property_flag(ptr noundef %18, i32 noundef 268435456) #8
  %19 = load ptr, ptr %6, align 8, !tbaa !49
  %20 = tail call ptr @RNA_def_boolean(ptr noundef %19, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.164) #8
  tail call void @RNA_def_property_flag(ptr noundef %20, i32 noundef 268435456) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @BRUSH_OT_uv_sculpt_tool_set(ptr nocapture noundef %0) #0 {
  store ptr @.str.165, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.166, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.83, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @brush_uv_sculpt_tool_set_exec, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @uv_sculpt_poll, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.84, ptr noundef nonnull @uv_sculpt_tool_items, i32 noundef 0, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.110) #8
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !53
  ret void
}

declare void @PAINT_OT_texture_paint_toggle(ptr noundef) #2

declare void @PAINT_OT_image_paint(ptr noundef) #2

declare void @PAINT_OT_sample_color(ptr noundef) #2

declare void @PAINT_OT_grab_clone(ptr noundef) #2

declare void @PAINT_OT_project_image(ptr noundef) #2

declare void @PAINT_OT_image_from_view(ptr noundef) #2

declare void @PAINT_OT_brush_colors_flip(ptr noundef) #2

declare void @PAINT_OT_add_texture_paint_slot(ptr noundef) #2

declare void @PAINT_OT_delete_texture_paint_slot(ptr noundef) #2

declare void @PAINT_OT_weight_paint_toggle(ptr noundef) #2

declare void @PAINT_OT_weight_paint(ptr noundef) #2

declare void @PAINT_OT_weight_set(ptr noundef) #2

declare void @PAINT_OT_weight_from_bones(ptr noundef) #2

declare void @PAINT_OT_weight_gradient(ptr noundef) #2

declare void @PAINT_OT_weight_sample(ptr noundef) #2

declare void @PAINT_OT_weight_sample_group(ptr noundef) #2

declare void @SCULPT_OT_uv_sculpt_stroke(ptr noundef) #2

declare void @PAINT_OT_vert_select_all(ptr noundef) #2

declare void @PAINT_OT_vert_select_ungrouped(ptr noundef) #2

declare void @PAINT_OT_vertex_paint_toggle(ptr noundef) #2

declare void @PAINT_OT_vertex_paint(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @PAINT_OT_vertex_color_set(ptr nocapture noundef writeonly %0) #3 {
  store ptr @.str.167, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.168, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_color_set_exec, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_paint_mode_poll, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @PAINT_OT_vertex_color_smooth(ptr nocapture noundef writeonly %0) #3 {
  store ptr @.str.169, ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.170, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.171, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_color_smooth_exec, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_paint_mode_poll, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

declare void @PAINT_OT_face_select_linked(ptr noundef) #2

declare void @PAINT_OT_face_select_linked_pick(ptr noundef) #2

declare void @PAINT_OT_face_select_all(ptr noundef) #2

declare void @PAINT_OT_face_select_hide(ptr noundef) #2

declare void @PAINT_OT_face_select_reveal(ptr noundef) #2

declare void @PAINT_OT_hide_show(ptr noundef) #2

declare void @PAINT_OT_mask_flood_fill(ptr noundef) #2

declare void @PAINT_OT_mask_lasso_gesture(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_keymap_paint(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0) #8
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %3, align 8, !tbaa !54
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 5, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.172, i32 noundef 6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.172, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %6, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %8, ptr noundef nonnull @.str.173, i32 noundef 1) #8
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %11 = getelementptr inbounds %struct.wmKeyMapItem, ptr %10, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %12, ptr noundef nonnull @.str.5, i32 noundef 1) #8
  %13 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.172, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %14 = getelementptr inbounds %struct.wmKeyMapItem, ptr %13, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %15, ptr noundef nonnull @.str.24, i32 noundef 1) #8
  %16 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.174, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %17 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.175, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %18 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.176, i32 noundef 220, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %19 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.176, i32 noundef 163, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %20 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.177, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.177, i32 noundef 20487, i32 noundef -1, i32 noundef 0, i32 noundef 0) #8
  %22 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.178, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %23 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.179, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %24 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0) #8
  %25 = getelementptr inbounds %struct.wmKeyMap, ptr %24, i64 0, i32 9
  store ptr @sculpt_mode_poll, ptr %25, align 8, !tbaa !54
  %26 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %27 = getelementptr inbounds %struct.wmKeyMapItem, ptr %26, i64 0, i32 17
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %28, ptr noundef nonnull @.str.10, i32 noundef 0) #8
  %29 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %30 = getelementptr inbounds %struct.wmKeyMapItem, ptr %29, i64 0, i32 17
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %31, ptr noundef nonnull @.str.10, i32 noundef 1) #8
  %32 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %33 = getelementptr inbounds %struct.wmKeyMapItem, ptr %32, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %34, ptr noundef nonnull @.str.10, i32 noundef 2) #8
  %35 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.180, i32 noundef 104, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %36 = getelementptr inbounds %struct.wmKeyMapItem, ptr %35, i64 0, i32 17
  %37 = load ptr, ptr %36, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %37, ptr noundef nonnull @.str.56, i32 noundef 1) #8
  %38 = load ptr, ptr %36, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %38, ptr noundef nonnull @.str.181, i32 noundef 0) #8
  %39 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.180, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %40 = getelementptr inbounds %struct.wmKeyMapItem, ptr %39, i64 0, i32 17
  %41 = load ptr, ptr %40, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %41, ptr noundef nonnull @.str.56, i32 noundef 0) #8
  %42 = load ptr, ptr %40, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %42, ptr noundef nonnull @.str.181, i32 noundef 0) #8
  %43 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.180, i32 noundef 104, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %44 = getelementptr inbounds %struct.wmKeyMapItem, ptr %43, i64 0, i32 17
  %45 = load ptr, ptr %44, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %45, ptr noundef nonnull @.str.56, i32 noundef 1) #8
  %46 = load ptr, ptr %44, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %46, ptr noundef nonnull @.str.181, i32 noundef 2) #8
  br label %47

47:                                               ; preds = %1, %47
  %48 = phi i32 [ 0, %1 ], [ %53, %47 ]
  %49 = or disjoint i32 %48, 48
  %50 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.11, i32 noundef %49, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %51 = getelementptr inbounds %struct.wmKeyMapItem, ptr %50, i64 0, i32 17
  %52 = load ptr, ptr %51, align 8, !tbaa !56
  tail call void @RNA_int_set(ptr noundef %52, ptr noundef nonnull @.str.12, i32 noundef %48) #8
  %53 = add nuw nsw i32 %48, 1
  %54 = icmp eq i32 %53, 6
  br i1 %54, label %55, label %47, !llvm.loop !58

55:                                               ; preds = %47
  %56 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.13, i32 noundef 109, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %57 = getelementptr inbounds %struct.wmKeyMapItem, ptr %56, i64 0, i32 17
  %58 = load ptr, ptr %57, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %58, ptr noundef nonnull @.str.10, i32 noundef 0) #8
  %59 = load ptr, ptr %57, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %59, ptr noundef nonnull @.str.14, float noundef 0.000000e+00) #8
  %60 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.13, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %61 = getelementptr inbounds %struct.wmKeyMapItem, ptr %60, i64 0, i32 17
  %62 = load ptr, ptr %61, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %62, ptr noundef nonnull @.str.10, i32 noundef 2) #8
  %63 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef 1, i32 noundef 3, i32 noundef 0) #8
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.16, i32 noundef 100, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %65 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.17, i32 noundef 100, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %66 = getelementptr inbounds %struct.wmKeyMapItem, ptr %65, i64 0, i32 17
  %67 = load ptr, ptr %66, align 8, !tbaa !56
  tail call fastcc void @set_brush_rc_props(ptr noundef %67, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0)
  %68 = load ptr, ptr %66, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %68, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #8
  %69 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.11, i32 noundef 168, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %70 = getelementptr inbounds %struct.wmKeyMapItem, ptr %69, i64 0, i32 17
  %71 = load ptr, ptr %70, align 8, !tbaa !56
  tail call void @RNA_int_set(ptr noundef %71, ptr noundef nonnull @.str.12, i32 noundef 1) #8
  %72 = load ptr, ptr %70, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %72, ptr noundef nonnull @.str.22, i32 noundef 1) #8
  %73 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.11, i32 noundef 169, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %74 = getelementptr inbounds %struct.wmKeyMapItem, ptr %73, i64 0, i32 17
  %75 = load ptr, ptr %74, align 8, !tbaa !56
  tail call void @RNA_int_set(ptr noundef %75, ptr noundef nonnull @.str.12, i32 noundef -1) #8
  %76 = load ptr, ptr %74, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %76, ptr noundef nonnull @.str.22, i32 noundef 1) #8
  br label %77

77:                                               ; preds = %77, %55
  %78 = phi i32 [ 0, %55 ], [ %79, %77 ]
  %79 = add nuw nsw i32 %78, 1
  %80 = urem i32 %79, 10
  %81 = or disjoint i32 %80, 48
  %82 = icmp ugt i32 %78, 9
  %83 = zext i1 %82 to i32
  %84 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.198, i32 noundef %81, i32 noundef 1, i32 noundef %83, i32 noundef 0) #8
  %85 = getelementptr inbounds %struct.wmKeyMapItem, ptr %84, i64 0, i32 17
  %86 = load ptr, ptr %85, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %86, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.18) #8
  %87 = load ptr, ptr %85, align 8, !tbaa !56
  tail call void @RNA_int_set(ptr noundef %87, ptr noundef nonnull @.str.199, i32 noundef %78) #8
  %88 = icmp eq i32 %79, 20
  br i1 %88, label %89, label %77, !llvm.loop !61

89:                                               ; preds = %77
  %90 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.101, i32 noundef 235, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %91 = getelementptr inbounds %struct.wmKeyMapItem, ptr %90, i64 0, i32 17
  %92 = load ptr, ptr %91, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %92, ptr noundef nonnull @.str.102, float noundef 0x3FECCCCCC0000000) #8
  %93 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.101, i32 noundef 236, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %94 = getelementptr inbounds %struct.wmKeyMapItem, ptr %93, i64 0, i32 17
  %95 = load ptr, ptr %94, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %95, ptr noundef nonnull @.str.102, float noundef 0x3FF1C71C80000000) #8
  %96 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.17, i32 noundef 102, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %97 = getelementptr inbounds %struct.wmKeyMapItem, ptr %96, i64 0, i32 17
  %98 = load ptr, ptr %97, align 8, !tbaa !56
  tail call fastcc void @set_brush_rc_props(ptr noundef %98, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.201, i32 noundef 2)
  %99 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.17, i32 noundef 102, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %100 = getelementptr inbounds %struct.wmKeyMapItem, ptr %99, i64 0, i32 17
  %101 = load ptr, ptr %100, align 8, !tbaa !56
  tail call fastcc void @set_brush_rc_props(ptr noundef %101, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.203, i32 noundef 2)
  %102 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.17, i32 noundef 102, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %103 = getelementptr inbounds %struct.wmKeyMapItem, ptr %102, i64 0, i32 17
  %104 = load ptr, ptr %103, align 8, !tbaa !56
  tail call fastcc void @set_brush_rc_props(ptr noundef %104, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.190, ptr noundef null, i32 noundef 2)
  tail call fastcc void @ed_keymap_stencil(ptr noundef %24)
  %105 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.150, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %106 = getelementptr inbounds %struct.wmKeyMapItem, ptr %105, i64 0, i32 17
  %107 = load ptr, ptr %106, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %107, ptr noundef nonnull @.str.151, i32 noundef 2) #8
  %108 = load ptr, ptr %106, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %108, ptr noundef nonnull @.str.153, i32 noundef 1) #8
  %109 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.150, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %110 = getelementptr inbounds %struct.wmKeyMapItem, ptr %109, i64 0, i32 17
  %111 = load ptr, ptr %110, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %111, ptr noundef nonnull @.str.151, i32 noundef 2) #8
  %112 = load ptr, ptr %110, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %112, ptr noundef nonnull @.str.153, i32 noundef 2) #8
  %113 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.150, i32 noundef 112, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %114 = getelementptr inbounds %struct.wmKeyMapItem, ptr %113, i64 0, i32 17
  %115 = load ptr, ptr %114, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %115, ptr noundef nonnull @.str.151, i32 noundef 2) #8
  %116 = load ptr, ptr %114, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %116, ptr noundef nonnull @.str.153, i32 noundef 3) #8
  %117 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.150, i32 noundef 105, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %118 = getelementptr inbounds %struct.wmKeyMapItem, ptr %117, i64 0, i32 17
  %119 = load ptr, ptr %118, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %119, ptr noundef nonnull @.str.151, i32 noundef 2) #8
  %120 = load ptr, ptr %118, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %120, ptr noundef nonnull @.str.153, i32 noundef 4) #8
  %121 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.150, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %122 = getelementptr inbounds %struct.wmKeyMapItem, ptr %121, i64 0, i32 17
  %123 = load ptr, ptr %122, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %123, ptr noundef nonnull @.str.151, i32 noundef 2) #8
  %124 = load ptr, ptr %122, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %124, ptr noundef nonnull @.str.153, i32 noundef 5) #8
  %125 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.150, i32 noundef 108, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %126 = getelementptr inbounds %struct.wmKeyMapItem, ptr %125, i64 0, i32 17
  %127 = load ptr, ptr %126, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %127, ptr noundef nonnull @.str.151, i32 noundef 2) #8
  %128 = load ptr, ptr %126, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %128, ptr noundef nonnull @.str.153, i32 noundef 6) #8
  %129 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.150, i32 noundef 116, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %130 = getelementptr inbounds %struct.wmKeyMapItem, ptr %129, i64 0, i32 17
  %131 = load ptr, ptr %130, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %131, ptr noundef nonnull @.str.151, i32 noundef 2) #8
  %132 = load ptr, ptr %130, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %132, ptr noundef nonnull @.str.153, i32 noundef 7) #8
  %133 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.150, i32 noundef 99, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %134 = getelementptr inbounds %struct.wmKeyMapItem, ptr %133, i64 0, i32 17
  %135 = load ptr, ptr %134, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %135, ptr noundef nonnull @.str.151, i32 noundef 2) #8
  %136 = load ptr, ptr %134, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %136, ptr noundef nonnull @.str.153, i32 noundef 8) #8
  %137 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.150, i32 noundef 99, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %138 = getelementptr inbounds %struct.wmKeyMapItem, ptr %137, i64 0, i32 17
  %139 = load ptr, ptr %138, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %139, ptr noundef nonnull @.str.151, i32 noundef 2) #8
  %140 = load ptr, ptr %138, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %140, ptr noundef nonnull @.str.153, i32 noundef 16) #8
  %141 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.150, i32 noundef 107, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %142 = getelementptr inbounds %struct.wmKeyMapItem, ptr %141, i64 0, i32 17
  %143 = load ptr, ptr %142, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %143, ptr noundef nonnull @.str.151, i32 noundef 2) #8
  %144 = load ptr, ptr %142, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %144, ptr noundef nonnull @.str.153, i32 noundef 13) #8
  %145 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.150, i32 noundef 109, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %146 = getelementptr inbounds %struct.wmKeyMapItem, ptr %145, i64 0, i32 17
  %147 = load ptr, ptr %146, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %147, ptr noundef nonnull @.str.151, i32 noundef 2) #8
  %148 = load ptr, ptr %146, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %148, ptr noundef nonnull @.str.153, i32 noundef 19) #8
  %149 = load ptr, ptr %146, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %149, ptr noundef nonnull @.str.24, i32 noundef 1) #8
  %150 = load ptr, ptr %146, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %150, ptr noundef nonnull @.str.25, i32 noundef 1) #8
  %151 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.26, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %152 = getelementptr inbounds %struct.wmKeyMapItem, ptr %151, i64 0, i32 17
  %153 = load ptr, ptr %152, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %153, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #8
  %154 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.29, i32 noundef 115, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %155 = getelementptr inbounds %struct.wmKeyMapItem, ptr %154, i64 0, i32 17
  %156 = load ptr, ptr %155, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %156, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.30) #8
  %157 = tail call ptr @WM_keymap_add_item(ptr noundef %24, ptr noundef nonnull @.str.26, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %158 = getelementptr inbounds %struct.wmKeyMapItem, ptr %157, i64 0, i32 17
  %159 = load ptr, ptr %158, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %159, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.31) #8
  %160 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef 0) #8
  %161 = getelementptr inbounds %struct.wmKeyMap, ptr %160, i64 0, i32 9
  store ptr @vertex_paint_mode_poll, ptr %161, align 8, !tbaa !54
  %162 = tail call ptr @WM_keymap_verify_item(ptr noundef %160, ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %163 = tail call ptr @WM_keymap_add_item(ptr noundef %160, ptr noundef nonnull @.str.34, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %164 = tail call ptr @WM_keymap_add_item(ptr noundef %160, ptr noundef nonnull @.str.35, i32 noundef 107, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  br label %165

165:                                              ; preds = %165, %89
  %166 = phi i32 [ 0, %89 ], [ %167, %165 ]
  %167 = add nuw nsw i32 %166, 1
  %168 = urem i32 %167, 10
  %169 = or disjoint i32 %168, 48
  %170 = icmp ugt i32 %166, 9
  %171 = zext i1 %170 to i32
  %172 = tail call ptr @WM_keymap_add_item(ptr noundef %160, ptr noundef nonnull @.str.198, i32 noundef %169, i32 noundef 1, i32 noundef %171, i32 noundef 0) #8
  %173 = getelementptr inbounds %struct.wmKeyMapItem, ptr %172, i64 0, i32 17
  %174 = load ptr, ptr %173, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %174, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.36) #8
  %175 = load ptr, ptr %173, align 8, !tbaa !56
  tail call void @RNA_int_set(ptr noundef %175, ptr noundef nonnull @.str.199, i32 noundef %166) #8
  %176 = icmp eq i32 %167, 20
  br i1 %176, label %177, label %165, !llvm.loop !61

177:                                              ; preds = %165
  %178 = tail call ptr @WM_keymap_add_item(ptr noundef %160, ptr noundef nonnull @.str.101, i32 noundef 235, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %179 = getelementptr inbounds %struct.wmKeyMapItem, ptr %178, i64 0, i32 17
  %180 = load ptr, ptr %179, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %180, ptr noundef nonnull @.str.102, float noundef 0x3FECCCCCC0000000) #8
  %181 = tail call ptr @WM_keymap_add_item(ptr noundef %160, ptr noundef nonnull @.str.101, i32 noundef 236, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %182 = getelementptr inbounds %struct.wmKeyMapItem, ptr %181, i64 0, i32 17
  %183 = load ptr, ptr %182, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %183, ptr noundef nonnull @.str.102, float noundef 0x3FF1C71C80000000) #8
  %184 = tail call ptr @WM_keymap_add_item(ptr noundef %160, ptr noundef nonnull @.str.17, i32 noundef 102, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %185 = getelementptr inbounds %struct.wmKeyMapItem, ptr %184, i64 0, i32 17
  %186 = load ptr, ptr %185, align 8, !tbaa !56
  tail call fastcc void @set_brush_rc_props(ptr noundef %186, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.201, i32 noundef 3)
  %187 = tail call ptr @WM_keymap_add_item(ptr noundef %160, ptr noundef nonnull @.str.17, i32 noundef 102, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %188 = getelementptr inbounds %struct.wmKeyMapItem, ptr %187, i64 0, i32 17
  %189 = load ptr, ptr %188, align 8, !tbaa !56
  tail call fastcc void @set_brush_rc_props(ptr noundef %189, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.203, i32 noundef 3)
  %190 = tail call ptr @WM_keymap_add_item(ptr noundef %160, ptr noundef nonnull @.str.17, i32 noundef 102, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %191 = getelementptr inbounds %struct.wmKeyMapItem, ptr %190, i64 0, i32 17
  %192 = load ptr, ptr %191, align 8, !tbaa !56
  tail call fastcc void @set_brush_rc_props(ptr noundef %192, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.190, ptr noundef null, i32 noundef 3)
  tail call fastcc void @ed_keymap_stencil(ptr noundef %160)
  %193 = tail call ptr @WM_keymap_add_item(ptr noundef %160, ptr noundef nonnull @.str.29, i32 noundef 109, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %194 = getelementptr inbounds %struct.wmKeyMapItem, ptr %193, i64 0, i32 17
  %195 = load ptr, ptr %194, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %195, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.38) #8
  %196 = tail call ptr @WM_keymap_add_item(ptr noundef %160, ptr noundef nonnull @.str.29, i32 noundef 115, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %197 = getelementptr inbounds %struct.wmKeyMapItem, ptr %196, i64 0, i32 17
  %198 = load ptr, ptr %197, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %198, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.39) #8
  %199 = tail call ptr @WM_keymap_add_item(ptr noundef %160, ptr noundef nonnull @.str.26, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %200 = getelementptr inbounds %struct.wmKeyMapItem, ptr %199, i64 0, i32 17
  %201 = load ptr, ptr %200, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %201, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.40) #8
  %202 = tail call ptr @WM_keymap_add_item(ptr noundef %160, ptr noundef nonnull @.str.26, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %203 = getelementptr inbounds %struct.wmKeyMapItem, ptr %202, i64 0, i32 17
  %204 = load ptr, ptr %203, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %204, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #8
  %205 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef 0) #8
  %206 = getelementptr inbounds %struct.wmKeyMap, ptr %205, i64 0, i32 9
  store ptr @weight_paint_mode_poll, ptr %206, align 8, !tbaa !54
  %207 = tail call ptr @WM_keymap_verify_item(ptr noundef %205, ptr noundef nonnull @.str.43, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %208 = tail call ptr @WM_keymap_verify_item(ptr noundef %205, ptr noundef nonnull @.str.44, i32 noundef 5, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %209 = tail call ptr @WM_keymap_verify_item(ptr noundef %205, ptr noundef nonnull @.str.45, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %210 = tail call ptr @WM_keymap_add_item(ptr noundef %205, ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %211 = getelementptr inbounds %struct.wmKeyMapItem, ptr %210, i64 0, i32 17
  %212 = load ptr, ptr %211, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %212, ptr noundef nonnull @.str.47, i32 noundef 0) #8
  %213 = tail call ptr @WM_keymap_add_item(ptr noundef %205, ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef 1, i32 noundef 6, i32 noundef 0) #8
  %214 = getelementptr inbounds %struct.wmKeyMapItem, ptr %213, i64 0, i32 17
  %215 = load ptr, ptr %214, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %215, ptr noundef nonnull @.str.47, i32 noundef 1) #8
  %216 = tail call ptr @WM_keymap_add_item(ptr noundef %205, ptr noundef nonnull @.str.48, i32 noundef 107, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  br label %217

217:                                              ; preds = %217, %177
  %218 = phi i32 [ 0, %177 ], [ %219, %217 ]
  %219 = add nuw nsw i32 %218, 1
  %220 = urem i32 %219, 10
  %221 = or disjoint i32 %220, 48
  %222 = icmp ugt i32 %218, 9
  %223 = zext i1 %222 to i32
  %224 = tail call ptr @WM_keymap_add_item(ptr noundef %205, ptr noundef nonnull @.str.198, i32 noundef %221, i32 noundef 1, i32 noundef %223, i32 noundef 0) #8
  %225 = getelementptr inbounds %struct.wmKeyMapItem, ptr %224, i64 0, i32 17
  %226 = load ptr, ptr %225, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %226, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.49) #8
  %227 = load ptr, ptr %225, align 8, !tbaa !56
  tail call void @RNA_int_set(ptr noundef %227, ptr noundef nonnull @.str.199, i32 noundef %218) #8
  %228 = icmp eq i32 %219, 20
  br i1 %228, label %229, label %217, !llvm.loop !61

229:                                              ; preds = %217
  %230 = tail call ptr @WM_keymap_add_item(ptr noundef %205, ptr noundef nonnull @.str.101, i32 noundef 235, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %231 = getelementptr inbounds %struct.wmKeyMapItem, ptr %230, i64 0, i32 17
  %232 = load ptr, ptr %231, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %232, ptr noundef nonnull @.str.102, float noundef 0x3FECCCCCC0000000) #8
  %233 = tail call ptr @WM_keymap_add_item(ptr noundef %205, ptr noundef nonnull @.str.101, i32 noundef 236, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %234 = getelementptr inbounds %struct.wmKeyMapItem, ptr %233, i64 0, i32 17
  %235 = load ptr, ptr %234, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %235, ptr noundef nonnull @.str.102, float noundef 0x3FF1C71C80000000) #8
  %236 = tail call ptr @WM_keymap_add_item(ptr noundef %205, ptr noundef nonnull @.str.17, i32 noundef 102, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %237 = getelementptr inbounds %struct.wmKeyMapItem, ptr %236, i64 0, i32 17
  %238 = load ptr, ptr %237, align 8, !tbaa !56
  tail call fastcc void @set_brush_rc_props(ptr noundef %238, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.201, i32 noundef 8)
  %239 = tail call ptr @WM_keymap_add_item(ptr noundef %205, ptr noundef nonnull @.str.17, i32 noundef 102, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %240 = getelementptr inbounds %struct.wmKeyMapItem, ptr %239, i64 0, i32 17
  %241 = load ptr, ptr %240, align 8, !tbaa !56
  tail call fastcc void @set_brush_rc_props(ptr noundef %241, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.203, i32 noundef 8)
  %242 = tail call ptr @WM_keymap_add_item(ptr noundef %205, ptr noundef nonnull @.str.17, i32 noundef 119, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %243 = getelementptr inbounds %struct.wmKeyMapItem, ptr %242, i64 0, i32 17
  %244 = load ptr, ptr %243, align 8, !tbaa !56
  tail call fastcc void @set_brush_rc_props(ptr noundef %244, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.205, i32 noundef 8)
  tail call fastcc void @ed_keymap_stencil(ptr noundef %205)
  %245 = tail call ptr @WM_keymap_add_item(ptr noundef %205, ptr noundef nonnull @.str.26, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %246 = getelementptr inbounds %struct.wmKeyMapItem, ptr %245, i64 0, i32 17
  %247 = load ptr, ptr %246, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %247, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #8
  %248 = tail call ptr @WM_keymap_add_item(ptr noundef %205, ptr noundef nonnull @.str.29, i32 noundef 109, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %249 = getelementptr inbounds %struct.wmKeyMapItem, ptr %248, i64 0, i32 17
  %250 = load ptr, ptr %249, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %250, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.51) #8
  %251 = tail call ptr @WM_keymap_add_item(ptr noundef %205, ptr noundef nonnull @.str.29, i32 noundef 118, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %252 = getelementptr inbounds %struct.wmKeyMapItem, ptr %251, i64 0, i32 17
  %253 = load ptr, ptr %252, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %253, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.52) #8
  %254 = tail call ptr @WM_keymap_add_item(ptr noundef %205, ptr noundef nonnull @.str.29, i32 noundef 115, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %255 = getelementptr inbounds %struct.wmKeyMapItem, ptr %254, i64 0, i32 17
  %256 = load ptr, ptr %255, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %256, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.53) #8
  %257 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef 0, i32 noundef 0) #8
  %258 = getelementptr inbounds %struct.wmKeyMap, ptr %257, i64 0, i32 9
  store ptr @vert_paint_poll, ptr %258, align 8, !tbaa !54
  %259 = tail call ptr @WM_keymap_add_item(ptr noundef %257, ptr noundef nonnull @.str.55, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %260 = getelementptr inbounds %struct.wmKeyMapItem, ptr %259, i64 0, i32 17
  %261 = load ptr, ptr %260, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %261, ptr noundef nonnull @.str.56, i32 noundef 0) #8
  %262 = tail call ptr @WM_keymap_add_item(ptr noundef %257, ptr noundef nonnull @.str.55, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %263 = getelementptr inbounds %struct.wmKeyMapItem, ptr %262, i64 0, i32 17
  %264 = load ptr, ptr %263, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %264, ptr noundef nonnull @.str.56, i32 noundef 3) #8
  %265 = tail call ptr @WM_keymap_add_item(ptr noundef %257, ptr noundef nonnull @.str.57, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %266 = tail call ptr @WM_keymap_add_item(ptr noundef %257, ptr noundef nonnull @.str.58, i32 noundef 20486, i32 noundef -1, i32 noundef 2, i32 noundef 0) #8
  %267 = getelementptr inbounds %struct.wmKeyMapItem, ptr %266, i64 0, i32 17
  %268 = load ptr, ptr %267, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %268, ptr noundef nonnull @.str.59, i32 noundef 0) #8
  %269 = tail call ptr @WM_keymap_add_item(ptr noundef %257, ptr noundef nonnull @.str.58, i32 noundef 20486, i32 noundef -1, i32 noundef 3, i32 noundef 0) #8
  %270 = getelementptr inbounds %struct.wmKeyMapItem, ptr %269, i64 0, i32 17
  %271 = load ptr, ptr %270, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %271, ptr noundef nonnull @.str.59, i32 noundef 1) #8
  %272 = tail call ptr @WM_keymap_add_item(ptr noundef %257, ptr noundef nonnull @.str.60, i32 noundef 99, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %273 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef 0) #8
  %274 = getelementptr inbounds %struct.wmKeyMap, ptr %273, i64 0, i32 9
  store ptr @image_texture_paint_poll, ptr %274, align 8, !tbaa !54
  %275 = tail call ptr @WM_keymap_add_item(ptr noundef %273, ptr noundef nonnull @.str.62, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %276 = getelementptr inbounds %struct.wmKeyMapItem, ptr %275, i64 0, i32 17
  %277 = load ptr, ptr %276, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %277, ptr noundef nonnull @.str.10, i32 noundef 0) #8
  %278 = tail call ptr @WM_keymap_add_item(ptr noundef %273, ptr noundef nonnull @.str.62, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %279 = getelementptr inbounds %struct.wmKeyMapItem, ptr %278, i64 0, i32 17
  %280 = load ptr, ptr %279, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %280, ptr noundef nonnull @.str.10, i32 noundef 1) #8
  %281 = tail call ptr @WM_keymap_add_item(ptr noundef %273, ptr noundef nonnull @.str.63, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %282 = tail call ptr @WM_keymap_add_item(ptr noundef %273, ptr noundef nonnull @.str.64, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %283 = tail call ptr @WM_keymap_add_item(ptr noundef %273, ptr noundef nonnull @.str.34, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  br label %284

284:                                              ; preds = %284, %229
  %285 = phi i32 [ 0, %229 ], [ %286, %284 ]
  %286 = add nuw nsw i32 %285, 1
  %287 = urem i32 %286, 10
  %288 = or disjoint i32 %287, 48
  %289 = icmp ugt i32 %285, 9
  %290 = zext i1 %289 to i32
  %291 = tail call ptr @WM_keymap_add_item(ptr noundef %273, ptr noundef nonnull @.str.198, i32 noundef %288, i32 noundef 1, i32 noundef %290, i32 noundef 0) #8
  %292 = getelementptr inbounds %struct.wmKeyMapItem, ptr %291, i64 0, i32 17
  %293 = load ptr, ptr %292, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %293, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.65) #8
  %294 = load ptr, ptr %292, align 8, !tbaa !56
  tail call void @RNA_int_set(ptr noundef %294, ptr noundef nonnull @.str.199, i32 noundef %285) #8
  %295 = icmp eq i32 %286, 20
  br i1 %295, label %296, label %284, !llvm.loop !61

296:                                              ; preds = %284
  %297 = tail call ptr @WM_keymap_add_item(ptr noundef %273, ptr noundef nonnull @.str.101, i32 noundef 235, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %298 = getelementptr inbounds %struct.wmKeyMapItem, ptr %297, i64 0, i32 17
  %299 = load ptr, ptr %298, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %299, ptr noundef nonnull @.str.102, float noundef 0x3FECCCCCC0000000) #8
  %300 = tail call ptr @WM_keymap_add_item(ptr noundef %273, ptr noundef nonnull @.str.101, i32 noundef 236, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %301 = getelementptr inbounds %struct.wmKeyMapItem, ptr %300, i64 0, i32 17
  %302 = load ptr, ptr %301, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %302, ptr noundef nonnull @.str.102, float noundef 0x3FF1C71C80000000) #8
  tail call fastcc void @ed_keymap_paint_brush_radial_control(ptr noundef %273, ptr noundef nonnull @.str.65, i32 noundef 23)
  tail call fastcc void @ed_keymap_stencil(ptr noundef %273)
  %303 = tail call ptr @WM_keymap_add_item(ptr noundef %273, ptr noundef nonnull @.str.29, i32 noundef 109, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %304 = getelementptr inbounds %struct.wmKeyMapItem, ptr %303, i64 0, i32 17
  %305 = load ptr, ptr %304, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %305, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.67) #8
  %306 = tail call ptr @WM_keymap_add_item(ptr noundef %273, ptr noundef nonnull @.str.29, i32 noundef 115, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %307 = getelementptr inbounds %struct.wmKeyMapItem, ptr %306, i64 0, i32 17
  %308 = load ptr, ptr %307, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %308, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.68) #8
  %309 = tail call ptr @WM_keymap_add_item(ptr noundef %273, ptr noundef nonnull @.str.26, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %310 = getelementptr inbounds %struct.wmKeyMapItem, ptr %309, i64 0, i32 17
  %311 = load ptr, ptr %310, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %311, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.69) #8
  %312 = tail call ptr @WM_keymap_add_item(ptr noundef %273, ptr noundef nonnull @.str.26, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %313 = getelementptr inbounds %struct.wmKeyMapItem, ptr %312, i64 0, i32 17
  %314 = load ptr, ptr %313, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %314, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.70) #8
  %315 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.71, i32 noundef 0, i32 noundef 0) #8
  %316 = getelementptr inbounds %struct.wmKeyMap, ptr %315, i64 0, i32 9
  store ptr @facemask_paint_poll, ptr %316, align 8, !tbaa !54
  %317 = tail call ptr @WM_keymap_add_item(ptr noundef %315, ptr noundef nonnull @.str.72, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %318 = getelementptr inbounds %struct.wmKeyMapItem, ptr %317, i64 0, i32 17
  %319 = load ptr, ptr %318, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %319, ptr noundef nonnull @.str.56, i32 noundef 0) #8
  %320 = tail call ptr @WM_keymap_add_item(ptr noundef %315, ptr noundef nonnull @.str.72, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %321 = getelementptr inbounds %struct.wmKeyMapItem, ptr %320, i64 0, i32 17
  %322 = load ptr, ptr %321, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %322, ptr noundef nonnull @.str.56, i32 noundef 3) #8
  %323 = tail call ptr @WM_keymap_add_item(ptr noundef %315, ptr noundef nonnull @.str.73, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %324 = getelementptr inbounds %struct.wmKeyMapItem, ptr %323, i64 0, i32 17
  %325 = load ptr, ptr %324, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %325, ptr noundef nonnull @.str.74, i32 noundef 0) #8
  %326 = tail call ptr @WM_keymap_add_item(ptr noundef %315, ptr noundef nonnull @.str.73, i32 noundef 104, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %327 = getelementptr inbounds %struct.wmKeyMapItem, ptr %326, i64 0, i32 17
  %328 = load ptr, ptr %327, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %328, ptr noundef nonnull @.str.74, i32 noundef 1) #8
  %329 = tail call ptr @WM_keymap_add_item(ptr noundef %315, ptr noundef nonnull @.str.75, i32 noundef 104, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %330 = tail call ptr @WM_keymap_add_item(ptr noundef %315, ptr noundef nonnull @.str.76, i32 noundef 108, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %331 = tail call ptr @WM_keymap_add_item(ptr noundef %315, ptr noundef nonnull @.str.77, i32 noundef 108, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %332 = getelementptr inbounds %struct.wmKeyMapItem, ptr %331, i64 0, i32 17
  %333 = load ptr, ptr %332, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %333, ptr noundef nonnull @.str.59, i32 noundef 0) #8
  %334 = tail call ptr @WM_keymap_add_item(ptr noundef %315, ptr noundef nonnull @.str.77, i32 noundef 108, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %335 = getelementptr inbounds %struct.wmKeyMapItem, ptr %334, i64 0, i32 17
  %336 = load ptr, ptr %335, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %336, ptr noundef nonnull @.str.59, i32 noundef 1) #8
  %337 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.78, i32 noundef 0, i32 noundef 0) #8
  %338 = getelementptr inbounds %struct.wmKeyMap, ptr %337, i64 0, i32 9
  store ptr @uv_sculpt_poll, ptr %338, align 8, !tbaa !54
  %339 = tail call ptr @WM_keymap_add_item(ptr noundef %337, ptr noundef nonnull @.str.29, i32 noundef 113, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %340 = getelementptr inbounds %struct.wmKeyMapItem, ptr %339, i64 0, i32 17
  %341 = load ptr, ptr %340, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %341, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.79) #8
  %342 = tail call ptr @WM_keymap_add_item(ptr noundef %337, ptr noundef nonnull @.str.80, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %343 = getelementptr inbounds %struct.wmKeyMapItem, ptr %342, i64 0, i32 17
  %344 = load ptr, ptr %343, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %344, ptr noundef nonnull @.str.10, i32 noundef 0) #8
  %345 = tail call ptr @WM_keymap_add_item(ptr noundef %337, ptr noundef nonnull @.str.80, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %346 = getelementptr inbounds %struct.wmKeyMapItem, ptr %345, i64 0, i32 17
  %347 = load ptr, ptr %346, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %347, ptr noundef nonnull @.str.10, i32 noundef 1) #8
  %348 = tail call ptr @WM_keymap_add_item(ptr noundef %337, ptr noundef nonnull @.str.80, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %349 = getelementptr inbounds %struct.wmKeyMapItem, ptr %348, i64 0, i32 17
  %350 = load ptr, ptr %349, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %350, ptr noundef nonnull @.str.10, i32 noundef 2) #8
  %351 = tail call ptr @WM_keymap_add_item(ptr noundef %337, ptr noundef nonnull @.str.101, i32 noundef 235, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %352 = getelementptr inbounds %struct.wmKeyMapItem, ptr %351, i64 0, i32 17
  %353 = load ptr, ptr %352, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %353, ptr noundef nonnull @.str.102, float noundef 0x3FECCCCCC0000000) #8
  %354 = tail call ptr @WM_keymap_add_item(ptr noundef %337, ptr noundef nonnull @.str.101, i32 noundef 236, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %355 = getelementptr inbounds %struct.wmKeyMapItem, ptr %354, i64 0, i32 17
  %356 = load ptr, ptr %355, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %356, ptr noundef nonnull @.str.102, float noundef 0x3FF1C71C80000000) #8
  %357 = tail call ptr @WM_keymap_add_item(ptr noundef %337, ptr noundef nonnull @.str.17, i32 noundef 102, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %358 = getelementptr inbounds %struct.wmKeyMapItem, ptr %357, i64 0, i32 17
  %359 = load ptr, ptr %358, align 8, !tbaa !56
  tail call fastcc void @set_brush_rc_props(ptr noundef %359, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.201, i32 noundef 0)
  %360 = tail call ptr @WM_keymap_add_item(ptr noundef %337, ptr noundef nonnull @.str.17, i32 noundef 102, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %361 = getelementptr inbounds %struct.wmKeyMapItem, ptr %360, i64 0, i32 17
  %362 = load ptr, ptr %361, align 8, !tbaa !56
  tail call fastcc void @set_brush_rc_props(ptr noundef %362, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.203, i32 noundef 0)
  %363 = tail call ptr @WM_keymap_add_item(ptr noundef %337, ptr noundef nonnull @.str.83, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %364 = getelementptr inbounds %struct.wmKeyMapItem, ptr %363, i64 0, i32 17
  %365 = load ptr, ptr %364, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %365, ptr noundef nonnull @.str.84, i32 noundef 2) #8
  %366 = tail call ptr @WM_keymap_add_item(ptr noundef %337, ptr noundef nonnull @.str.83, i32 noundef 112, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %367 = getelementptr inbounds %struct.wmKeyMapItem, ptr %366, i64 0, i32 17
  %368 = load ptr, ptr %367, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %368, ptr noundef nonnull @.str.84, i32 noundef 1) #8
  %369 = tail call ptr @WM_keymap_add_item(ptr noundef %337, ptr noundef nonnull @.str.83, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %370 = getelementptr inbounds %struct.wmKeyMapItem, ptr %369, i64 0, i32 17
  %371 = load ptr, ptr %370, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %371, ptr noundef nonnull @.str.84, i32 noundef 3) #8
  %372 = tail call ptr @paint_stroke_modal_keymap(ptr noundef %0) #8
  tail call void @WM_modalkeymap_assign(ptr noundef %372, ptr noundef nonnull @.str.9) #8
  ret void
}

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @paint_curve_poll(ptr noundef) #2

declare i32 @sculpt_mode_poll(ptr noundef) #2

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @set_brush_rc_props(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.183, ptr noundef %1) #8
  %7 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.197, ptr noundef %6, ptr noundef %2) #8
  tail call void @RNA_string_set(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %7) #8
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %8(ptr noundef %7) #8
  %9 = icmp eq ptr %3, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.182, ptr noundef nonnull %3) #8
  tail call void @RNA_string_set(ptr noundef %0, ptr noundef nonnull @.str.184, ptr noundef %11) #8
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %12(ptr noundef %11) #8
  %13 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.182, ptr noundef %2) #8
  tail call void @RNA_string_set(ptr noundef %0, ptr noundef nonnull @.str.185, ptr noundef %13) #8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %14(ptr noundef %13) #8
  br label %16

15:                                               ; preds = %5
  tail call void @RNA_string_set(ptr noundef %0, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.110) #8
  tail call void @RNA_string_set(ptr noundef %0, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.110) #8
  br label %16

16:                                               ; preds = %15, %10
  %17 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.197, ptr noundef %6, ptr noundef nonnull @.str.187) #8
  tail call void @RNA_string_set(ptr noundef %0, ptr noundef nonnull @.str.186, ptr noundef %17) #8
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %18(ptr noundef %17) #8
  %19 = and i32 %4, 16
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @.str.190, ptr @.str.189
  %22 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.197, ptr noundef %6, ptr noundef nonnull %21) #8
  tail call void @RNA_string_set(ptr noundef %0, ptr noundef nonnull @.str.188, ptr noundef %22) #8
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %23(ptr noundef %22) #8
  tail call void @RNA_string_set(ptr noundef %0, ptr noundef nonnull @.str.191, ptr noundef %6) #8
  %24 = and i32 %4, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.197, ptr noundef %6, ptr noundef nonnull @.str.193) #8
  tail call void @RNA_string_set(ptr noundef %0, ptr noundef nonnull @.str.192, ptr noundef %27) #8
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %28(ptr noundef %27) #8
  br label %30

29:                                               ; preds = %16
  tail call void @RNA_string_set(ptr noundef %0, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.110) #8
  br label %30

30:                                               ; preds = %29, %26
  %31 = and i32 %4, 4
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, ptr @.str.110, ptr @.str.195
  tail call void @RNA_string_set(ptr noundef %0, ptr noundef nonnull @.str.194, ptr noundef nonnull %33) #8
  %34 = lshr exact i32 %19, 4
  tail call void @RNA_boolean_set(ptr noundef %0, ptr noundef nonnull @.str.196, i32 noundef %34) #8
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %35(ptr noundef %6) #8
  ret void
}

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ed_keymap_paint_brush_radial_control(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, -5
  %5 = and i32 %2, -21
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 102, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %6, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  tail call fastcc void @set_brush_rc_props(ptr noundef %8, ptr noundef %1, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.201, i32 noundef %2)
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 102, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  tail call fastcc void @set_brush_rc_props(ptr noundef %11, ptr noundef %1, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.203, i32 noundef %4)
  %12 = and i32 %2, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 119, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %16 = getelementptr inbounds %struct.wmKeyMapItem, ptr %15, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  tail call fastcc void @set_brush_rc_props(ptr noundef %17, ptr noundef %1, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.205, i32 noundef %4)
  br label %18

18:                                               ; preds = %14, %3
  %19 = and i32 %2, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 102, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %23 = getelementptr inbounds %struct.wmKeyMapItem, ptr %22, i64 0, i32 17
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  tail call fastcc void @set_brush_rc_props(ptr noundef %24, ptr noundef %1, ptr noundef nonnull @.str.190, ptr noundef null, i32 noundef %5)
  br label %25

25:                                               ; preds = %21, %18
  %26 = and i32 %2, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 102, i32 noundef 1, i32 noundef 6, i32 noundef 0) #8
  %30 = getelementptr inbounds %struct.wmKeyMapItem, ptr %29, i64 0, i32 17
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  tail call fastcc void @set_brush_rc_props(ptr noundef %31, ptr noundef %1, ptr noundef nonnull @.str.189, ptr noundef null, i32 noundef %4)
  br label %32

32:                                               ; preds = %28, %25
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ed_keymap_stencil(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.121, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %3 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef 0) #8
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.121, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %5, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef 1) #8
  %8 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.121, i32 noundef 3, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %9 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %10, ptr noundef nonnull @.str.10, i32 noundef 2) #8
  %11 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.121, i32 noundef 3, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %12 = getelementptr inbounds %struct.wmKeyMapItem, ptr %11, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef 0) #8
  %14 = load ptr, ptr %12, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %14, ptr noundef nonnull @.str.123, i32 noundef 1) #8
  %15 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.121, i32 noundef 3, i32 noundef 1, i32 noundef 5, i32 noundef 0) #8
  %16 = getelementptr inbounds %struct.wmKeyMapItem, ptr %15, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %17, ptr noundef nonnull @.str.123, i32 noundef 1) #8
  %18 = load ptr, ptr %16, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %18, ptr noundef nonnull @.str.10, i32 noundef 1) #8
  %19 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.121, i32 noundef 3, i32 noundef 1, i32 noundef 6, i32 noundef 0) #8
  %20 = getelementptr inbounds %struct.wmKeyMapItem, ptr %19, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %21, ptr noundef nonnull @.str.123, i32 noundef 1) #8
  %22 = load ptr, ptr %20, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef 2) #8
  ret void
}

declare i32 @vertex_paint_mode_poll(ptr noundef) #2

declare ptr @WM_keymap_verify_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @weight_paint_mode_poll(ptr noundef) #2

declare i32 @vert_paint_poll(ptr noundef) #2

declare i32 @image_texture_paint_poll(ptr noundef) #2

declare i32 @facemask_paint_poll(ptr noundef) #2

declare i32 @uv_sculpt_poll(ptr noundef) #2

declare ptr @paint_stroke_modal_keymap(ptr noundef) local_unnamed_addr #2

declare void @WM_modalkeymap_assign(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @palette_new_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %5 = tail call ptr @BKE_palette_add(ptr noundef %4, ptr noundef nonnull @.str.88) #8
  tail call void @BKE_paint_palette_set(ptr noundef %3, ptr noundef %5) #8
  ret i32 4
}

declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_palette_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_paint_palette_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @palette_color_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #8
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.Paint, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = tail call ptr @BKE_palette_color_add(ptr noundef %8) #8
  switch i32 %6, label %29 [
    i32 4, label %10
    i32 3, label %10
    i32 1, label %10
    i32 2, label %20
  ]

10:                                               ; preds = %2, %2, %2
  %11 = getelementptr inbounds %struct.PaletteColor, ptr %9, i64 0, i32 2
  %12 = tail call ptr @BKE_brush_color_get(ptr noundef %3, ptr noundef %5) #8
  %13 = load float, ptr %12, align 4, !tbaa !67
  store float %13, ptr %11, align 4, !tbaa !67
  %14 = getelementptr inbounds float, ptr %12, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !67
  %16 = getelementptr inbounds %struct.PaletteColor, ptr %9, i64 0, i32 2, i64 1
  store float %15, ptr %16, align 4, !tbaa !67
  %17 = getelementptr inbounds float, ptr %12, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !67
  %19 = getelementptr inbounds %struct.PaletteColor, ptr %9, i64 0, i32 2, i64 2
  store float %18, ptr %19, align 4, !tbaa !67
  br label %26

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.PaletteColor, ptr %9, i64 0, i32 2
  store float 0.000000e+00, ptr %21, align 4, !tbaa !67
  %22 = getelementptr inbounds %struct.PaletteColor, ptr %9, i64 0, i32 2, i64 1
  store float 0.000000e+00, ptr %22, align 4, !tbaa !67
  %23 = getelementptr inbounds %struct.PaletteColor, ptr %9, i64 0, i32 2, i64 2
  store float 0.000000e+00, ptr %23, align 4, !tbaa !67
  %24 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 14
  %25 = load float, ptr %24, align 8, !tbaa !69
  br label %26

26:                                               ; preds = %10, %20
  %27 = phi float [ %25, %20 ], [ 0.000000e+00, %10 ]
  %28 = getelementptr inbounds %struct.PaletteColor, ptr %9, i64 0, i32 3
  store float %27, ptr %28, align 4, !tbaa !74
  br label %29

29:                                               ; preds = %26, %2
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @palette_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Paint, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %1
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi i32 [ 0, %8 ], [ 1, %4 ]
  ret i32 %10
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_paintmode_get_active_from_context(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_palette_color_add(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_brush_color_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @palette_color_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Paint, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.Palette, ptr %5, i64 0, i32 1
  %7 = getelementptr inbounds %struct.Palette, ptr %5, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !76
  %9 = tail call ptr @BLI_findlink(ptr noundef nonnull %6, i32 noundef %8) #8
  tail call void @BKE_palette_color_remove(ptr noundef %5, ptr noundef %9) #8
  ret i32 4
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_palette_color_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @brush_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #8
  %4 = tail call ptr @BKE_paint_brush(ptr noundef %3) #8
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %6 = icmp eq ptr %4, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @BKE_brush_copy(ptr noundef nonnull %4) #8
  br label %11

9:                                                ; preds = %2
  %10 = tail call ptr @BKE_brush_add(ptr noundef %5, ptr noundef nonnull @.str.98) #8
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %8, %7 ], [ %10, %9 ]
  tail call void @BKE_paint_brush_set(ptr noundef %3, ptr noundef %12) #8
  ret i32 4
}

declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_brush_copy(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_brush_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_paint_brush_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @brush_scale_size_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #8
  %5 = tail call ptr @BKE_paint_brush(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.102) #8
  %9 = icmp eq ptr %5, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @BKE_brush_size_get(ptr noundef %3, ptr noundef nonnull %5) #8
  %12 = sitofp i32 %11 to float
  %13 = fmul float %8, %12
  %14 = fptosi float %13 to i32
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = fcmp ogt float %8, 1.000000e+00
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = add nsw i32 %14, 1
  br label %24

20:                                               ; preds = %16
  %21 = fcmp olt float %8, 1.000000e+00
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = add nsw i32 %14, -1
  br label %24

24:                                               ; preds = %18, %22, %20, %10
  %25 = phi i32 [ %19, %18 ], [ %23, %22 ], [ %14, %20 ], [ %14, %10 ]
  %26 = tail call i32 @llvm.smin.i32(i32 %25, i32 2000)
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 1)
  tail call void @BKE_brush_size_set(ptr noundef %3, ptr noundef nonnull %5, i32 noundef %27) #8
  %28 = tail call float @BKE_brush_unprojected_radius_get(ptr noundef %3, ptr noundef nonnull %5) #8
  %29 = fmul float %8, %28
  %30 = fcmp olt float %29, 0x3F50624DE0000000
  %31 = select i1 %30, float 0x3F50624DE0000000, float %29
  tail call void @BKE_brush_unprojected_radius_set(ptr noundef %3, ptr noundef nonnull %5, float noundef %31) #8
  br label %32

32:                                               ; preds = %24, %2
  ret i32 4
}

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BKE_brush_size_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_brush_size_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare float @BKE_brush_unprojected_radius_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_brush_unprojected_radius_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @brush_reset_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #8
  %4 = tail call ptr @BKE_paint_brush(ptr noundef %3) #8
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %6 = icmp ne ptr %5, null
  %7 = icmp ne ptr %4, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %11 = load i32, ptr %10, align 8, !tbaa !80
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @BKE_brush_sculpt_reset(ptr noundef nonnull %4) #8
  br label %15

15:                                               ; preds = %9, %14, %2
  %16 = phi i32 [ 2, %2 ], [ 4, %14 ], [ 4, %9 ]
  ret i32 %16
}

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare void @BKE_brush_sculpt_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @stencil_control_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #8
  %5 = tail call ptr @BKE_paint_brush(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !84
  %8 = sitofp i32 %7 to float
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !84
  %11 = sitofp i32 %10 to float
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  %15 = tail call i32 @RNA_enum_get(ptr noundef %14, ptr noundef nonnull @.str.123) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 4, i32 20
  %19 = load i8, ptr %18, align 4, !tbaa !85
  %20 = icmp eq i8 %19, 5
  br i1 %20, label %25, label %91

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 3, i32 20
  %23 = load i8, ptr %22, align 4, !tbaa !86
  %24 = icmp eq i8 %23, 5
  br i1 %24, label %25, label %91

25:                                               ; preds = %21, %17
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !62
  %27 = tail call ptr %26(i64 noundef 96, ptr noundef nonnull @.str.124) #8
  %28 = getelementptr inbounds %struct.StencilControlData, ptr %27, i64 0, i32 9
  store i32 %15, ptr %28, align 4, !tbaa !87
  %29 = getelementptr inbounds %struct.StencilControlData, ptr %27, i64 0, i32 10
  store ptr %5, ptr %29, align 8, !tbaa !89
  store float %8, ptr %27, align 4, !tbaa !67
  %30 = getelementptr inbounds float, ptr %27, i64 1
  store float %11, ptr %30, align 4, !tbaa !67
  %31 = getelementptr inbounds %struct.StencilControlData, ptr %27, i64 0, i32 2
  %32 = getelementptr inbounds %struct.StencilControlData, ptr %27, i64 0, i32 2, i64 1
  %33 = getelementptr inbounds %struct.StencilControlData, ptr %27, i64 0, i32 1
  %34 = getelementptr inbounds %struct.StencilControlData, ptr %27, i64 0, i32 1, i64 1
  %35 = getelementptr inbounds %struct.StencilControlData, ptr %27, i64 0, i32 3
  %36 = getelementptr inbounds %struct.StencilControlData, ptr %27, i64 0, i32 11
  %37 = getelementptr inbounds %struct.StencilControlData, ptr %27, i64 0, i32 12
  %38 = getelementptr inbounds %struct.StencilControlData, ptr %27, i64 0, i32 13
  br i1 %16, label %49, label %39

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 56
  %41 = load float, ptr %40, align 4, !tbaa !67
  store float %41, ptr %31, align 4, !tbaa !67
  %42 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 56, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !67
  store float %43, ptr %32, align 4, !tbaa !67
  %44 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 55
  %45 = load float, ptr %44, align 4, !tbaa !67
  store float %45, ptr %33, align 4, !tbaa !67
  %46 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 55, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !67
  store float %47, ptr %34, align 4, !tbaa !67
  %48 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 4, i32 13
  br label %59

49:                                               ; preds = %25
  %50 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 54
  %51 = load float, ptr %50, align 4, !tbaa !67
  store float %51, ptr %31, align 4, !tbaa !67
  %52 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 54, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !67
  store float %53, ptr %32, align 4, !tbaa !67
  %54 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 53
  %55 = load float, ptr %54, align 4, !tbaa !67
  store float %55, ptr %33, align 4, !tbaa !67
  %56 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 53, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !67
  store float %57, ptr %34, align 4, !tbaa !67
  %58 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 3, i32 13
  br label %59

59:                                               ; preds = %39, %49
  %60 = phi ptr [ %48, %39 ], [ %58, %49 ]
  %61 = phi ptr [ %40, %39 ], [ %50, %49 ]
  %62 = phi ptr [ %44, %39 ], [ %54, %49 ]
  %63 = phi ptr [ %46, %39 ], [ %56, %49 ]
  %64 = load float, ptr %60, align 4, !tbaa !67
  store float %64, ptr %35, align 8, !tbaa !90
  store ptr %61, ptr %36, align 8, !tbaa !91
  store ptr %60, ptr %37, align 8, !tbaa !92
  store ptr %62, ptr %38, align 8, !tbaa !93
  %65 = load float, ptr %62, align 4, !tbaa !67
  %66 = fsub float %8, %65
  %67 = load float, ptr %63, align 4, !tbaa !67
  %68 = fsub float %11, %67
  %69 = fmul float %68, %68
  %70 = tail call float @llvm.fmuladd.f32(float %66, float %66, float %69)
  %71 = tail call float @sqrtf(float noundef %70) #8
  %72 = getelementptr inbounds %struct.StencilControlData, ptr %27, i64 0, i32 5
  store float %71, ptr %72, align 8, !tbaa !94
  %73 = tail call float @atan2f(float noundef %68, float noundef %66) #8
  %74 = getelementptr inbounds %struct.StencilControlData, ptr %27, i64 0, i32 4
  store float %73, ptr %74, align 4, !tbaa !95
  %75 = load ptr, ptr %13, align 8, !tbaa !78
  %76 = tail call i32 @RNA_enum_get(ptr noundef %75, ptr noundef nonnull @.str.10) #8
  %77 = getelementptr inbounds %struct.StencilControlData, ptr %27, i64 0, i32 7
  store i32 %76, ptr %77, align 4, !tbaa !96
  %78 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %79 = load i16, ptr %78, align 8, !tbaa !97
  %80 = getelementptr inbounds %struct.StencilControlData, ptr %27, i64 0, i32 14
  store i16 %79, ptr %80, align 8, !tbaa !100
  %81 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 5
  %82 = load i16, ptr %81, align 8, !tbaa !101
  %83 = sitofp i16 %82 to float
  %84 = getelementptr inbounds %struct.StencilControlData, ptr %27, i64 0, i32 6
  store float %83, ptr %84, align 4, !tbaa !67
  %85 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 6
  %86 = load i16, ptr %85, align 2, !tbaa !106
  %87 = sitofp i16 %86 to float
  %88 = getelementptr inbounds %struct.StencilControlData, ptr %27, i64 0, i32 6, i64 1
  store float %87, ptr %88, align 4, !tbaa !67
  %89 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %27, ptr %89, align 8, !tbaa !107
  %90 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #8
  br label %91

91:                                               ; preds = %21, %17, %59
  %92 = phi i32 [ 1, %59 ], [ 2, %17 ], [ 2, %21 ]
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @stencil_control_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !97
  %8 = getelementptr inbounds %struct.StencilControlData, ptr %5, i64 0, i32 14
  %9 = load i16, ptr %8, align 8, !tbaa !100
  %10 = icmp eq i16 %7, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %13 = load i16, ptr %12, align 2, !tbaa !108
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %16(ptr noundef %5) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #8
  br label %64

17:                                               ; preds = %11, %3
  switch i16 %7, label %62 [
    i16 4, label %60
    i16 218, label %18
    i16 120, label %42
    i16 121, label %51
  ]

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %20 = load i16, ptr %19, align 2, !tbaa !108
  %21 = icmp eq i16 %20, 1
  br i1 %21, label %22, label %62

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.StencilControlData, ptr %5, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = getelementptr inbounds %struct.StencilControlData, ptr %5, i64 0, i32 2
  %26 = load float, ptr %25, align 4, !tbaa !67
  store float %26, ptr %24, align 4, !tbaa !67
  %27 = getelementptr inbounds %struct.StencilControlData, ptr %5, i64 0, i32 2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !67
  %29 = getelementptr inbounds float, ptr %24, i64 1
  store float %28, ptr %29, align 4, !tbaa !67
  %30 = getelementptr inbounds %struct.StencilControlData, ptr %5, i64 0, i32 13
  %31 = load ptr, ptr %30, align 8, !tbaa !93
  %32 = getelementptr inbounds %struct.StencilControlData, ptr %5, i64 0, i32 1
  %33 = load float, ptr %32, align 4, !tbaa !67
  store float %33, ptr %31, align 4, !tbaa !67
  %34 = getelementptr inbounds %struct.StencilControlData, ptr %5, i64 0, i32 1, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !67
  %36 = getelementptr inbounds float, ptr %31, i64 1
  store float %35, ptr %36, align 4, !tbaa !67
  %37 = getelementptr inbounds %struct.StencilControlData, ptr %5, i64 0, i32 3
  %38 = load float, ptr %37, align 8, !tbaa !90
  %39 = getelementptr inbounds %struct.StencilControlData, ptr %5, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !92
  store float %38, ptr %40, align 4, !tbaa !67
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %41(ptr noundef %5) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #8
  br label %64

42:                                               ; preds = %17
  %43 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %44 = load i16, ptr %43, align 2, !tbaa !108
  %45 = icmp eq i16 %44, 1
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.StencilControlData, ptr %5, i64 0, i32 8
  %48 = load i32, ptr %47, align 8, !tbaa !109
  %49 = icmp ne i32 %48, 1
  %50 = zext i1 %49 to i32
  store i32 %50, ptr %47, align 8, !tbaa !109
  br label %60

51:                                               ; preds = %17
  %52 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %53 = load i16, ptr %52, align 2, !tbaa !108
  %54 = icmp eq i16 %53, 1
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.StencilControlData, ptr %5, i64 0, i32 8
  %57 = load i32, ptr %56, align 8, !tbaa !109
  %58 = icmp eq i32 %57, 2
  %59 = select i1 %58, i32 0, i32 2
  store i32 %59, ptr %56, align 8, !tbaa !109
  br label %60

60:                                               ; preds = %17, %46, %55
  %61 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call fastcc void @stencil_control_calculate(ptr noundef %5, ptr noundef nonnull %61)
  br label %62

62:                                               ; preds = %60, %17, %51, %42, %18
  %63 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  tail call void @ED_region_tag_redraw(ptr noundef %63) #8
  br label %64

64:                                               ; preds = %62, %22, %15
  %65 = phi i32 [ 4, %15 ], [ 1, %62 ], [ 2, %22 ]
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal void @stencil_control_cancel(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = getelementptr inbounds %struct.StencilControlData, ptr %4, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.StencilControlData, ptr %4, i64 0, i32 2
  %8 = load float, ptr %7, align 4, !tbaa !67
  store float %8, ptr %6, align 4, !tbaa !67
  %9 = getelementptr inbounds %struct.StencilControlData, ptr %4, i64 0, i32 2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !67
  %11 = getelementptr inbounds float, ptr %6, i64 1
  store float %10, ptr %11, align 4, !tbaa !67
  %12 = getelementptr inbounds %struct.StencilControlData, ptr %4, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = getelementptr inbounds %struct.StencilControlData, ptr %4, i64 0, i32 1
  %15 = load float, ptr %14, align 4, !tbaa !67
  store float %15, ptr %13, align 4, !tbaa !67
  %16 = getelementptr inbounds %struct.StencilControlData, ptr %4, i64 0, i32 1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !67
  %18 = getelementptr inbounds float, ptr %13, i64 1
  store float %17, ptr %18, align 4, !tbaa !67
  %19 = getelementptr inbounds %struct.StencilControlData, ptr %4, i64 0, i32 3
  %20 = load float, ptr %19, align 8, !tbaa !90
  %21 = getelementptr inbounds %struct.StencilControlData, ptr %4, i64 0, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !92
  store float %20, ptr %22, align 4, !tbaa !67
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !62
  tail call void %23(ptr noundef %4) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @stencil_control_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #8
  %3 = tail call zeroext i8 @paint_supports_texture(i32 noundef %2) #8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #8
  %7 = tail call ptr @BKE_paint_brush(ptr noundef %6) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 3, i32 20
  %11 = load i8, ptr %10, align 4, !tbaa !86
  %12 = icmp eq i8 %11, 5
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 4, i32 20
  %15 = load i8, ptr %14, align 4, !tbaa !85
  %16 = icmp eq i8 %15, 5
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %5, %13, %9, %1
  %19 = phi i32 [ 0, %1 ], [ 0, %5 ], [ 1, %9 ], [ %17, %13 ]
  ret i32 %19
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @stencil_control_calculate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load i32, ptr %1, align 4, !tbaa !84
  %4 = sitofp i32 %3 to float
  %5 = getelementptr inbounds i32, ptr %1, i64 1
  %6 = load i32, ptr %5, align 4, !tbaa !84
  %7 = sitofp i32 %6 to float
  %8 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !96
  switch i32 %9, label %116 [
    i32 0, label %10
    i32 1, label %52
    i32 2, label %93
  ]

10:                                               ; preds = %2
  %11 = load float, ptr %0, align 4, !tbaa !67
  %12 = fsub float %4, %11
  %13 = getelementptr inbounds float, ptr %0, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !67
  %15 = fsub float %7, %14
  %16 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  %18 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 1
  %19 = load float, ptr %18, align 4, !tbaa !67
  %20 = fadd float %12, %19
  store float %20, ptr %17, align 4, !tbaa !67
  %21 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !67
  %23 = fadd float %15, %22
  %24 = getelementptr inbounds float, ptr %17, i64 1
  store float %23, ptr %24, align 4, !tbaa !67
  %25 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 11
  %26 = load ptr, ptr %25, align 8, !tbaa !91
  %27 = load float, ptr %26, align 4, !tbaa !67
  %28 = fsub float 5.000000e+00, %27
  %29 = fcmp olt float %20, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 6
  %32 = load float, ptr %31, align 4, !tbaa !67
  %33 = fadd float %27, %32
  %34 = fadd float %33, -5.000000e+00
  %35 = fcmp ogt float %20, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %10
  %37 = phi float [ %28, %10 ], [ %34, %30 ]
  store float %37, ptr %17, align 4, !tbaa !67
  br label %38

38:                                               ; preds = %36, %30
  %39 = load float, ptr %24, align 4, !tbaa !67
  %40 = getelementptr inbounds float, ptr %26, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !67
  %42 = fsub float 5.000000e+00, %41
  %43 = fcmp olt float %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store float %42, ptr %24, align 4, !tbaa !67
  br label %116

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 6, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !67
  %48 = fadd float %41, %47
  %49 = fadd float %48, -5.000000e+00
  %50 = fcmp ogt float %39, %49
  br i1 %50, label %51, label %116

51:                                               ; preds = %45
  store float %49, ptr %24, align 4, !tbaa !67
  br label %116

52:                                               ; preds = %2
  %53 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 13
  %54 = load ptr, ptr %53, align 8, !tbaa !93
  %55 = load float, ptr %54, align 4, !tbaa !67
  %56 = fsub float %4, %55
  %57 = getelementptr inbounds float, ptr %54, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !67
  %59 = fsub float %7, %58
  %60 = fmul float %59, %59
  %61 = tail call float @llvm.fmuladd.f32(float %56, float %56, float %60)
  %62 = tail call float @sqrtf(float noundef %61) #8
  %63 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 5
  %64 = load float, ptr %63, align 8, !tbaa !94
  %65 = fdiv float %62, %64
  %66 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 2
  %67 = load float, ptr %66, align 4, !tbaa !67
  %68 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 2, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !67
  %70 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 8
  %71 = load i32, ptr %70, align 8, !tbaa !109
  %72 = icmp eq i32 %71, 2
  %73 = select i1 %72, float 1.000000e+00, float %65
  %74 = fmul float %67, %73
  %75 = icmp eq i32 %71, 1
  %76 = select i1 %75, float 1.000000e+00, float %65
  %77 = fmul float %69, %76
  %78 = fcmp olt float %74, 5.000000e+00
  br i1 %78, label %82, label %79

79:                                               ; preds = %52
  %80 = fcmp ogt float %74, 1.000000e+04
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  br label %82

82:                                               ; preds = %52, %79, %81
  %83 = phi float [ 1.000000e+04, %81 ], [ %74, %79 ], [ 5.000000e+00, %52 ]
  %84 = fcmp olt float %77, 5.000000e+00
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = fcmp ogt float %77, 1.000000e+04
  br i1 %86, label %87, label %88

87:                                               ; preds = %85
  br label %88

88:                                               ; preds = %82, %85, %87
  %89 = phi float [ 1.000000e+04, %87 ], [ %77, %85 ], [ 5.000000e+00, %82 ]
  %90 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 11
  %91 = load ptr, ptr %90, align 8, !tbaa !91
  store float %83, ptr %91, align 4, !tbaa !67
  %92 = getelementptr inbounds float, ptr %91, i64 1
  store float %89, ptr %92, align 4, !tbaa !67
  br label %116

93:                                               ; preds = %2
  %94 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 13
  %95 = load ptr, ptr %94, align 8, !tbaa !93
  %96 = load float, ptr %95, align 4, !tbaa !67
  %97 = fsub float %4, %96
  %98 = getelementptr inbounds float, ptr %95, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !67
  %100 = fsub float %7, %99
  %101 = tail call float @atan2f(float noundef %100, float noundef %97) #8
  %102 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 3
  %103 = load float, ptr %102, align 8, !tbaa !90
  %104 = fadd float %101, %103
  %105 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 4
  %106 = load float, ptr %105, align 4, !tbaa !95
  %107 = fsub float %104, %106
  %108 = fcmp olt float %107, 0.000000e+00
  %109 = fadd float %107, 0x401921FB60000000
  %110 = select i1 %108, float %109, float %107
  %111 = fcmp ogt float %110, 0x401921FB60000000
  %112 = fadd float %110, 0xC01921FB60000000
  %113 = select i1 %111, float %112, float %110
  %114 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 12
  %115 = load ptr, ptr %114, align 8, !tbaa !92
  store float %113, ptr %115, align 4, !tbaa !67
  br label %116

116:                                              ; preds = %44, %51, %45, %2, %93, %88
  ret void
}

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @paint_supports_texture(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @stencil_fit_image_aspect_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #8
  %6 = tail call ptr @BKE_paint_brush(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.131) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !78
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.128) #8
  %12 = load ptr, ptr %7, align 8, !tbaa !78
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.134) #8
  %14 = icmp eq ptr %6, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = and i32 %13, 255
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 4
  %19 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 3
  %20 = select i1 %17, ptr %19, ptr %18
  %21 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !110
  br label %23

23:                                               ; preds = %15, %2
  %24 = phi ptr [ %20, %15 ], [ null, %2 ]
  %25 = phi ptr [ %22, %15 ], [ null, %2 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %95, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Tex, ptr %25, i64 0, i32 32
  %29 = load i16, ptr %28, align 8, !tbaa !111
  %30 = icmp eq i16 %29, 8
  br i1 %30, label %31, label %95

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Tex, ptr %25, i64 0, i32 54
  %33 = load ptr, ptr %32, align 8, !tbaa !114
  %34 = icmp eq ptr %33, null
  br i1 %34, label %95, label %35

35:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @ED_image_get_uv_aspect(ptr noundef nonnull %33, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %36 = and i32 %9, 255
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.MTex, ptr %24, i64 0, i32 12
  %40 = load float, ptr %39, align 8, !tbaa !67
  %41 = load float, ptr %3, align 4, !tbaa !67
  %42 = fmul float %40, %41
  store float %42, ptr %3, align 4, !tbaa !67
  %43 = getelementptr inbounds %struct.MTex, ptr %24, i64 0, i32 12, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !67
  %45 = load float, ptr %4, align 4, !tbaa !67
  %46 = fmul float %44, %45
  store float %46, ptr %4, align 4, !tbaa !67
  br label %47

47:                                               ; preds = %38, %35
  %48 = and i32 %11, 255
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.Tex, ptr %25, i64 0, i32 42
  %52 = load i16, ptr %51, align 8, !tbaa !115
  %53 = icmp eq i16 %52, 3
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.Tex, ptr %25, i64 0, i32 40
  %56 = load i16, ptr %55, align 4, !tbaa !116
  %57 = sitofp i16 %56 to float
  %58 = load float, ptr %3, align 4, !tbaa !67
  %59 = fmul float %58, %57
  store float %59, ptr %3, align 4, !tbaa !67
  %60 = getelementptr inbounds %struct.Tex, ptr %25, i64 0, i32 41
  %61 = load i16, ptr %60, align 2, !tbaa !117
  %62 = sitofp i16 %61 to float
  %63 = load float, ptr %4, align 4, !tbaa !67
  %64 = fmul float %63, %62
  store float %64, ptr %4, align 4, !tbaa !67
  br label %65

65:                                               ; preds = %54, %50, %47
  %66 = load float, ptr %3, align 4, !tbaa !67
  %67 = load float, ptr %4, align 4, !tbaa !67
  %68 = fmul float %66, %67
  %69 = and i32 %13, 255
  %70 = icmp eq i32 %69, 0
  %71 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 54
  %72 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 54, i64 1
  %73 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 56
  %74 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 56, i64 1
  %75 = select i1 %70, ptr %72, ptr %74
  %76 = select i1 %70, ptr %71, ptr %73
  %77 = load float, ptr %76, align 8, !tbaa !67
  %78 = load float, ptr %75, align 4, !tbaa !67
  %79 = fmul float %77, %78
  %80 = fdiv float %79, %68
  %81 = call float @sqrtf(float noundef %80) #8
  %82 = load float, ptr %3, align 4, !tbaa !67
  %83 = fmul float %81, %82
  br i1 %70, label %89, label %84

84:                                               ; preds = %65
  %85 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 56
  store float %83, ptr %85, align 8, !tbaa !67
  %86 = load float, ptr %4, align 4, !tbaa !67
  %87 = fmul float %81, %86
  %88 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 56, i64 1
  store float %87, ptr %88, align 4, !tbaa !67
  br label %94

89:                                               ; preds = %65
  %90 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 54
  store float %83, ptr %90, align 8, !tbaa !67
  %91 = load float, ptr %4, align 4, !tbaa !67
  %92 = fmul float %81, %91
  %93 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 54, i64 1
  store float %92, ptr %93, align 4, !tbaa !67
  br label %94

94:                                               ; preds = %89, %84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %95

95:                                               ; preds = %94, %31, %27, %23
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #8
  ret i32 4
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_image_get_uv_aspect(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @stencil_reset_transform_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #8
  %4 = tail call ptr @BKE_paint_brush(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.134) #8
  %8 = icmp eq ptr %4, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  %10 = and i32 %7, 255
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 55
  store float 2.560000e+02, ptr %13, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 55, i64 1
  store float 2.560000e+02, ptr %14, align 4, !tbaa !67
  %15 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 56
  store float 2.560000e+02, ptr %15, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 56, i64 1
  store float 2.560000e+02, ptr %16, align 4, !tbaa !67
  %17 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 4, i32 13
  br label %24

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 53
  store float 2.560000e+02, ptr %19, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 53, i64 1
  store float 2.560000e+02, ptr %20, align 4, !tbaa !67
  %21 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 54
  store float 2.560000e+02, ptr %21, align 8, !tbaa !67
  %22 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 54, i64 1
  store float 2.560000e+02, ptr %22, align 4, !tbaa !67
  %23 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 3, i32 13
  br label %24

24:                                               ; preds = %18, %12
  %25 = phi ptr [ %23, %18 ], [ %17, %12 ]
  store float 0.000000e+00, ptr %25, align 4, !tbaa !67
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #8
  br label %26

26:                                               ; preds = %2, %24
  %27 = phi i32 [ 4, %24 ], [ 2, %2 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @brush_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %5 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.151) #8
  %9 = load ptr, ptr %6, align 8, !tbaa !78
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.25) #8
  %11 = load ptr, ptr %6, align 8, !tbaa !78
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.24) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store ptr @.str.98, ptr %3, align 8, !tbaa !62
  %13 = icmp eq i32 %8, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 27
  %19 = load i32, ptr %18, align 8, !tbaa !80
  %20 = and i32 %19, 30
  br label %21

21:                                               ; preds = %14, %17
  %22 = phi i32 [ %20, %17 ], [ 0, %14 ]
  br i1 %16, label %182, label %23

23:                                               ; preds = %21, %2
  %24 = phi i32 [ %22, %21 ], [ %8, %2 ]
  %25 = add i32 %24, -2
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 31)
  switch i32 %26, label %182 [
    i32 0, label %27
    i32 1, label %33
    i32 3, label %38
    i32 7, label %44
  ]

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !118
  %30 = load ptr, ptr %6, align 8, !tbaa !78
  %31 = tail call i32 @RNA_enum_get(ptr noundef %30, ptr noundef nonnull @.str.153) #8
  %32 = call zeroext i8 @RNA_enum_name_from_value(ptr noundef nonnull @brush_sculpt_tool_items, i32 noundef %31, ptr noundef nonnull %3) #8
  br label %49

33:                                               ; preds = %23
  %34 = load ptr, ptr %5, align 8, !tbaa !124
  %35 = load ptr, ptr %6, align 8, !tbaa !78
  %36 = tail call i32 @RNA_enum_get(ptr noundef %35, ptr noundef nonnull @.str.155) #8
  %37 = call zeroext i8 @RNA_enum_name_from_value(ptr noundef nonnull @brush_vertex_tool_items, i32 noundef %36, ptr noundef nonnull %3) #8
  br label %49

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !125
  %41 = load ptr, ptr %6, align 8, !tbaa !78
  %42 = tail call i32 @RNA_enum_get(ptr noundef %41, ptr noundef nonnull @.str.157) #8
  %43 = call zeroext i8 @RNA_enum_name_from_value(ptr noundef nonnull @brush_vertex_tool_items, i32 noundef %42, ptr noundef nonnull %3) #8
  br label %49

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 17
  %46 = load ptr, ptr %6, align 8, !tbaa !78
  %47 = tail call i32 @RNA_enum_get(ptr noundef %46, ptr noundef nonnull @.str.159) #8
  %48 = call zeroext i8 @RNA_enum_name_from_value(ptr noundef nonnull @brush_image_tool_items, i32 noundef %47, ptr noundef nonnull %3) #8
  br label %49

49:                                               ; preds = %44, %38, %33, %27
  %50 = phi i32 [ %47, %44 ], [ %42, %38 ], [ %36, %33 ], [ %31, %27 ]
  %51 = phi ptr [ %45, %44 ], [ %40, %38 ], [ %34, %33 ], [ %29, %27 ]
  %52 = phi i64 [ 1946, %44 ], [ 1945, %38 ], [ 1945, %33 ], [ 1944, %27 ]
  %53 = load ptr, ptr %3, align 8, !tbaa !62
  %54 = call ptr @BKE_paint_brush(ptr noundef %51) #8
  %55 = and i32 %12, 255
  %56 = icmp eq i32 %55, 0
  %57 = icmp eq ptr %54, null
  br i1 %56, label %120, label %58

58:                                               ; preds = %49
  br i1 %57, label %65, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds i8, ptr %54, i64 %52
  %61 = load i8, ptr %60, align 1, !tbaa !126
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %50, %62
  br i1 %63, label %109, label %64

64:                                               ; preds = %59
  br i1 %57, label %65, label %69

65:                                               ; preds = %58, %64
  %66 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 36
  %67 = load ptr, ptr %66, align 8, !tbaa !127
  %68 = icmp eq ptr %67, null
  br i1 %68, label %104, label %69

69:                                               ; preds = %65, %64
  %70 = phi ptr [ %54, %64 ], [ %67, %65 ]
  %71 = getelementptr inbounds i8, ptr %70, i64 %52
  %72 = load i8, ptr %71, align 1, !tbaa !126
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %50, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load ptr, ptr %70, align 8, !tbaa !129
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75, %69
  %79 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 36
  %80 = load ptr, ptr %79, align 8, !tbaa !127
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi ptr [ %76, %75 ], [ %80, %78 ]
  %83 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 36
  br label %84

84:                                               ; preds = %101, %81
  %85 = phi ptr [ %82, %81 ], [ %102, %101 ]
  %86 = getelementptr inbounds %struct.Brush, ptr %85, i64 0, i32 13
  %87 = load i16, ptr %86, align 2, !tbaa !130
  %88 = sext i16 %87 to i32
  %89 = and i32 %24, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %84
  %92 = getelementptr inbounds i8, ptr %85, i64 %52
  %93 = load i8, ptr %92, align 1, !tbaa !126
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %50, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %91, %84
  %97 = load ptr, ptr %85, align 8, !tbaa !129
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load ptr, ptr %83, align 8, !tbaa !127
  br label %101

101:                                              ; preds = %99, %96
  %102 = phi ptr [ %100, %99 ], [ %97, %96 ]
  %103 = icmp eq ptr %102, %82
  br i1 %103, label %104, label %84, !llvm.loop !131

104:                                              ; preds = %91, %101, %65
  %105 = phi ptr [ null, %65 ], [ %85, %91 ], [ null, %101 ]
  %106 = icmp eq ptr %105, null
  br i1 %106, label %160, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.Brush, ptr %105, i64 0, i32 5
  store ptr %54, ptr %108, align 8, !tbaa !132
  br label %160

109:                                              ; preds = %59
  %110 = getelementptr inbounds %struct.Brush, ptr %54, i64 0, i32 5
  %111 = load ptr, ptr %110, align 8, !tbaa !132
  %112 = icmp eq ptr %111, null
  br i1 %112, label %160, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 36
  %115 = load ptr, ptr %114, align 8, !tbaa !127
  %116 = call i32 @BLI_findindex(ptr noundef %115, ptr noundef nonnull %111) #8
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %160, label %118

118:                                              ; preds = %113
  %119 = load ptr, ptr %110, align 8, !tbaa !132
  br label %160

120:                                              ; preds = %49
  br i1 %57, label %121, label %125

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 36
  %123 = load ptr, ptr %122, align 8, !tbaa !127
  %124 = icmp eq ptr %123, null
  br i1 %124, label %160, label %125

125:                                              ; preds = %121, %120
  %126 = phi ptr [ %54, %120 ], [ %123, %121 ]
  %127 = getelementptr inbounds i8, ptr %126, i64 %52
  %128 = load i8, ptr %127, align 1, !tbaa !126
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %50, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load ptr, ptr %126, align 8, !tbaa !129
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131, %125
  %135 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 36
  %136 = load ptr, ptr %135, align 8, !tbaa !127
  br label %137

137:                                              ; preds = %134, %131
  %138 = phi ptr [ %132, %131 ], [ %136, %134 ]
  %139 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 36
  br label %140

140:                                              ; preds = %157, %137
  %141 = phi ptr [ %138, %137 ], [ %158, %157 ]
  %142 = getelementptr inbounds %struct.Brush, ptr %141, i64 0, i32 13
  %143 = load i16, ptr %142, align 2, !tbaa !130
  %144 = sext i16 %143 to i32
  %145 = and i32 %24, %144
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %140
  %148 = getelementptr inbounds i8, ptr %141, i64 %52
  %149 = load i8, ptr %148, align 1, !tbaa !126
  %150 = zext i8 %149 to i32
  %151 = icmp eq i32 %50, %150
  br i1 %151, label %160, label %152

152:                                              ; preds = %147, %140
  %153 = load ptr, ptr %141, align 8, !tbaa !129
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load ptr, ptr %139, align 8, !tbaa !127
  br label %157

157:                                              ; preds = %155, %152
  %158 = phi ptr [ %156, %155 ], [ %153, %152 ]
  %159 = icmp eq ptr %158, %138
  br i1 %159, label %160, label %140, !llvm.loop !131

160:                                              ; preds = %157, %147, %121, %118, %113, %109, %107, %104
  %161 = phi ptr [ %119, %118 ], [ %105, %107 ], [ %105, %104 ], [ null, %113 ], [ null, %109 ], [ null, %121 ], [ %141, %147 ], [ null, %157 ]
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %178

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %54, i64 %52
  %165 = load i8, ptr %164, align 1, !tbaa !126
  %166 = zext i8 %165 to i32
  %167 = icmp ne i32 %50, %166
  %168 = and i32 %10, 255
  %169 = icmp ne i32 %168, 0
  %170 = and i1 %169, %167
  br i1 %170, label %171, label %178

171:                                              ; preds = %163
  %172 = call ptr @BKE_brush_add(ptr noundef %4, ptr noundef %53) #8
  %173 = trunc i32 %50 to i8
  %174 = getelementptr inbounds i8, ptr %172, i64 %52
  store i8 %173, ptr %174, align 1, !tbaa !126
  %175 = trunc i32 %24 to i16
  %176 = getelementptr inbounds %struct.Brush, ptr %172, i64 0, i32 13
  store i16 %175, ptr %176, align 2, !tbaa !130
  %177 = getelementptr inbounds %struct.Brush, ptr %172, i64 0, i32 5
  store ptr %54, ptr %177, align 8, !tbaa !132
  br label %178

178:                                              ; preds = %171, %163, %160
  %179 = phi ptr [ %161, %160 ], [ %172, %171 ], [ null, %163 ]
  %180 = icmp eq ptr %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %178
  call void @BKE_paint_brush_set(ptr noundef %51, ptr noundef nonnull %179) #8
  call void @BKE_paint_invalidate_overlay_all() #8
  call void @WM_main_add_notifier(i32 noundef 184549377, ptr noundef nonnull %179) #8
  br label %182

182:                                              ; preds = %181, %178, %23, %21
  %183 = phi i32 [ 2, %21 ], [ 2, %23 ], [ 4, %181 ], [ 2, %178 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %183
}

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_enum_name_from_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_paint_invalidate_overlay_all() local_unnamed_addr #2

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @brush_uv_sculpt_tool_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.84) #8
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 66
  store i32 %8, ptr %9, align 8, !tbaa !150
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !151
  %12 = load ptr, ptr %11, align 8, !tbaa !152
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 184549377, ptr noundef %12) #8
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_color_set_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !133
  %7 = load ptr, ptr %6, align 8, !tbaa !124
  %8 = tail call i32 @vpaint_get_current_col(ptr noundef %3, ptr noundef %7) #8
  %9 = tail call zeroext i8 @ED_vpaint_fill(ptr noundef %4, i32 noundef %8) #8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  tail call void @ED_region_tag_redraw(ptr noundef %12) #8
  br label %13

13:                                               ; preds = %2, %11
  %14 = phi i32 [ 4, %11 ], [ 2, %2 ]
  ret i32 %14
}

declare i32 @vpaint_get_current_col(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_vpaint_fill(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_color_smooth_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %4 = tail call zeroext i8 @ED_vpaint_smooth(ptr noundef %3) #8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  tail call void @ED_region_tag_redraw(ptr noundef %7) #8
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ 4, %6 ], [ 2, %2 ]
  ret i32 %9
}

declare zeroext i8 @ED_vpaint_smooth(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !36, i64 24}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!43, !36, i64 88}
!43 = !{!"wmOperatorTypeMacro", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88}
!44 = !{!35, !36, i64 0}
!45 = !{!35, !36, i64 8}
!46 = !{!35, !36, i64 32}
!47 = !{!35, !41, i64 184}
!48 = !{!35, !36, i64 72}
!49 = !{!35, !36, i64 88}
!50 = !{!35, !36, i64 48}
!51 = !{!35, !36, i64 64}
!52 = !{!35, !36, i64 56}
!53 = !{!35, !36, i64 104}
!54 = !{!55, !36, i64 120}
!55 = !{!"wmKeyMap", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 32, !37, i64 48, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !36, i64 120, !36, i64 128}
!56 = !{!57, !36, i64 176}
!57 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !41, i64 164, !41, i64 166, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !36, i64 176}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = distinct !{!61, !59, !60}
!62 = !{!36, !36, i64 0}
!63 = !{!64, !36, i64 0}
!64 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !65, i64 28, !65, i64 32, !65, i64 36}
!65 = !{!"int", !37, i64 0}
!66 = !{!64, !36, i64 8}
!67 = !{!68, !68, i64 0}
!68 = !{!"float", !37, i64 0}
!69 = !{!70, !68, i64 1848}
!70 = !{!"Brush", !71, i64 0, !72, i64 120, !36, i64 144, !73, i64 152, !73, i64 464, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !37, i64 816, !68, i64 1840, !41, i64 1844, !41, i64 1846, !68, i64 1848, !65, i64 1852, !65, i64 1856, !65, i64 1860, !68, i64 1864, !65, i64 1868, !65, i64 1872, !65, i64 1876, !65, i64 1880, !68, i64 1884, !68, i64 1888, !37, i64 1892, !68, i64 1904, !37, i64 1908, !65, i64 1920, !68, i64 1924, !68, i64 1928, !65, i64 1932, !65, i64 1936, !65, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !68, i64 1948, !68, i64 1952, !68, i64 1956, !68, i64 1960, !68, i64 1964, !65, i64 1968, !65, i64 1972, !65, i64 1976, !68, i64 1980, !68, i64 1984, !65, i64 1988, !65, i64 1992, !68, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!71 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !65, i64 100, !65, i64 104, !65, i64 108, !36, i64 112}
!72 = !{!"BrushClone", !36, i64 0, !37, i64 8, !68, i64 16, !68, i64 20}
!73 = !{!"MTex", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !68, i64 116, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !41, i64 128, !41, i64 130, !37, i64 132, !37, i64 133, !68, i64 140, !68, i64 144, !68, i64 148, !68, i64 152, !68, i64 156, !68, i64 160, !68, i64 164, !68, i64 168, !68, i64 172, !68, i64 176, !68, i64 180, !68, i64 184, !68, i64 188, !68, i64 192, !68, i64 196, !68, i64 200, !68, i64 204, !68, i64 208, !68, i64 212, !68, i64 216, !68, i64 220, !68, i64 224, !68, i64 228, !68, i64 232, !68, i64 236, !68, i64 240, !68, i64 244, !68, i64 248, !68, i64 252, !68, i64 256, !68, i64 260, !68, i64 264, !68, i64 268, !68, i64 272, !68, i64 276, !68, i64 280, !68, i64 284, !68, i64 288, !68, i64 292, !68, i64 296, !68, i64 300, !68, i64 304, !68, i64 308}
!74 = !{!75, !68, i64 28}
!75 = !{!"PaletteColor", !36, i64 0, !36, i64 8, !37, i64 16, !68, i64 28}
!76 = !{!77, !65, i64 152}
!77 = !{!"Palette", !71, i64 0, !39, i64 120, !39, i64 136, !65, i64 152, !65, i64 156}
!78 = !{!79, !36, i64 112}
!79 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!80 = !{!81, !65, i64 432}
!81 = !{!"Object", !71, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !65, i64 140, !65, i64 144, !65, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !82, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !65, i64 432, !65, i64 436, !36, i64 440, !36, i64 448, !65, i64 456, !65, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !68, i64 616, !68, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !65, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !65, i64 968, !65, i64 972, !65, i64 976, !65, i64 980, !65, i64 984, !68, i64 988, !68, i64 992, !68, i64 996, !68, i64 1000, !68, i64 1004, !68, i64 1008, !68, i64 1012, !68, i64 1016, !68, i64 1020, !68, i64 1024, !68, i64 1028, !68, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !68, i64 1048, !68, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !68, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !65, i64 1144, !65, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !68, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !83, i64 1304, !83, i64 1312, !65, i64 1320, !65, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!82 = !{!"bAnimVizSettings", !65, i64 0, !65, i64 4, !65, i64 8, !65, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !65, i64 32, !65, i64 36, !65, i64 40, !65, i64 44}
!83 = !{!"long", !37, i64 0}
!84 = !{!65, !65, i64 0}
!85 = !{!70, !37, i64 596}
!86 = !{!70, !37, i64 284}
!87 = !{!88, !65, i64 52}
!88 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !68, i64 24, !68, i64 28, !68, i64 32, !37, i64 36, !65, i64 44, !65, i64 48, !65, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !41, i64 88}
!89 = !{!88, !36, i64 56}
!90 = !{!88, !68, i64 24}
!91 = !{!88, !36, i64 64}
!92 = !{!88, !36, i64 72}
!93 = !{!88, !36, i64 80}
!94 = !{!88, !68, i64 32}
!95 = !{!88, !68, i64 28}
!96 = !{!88, !65, i64 44}
!97 = !{!98, !41, i64 16}
!98 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !65, i64 20, !65, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !65, i64 48, !65, i64 52, !99, i64 56, !65, i64 64, !65, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !65, i64 108, !36, i64 112}
!99 = !{!"double", !37, i64 0}
!100 = !{!88, !41, i64 88}
!101 = !{!102, !41, i64 208}
!102 = !{!"ARegion", !36, i64 0, !36, i64 8, !103, i64 16, !105, i64 176, !105, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !68, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!103 = !{!"View2D", !104, i64 0, !104, i64 16, !105, i64 32, !105, i64 48, !105, i64 64, !37, i64 80, !37, i64 88, !68, i64 96, !68, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !65, i64 136, !65, i64 140, !36, i64 144, !36, i64 152}
!104 = !{!"rctf", !68, i64 0, !68, i64 4, !68, i64 8, !68, i64 12}
!105 = !{!"rcti", !65, i64 0, !65, i64 4, !65, i64 8, !65, i64 12}
!106 = !{!102, !41, i64 210}
!107 = !{!79, !36, i64 96}
!108 = !{!98, !41, i64 18}
!109 = !{!88, !65, i64 48}
!110 = !{!73, !36, i64 16}
!111 = !{!112, !41, i64 232}
!112 = !{!"Tex", !71, i64 0, !36, i64 120, !68, i64 128, !68, i64 132, !68, i64 136, !68, i64 140, !68, i64 144, !68, i64 148, !68, i64 152, !68, i64 156, !68, i64 160, !68, i64 164, !68, i64 168, !68, i64 172, !68, i64 176, !68, i64 180, !68, i64 184, !68, i64 188, !68, i64 192, !68, i64 196, !68, i64 200, !68, i64 204, !68, i64 208, !68, i64 212, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !68, i64 236, !68, i64 240, !68, i64 244, !68, i64 248, !65, i64 252, !65, i64 256, !41, i64 260, !41, i64 262, !41, i64 264, !41, i64 266, !65, i64 268, !65, i64 272, !65, i64 276, !65, i64 280, !68, i64 284, !68, i64 288, !68, i64 292, !113, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!113 = !{!"ImageUser", !36, i64 0, !65, i64 8, !65, i64 12, !65, i64 16, !65, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !65, i64 36}
!114 = !{!112, !36, i64 352}
!115 = !{!112, !41, i64 264}
!116 = !{!112, !41, i64 260}
!117 = !{!112, !41, i64 262}
!118 = !{!119, !36, i64 16}
!119 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !68, i64 32, !68, i64 36, !68, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !68, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !120, i64 64, !121, i64 168, !68, i64 336, !68, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !68, i64 352, !68, i64 356, !68, i64 360, !68, i64 364, !68, i64 368, !68, i64 372, !68, i64 376, !68, i64 380, !68, i64 384, !68, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !65, i64 448, !65, i64 452, !65, i64 456, !65, i64 460, !41, i64 464, !41, i64 466, !65, i64 468, !68, i64 472, !68, i64 476, !122, i64 480, !123, i64 608}
!120 = !{!"ImagePaintSettings", !64, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !65, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !68, i64 100}
!121 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !68, i64 128, !68, i64 132, !65, i64 136, !65, i64 140, !65, i64 144, !65, i64 148, !36, i64 152, !36, i64 160}
!122 = !{!"UnifiedPaintSettings", !65, i64 0, !68, i64 4, !68, i64 8, !68, i64 12, !37, i64 16, !37, i64 28, !65, i64 40, !37, i64 44, !68, i64 52, !65, i64 56, !65, i64 60, !37, i64 64, !37, i64 65, !68, i64 72, !37, i64 76, !65, i64 84, !68, i64 88, !37, i64 92, !37, i64 100, !65, i64 108, !36, i64 112, !68, i64 120, !65, i64 124}
!123 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !68, i64 4, !68, i64 8, !68, i64 12, !68, i64 16, !37, i64 20, !37, i64 21, !68, i64 24, !68, i64 28, !68, i64 32, !68, i64 36}
!124 = !{!119, !36, i64 0}
!125 = !{!119, !36, i64 8}
!126 = !{!37, !37, i64 0}
!127 = !{!128, !36, i64 1488}
!128 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 1040, !41, i64 1042, !41, i64 1044, !41, i64 1046, !83, i64 1048, !37, i64 1056, !41, i64 1072, !36, i64 1080, !39, i64 1088, !39, i64 1104, !39, i64 1120, !39, i64 1136, !39, i64 1152, !39, i64 1168, !39, i64 1184, !39, i64 1200, !39, i64 1216, !39, i64 1232, !39, i64 1248, !39, i64 1264, !39, i64 1280, !39, i64 1296, !39, i64 1312, !39, i64 1328, !39, i64 1344, !39, i64 1360, !39, i64 1376, !39, i64 1392, !39, i64 1408, !39, i64 1424, !39, i64 1440, !39, i64 1456, !39, i64 1472, !39, i64 1488, !39, i64 1504, !39, i64 1520, !39, i64 1536, !39, i64 1552, !39, i64 1568, !39, i64 1584, !39, i64 1600, !39, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!129 = !{!70, !36, i64 0}
!130 = !{!70, !41, i64 1846}
!131 = distinct !{!131, !59, !60}
!132 = !{!70, !36, i64 776}
!133 = !{!134, !36, i64 264}
!134 = !{!"Scene", !71, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !65, i64 232, !65, i64 236, !65, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !135, i64 280, !142, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !65, i64 4380, !39, i64 4384, !143, i64 4400, !144, i64 4416, !147, i64 4600, !36, i64 4608, !148, i64 4616, !36, i64 4640, !83, i64 4648, !83, i64 4656, !137, i64 4664, !138, i64 4824, !149, i64 4888, !36, i64 4952}
!135 = !{!"RenderData", !136, i64 0, !36, i64 248, !36, i64 256, !139, i64 264, !140, i64 328, !65, i64 400, !65, i64 404, !65, i64 408, !68, i64 412, !65, i64 416, !65, i64 420, !65, i64 424, !65, i64 428, !41, i64 432, !41, i64 434, !68, i64 436, !68, i64 440, !68, i64 444, !68, i64 448, !68, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !65, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !65, i64 484, !65, i64 488, !41, i64 492, !41, i64 494, !65, i64 496, !65, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !65, i64 516, !65, i64 520, !65, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !104, i64 544, !104, i64 560, !105, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !68, i64 612, !68, i64 616, !68, i64 620, !68, i64 624, !65, i64 628, !68, i64 632, !68, i64 636, !68, i64 640, !68, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !68, i64 660, !68, i64 664, !41, i64 668, !41, i64 670, !68, i64 672, !68, i64 676, !37, i64 680, !65, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !65, i64 2520, !41, i64 2524, !41, i64 2526, !68, i64 2528, !68, i64 2532, !41, i64 2536, !41, i64 2538, !68, i64 2540, !41, i64 2544, !41, i64 2546, !65, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !68, i64 2560, !68, i64 2564, !36, i64 2568, !65, i64 2576, !68, i64 2580, !37, i64 2584, !141, i64 2616, !65, i64 3976, !65, i64 3980}
!136 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !68, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !137, i64 24, !138, i64 184}
!137 = !{!"ColorManagedViewSettings", !65, i64 0, !65, i64 4, !37, i64 8, !37, i64 72, !68, i64 136, !68, i64 140, !36, i64 144, !36, i64 152}
!138 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!139 = !{!"QuicktimeCodecSettings", !65, i64 0, !65, i64 4, !65, i64 8, !65, i64 12, !65, i64 16, !65, i64 20, !65, i64 24, !65, i64 28, !65, i64 32, !65, i64 36, !65, i64 40, !65, i64 44, !41, i64 48, !41, i64 50, !65, i64 52, !65, i64 56, !65, i64 60}
!140 = !{!"FFMpegCodecData", !65, i64 0, !65, i64 4, !65, i64 8, !65, i64 12, !65, i64 16, !65, i64 20, !65, i64 24, !65, i64 28, !68, i64 32, !65, i64 36, !65, i64 40, !65, i64 44, !65, i64 48, !65, i64 52, !65, i64 56, !65, i64 60, !36, i64 64}
!141 = !{!"BakeData", !136, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !68, i64 1280, !68, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!142 = !{!"AudioData", !65, i64 0, !68, i64 4, !68, i64 8, !68, i64 12, !65, i64 16, !41, i64 20, !41, i64 22, !68, i64 24, !68, i64 28}
!143 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!144 = !{!"GameData", !143, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !145, i64 40, !41, i64 64, !41, i64 66, !68, i64 68, !146, i64 72, !68, i64 128, !68, i64 132, !65, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !68, i64 164, !68, i64 168, !68, i64 172, !68, i64 176, !68, i64 180}
!145 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !68, i64 8, !68, i64 12, !36, i64 16}
!146 = !{!"RecastData", !68, i64 0, !68, i64 4, !68, i64 8, !68, i64 12, !68, i64 16, !68, i64 20, !68, i64 24, !68, i64 28, !68, i64 32, !68, i64 36, !65, i64 40, !68, i64 44, !68, i64 48, !41, i64 52, !41, i64 54}
!147 = !{!"UnitSettings", !68, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!148 = !{!"PhysicsSettings", !37, i64 0, !65, i64 12, !65, i64 16, !65, i64 20}
!149 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!150 = !{!119, !65, i64 456}
!151 = !{!119, !36, i64 24}
!152 = !{!153, !36, i64 0}
!153 = !{!"UvSculpt", !64, i64 0}
