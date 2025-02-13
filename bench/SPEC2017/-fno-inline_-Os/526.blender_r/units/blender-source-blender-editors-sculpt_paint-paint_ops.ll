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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatormacros_paint() local_unnamed_addr #0 {
  %1 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 2) #12
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 3
  store ptr @.str.2, ptr %2, align 8, !tbaa !34
  %3 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.3) #12
  %4 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.4) #12
  %5 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  tail call void @RNA_boolean_set(ptr noundef %6, ptr noundef nonnull @.str.5, i32 noundef 1) #12
  %7 = load ptr, ptr %5, align 8, !tbaa !42
  tail call void @RNA_boolean_set(ptr noundef %7, ptr noundef nonnull @.str.6, i32 noundef 0) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @WM_operatortype_append_macro(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_operatortype_macro_define(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatortypes_paint() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @PALETTE_OT_new) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PALETTE_OT_color_add) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PALETTE_OT_color_delete) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINTCURVE_OT_new) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINTCURVE_OT_add_point) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINTCURVE_OT_delete_point) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINTCURVE_OT_select) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINTCURVE_OT_slide) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINTCURVE_OT_draw) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINTCURVE_OT_cursor) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @BRUSH_OT_add) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @BRUSH_OT_scale_size) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @BRUSH_OT_curve_preset) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @BRUSH_OT_reset) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @BRUSH_OT_stencil_control) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @BRUSH_OT_stencil_fit_image_aspect) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @BRUSH_OT_stencil_reset_transform) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_brush_select) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @BRUSH_OT_uv_sculpt_tool_set) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_texture_paint_toggle) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_image_paint) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_sample_color) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_grab_clone) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_project_image) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_image_from_view) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_brush_colors_flip) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_add_texture_paint_slot) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_delete_texture_paint_slot) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_weight_paint_toggle) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_weight_paint) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_weight_set) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_weight_from_bones) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_weight_gradient) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_weight_sample) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_weight_sample_group) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCULPT_OT_uv_sculpt_stroke) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_vert_select_all) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_vert_select_ungrouped) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_vertex_paint_toggle) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_vertex_paint) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_vertex_color_set) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_vertex_color_smooth) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_face_select_linked) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_face_select_linked_pick) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_face_select_all) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_face_select_hide) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_face_select_reveal) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_hide_show) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_mask_flood_fill) #12
  tail call void @WM_operatortype_append(ptr noundef nonnull @PAINT_OT_mask_lasso_gesture) #12
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @PALETTE_OT_new(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !44 {
  store ptr @.str.85, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.86, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.87, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @palette_new_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @PALETTE_OT_color_add(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !49 {
  store ptr @.str.89, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.90, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.91, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @palette_color_add_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @palette_poll, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @PALETTE_OT_color_delete(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !51 {
  store ptr @.str.92, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.93, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.94, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @palette_color_delete_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @palette_poll, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @PAINTCURVE_OT_new(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINTCURVE_OT_add_point(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINTCURVE_OT_delete_point(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINTCURVE_OT_select(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINTCURVE_OT_slide(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINTCURVE_OT_draw(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINTCURVE_OT_cursor(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @BRUSH_OT_add(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !52 {
  store ptr @.str.95, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.96, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.97, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @brush_add_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BRUSH_OT_scale_size(ptr nocapture noundef %0) #0 !PGOFuncName !53 {
  store ptr @.str.99, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.100, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.101, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @brush_scale_size_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = tail call ptr @RNA_def_float(ptr noundef %7, ptr noundef nonnull @.str.102, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, float noundef 0.000000e+00, float noundef 2.000000e+00) #12
  ret void
}

; Function Attrs: optsize
declare void @BRUSH_OT_curve_preset(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @BRUSH_OT_reset(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !55 {
  store ptr @.str.105, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.106, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.107, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @brush_reset_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BRUSH_OT_stencil_control(ptr nocapture noundef %0) #0 !PGOFuncName !56 {
  store ptr @.str.119, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.120, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.121, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @stencil_control_invoke, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @stencil_control_modal, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @stencil_control_cancel, ptr %6, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @stencil_control_poll, ptr %7, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.10, ptr noundef nonnull @BRUSH_OT_stencil_control.stencil_control_items, i32 noundef 0, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.110) #12
  %12 = load ptr, ptr %9, align 8, !tbaa !54
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.123, ptr noundef nonnull @BRUSH_OT_stencil_control.stencil_texture_items, i32 noundef 0, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.110) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BRUSH_OT_stencil_fit_image_aspect(ptr nocapture noundef %0) #0 !PGOFuncName !60 {
  store ptr @.str.125, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.126, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.127, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @stencil_fit_image_aspect_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @stencil_control_poll, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.128, i32 noundef 1, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130) #12
  %10 = load ptr, ptr %7, align 8, !tbaa !54
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.131, i32 noundef 1, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133) #12
  %12 = load ptr, ptr %7, align 8, !tbaa !54
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.134, i32 noundef 0, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BRUSH_OT_stencil_reset_transform(ptr nocapture noundef %0) #0 !PGOFuncName !61 {
  store ptr @.str.137, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.138, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.139, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @stencil_reset_transform_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @stencil_control_poll, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.134, i32 noundef 0, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @PAINT_OT_brush_select(ptr nocapture noundef %0) #0 !PGOFuncName !62 {
  store ptr @.str.148, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.149, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.150, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @brush_select_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.151, ptr noundef nonnull @PAINT_OT_brush_select.paint_mode_items, i32 noundef 0, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.110) #12
  %9 = load ptr, ptr %6, align 8, !tbaa !54
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.153, ptr noundef nonnull @brush_sculpt_tool_items, i32 noundef 0, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.110) #12
  %11 = load ptr, ptr %6, align 8, !tbaa !54
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.155, ptr noundef nonnull @brush_vertex_tool_items, i32 noundef 0, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.110) #12
  %13 = load ptr, ptr %6, align 8, !tbaa !54
  %14 = tail call ptr @RNA_def_enum(ptr noundef %13, ptr noundef nonnull @.str.157, ptr noundef nonnull @brush_vertex_tool_items, i32 noundef 0, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.110) #12
  %15 = load ptr, ptr %6, align 8, !tbaa !54
  %16 = tail call ptr @RNA_def_enum(ptr noundef %15, ptr noundef nonnull @.str.159, ptr noundef nonnull @brush_image_tool_items, i32 noundef 0, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.110) #12
  %17 = load ptr, ptr %6, align 8, !tbaa !54
  %18 = tail call ptr @RNA_def_boolean(ptr noundef %17, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.162) #12
  tail call void @RNA_def_property_flag(ptr noundef %18, i32 noundef 268435456) #12
  %19 = load ptr, ptr %6, align 8, !tbaa !54
  %20 = tail call ptr @RNA_def_boolean(ptr noundef %19, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.164) #12
  tail call void @RNA_def_property_flag(ptr noundef %20, i32 noundef 268435456) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BRUSH_OT_uv_sculpt_tool_set(ptr nocapture noundef %0) #0 !PGOFuncName !63 {
  store ptr @.str.165, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.166, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.83, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @brush_uv_sculpt_tool_set_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @uv_sculpt_poll, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.84, ptr noundef nonnull @uv_sculpt_tool_items, i32 noundef 0, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.110) #12
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !64
  ret void
}

; Function Attrs: optsize
declare void @PAINT_OT_texture_paint_toggle(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_image_paint(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_sample_color(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_grab_clone(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_project_image(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_image_from_view(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_brush_colors_flip(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_add_texture_paint_slot(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_delete_texture_paint_slot(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_weight_paint_toggle(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_weight_paint(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_weight_set(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_weight_from_bones(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_weight_gradient(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_weight_sample(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_weight_sample_group(ptr noundef) #2

; Function Attrs: optsize
declare void @SCULPT_OT_uv_sculpt_stroke(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_vert_select_all(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_vert_select_ungrouped(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_vertex_paint_toggle(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_vertex_paint(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @PAINT_OT_vertex_color_set(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !65 {
  store ptr @.str.167, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.168, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_color_set_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_paint_mode_poll, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @PAINT_OT_vertex_color_smooth(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !66 {
  store ptr @.str.169, ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.170, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.171, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_color_smooth_exec, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_paint_mode_poll, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @PAINT_OT_face_select_linked(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_face_select_linked_pick(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_face_select_all(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_face_select_hide(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_face_select_reveal(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_hide_show(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_mask_flood_fill(ptr noundef) #2

; Function Attrs: optsize
declare void @PAINT_OT_mask_lasso_gesture(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_keymap_paint(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0) #12
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 9
  store ptr @paint_curve_poll, ptr %3, align 8, !tbaa !67
  tail call fastcc void @paint_keymap_curve(ptr noundef %2) #13
  %4 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0) #12
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %4, i64 0, i32 9
  store ptr @sculpt_mode_poll, ptr %5, align 8, !tbaa !67
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %6, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %8, ptr noundef nonnull @.str.10, i32 noundef 0) #12
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef 1) #12
  %12 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %13 = getelementptr inbounds %struct.wmKeyMapItem, ptr %12, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %14, ptr noundef nonnull @.str.10, i32 noundef 2) #12
  tail call fastcc void @paint_partial_visibility_keys(ptr noundef %4) #13
  br label %15

15:                                               ; preds = %1, %15
  %16 = phi i32 [ 0, %1 ], [ %21, %15 ]
  %17 = or disjoint i32 %16, 48
  %18 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %17, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %19 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  tail call void @RNA_int_set(ptr noundef %20, ptr noundef nonnull @.str.12, i32 noundef %16) #12
  %21 = add nuw nsw i32 %16, 1
  %22 = icmp eq i32 %21, 6
  br i1 %22, label %23, label %15, !llvm.loop !71

23:                                               ; preds = %15
  %24 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef 109, i32 noundef 1, i32 noundef 4, i32 noundef 0) #12
  %25 = getelementptr inbounds %struct.wmKeyMapItem, ptr %24, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %26, ptr noundef nonnull @.str.10, i32 noundef 0) #12
  %27 = load ptr, ptr %25, align 8, !tbaa !69
  tail call void @RNA_float_set(ptr noundef %27, ptr noundef nonnull @.str.14, float noundef 0.000000e+00) #12
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %29 = getelementptr inbounds %struct.wmKeyMapItem, ptr %28, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %30, ptr noundef nonnull @.str.10, i32 noundef 2) #12
  %31 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef 1, i32 noundef 3, i32 noundef 0) #12
  %32 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.16, i32 noundef 100, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %33 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.17, i32 noundef 100, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %34 = getelementptr inbounds %struct.wmKeyMapItem, ptr %33, i64 0, i32 17
  %35 = load ptr, ptr %34, align 8, !tbaa !69
  tail call fastcc void @set_brush_rc_props(ptr noundef %35, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0) #13
  %36 = load ptr, ptr %34, align 8, !tbaa !69
  tail call void @RNA_string_set(ptr noundef %36, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #12
  %37 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef 168, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %38 = getelementptr inbounds %struct.wmKeyMapItem, ptr %37, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !69
  tail call void @RNA_int_set(ptr noundef %39, ptr noundef nonnull @.str.12, i32 noundef 1) #12
  %40 = load ptr, ptr %38, align 8, !tbaa !69
  tail call void @RNA_boolean_set(ptr noundef %40, ptr noundef nonnull @.str.22, i32 noundef 1) #12
  %41 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef 169, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %42 = getelementptr inbounds %struct.wmKeyMapItem, ptr %41, i64 0, i32 17
  %43 = load ptr, ptr %42, align 8, !tbaa !69
  tail call void @RNA_int_set(ptr noundef %43, ptr noundef nonnull @.str.12, i32 noundef -1) #12
  %44 = load ptr, ptr %42, align 8, !tbaa !69
  tail call void @RNA_boolean_set(ptr noundef %44, ptr noundef nonnull @.str.22, i32 noundef 1) #12
  tail call fastcc void @ed_keymap_paint_brush_switch(ptr noundef %4, ptr noundef nonnull @.str.18) #13
  tail call fastcc void @ed_keymap_paint_brush_size(ptr noundef %4) #13
  tail call fastcc void @ed_keymap_paint_brush_radial_control(ptr noundef %4, ptr noundef nonnull @.str.18, i32 noundef 2) #13
  tail call fastcc void @ed_keymap_stencil(ptr noundef %4) #13
  %45 = tail call fastcc ptr @keymap_brush_select(ptr noundef %4, i32 noundef 1, i32 noundef 120, i32 noundef 0) #13
  %46 = tail call fastcc ptr @keymap_brush_select(ptr noundef %4, i32 noundef 2, i32 noundef 115, i32 noundef 0) #13
  %47 = tail call fastcc ptr @keymap_brush_select(ptr noundef %4, i32 noundef 3, i32 noundef 112, i32 noundef 0) #13
  %48 = tail call fastcc ptr @keymap_brush_select(ptr noundef %4, i32 noundef 4, i32 noundef 105, i32 noundef 0) #13
  %49 = tail call fastcc ptr @keymap_brush_select(ptr noundef %4, i32 noundef 5, i32 noundef 103, i32 noundef 0) #13
  %50 = tail call fastcc ptr @keymap_brush_select(ptr noundef %4, i32 noundef 6, i32 noundef 108, i32 noundef 0) #13
  %51 = tail call fastcc ptr @keymap_brush_select(ptr noundef %4, i32 noundef 7, i32 noundef 116, i32 noundef 1) #13
  %52 = tail call fastcc ptr @keymap_brush_select(ptr noundef %4, i32 noundef 8, i32 noundef 99, i32 noundef 0) #13
  %53 = tail call fastcc ptr @keymap_brush_select(ptr noundef %4, i32 noundef 16, i32 noundef 99, i32 noundef 1) #13
  %54 = tail call fastcc ptr @keymap_brush_select(ptr noundef %4, i32 noundef 13, i32 noundef 107, i32 noundef 0) #13
  %55 = tail call fastcc ptr @keymap_brush_select(ptr noundef %4, i32 noundef 19, i32 noundef 109, i32 noundef 0) #13
  %56 = getelementptr inbounds %struct.wmKeyMapItem, ptr %55, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !69
  tail call void @RNA_boolean_set(ptr noundef %57, ptr noundef nonnull @.str.24, i32 noundef 1) #12
  %58 = load ptr, ptr %56, align 8, !tbaa !69
  tail call void @RNA_boolean_set(ptr noundef %58, ptr noundef nonnull @.str.25, i32 noundef 1) #12
  %59 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.26, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %60 = getelementptr inbounds %struct.wmKeyMapItem, ptr %59, i64 0, i32 17
  %61 = load ptr, ptr %60, align 8, !tbaa !69
  tail call void @RNA_string_set(ptr noundef %61, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #12
  %62 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.29, i32 noundef 115, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %63 = getelementptr inbounds %struct.wmKeyMapItem, ptr %62, i64 0, i32 17
  %64 = load ptr, ptr %63, align 8, !tbaa !69
  tail call void @RNA_string_set(ptr noundef %64, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.30) #12
  %65 = tail call ptr @WM_keymap_add_item(ptr noundef %4, ptr noundef nonnull @.str.26, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %66 = getelementptr inbounds %struct.wmKeyMapItem, ptr %65, i64 0, i32 17
  %67 = load ptr, ptr %66, align 8, !tbaa !69
  tail call void @RNA_string_set(ptr noundef %67, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.31) #12
  %68 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef 0) #12
  %69 = getelementptr inbounds %struct.wmKeyMap, ptr %68, i64 0, i32 9
  store ptr @vertex_paint_mode_poll, ptr %69, align 8, !tbaa !67
  %70 = tail call ptr @WM_keymap_verify_item(ptr noundef %68, ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %71 = tail call ptr @WM_keymap_add_item(ptr noundef %68, ptr noundef nonnull @.str.34, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %72 = tail call ptr @WM_keymap_add_item(ptr noundef %68, ptr noundef nonnull @.str.35, i32 noundef 107, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  tail call fastcc void @ed_keymap_paint_brush_switch(ptr noundef %68, ptr noundef nonnull @.str.36) #13
  tail call fastcc void @ed_keymap_paint_brush_size(ptr noundef %68) #13
  tail call fastcc void @ed_keymap_paint_brush_radial_control(ptr noundef %68, ptr noundef nonnull @.str.36, i32 noundef 3) #13
  tail call fastcc void @ed_keymap_stencil(ptr noundef %68) #13
  %73 = tail call ptr @WM_keymap_add_item(ptr noundef %68, ptr noundef nonnull @.str.29, i32 noundef 109, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %74 = getelementptr inbounds %struct.wmKeyMapItem, ptr %73, i64 0, i32 17
  %75 = load ptr, ptr %74, align 8, !tbaa !69
  tail call void @RNA_string_set(ptr noundef %75, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.38) #12
  %76 = tail call ptr @WM_keymap_add_item(ptr noundef %68, ptr noundef nonnull @.str.29, i32 noundef 115, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %77 = getelementptr inbounds %struct.wmKeyMapItem, ptr %76, i64 0, i32 17
  %78 = load ptr, ptr %77, align 8, !tbaa !69
  tail call void @RNA_string_set(ptr noundef %78, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.39) #12
  %79 = tail call ptr @WM_keymap_add_item(ptr noundef %68, ptr noundef nonnull @.str.26, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %80 = getelementptr inbounds %struct.wmKeyMapItem, ptr %79, i64 0, i32 17
  %81 = load ptr, ptr %80, align 8, !tbaa !69
  tail call void @RNA_string_set(ptr noundef %81, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.40) #12
  %82 = tail call ptr @WM_keymap_add_item(ptr noundef %68, ptr noundef nonnull @.str.26, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %83 = getelementptr inbounds %struct.wmKeyMapItem, ptr %82, i64 0, i32 17
  %84 = load ptr, ptr %83, align 8, !tbaa !69
  tail call void @RNA_string_set(ptr noundef %84, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #12
  %85 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef 0) #12
  %86 = getelementptr inbounds %struct.wmKeyMap, ptr %85, i64 0, i32 9
  store ptr @weight_paint_mode_poll, ptr %86, align 8, !tbaa !67
  %87 = tail call ptr @WM_keymap_verify_item(ptr noundef %85, ptr noundef nonnull @.str.43, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %88 = tail call ptr @WM_keymap_verify_item(ptr noundef %85, ptr noundef nonnull @.str.44, i32 noundef 5, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %89 = tail call ptr @WM_keymap_verify_item(ptr noundef %85, ptr noundef nonnull @.str.45, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %90 = tail call ptr @WM_keymap_add_item(ptr noundef %85, ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef 1, i32 noundef 4, i32 noundef 0) #12
  %91 = getelementptr inbounds %struct.wmKeyMapItem, ptr %90, i64 0, i32 17
  %92 = load ptr, ptr %91, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %92, ptr noundef nonnull @.str.47, i32 noundef 0) #12
  %93 = tail call ptr @WM_keymap_add_item(ptr noundef %85, ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef 1, i32 noundef 6, i32 noundef 0) #12
  %94 = getelementptr inbounds %struct.wmKeyMapItem, ptr %93, i64 0, i32 17
  %95 = load ptr, ptr %94, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %95, ptr noundef nonnull @.str.47, i32 noundef 1) #12
  %96 = tail call ptr @WM_keymap_add_item(ptr noundef %85, ptr noundef nonnull @.str.48, i32 noundef 107, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  tail call fastcc void @ed_keymap_paint_brush_switch(ptr noundef %85, ptr noundef nonnull @.str.49) #13
  tail call fastcc void @ed_keymap_paint_brush_size(ptr noundef %85) #13
  tail call fastcc void @ed_keymap_paint_brush_radial_control(ptr noundef %85, ptr noundef nonnull @.str.49, i32 noundef 8) #13
  tail call fastcc void @ed_keymap_stencil(ptr noundef %85) #13
  %97 = tail call ptr @WM_keymap_add_item(ptr noundef %85, ptr noundef nonnull @.str.26, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %98 = getelementptr inbounds %struct.wmKeyMapItem, ptr %97, i64 0, i32 17
  %99 = load ptr, ptr %98, align 8, !tbaa !69
  tail call void @RNA_string_set(ptr noundef %99, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #12
  %100 = tail call ptr @WM_keymap_add_item(ptr noundef %85, ptr noundef nonnull @.str.29, i32 noundef 109, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %101 = getelementptr inbounds %struct.wmKeyMapItem, ptr %100, i64 0, i32 17
  %102 = load ptr, ptr %101, align 8, !tbaa !69
  tail call void @RNA_string_set(ptr noundef %102, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.51) #12
  %103 = tail call ptr @WM_keymap_add_item(ptr noundef %85, ptr noundef nonnull @.str.29, i32 noundef 118, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %104 = getelementptr inbounds %struct.wmKeyMapItem, ptr %103, i64 0, i32 17
  %105 = load ptr, ptr %104, align 8, !tbaa !69
  tail call void @RNA_string_set(ptr noundef %105, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.52) #12
  %106 = tail call ptr @WM_keymap_add_item(ptr noundef %85, ptr noundef nonnull @.str.29, i32 noundef 115, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %107 = getelementptr inbounds %struct.wmKeyMapItem, ptr %106, i64 0, i32 17
  %108 = load ptr, ptr %107, align 8, !tbaa !69
  tail call void @RNA_string_set(ptr noundef %108, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.53) #12
  %109 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef 0, i32 noundef 0) #12
  %110 = getelementptr inbounds %struct.wmKeyMap, ptr %109, i64 0, i32 9
  store ptr @vert_paint_poll, ptr %110, align 8, !tbaa !67
  %111 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.55, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %112 = getelementptr inbounds %struct.wmKeyMapItem, ptr %111, i64 0, i32 17
  %113 = load ptr, ptr %112, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %113, ptr noundef nonnull @.str.56, i32 noundef 0) #12
  %114 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.55, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %115 = getelementptr inbounds %struct.wmKeyMapItem, ptr %114, i64 0, i32 17
  %116 = load ptr, ptr %115, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %116, ptr noundef nonnull @.str.56, i32 noundef 3) #12
  %117 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.57, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %118 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.58, i32 noundef 20486, i32 noundef -1, i32 noundef 2, i32 noundef 0) #12
  %119 = getelementptr inbounds %struct.wmKeyMapItem, ptr %118, i64 0, i32 17
  %120 = load ptr, ptr %119, align 8, !tbaa !69
  tail call void @RNA_boolean_set(ptr noundef %120, ptr noundef nonnull @.str.59, i32 noundef 0) #12
  %121 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.58, i32 noundef 20486, i32 noundef -1, i32 noundef 3, i32 noundef 0) #12
  %122 = getelementptr inbounds %struct.wmKeyMapItem, ptr %121, i64 0, i32 17
  %123 = load ptr, ptr %122, align 8, !tbaa !69
  tail call void @RNA_boolean_set(ptr noundef %123, ptr noundef nonnull @.str.59, i32 noundef 1) #12
  %124 = tail call ptr @WM_keymap_add_item(ptr noundef %109, ptr noundef nonnull @.str.60, i32 noundef 99, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %125 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef 0, i32 noundef 0) #12
  %126 = getelementptr inbounds %struct.wmKeyMap, ptr %125, i64 0, i32 9
  store ptr @image_texture_paint_poll, ptr %126, align 8, !tbaa !67
  %127 = tail call ptr @WM_keymap_add_item(ptr noundef %125, ptr noundef nonnull @.str.62, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %128 = getelementptr inbounds %struct.wmKeyMapItem, ptr %127, i64 0, i32 17
  %129 = load ptr, ptr %128, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %129, ptr noundef nonnull @.str.10, i32 noundef 0) #12
  %130 = tail call ptr @WM_keymap_add_item(ptr noundef %125, ptr noundef nonnull @.str.62, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %131 = getelementptr inbounds %struct.wmKeyMapItem, ptr %130, i64 0, i32 17
  %132 = load ptr, ptr %131, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %132, ptr noundef nonnull @.str.10, i32 noundef 1) #12
  %133 = tail call ptr @WM_keymap_add_item(ptr noundef %125, ptr noundef nonnull @.str.63, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %134 = tail call ptr @WM_keymap_add_item(ptr noundef %125, ptr noundef nonnull @.str.64, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %135 = tail call ptr @WM_keymap_add_item(ptr noundef %125, ptr noundef nonnull @.str.34, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  tail call fastcc void @ed_keymap_paint_brush_switch(ptr noundef %125, ptr noundef nonnull @.str.65) #13
  tail call fastcc void @ed_keymap_paint_brush_size(ptr noundef %125) #13
  tail call fastcc void @ed_keymap_paint_brush_radial_control(ptr noundef %125, ptr noundef nonnull @.str.65, i32 noundef 23) #13
  tail call fastcc void @ed_keymap_stencil(ptr noundef %125) #13
  %136 = tail call ptr @WM_keymap_add_item(ptr noundef %125, ptr noundef nonnull @.str.29, i32 noundef 109, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %137 = getelementptr inbounds %struct.wmKeyMapItem, ptr %136, i64 0, i32 17
  %138 = load ptr, ptr %137, align 8, !tbaa !69
  tail call void @RNA_string_set(ptr noundef %138, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.67) #12
  %139 = tail call ptr @WM_keymap_add_item(ptr noundef %125, ptr noundef nonnull @.str.29, i32 noundef 115, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %140 = getelementptr inbounds %struct.wmKeyMapItem, ptr %139, i64 0, i32 17
  %141 = load ptr, ptr %140, align 8, !tbaa !69
  tail call void @RNA_string_set(ptr noundef %141, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.68) #12
  %142 = tail call ptr @WM_keymap_add_item(ptr noundef %125, ptr noundef nonnull @.str.26, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %143 = getelementptr inbounds %struct.wmKeyMapItem, ptr %142, i64 0, i32 17
  %144 = load ptr, ptr %143, align 8, !tbaa !69
  tail call void @RNA_string_set(ptr noundef %144, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.69) #12
  %145 = tail call ptr @WM_keymap_add_item(ptr noundef %125, ptr noundef nonnull @.str.26, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %146 = getelementptr inbounds %struct.wmKeyMapItem, ptr %145, i64 0, i32 17
  %147 = load ptr, ptr %146, align 8, !tbaa !69
  tail call void @RNA_string_set(ptr noundef %147, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.70) #12
  %148 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.71, i32 noundef 0, i32 noundef 0) #12
  %149 = getelementptr inbounds %struct.wmKeyMap, ptr %148, i64 0, i32 9
  store ptr @facemask_paint_poll, ptr %149, align 8, !tbaa !67
  %150 = tail call ptr @WM_keymap_add_item(ptr noundef %148, ptr noundef nonnull @.str.72, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %151 = getelementptr inbounds %struct.wmKeyMapItem, ptr %150, i64 0, i32 17
  %152 = load ptr, ptr %151, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %152, ptr noundef nonnull @.str.56, i32 noundef 0) #12
  %153 = tail call ptr @WM_keymap_add_item(ptr noundef %148, ptr noundef nonnull @.str.72, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %154 = getelementptr inbounds %struct.wmKeyMapItem, ptr %153, i64 0, i32 17
  %155 = load ptr, ptr %154, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %155, ptr noundef nonnull @.str.56, i32 noundef 3) #12
  %156 = tail call ptr @WM_keymap_add_item(ptr noundef %148, ptr noundef nonnull @.str.73, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %157 = getelementptr inbounds %struct.wmKeyMapItem, ptr %156, i64 0, i32 17
  %158 = load ptr, ptr %157, align 8, !tbaa !69
  tail call void @RNA_boolean_set(ptr noundef %158, ptr noundef nonnull @.str.74, i32 noundef 0) #12
  %159 = tail call ptr @WM_keymap_add_item(ptr noundef %148, ptr noundef nonnull @.str.73, i32 noundef 104, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %160 = getelementptr inbounds %struct.wmKeyMapItem, ptr %159, i64 0, i32 17
  %161 = load ptr, ptr %160, align 8, !tbaa !69
  tail call void @RNA_boolean_set(ptr noundef %161, ptr noundef nonnull @.str.74, i32 noundef 1) #12
  %162 = tail call ptr @WM_keymap_add_item(ptr noundef %148, ptr noundef nonnull @.str.75, i32 noundef 104, i32 noundef 1, i32 noundef 4, i32 noundef 0) #12
  %163 = tail call ptr @WM_keymap_add_item(ptr noundef %148, ptr noundef nonnull @.str.76, i32 noundef 108, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %164 = tail call ptr @WM_keymap_add_item(ptr noundef %148, ptr noundef nonnull @.str.77, i32 noundef 108, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %165 = getelementptr inbounds %struct.wmKeyMapItem, ptr %164, i64 0, i32 17
  %166 = load ptr, ptr %165, align 8, !tbaa !69
  tail call void @RNA_boolean_set(ptr noundef %166, ptr noundef nonnull @.str.59, i32 noundef 0) #12
  %167 = tail call ptr @WM_keymap_add_item(ptr noundef %148, ptr noundef nonnull @.str.77, i32 noundef 108, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %168 = getelementptr inbounds %struct.wmKeyMapItem, ptr %167, i64 0, i32 17
  %169 = load ptr, ptr %168, align 8, !tbaa !69
  tail call void @RNA_boolean_set(ptr noundef %169, ptr noundef nonnull @.str.59, i32 noundef 1) #12
  %170 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.78, i32 noundef 0, i32 noundef 0) #12
  %171 = getelementptr inbounds %struct.wmKeyMap, ptr %170, i64 0, i32 9
  store ptr @uv_sculpt_poll, ptr %171, align 8, !tbaa !67
  %172 = tail call ptr @WM_keymap_add_item(ptr noundef %170, ptr noundef nonnull @.str.29, i32 noundef 113, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %173 = getelementptr inbounds %struct.wmKeyMapItem, ptr %172, i64 0, i32 17
  %174 = load ptr, ptr %173, align 8, !tbaa !69
  tail call void @RNA_string_set(ptr noundef %174, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.79) #12
  %175 = tail call ptr @WM_keymap_add_item(ptr noundef %170, ptr noundef nonnull @.str.80, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %176 = getelementptr inbounds %struct.wmKeyMapItem, ptr %175, i64 0, i32 17
  %177 = load ptr, ptr %176, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %177, ptr noundef nonnull @.str.10, i32 noundef 0) #12
  %178 = tail call ptr @WM_keymap_add_item(ptr noundef %170, ptr noundef nonnull @.str.80, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %179 = getelementptr inbounds %struct.wmKeyMapItem, ptr %178, i64 0, i32 17
  %180 = load ptr, ptr %179, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %180, ptr noundef nonnull @.str.10, i32 noundef 1) #12
  %181 = tail call ptr @WM_keymap_add_item(ptr noundef %170, ptr noundef nonnull @.str.80, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %182 = getelementptr inbounds %struct.wmKeyMapItem, ptr %181, i64 0, i32 17
  %183 = load ptr, ptr %182, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %183, ptr noundef nonnull @.str.10, i32 noundef 2) #12
  tail call fastcc void @ed_keymap_paint_brush_size(ptr noundef %170) #13
  tail call fastcc void @ed_keymap_paint_brush_radial_control(ptr noundef %170, ptr noundef nonnull @.str.82, i32 noundef 0) #13
  %184 = tail call ptr @WM_keymap_add_item(ptr noundef %170, ptr noundef nonnull @.str.83, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %185 = getelementptr inbounds %struct.wmKeyMapItem, ptr %184, i64 0, i32 17
  %186 = load ptr, ptr %185, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %186, ptr noundef nonnull @.str.84, i32 noundef 2) #12
  %187 = tail call ptr @WM_keymap_add_item(ptr noundef %170, ptr noundef nonnull @.str.83, i32 noundef 112, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %188 = getelementptr inbounds %struct.wmKeyMapItem, ptr %187, i64 0, i32 17
  %189 = load ptr, ptr %188, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %189, ptr noundef nonnull @.str.84, i32 noundef 1) #12
  %190 = tail call ptr @WM_keymap_add_item(ptr noundef %170, ptr noundef nonnull @.str.83, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %191 = getelementptr inbounds %struct.wmKeyMapItem, ptr %190, i64 0, i32 17
  %192 = load ptr, ptr %191, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %192, ptr noundef nonnull @.str.84, i32 noundef 3) #12
  %193 = tail call ptr @paint_stroke_modal_keymap(ptr noundef %0) #12
  tail call void @WM_modalkeymap_assign(ptr noundef %193, ptr noundef nonnull @.str.9) #12
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @paint_curve_poll(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_keymap_curve(ptr noundef %0) unnamed_addr #0 !PGOFuncName !73 {
  %2 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 5, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.172, i32 noundef 6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.172, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %5 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  tail call void @RNA_boolean_set(ptr noundef %6, ptr noundef nonnull @.str.173, i32 noundef 1) #12
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %8 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %9 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  tail call void @RNA_boolean_set(ptr noundef %10, ptr noundef nonnull @.str.5, i32 noundef 1) #12
  %11 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.172, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %12 = getelementptr inbounds %struct.wmKeyMapItem, ptr %11, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  tail call void @RNA_boolean_set(ptr noundef %13, ptr noundef nonnull @.str.24, i32 noundef 1) #12
  %14 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.174, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %15 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.175, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %16 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.176, i32 noundef 220, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %17 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.176, i32 noundef 163, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %18 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.177, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %19 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.177, i32 noundef 20487, i32 noundef -1, i32 noundef 0, i32 noundef 0) #12
  %20 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.178, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.179, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  ret void
}

; Function Attrs: optsize
declare i32 @sculpt_mode_poll(ptr noundef) #2

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_partial_visibility_keys(ptr noundef %0) unnamed_addr #0 !PGOFuncName !74 {
  %2 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.180, i32 noundef 104, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %3 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %4, ptr noundef nonnull @.str.56, i32 noundef 1) #12
  %5 = load ptr, ptr %3, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %5, ptr noundef nonnull @.str.181, i32 noundef 0) #12
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.180, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %6, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %8, ptr noundef nonnull @.str.56, i32 noundef 0) #12
  %9 = load ptr, ptr %7, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %9, ptr noundef nonnull @.str.181, i32 noundef 0) #12
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.180, i32 noundef 104, i32 noundef 1, i32 noundef 4, i32 noundef 0) #12
  %11 = getelementptr inbounds %struct.wmKeyMapItem, ptr %10, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %12, ptr noundef nonnull @.str.56, i32 noundef 1) #12
  %13 = load ptr, ptr %11, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %13, ptr noundef nonnull @.str.181, i32 noundef 2) #12
  ret void
}

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_brush_rc_props(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !75 {
  %6 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.183, ptr noundef %1) #12
  tail call fastcc void @set_brush_rc_path(ptr noundef %0, ptr noundef %6, ptr noundef nonnull @.str.20, ptr noundef %2) #13
  %7 = icmp eq ptr %3, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call fastcc void @set_brush_rc_path(ptr noundef %0, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.184, ptr noundef nonnull %3) #13
  tail call fastcc void @set_brush_rc_path(ptr noundef %0, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.185, ptr noundef %2) #13
  br label %10

9:                                                ; preds = %5
  tail call void @RNA_string_set(ptr noundef %0, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.110) #12
  tail call void @RNA_string_set(ptr noundef %0, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.110) #12
  br label %10

10:                                               ; preds = %9, %8
  tail call fastcc void @set_brush_rc_path(ptr noundef %0, ptr noundef %6, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187) #13
  %11 = and i32 %4, 16
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, ptr @.str.190, ptr @.str.189
  tail call fastcc void @set_brush_rc_path(ptr noundef %0, ptr noundef %6, ptr noundef nonnull @.str.188, ptr noundef nonnull %13) #13
  tail call void @RNA_string_set(ptr noundef %0, ptr noundef nonnull @.str.191, ptr noundef %6) #12
  %14 = and i32 %4, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call fastcc void @set_brush_rc_path(ptr noundef %0, ptr noundef %6, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.193) #13
  br label %18

17:                                               ; preds = %10
  tail call void @RNA_string_set(ptr noundef %0, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.110) #12
  br label %18

18:                                               ; preds = %17, %16
  %19 = and i32 %4, 4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @.str.110, ptr @.str.195
  tail call void @RNA_string_set(ptr noundef %0, ptr noundef nonnull @.str.194, ptr noundef nonnull %21) #12
  %22 = lshr exact i32 %11, 4
  tail call void @RNA_boolean_set(ptr noundef %0, ptr noundef nonnull @.str.196, i32 noundef %22) #12
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %23(ptr noundef %6) #12
  ret void
}

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ed_keymap_paint_brush_switch(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !77 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i32 [ 0, %2 ], [ %5, %3 ]
  %5 = add nuw nsw i32 %4, 1
  %6 = trunc i32 %5 to i8
  %7 = urem i8 %6, 10
  %8 = or disjoint i8 %7, 48
  %9 = zext nneg i8 %8 to i32
  %10 = icmp ugt i32 %4, 9
  %11 = zext i1 %10 to i32
  %12 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.198, i32 noundef %9, i32 noundef 1, i32 noundef %11, i32 noundef 0) #12
  %13 = getelementptr inbounds %struct.wmKeyMapItem, ptr %12, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  tail call void @RNA_string_set(ptr noundef %14, ptr noundef nonnull @.str.10, ptr noundef %1) #12
  %15 = load ptr, ptr %13, align 8, !tbaa !69
  tail call void @RNA_int_set(ptr noundef %15, ptr noundef nonnull @.str.199, i32 noundef %4) #12
  %16 = icmp eq i32 %5, 20
  br i1 %16, label %17, label %3, !llvm.loop !78

17:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ed_keymap_paint_brush_size(ptr noundef %0) unnamed_addr #0 !PGOFuncName !79 {
  %2 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.101, i32 noundef 235, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %3 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  tail call void @RNA_float_set(ptr noundef %4, ptr noundef nonnull @.str.102, float noundef 0x3FECCCCCC0000000) #12
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.101, i32 noundef 236, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %5, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  tail call void @RNA_float_set(ptr noundef %7, ptr noundef nonnull @.str.102, float noundef 0x3FF1C71C80000000) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ed_keymap_paint_brush_radial_control(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !80 {
  %4 = and i32 %2, -5
  %5 = and i32 %2, -21
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 102, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %6, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  tail call fastcc void @set_brush_rc_props(ptr noundef %8, ptr noundef %1, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.201, i32 noundef %2) #13
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 102, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  tail call fastcc void @set_brush_rc_props(ptr noundef %11, ptr noundef %1, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.203, i32 noundef %4) #13
  %12 = and i32 %2, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 119, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %16 = getelementptr inbounds %struct.wmKeyMapItem, ptr %15, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  tail call fastcc void @set_brush_rc_props(ptr noundef %17, ptr noundef %1, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.205, i32 noundef %4) #13
  br label %18

18:                                               ; preds = %14, %3
  %19 = and i32 %2, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 102, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %23 = getelementptr inbounds %struct.wmKeyMapItem, ptr %22, i64 0, i32 17
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  tail call fastcc void @set_brush_rc_props(ptr noundef %24, ptr noundef %1, ptr noundef nonnull @.str.190, ptr noundef null, i32 noundef %5) #13
  br label %25

25:                                               ; preds = %21, %18
  %26 = and i32 %2, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef 102, i32 noundef 1, i32 noundef 6, i32 noundef 0) #12
  %30 = getelementptr inbounds %struct.wmKeyMapItem, ptr %29, i64 0, i32 17
  %31 = load ptr, ptr %30, align 8, !tbaa !69
  tail call fastcc void @set_brush_rc_props(ptr noundef %31, ptr noundef %1, ptr noundef nonnull @.str.189, ptr noundef null, i32 noundef %4) #13
  br label %32

32:                                               ; preds = %28, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ed_keymap_stencil(ptr noundef %0) unnamed_addr #0 !PGOFuncName !81 {
  %2 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.121, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  %3 = getelementptr inbounds %struct.wmKeyMapItem, ptr %2, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef 0) #12
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.121, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %5, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef 1) #12
  %8 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.121, i32 noundef 3, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %9 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %10, ptr noundef nonnull @.str.10, i32 noundef 2) #12
  %11 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.121, i32 noundef 3, i32 noundef 1, i32 noundef 4, i32 noundef 0) #12
  %12 = getelementptr inbounds %struct.wmKeyMapItem, ptr %11, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef 0) #12
  %14 = load ptr, ptr %12, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %14, ptr noundef nonnull @.str.123, i32 noundef 1) #12
  %15 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.121, i32 noundef 3, i32 noundef 1, i32 noundef 5, i32 noundef 0) #12
  %16 = getelementptr inbounds %struct.wmKeyMapItem, ptr %15, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %17, ptr noundef nonnull @.str.123, i32 noundef 1) #12
  %18 = load ptr, ptr %16, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %18, ptr noundef nonnull @.str.10, i32 noundef 1) #12
  %19 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.121, i32 noundef 3, i32 noundef 1, i32 noundef 6, i32 noundef 0) #12
  %20 = getelementptr inbounds %struct.wmKeyMapItem, ptr %19, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %21, ptr noundef nonnull @.str.123, i32 noundef 1) #12
  %22 = load ptr, ptr %20, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef 2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @keymap_brush_select(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !82 {
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %0, ptr noundef nonnull @.str.150, i32 noundef %2, i32 noundef 1, i32 noundef %3, i32 noundef 0) #12
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %5, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %7, ptr noundef nonnull @.str.151, i32 noundef 2) #12
  %8 = load ptr, ptr %6, align 8, !tbaa !69
  tail call void @RNA_enum_set(ptr noundef %8, ptr noundef nonnull @.str.153, i32 noundef %1) #12
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @vertex_paint_mode_poll(ptr noundef) #2

; Function Attrs: optsize
declare ptr @WM_keymap_verify_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @weight_paint_mode_poll(ptr noundef) #2

; Function Attrs: optsize
declare i32 @vert_paint_poll(ptr noundef) #2

; Function Attrs: optsize
declare i32 @image_texture_paint_poll(ptr noundef) #2

; Function Attrs: optsize
declare i32 @facemask_paint_poll(ptr noundef) #2

; Function Attrs: optsize
declare i32 @uv_sculpt_poll(ptr noundef) #2

; Function Attrs: optsize
declare ptr @paint_stroke_modal_keymap(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_modalkeymap_assign(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @palette_new_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !83 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #12
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %5 = tail call ptr @BKE_palette_add(ptr noundef %4, ptr noundef nonnull @.str.88) #12
  tail call void @BKE_paint_palette_set(ptr noundef %3, ptr noundef %5) #12
  ret i32 4
}

; Function Attrs: optsize
declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_palette_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_paint_palette_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @palette_color_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !84 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %4 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #12
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.Paint, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  %9 = tail call ptr @BKE_palette_color_add(ptr noundef %8) #12
  switch i32 %6, label %20 [
    i32 4, label %10
    i32 3, label %10
    i32 1, label %10
    i32 2, label %13
  ]

10:                                               ; preds = %2, %2, %2
  %11 = getelementptr inbounds %struct.PaletteColor, ptr %9, i64 0, i32 2
  %12 = tail call ptr @BKE_brush_color_get(ptr noundef %3, ptr noundef %5) #12
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef %12) #13
  br label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.PaletteColor, ptr %9, i64 0, i32 2
  tail call fastcc void @zero_v3(ptr noundef nonnull %14) #13
  %15 = getelementptr inbounds %struct.Brush, ptr %5, i64 0, i32 14
  %16 = load float, ptr %15, align 8, !tbaa !89
  br label %17

17:                                               ; preds = %10, %13
  %18 = phi float [ %16, %13 ], [ 0.000000e+00, %10 ]
  %19 = getelementptr inbounds %struct.PaletteColor, ptr %9, i64 0, i32 3
  store float %18, ptr %19, align 4, !tbaa !95
  br label %20

20:                                               ; preds = %17, %2
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @palette_poll(ptr noundef %0) #0 !PGOFuncName !97 {
  %2 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Paint, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %1
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi i32 [ 0, %8 ], [ 1, %4 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_paintmode_get_active_from_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_palette_color_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !98 {
  %3 = load float, ptr %1, align 4, !tbaa !99
  store float %3, ptr %0, align 4, !tbaa !99
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !99
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !99
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !99
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !99
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_brush_color_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !100 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !99
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !99
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @palette_color_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !101 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.Paint, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.Palette, ptr %5, i64 0, i32 1
  %7 = getelementptr inbounds %struct.Palette, ptr %5, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !102
  %9 = tail call ptr @BLI_findlink(ptr noundef nonnull %6, i32 noundef %8) #12
  tail call void @BKE_palette_color_remove(ptr noundef %5, ptr noundef %9) #12
  ret i32 4
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_palette_color_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @brush_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !104 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #12
  %4 = tail call ptr @BKE_paint_brush(ptr noundef %3) #12
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %6 = icmp eq ptr %4, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @BKE_brush_copy(ptr noundef nonnull %4) #12
  br label %11

9:                                                ; preds = %2
  %10 = tail call ptr @BKE_brush_add(ptr noundef %5, ptr noundef nonnull @.str.98) #12
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %8, %7 ], [ %10, %9 ]
  tail call void @BKE_paint_brush_set(ptr noundef %3, ptr noundef %12) #12
  ret i32 4
}

; Function Attrs: optsize
declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_brush_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_brush_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_paint_brush_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @brush_scale_size_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !105 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %4 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #12
  %5 = tail call ptr @BKE_paint_brush(ptr noundef %4) #12
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.102) #12
  %9 = icmp eq ptr %5, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @BKE_brush_size_get(ptr noundef %3, ptr noundef nonnull %5) #12
  %12 = sitofp i32 %11 to float
  %13 = fmul float %8, %12
  %14 = fptosi float %13 to i32
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = fcmp ogt float %8, 1.000000e+00
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = add nsw i32 %11, 1
  br label %24

20:                                               ; preds = %16
  %21 = fcmp olt float %8, 1.000000e+00
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = add nsw i32 %11, -1
  br label %24

24:                                               ; preds = %18, %22, %20, %10
  %25 = phi i32 [ %19, %18 ], [ %23, %22 ], [ %11, %20 ], [ %14, %10 ]
  %26 = tail call i32 @llvm.smin.i32(i32 %25, i32 2000)
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 1)
  tail call void @BKE_brush_size_set(ptr noundef %3, ptr noundef nonnull %5, i32 noundef %27) #12
  %28 = tail call float @BKE_brush_unprojected_radius_get(ptr noundef %3, ptr noundef nonnull %5) #12
  %29 = fmul float %8, %28
  %30 = fcmp olt float %29, 0x3F50624DE0000000
  %31 = select i1 %30, float 0x3F50624DE0000000, float %29
  tail call void @BKE_brush_unprojected_radius_set(ptr noundef %3, ptr noundef nonnull %5, float noundef %31) #12
  br label %32

32:                                               ; preds = %24, %2
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_brush_size_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_brush_size_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_brush_unprojected_radius_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_brush_unprojected_radius_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @brush_reset_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !108 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #12
  %4 = tail call ptr @BKE_paint_brush(ptr noundef %3) #12
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #12
  %6 = icmp ne ptr %5, null
  %7 = icmp ne ptr %4, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %11 = load i32, ptr %10, align 8, !tbaa !109
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @BKE_brush_sculpt_reset(ptr noundef nonnull %4) #12
  br label %15

15:                                               ; preds = %9, %14, %2
  %16 = phi i32 [ 2, %2 ], [ 4, %14 ], [ 4, %9 ]
  ret i32 %16
}

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_brush_sculpt_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @stencil_control_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !113 {
  %4 = alloca [2 x float], align 8
  %5 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #12
  %6 = tail call ptr @BKE_paint_brush(ptr noundef %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %8 = load <2 x i32>, ptr %7, align 4, !tbaa !114
  %9 = sitofp <2 x i32> %8 to <2 x float>
  store <2 x float> %9, ptr %4, align 8, !tbaa !99
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.123) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 4, i32 20
  %17 = load i8, ptr %16, align 4, !tbaa !115
  %18 = icmp eq i8 %17, 5
  br i1 %18, label %23, label %40

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 3, i32 20
  %21 = load i8, ptr %20, align 4, !tbaa !116
  %22 = icmp eq i8 %21, 5
  br i1 %22, label %23, label %40

23:                                               ; preds = %19, %15
  %24 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !76
  %25 = tail call ptr %24(i64 noundef 96, ptr noundef nonnull @.str.124) #12
  %26 = getelementptr inbounds %struct.StencilControlData, ptr %25, i64 0, i32 9
  store i32 %13, ptr %26, align 4, !tbaa !117
  %27 = getelementptr inbounds %struct.StencilControlData, ptr %25, i64 0, i32 10
  store ptr %6, ptr %27, align 8, !tbaa !119
  call fastcc void @copy_v2_v2(ptr noundef %25, ptr noundef nonnull %4) #13
  tail call fastcc void @stencil_set_target(ptr noundef %25) #13
  %28 = load ptr, ptr %11, align 8, !tbaa !106
  %29 = tail call i32 @RNA_enum_get(ptr noundef %28, ptr noundef nonnull @.str.10) #12
  %30 = getelementptr inbounds %struct.StencilControlData, ptr %25, i64 0, i32 7
  store i32 %29, ptr %30, align 4, !tbaa !120
  %31 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %32 = load i16, ptr %31, align 8, !tbaa !121
  %33 = getelementptr inbounds %struct.StencilControlData, ptr %25, i64 0, i32 14
  store i16 %32, ptr %33, align 8, !tbaa !124
  %34 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 5
  %35 = getelementptr inbounds %struct.StencilControlData, ptr %25, i64 0, i32 6
  %36 = load <2 x i16>, ptr %34, align 8, !tbaa !125
  %37 = sitofp <2 x i16> %36 to <2 x float>
  store <2 x float> %37, ptr %35, align 4, !tbaa !99
  %38 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %25, ptr %38, align 8, !tbaa !126
  %39 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #12
  br label %40

40:                                               ; preds = %19, %15, %23
  %41 = phi i32 [ 1, %23 ], [ 2, %15 ], [ 2, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @stencil_control_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !127 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !126
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !121
  %8 = getelementptr inbounds %struct.StencilControlData, ptr %5, i64 0, i32 14
  %9 = load i16, ptr %8, align 8, !tbaa !124
  %10 = icmp eq i16 %7, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %13 = load i16, ptr %12, align 2, !tbaa !128
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %16(ptr noundef nonnull %5) #12
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #12
  br label %45

17:                                               ; preds = %11, %3
  switch i16 %7, label %43 [
    i16 4, label %41
    i16 218, label %18
    i16 120, label %23
    i16 121, label %32
  ]

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %20 = load i16, ptr %19, align 2, !tbaa !128
  %21 = icmp eq i16 %20, 1
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  tail call void @stencil_control_cancel(ptr poison, ptr noundef nonnull %1) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #12
  br label %45

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %25 = load i16, ptr %24, align 2, !tbaa !128
  %26 = icmp eq i16 %25, 1
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.StencilControlData, ptr %5, i64 0, i32 8
  %29 = load i32, ptr %28, align 8, !tbaa !129
  %30 = icmp ne i32 %29, 1
  %31 = zext i1 %30 to i32
  store i32 %31, ptr %28, align 8, !tbaa !129
  br label %41

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !128
  %35 = icmp eq i16 %34, 1
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.StencilControlData, ptr %5, i64 0, i32 8
  %38 = load i32, ptr %37, align 8, !tbaa !129
  %39 = icmp eq i32 %38, 2
  %40 = select i1 %39, i32 0, i32 2
  store i32 %40, ptr %37, align 8, !tbaa !129
  br label %41

41:                                               ; preds = %17, %27, %36
  %42 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call fastcc void @stencil_control_calculate(ptr noundef nonnull %5, ptr noundef nonnull %42) #13
  br label %43

43:                                               ; preds = %41, %17, %32, %23, %18
  %44 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  tail call void @ED_region_tag_redraw(ptr noundef %44) #12
  br label %45

45:                                               ; preds = %43, %22, %15
  %46 = phi i32 [ 4, %15 ], [ 1, %43 ], [ 2, %22 ]
  ret i32 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @stencil_control_cancel(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !130 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !126
  tail call fastcc void @stencil_restore(ptr noundef %4) #13
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  %6 = load ptr, ptr %3, align 8, !tbaa !126
  tail call void %5(ptr noundef %6) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @stencil_control_poll(ptr noundef %0) #0 !PGOFuncName !131 {
  %2 = tail call i32 @BKE_paintmode_get_active_from_context(ptr noundef %0) #12
  %3 = tail call zeroext i8 @paint_supports_texture(i32 noundef %2) #12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #12
  %7 = tail call ptr @BKE_paint_brush(ptr noundef %6) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 3, i32 20
  %11 = load i8, ptr %10, align 4, !tbaa !116
  %12 = icmp eq i8 %11, 5
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 4, i32 20
  %15 = load i8, ptr %14, align 4, !tbaa !115
  %16 = icmp eq i8 %15, 5
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %5, %13, %9, %1
  %19 = phi i32 [ 0, %1 ], [ 0, %5 ], [ 1, %9 ], [ %17, %13 ]
  ret i32 %19
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !132 {
  %3 = load float, ptr %1, align 4, !tbaa !99
  store float %3, ptr %0, align 4, !tbaa !99
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !99
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @stencil_set_target(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !133 {
  %2 = alloca [2 x float], align 4
  %3 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %5 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 4, !tbaa !117
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 1
  br i1 %7, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 56
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %8, ptr noundef nonnull %11) #13
  %12 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 55
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %9, ptr noundef nonnull %12) #13
  %13 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 4, i32 13
  br label %18

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 54
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %8, ptr noundef nonnull %15) #13
  %16 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 53
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %9, ptr noundef nonnull %16) #13
  %17 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 3, i32 13
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi ptr [ %17, %14 ], [ %13, %10 ]
  %20 = phi ptr [ %15, %14 ], [ %11, %10 ]
  %21 = phi ptr [ %16, %14 ], [ %12, %10 ]
  %22 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 13
  %23 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 12
  %24 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 11
  %25 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 3
  %26 = load float, ptr %19, align 4, !tbaa !99
  store float %26, ptr %25, align 8, !tbaa !134
  store ptr %20, ptr %24, align 8, !tbaa !135
  store ptr %19, ptr %23, align 8, !tbaa !136
  store ptr %21, ptr %22, align 8, !tbaa !137
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %21) #13
  %27 = call fastcc float @len_v2(ptr noundef nonnull %2) #13
  %28 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 5
  store float %27, ptr %28, align 8, !tbaa !138
  %29 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !99
  %31 = load float, ptr %2, align 4, !tbaa !99
  %32 = tail call float @atan2f(float noundef %30, float noundef %31) #12
  %33 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 4
  store float %32, ptr %33, align 4, !tbaa !139
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !140 {
  %4 = load float, ptr %1, align 4, !tbaa !99
  %5 = load float, ptr %2, align 4, !tbaa !99
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !99
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !99
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !99
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !141 {
  %2 = load float, ptr %0, align 4, !tbaa !99
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !99
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @stencil_control_calculate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !142 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = load <2 x i32>, ptr %1, align 4, !tbaa !114
  %6 = sitofp <2 x i32> %5 to <2 x float>
  store <2 x float> %6, ptr %4, align 8, !tbaa !99
  %7 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !120
  switch i32 %8, label %105 [
    i32 0, label %9
    i32 1, label %43
    i32 2, label %84
  ]

9:                                                ; preds = %2
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %0) #13
  %10 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !137
  %12 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 1
  call fastcc void @add_v2_v2v2(ptr noundef %11, ptr noundef nonnull %12, ptr noundef nonnull %3) #13
  %13 = load ptr, ptr %10, align 8, !tbaa !137
  %14 = load float, ptr %13, align 4, !tbaa !99
  %15 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !135
  %17 = load float, ptr %16, align 4, !tbaa !99
  %18 = fsub float 5.000000e+00, %17
  %19 = fcmp olt float %14, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 6
  %22 = load float, ptr %21, align 4, !tbaa !99
  %23 = fadd float %17, %22
  %24 = fadd float %23, -5.000000e+00
  %25 = fcmp ogt float %14, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %9
  %27 = phi float [ %18, %9 ], [ %24, %20 ]
  store float %27, ptr %13, align 4, !tbaa !99
  br label %28

28:                                               ; preds = %26, %20
  %29 = getelementptr inbounds float, ptr %13, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !99
  %31 = getelementptr inbounds float, ptr %16, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !99
  %33 = fsub float 5.000000e+00, %32
  %34 = fcmp olt float %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store float %33, ptr %29, align 4, !tbaa !99
  br label %105

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 6, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !99
  %39 = fadd float %32, %38
  %40 = fadd float %39, -5.000000e+00
  %41 = fcmp ogt float %30, %40
  br i1 %41, label %42, label %105

42:                                               ; preds = %36
  store float %40, ptr %29, align 4, !tbaa !99
  br label %105

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 13
  %45 = load ptr, ptr %44, align 8, !tbaa !137
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %45) #13
  %46 = call fastcc float @len_v2(ptr noundef nonnull %3) #13
  %47 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 5
  %48 = load float, ptr %47, align 8, !tbaa !138
  %49 = fdiv float %46, %48
  %50 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %3, ptr noundef nonnull %50) #13
  %51 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 8
  %52 = load i32, ptr %51, align 8, !tbaa !129
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load float, ptr %3, align 4, !tbaa !99
  br label %60

56:                                               ; preds = %43
  %57 = load float, ptr %50, align 8, !tbaa !99
  %58 = fmul float %49, %57
  store float %58, ptr %3, align 4, !tbaa !99
  %59 = icmp eq i32 %52, 1
  br i1 %59, label %66, label %60

60:                                               ; preds = %54, %56
  %61 = phi float [ %55, %54 ], [ %58, %56 ]
  %62 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 2, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !99
  %64 = fmul float %49, %63
  %65 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  store float %64, ptr %65, align 4, !tbaa !99
  br label %66

66:                                               ; preds = %60, %56
  %67 = phi float [ %61, %60 ], [ %58, %56 ]
  %68 = fcmp olt float %67, 5.000000e+00
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store float 5.000000e+00, ptr %3, align 4, !tbaa !99
  br label %73

70:                                               ; preds = %66
  %71 = fcmp ogt float %67, 1.000000e+04
  br i1 %71, label %72, label %73

72:                                               ; preds = %70
  store float 1.000000e+04, ptr %3, align 4, !tbaa !99
  br label %73

73:                                               ; preds = %70, %72, %69
  %74 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !99
  %76 = fcmp olt float %75, 5.000000e+00
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = fcmp ogt float %75, 1.000000e+04
  br i1 %78, label %79, label %81

79:                                               ; preds = %77, %73
  %80 = phi float [ 5.000000e+00, %73 ], [ 1.000000e+04, %77 ]
  store float %80, ptr %74, align 4, !tbaa !99
  br label %81

81:                                               ; preds = %79, %77
  %82 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 11
  %83 = load ptr, ptr %82, align 8, !tbaa !135
  call fastcc void @copy_v2_v2(ptr noundef %83, ptr noundef nonnull %3) #13
  br label %105

84:                                               ; preds = %2
  %85 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 13
  %86 = load ptr, ptr %85, align 8, !tbaa !137
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %86) #13
  %87 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !99
  %89 = load float, ptr %3, align 4, !tbaa !99
  %90 = tail call float @atan2f(float noundef %88, float noundef %89) #12
  %91 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 3
  %92 = load float, ptr %91, align 8, !tbaa !134
  %93 = fadd float %90, %92
  %94 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 4
  %95 = load float, ptr %94, align 4, !tbaa !139
  %96 = fsub float %93, %95
  %97 = fcmp olt float %96, 0.000000e+00
  %98 = fadd float %96, 0x401921FB60000000
  %99 = select i1 %97, float %98, float %96
  %100 = fcmp ogt float %99, 0x401921FB60000000
  %101 = fadd float %99, 0xC01921FB60000000
  %102 = select i1 %100, float %101, float %99
  %103 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 12
  %104 = load ptr, ptr %103, align 8, !tbaa !136
  store float %102, ptr %104, align 4, !tbaa !99
  br label %105

105:                                              ; preds = %35, %42, %36, %2, %84, %81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret void
}

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !143 {
  %4 = load float, ptr %1, align 4, !tbaa !99
  %5 = load float, ptr %2, align 4, !tbaa !99
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !99
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !99
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !99
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @stencil_restore(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !144 {
  %2 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  %4 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 2
  tail call fastcc void @copy_v2_v2(ptr noundef %3, ptr noundef nonnull %4) #13
  %5 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 1
  tail call fastcc void @copy_v2_v2(ptr noundef %6, ptr noundef nonnull %7) #13
  %8 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 3
  %9 = load float, ptr %8, align 8, !tbaa !134
  %10 = getelementptr inbounds %struct.StencilControlData, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !136
  store float %9, ptr %11, align 4, !tbaa !99
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @paint_supports_texture(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @stencil_fit_image_aspect_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !145 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #12
  %6 = tail call ptr @BKE_paint_brush(ptr noundef %5) #12
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.131) #12
  %10 = load ptr, ptr %7, align 8, !tbaa !106
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.128) #12
  %12 = load ptr, ptr %7, align 8, !tbaa !106
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.134) #12
  %14 = icmp eq ptr %6, null
  br i1 %14, label %103, label %15

15:                                               ; preds = %2
  %16 = and i32 %13, 255
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 4
  %19 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 3
  %20 = select i1 %17, ptr %19, ptr %18
  %21 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !146
  %23 = icmp eq ptr %22, null
  br i1 %23, label %103, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.Tex, ptr %22, i64 0, i32 32
  %26 = load i16, ptr %25, align 8, !tbaa !147
  %27 = icmp eq i16 %26, 8
  br i1 %27, label %28, label %103

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Tex, ptr %22, i64 0, i32 54
  %30 = load ptr, ptr %29, align 8, !tbaa !150
  %31 = icmp eq ptr %30, null
  br i1 %31, label %103, label %32

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @ED_image_get_uv_aspect(ptr noundef nonnull %30, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %33 = and i32 %9, 255
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 12
  %37 = load float, ptr %36, align 8, !tbaa !99
  %38 = load float, ptr %3, align 4, !tbaa !99
  %39 = fmul float %37, %38
  store float %39, ptr %3, align 4, !tbaa !99
  %40 = getelementptr inbounds %struct.MTex, ptr %20, i64 0, i32 12, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !99
  %42 = load float, ptr %4, align 4, !tbaa !99
  %43 = fmul float %41, %42
  store float %43, ptr %4, align 4, !tbaa !99
  br label %44

44:                                               ; preds = %35, %32
  %45 = and i32 %11, 255
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load float, ptr %3, align 4, !tbaa !99
  %49 = load float, ptr %4, align 4, !tbaa !99
  %50 = insertelement <2 x float> poison, float %48, i64 0
  %51 = insertelement <2 x float> %50, float %49, i64 1
  br label %67

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.Tex, ptr %22, i64 0, i32 42
  %54 = load i16, ptr %53, align 8, !tbaa !151
  %55 = icmp eq i16 %54, 3
  %56 = load float, ptr %3, align 4, !tbaa !99
  %57 = load float, ptr %4, align 4, !tbaa !99
  %58 = insertelement <2 x float> poison, float %56, i64 0
  %59 = insertelement <2 x float> %58, float %57, i64 1
  br i1 %55, label %60, label %67

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.Tex, ptr %22, i64 0, i32 40
  %62 = load <2 x i16>, ptr %61, align 4, !tbaa !125
  %63 = sitofp <2 x i16> %62 to <2 x float>
  %64 = fmul <2 x float> %59, %63
  %65 = extractelement <2 x float> %64, i64 0
  store float %65, ptr %3, align 4, !tbaa !99
  %66 = extractelement <2 x float> %64, i64 1
  store float %66, ptr %4, align 4, !tbaa !99
  br label %67

67:                                               ; preds = %47, %60, %52
  %68 = phi <2 x float> [ %51, %47 ], [ %64, %60 ], [ %59, %52 ]
  %69 = shufflevector <2 x float> %68, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %70 = fmul <2 x float> %68, %69
  %71 = extractelement <2 x float> %70, i64 0
  br i1 %17, label %87, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 56
  %74 = load float, ptr %73, align 8, !tbaa !99
  %75 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 56, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !99
  %77 = fmul float %74, %76
  %78 = fdiv float %77, %71
  %79 = call float @sqrtf(float noundef %78) #12
  %80 = load float, ptr %3, align 4, !tbaa !99
  %81 = load float, ptr %4, align 4, !tbaa !99
  %82 = insertelement <2 x float> poison, float %79, i64 0
  %83 = shufflevector <2 x float> %82, <2 x float> poison, <2 x i32> zeroinitializer
  %84 = insertelement <2 x float> poison, float %80, i64 0
  %85 = insertelement <2 x float> %84, float %81, i64 1
  %86 = fmul <2 x float> %83, %85
  store <2 x float> %86, ptr %73, align 8, !tbaa !99
  br label %102

87:                                               ; preds = %67
  %88 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 54
  %89 = load float, ptr %88, align 8, !tbaa !99
  %90 = getelementptr inbounds %struct.Brush, ptr %6, i64 0, i32 54, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !99
  %92 = fmul float %89, %91
  %93 = fdiv float %92, %71
  %94 = call float @sqrtf(float noundef %93) #12
  %95 = load float, ptr %3, align 4, !tbaa !99
  %96 = load float, ptr %4, align 4, !tbaa !99
  %97 = insertelement <2 x float> poison, float %94, i64 0
  %98 = shufflevector <2 x float> %97, <2 x float> poison, <2 x i32> zeroinitializer
  %99 = insertelement <2 x float> poison, float %95, i64 0
  %100 = insertelement <2 x float> %99, float %96, i64 1
  %101 = fmul <2 x float> %98, %100
  store <2 x float> %101, ptr %88, align 8, !tbaa !99
  br label %102

102:                                              ; preds = %87, %72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %103

103:                                              ; preds = %2, %102, %28, %24, %15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #12
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_image_get_uv_aspect(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @stencil_reset_transform_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !152 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #12
  %4 = tail call ptr @BKE_paint_brush(ptr noundef %3) #12
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.134) #12
  %8 = icmp eq ptr %4, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = and i32 %7, 255
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 55
  store <4 x float> <float 2.560000e+02, float 2.560000e+02, float 2.560000e+02, float 2.560000e+02>, ptr %13, align 8, !tbaa !99
  %14 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 4, i32 13
  br label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 53
  store <4 x float> <float 2.560000e+02, float 2.560000e+02, float 2.560000e+02, float 2.560000e+02>, ptr %16, align 8, !tbaa !99
  %17 = getelementptr inbounds %struct.Brush, ptr %4, i64 0, i32 3, i32 13
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi ptr [ %17, %15 ], [ %14, %12 ]
  store float 0.000000e+00, ptr %19, align 4, !tbaa !99
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554432, ptr noundef null) #12
  br label %20

20:                                               ; preds = %2, %18
  %21 = phi i32 [ 4, %18 ], [ 2, %2 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @brush_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !153 {
  %3 = alloca ptr, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %5 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.151) #12
  %9 = load ptr, ptr %6, align 8, !tbaa !106
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.25) #12
  %11 = trunc i32 %10 to i8
  %12 = load ptr, ptr %6, align 8, !tbaa !106
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.24) #12
  %14 = trunc i32 %13 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store ptr @.str.98, ptr %3, align 8, !tbaa !76
  %15 = icmp eq i32 %8, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = tail call ptr @CTX_data_active_object(ptr noundef %0) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %55, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 27
  %21 = load i32, ptr %20, align 8, !tbaa !109
  %22 = and i32 %21, 30
  br label %23

23:                                               ; preds = %19, %2
  %24 = phi i32 [ %22, %19 ], [ %8, %2 ]
  %25 = add i32 %24, -2
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 31)
  switch i32 %26, label %55 [
    i32 0, label %27
    i32 1, label %33
    i32 3, label %38
    i32 7, label %44
  ]

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !154
  %30 = load ptr, ptr %6, align 8, !tbaa !106
  %31 = tail call i32 @RNA_enum_get(ptr noundef %30, ptr noundef nonnull @.str.153) #12
  %32 = call zeroext i8 @RNA_enum_name_from_value(ptr noundef nonnull @brush_sculpt_tool_items, i32 noundef %31, ptr noundef nonnull %3) #12
  br label %49

33:                                               ; preds = %23
  %34 = load ptr, ptr %5, align 8, !tbaa !160
  %35 = load ptr, ptr %6, align 8, !tbaa !106
  %36 = tail call i32 @RNA_enum_get(ptr noundef %35, ptr noundef nonnull @.str.155) #12
  %37 = call zeroext i8 @RNA_enum_name_from_value(ptr noundef nonnull @brush_vertex_tool_items, i32 noundef %36, ptr noundef nonnull %3) #12
  br label %49

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !161
  %41 = load ptr, ptr %6, align 8, !tbaa !106
  %42 = tail call i32 @RNA_enum_get(ptr noundef %41, ptr noundef nonnull @.str.157) #12
  %43 = call zeroext i8 @RNA_enum_name_from_value(ptr noundef nonnull @brush_vertex_tool_items, i32 noundef %42, ptr noundef nonnull %3) #12
  br label %49

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 17
  %46 = load ptr, ptr %6, align 8, !tbaa !106
  %47 = tail call i32 @RNA_enum_get(ptr noundef %46, ptr noundef nonnull @.str.159) #12
  %48 = call zeroext i8 @RNA_enum_name_from_value(ptr noundef nonnull @brush_image_tool_items, i32 noundef %47, ptr noundef nonnull %3) #12
  br label %49

49:                                               ; preds = %44, %38, %33, %27
  %50 = phi i32 [ %47, %44 ], [ %42, %38 ], [ %36, %33 ], [ %31, %27 ]
  %51 = phi ptr [ %45, %44 ], [ %40, %38 ], [ %34, %33 ], [ %29, %27 ]
  %52 = phi i64 [ 1946, %44 ], [ 1945, %38 ], [ 1945, %33 ], [ 1944, %27 ]
  %53 = load ptr, ptr %3, align 8, !tbaa !76
  %54 = call fastcc i32 @brush_generic_tool_set(ptr noundef %4, ptr noundef %51, i32 noundef %50, i64 noundef %52, i32 noundef %24, ptr noundef %53, i8 noundef zeroext %11, i8 noundef zeroext %14) #13, !range !162
  br label %55

55:                                               ; preds = %16, %23, %49
  %56 = phi i32 [ %54, %49 ], [ 2, %23 ], [ 2, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret i32 %56
}

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_enum_name_from_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @brush_generic_tool_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 !PGOFuncName !163 {
  %9 = tail call ptr @BKE_paint_brush(ptr noundef %1) #12
  %10 = icmp eq i8 %7, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @brush_tool_toggle(ptr noundef %0, ptr noundef %9, i32 noundef %2, i64 noundef %3, i32 noundef %4) #13
  br label %15

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @brush_tool_cycle(ptr noundef %0, ptr noundef %9, i32 noundef %2, i64 noundef %3, i32 noundef %4) #13
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = tail call fastcc i32 @brush_tool(ptr noundef %9, i64 noundef %3) #13, !range !164
  %20 = icmp ne i32 %19, %2
  %21 = icmp ne i8 %6, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = tail call ptr @BKE_brush_add(ptr noundef %0, ptr noundef %5) #12
  tail call fastcc void @brush_tool_set(ptr noundef %24, i64 noundef %3, i32 noundef %2) #13
  %25 = trunc i32 %4 to i16
  %26 = getelementptr inbounds %struct.Brush, ptr %24, i64 0, i32 13
  store i16 %25, ptr %26, align 2, !tbaa !165
  %27 = getelementptr inbounds %struct.Brush, ptr %24, i64 0, i32 5
  store ptr %9, ptr %27, align 8, !tbaa !166
  br label %28

28:                                               ; preds = %15, %23
  %29 = phi ptr [ %24, %23 ], [ %16, %15 ]
  tail call void @BKE_paint_brush_set(ptr noundef %1, ptr noundef nonnull %29) #12
  tail call void @BKE_paint_invalidate_overlay_all() #12
  tail call void @WM_main_add_notifier(i32 noundef 184549377, ptr noundef nonnull %29) #12
  br label %30

30:                                               ; preds = %18, %28
  %31 = phi i32 [ 4, %28 ], [ 2, %18 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @brush_tool_toggle(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !167 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = tail call fastcc i32 @brush_tool(ptr noundef nonnull %1, i64 noundef %3) #13, !range !164
  %9 = icmp eq i32 %8, %2
  br i1 %9, label %15, label %10

10:                                               ; preds = %7, %5
  %11 = tail call fastcc ptr @brush_tool_cycle(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Brush, ptr %11, i64 0, i32 5
  store ptr %1, ptr %14, align 8, !tbaa !166
  br label %26

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !166
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 36
  %21 = load ptr, ptr %20, align 8, !tbaa !168
  %22 = tail call i32 @BLI_findindex(ptr noundef %21, ptr noundef nonnull %17) #12
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %16, align 8, !tbaa !166
  br label %26

26:                                               ; preds = %15, %19, %10, %13, %24
  %27 = phi ptr [ %25, %24 ], [ %11, %13 ], [ null, %10 ], [ null, %19 ], [ null, %15 ]
  ret ptr %27
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @brush_tool_cycle(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #10 !PGOFuncName !170 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 36
  %9 = load ptr, ptr %8, align 8, !tbaa !168
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %7, %5
  %12 = phi ptr [ %1, %5 ], [ %9, %7 ]
  %13 = tail call fastcc i32 @brush_tool(ptr noundef nonnull %12, i64 noundef %3) #13, !range !164
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load ptr, ptr %12, align 8, !tbaa !171
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %11
  %19 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 36
  %20 = load ptr, ptr %19, align 8, !tbaa !168
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi ptr [ %16, %15 ], [ %20, %18 ]
  %23 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 36
  br label %24

24:                                               ; preds = %39, %21
  %25 = phi ptr [ %22, %21 ], [ %40, %39 ]
  %26 = getelementptr inbounds %struct.Brush, ptr %25, i64 0, i32 13
  %27 = load i16, ptr %26, align 2, !tbaa !165
  %28 = sext i16 %27 to i32
  %29 = and i32 %28, %4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = tail call fastcc i32 @brush_tool(ptr noundef nonnull %25, i64 noundef %3) #13, !range !164
  %33 = icmp eq i32 %32, %2
  br i1 %33, label %42, label %34

34:                                               ; preds = %31, %24
  %35 = load ptr, ptr %25, align 8, !tbaa !171
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load ptr, ptr %23, align 8, !tbaa !168
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi ptr [ %38, %37 ], [ %35, %34 ]
  %41 = icmp eq ptr %40, %22
  br i1 %41, label %42, label %24, !llvm.loop !172

42:                                               ; preds = %39, %31, %7
  %43 = phi ptr [ null, %7 ], [ null, %39 ], [ %25, %31 ]
  ret ptr %43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @brush_tool(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #6 !PGOFuncName !173 {
  %3 = getelementptr inbounds i8, ptr %0, i64 %1
  %4 = load i8, ptr %3, align 1, !tbaa !174
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @brush_tool_set(ptr nocapture noundef writeonly %0, i64 noundef %1, i32 noundef %2) unnamed_addr #3 !PGOFuncName !175 {
  %4 = trunc i32 %2 to i8
  %5 = getelementptr inbounds i8, ptr %0, i64 %1
  store i8 %4, ptr %5, align 1, !tbaa !174
  ret void
}

; Function Attrs: optsize
declare void @BKE_paint_invalidate_overlay_all() local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @brush_uv_sculpt_tool_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !176 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !177
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.84) #12
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 66
  store i32 %8, ptr %9, align 8, !tbaa !196
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !197
  %12 = load ptr, ptr %11, align 8, !tbaa !198
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 184549377, ptr noundef %12) #12
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_color_set_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !200 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  %7 = load ptr, ptr %6, align 8, !tbaa !160
  %8 = tail call i32 @vpaint_get_current_col(ptr noundef %3, ptr noundef %7) #12
  %9 = tail call zeroext i8 @ED_vpaint_fill(ptr noundef %4, i32 noundef %8) #12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  tail call void @ED_region_tag_redraw(ptr noundef %12) #12
  br label %13

13:                                               ; preds = %2, %11
  %14 = phi i32 [ 4, %11 ], [ 2, %2 ]
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @vpaint_get_current_col(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_vpaint_fill(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_color_smooth_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !201 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #12
  %4 = tail call zeroext i8 @ED_vpaint_smooth(ptr noundef %3) #12
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  tail call void @ED_region_tag_redraw(ptr noundef %7) #12
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ 4, %6 ], [ 2, %2 ]
  ret i32 %9
}

; Function Attrs: optsize
declare zeroext i8 @ED_vpaint_smooth(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_brush_rc_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !202 {
  %5 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.197, ptr noundef %1, ptr noundef %3) #12
  tail call void @RNA_string_set(ptr noundef %0, ptr noundef %2, ptr noundef %5) #12
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  tail call void %6(ptr noundef %5) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }

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
!44 = !{!"paint_ops.c:PALETTE_OT_new"}
!45 = !{!35, !36, i64 0}
!46 = !{!35, !36, i64 8}
!47 = !{!35, !36, i64 32}
!48 = !{!35, !41, i64 184}
!49 = !{!"paint_ops.c:PALETTE_OT_color_add"}
!50 = !{!35, !36, i64 72}
!51 = !{!"paint_ops.c:PALETTE_OT_color_delete"}
!52 = !{!"paint_ops.c:BRUSH_OT_add"}
!53 = !{!"paint_ops.c:BRUSH_OT_scale_size"}
!54 = !{!35, !36, i64 88}
!55 = !{!"paint_ops.c:BRUSH_OT_reset"}
!56 = !{!"paint_ops.c:BRUSH_OT_stencil_control"}
!57 = !{!35, !36, i64 48}
!58 = !{!35, !36, i64 64}
!59 = !{!35, !36, i64 56}
!60 = !{!"paint_ops.c:BRUSH_OT_stencil_fit_image_aspect"}
!61 = !{!"paint_ops.c:BRUSH_OT_stencil_reset_transform"}
!62 = !{!"paint_ops.c:PAINT_OT_brush_select"}
!63 = !{!"paint_ops.c:BRUSH_OT_uv_sculpt_tool_set"}
!64 = !{!35, !36, i64 104}
!65 = !{!"paint_ops.c:PAINT_OT_vertex_color_set"}
!66 = !{!"paint_ops.c:PAINT_OT_vertex_color_smooth"}
!67 = !{!68, !36, i64 120}
!68 = !{!"wmKeyMap", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 32, !37, i64 48, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !36, i64 120, !36, i64 128}
!69 = !{!70, !36, i64 176}
!70 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !41, i64 164, !41, i64 166, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !36, i64 176}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"paint_ops.c:paint_keymap_curve"}
!74 = !{!"paint_ops.c:paint_partial_visibility_keys"}
!75 = !{!"paint_ops.c:set_brush_rc_props"}
!76 = !{!36, !36, i64 0}
!77 = !{!"paint_ops.c:ed_keymap_paint_brush_switch"}
!78 = distinct !{!78, !72}
!79 = !{!"paint_ops.c:ed_keymap_paint_brush_size"}
!80 = !{!"paint_ops.c:ed_keymap_paint_brush_radial_control"}
!81 = !{!"paint_ops.c:ed_keymap_stencil"}
!82 = !{!"paint_ops.c:keymap_brush_select"}
!83 = !{!"paint_ops.c:palette_new_exec"}
!84 = !{!"paint_ops.c:palette_color_add_exec"}
!85 = !{!86, !36, i64 0}
!86 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !87, i64 28, !87, i64 32, !87, i64 36}
!87 = !{!"int", !37, i64 0}
!88 = !{!86, !36, i64 8}
!89 = !{!90, !93, i64 1848}
!90 = !{!"Brush", !91, i64 0, !92, i64 120, !36, i64 144, !94, i64 152, !94, i64 464, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !37, i64 816, !93, i64 1840, !41, i64 1844, !41, i64 1846, !93, i64 1848, !87, i64 1852, !87, i64 1856, !87, i64 1860, !93, i64 1864, !87, i64 1868, !87, i64 1872, !87, i64 1876, !87, i64 1880, !93, i64 1884, !93, i64 1888, !37, i64 1892, !93, i64 1904, !37, i64 1908, !87, i64 1920, !93, i64 1924, !93, i64 1928, !87, i64 1932, !87, i64 1936, !87, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !93, i64 1948, !93, i64 1952, !93, i64 1956, !93, i64 1960, !93, i64 1964, !87, i64 1968, !87, i64 1972, !87, i64 1976, !93, i64 1980, !93, i64 1984, !87, i64 1988, !87, i64 1992, !93, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!91 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !87, i64 100, !87, i64 104, !87, i64 108, !36, i64 112}
!92 = !{!"BrushClone", !36, i64 0, !37, i64 8, !93, i64 16, !93, i64 20}
!93 = !{!"float", !37, i64 0}
!94 = !{!"MTex", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !93, i64 116, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !41, i64 128, !41, i64 130, !37, i64 132, !37, i64 133, !93, i64 140, !93, i64 144, !93, i64 148, !93, i64 152, !93, i64 156, !93, i64 160, !93, i64 164, !93, i64 168, !93, i64 172, !93, i64 176, !93, i64 180, !93, i64 184, !93, i64 188, !93, i64 192, !93, i64 196, !93, i64 200, !93, i64 204, !93, i64 208, !93, i64 212, !93, i64 216, !93, i64 220, !93, i64 224, !93, i64 228, !93, i64 232, !93, i64 236, !93, i64 240, !93, i64 244, !93, i64 248, !93, i64 252, !93, i64 256, !93, i64 260, !93, i64 264, !93, i64 268, !93, i64 272, !93, i64 276, !93, i64 280, !93, i64 284, !93, i64 288, !93, i64 292, !93, i64 296, !93, i64 300, !93, i64 304, !93, i64 308}
!95 = !{!96, !93, i64 28}
!96 = !{!"PaletteColor", !36, i64 0, !36, i64 8, !37, i64 16, !93, i64 28}
!97 = !{!"paint_ops.c:palette_poll"}
!98 = !{!"paint_ops.c:copy_v3_v3"}
!99 = !{!93, !93, i64 0}
!100 = !{!"paint_ops.c:zero_v3"}
!101 = !{!"paint_ops.c:palette_color_delete_exec"}
!102 = !{!103, !87, i64 152}
!103 = !{!"Palette", !91, i64 0, !39, i64 120, !39, i64 136, !87, i64 152, !87, i64 156}
!104 = !{!"paint_ops.c:brush_add_exec"}
!105 = !{!"paint_ops.c:brush_scale_size_exec"}
!106 = !{!107, !36, i64 112}
!107 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!108 = !{!"paint_ops.c:brush_reset_exec"}
!109 = !{!110, !87, i64 432}
!110 = !{!"Object", !91, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !87, i64 140, !87, i64 144, !87, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !111, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !87, i64 432, !87, i64 436, !36, i64 440, !36, i64 448, !87, i64 456, !87, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !93, i64 616, !93, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !87, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !87, i64 968, !87, i64 972, !87, i64 976, !87, i64 980, !87, i64 984, !93, i64 988, !93, i64 992, !93, i64 996, !93, i64 1000, !93, i64 1004, !93, i64 1008, !93, i64 1012, !93, i64 1016, !93, i64 1020, !93, i64 1024, !93, i64 1028, !93, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !93, i64 1048, !93, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !93, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !87, i64 1144, !87, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !93, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !112, i64 1304, !112, i64 1312, !87, i64 1320, !87, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!111 = !{!"bAnimVizSettings", !87, i64 0, !87, i64 4, !87, i64 8, !87, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !87, i64 32, !87, i64 36, !87, i64 40, !87, i64 44}
!112 = !{!"long", !37, i64 0}
!113 = !{!"paint_ops.c:stencil_control_invoke"}
!114 = !{!87, !87, i64 0}
!115 = !{!90, !37, i64 596}
!116 = !{!90, !37, i64 284}
!117 = !{!118, !87, i64 52}
!118 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !93, i64 24, !93, i64 28, !93, i64 32, !37, i64 36, !87, i64 44, !87, i64 48, !87, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !41, i64 88}
!119 = !{!118, !36, i64 56}
!120 = !{!118, !87, i64 44}
!121 = !{!122, !41, i64 16}
!122 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !87, i64 20, !87, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !87, i64 48, !87, i64 52, !123, i64 56, !87, i64 64, !87, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !87, i64 108, !36, i64 112}
!123 = !{!"double", !37, i64 0}
!124 = !{!118, !41, i64 88}
!125 = !{!41, !41, i64 0}
!126 = !{!107, !36, i64 96}
!127 = !{!"paint_ops.c:stencil_control_modal"}
!128 = !{!122, !41, i64 18}
!129 = !{!118, !87, i64 48}
!130 = !{!"paint_ops.c:stencil_control_cancel"}
!131 = !{!"paint_ops.c:stencil_control_poll"}
!132 = !{!"paint_ops.c:copy_v2_v2"}
!133 = !{!"paint_ops.c:stencil_set_target"}
!134 = !{!118, !93, i64 24}
!135 = !{!118, !36, i64 64}
!136 = !{!118, !36, i64 72}
!137 = !{!118, !36, i64 80}
!138 = !{!118, !93, i64 32}
!139 = !{!118, !93, i64 28}
!140 = !{!"paint_ops.c:sub_v2_v2v2"}
!141 = !{!"paint_ops.c:len_v2"}
!142 = !{!"paint_ops.c:stencil_control_calculate"}
!143 = !{!"paint_ops.c:add_v2_v2v2"}
!144 = !{!"paint_ops.c:stencil_restore"}
!145 = !{!"paint_ops.c:stencil_fit_image_aspect_exec"}
!146 = !{!94, !36, i64 16}
!147 = !{!148, !41, i64 232}
!148 = !{!"Tex", !91, i64 0, !36, i64 120, !93, i64 128, !93, i64 132, !93, i64 136, !93, i64 140, !93, i64 144, !93, i64 148, !93, i64 152, !93, i64 156, !93, i64 160, !93, i64 164, !93, i64 168, !93, i64 172, !93, i64 176, !93, i64 180, !93, i64 184, !93, i64 188, !93, i64 192, !93, i64 196, !93, i64 200, !93, i64 204, !93, i64 208, !93, i64 212, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !93, i64 236, !93, i64 240, !93, i64 244, !93, i64 248, !87, i64 252, !87, i64 256, !41, i64 260, !41, i64 262, !41, i64 264, !41, i64 266, !87, i64 268, !87, i64 272, !87, i64 276, !87, i64 280, !93, i64 284, !93, i64 288, !93, i64 292, !149, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!149 = !{!"ImageUser", !36, i64 0, !87, i64 8, !87, i64 12, !87, i64 16, !87, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !87, i64 36}
!150 = !{!148, !36, i64 352}
!151 = !{!148, !41, i64 264}
!152 = !{!"paint_ops.c:stencil_reset_transform_exec"}
!153 = !{!"paint_ops.c:brush_select_exec"}
!154 = !{!155, !36, i64 16}
!155 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !93, i64 32, !93, i64 36, !93, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !93, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !156, i64 64, !157, i64 168, !93, i64 336, !93, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !93, i64 352, !93, i64 356, !93, i64 360, !93, i64 364, !93, i64 368, !93, i64 372, !93, i64 376, !93, i64 380, !93, i64 384, !93, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !87, i64 448, !87, i64 452, !87, i64 456, !87, i64 460, !41, i64 464, !41, i64 466, !87, i64 468, !93, i64 472, !93, i64 476, !158, i64 480, !159, i64 608}
!156 = !{!"ImagePaintSettings", !86, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !87, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !93, i64 100}
!157 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !93, i64 128, !93, i64 132, !87, i64 136, !87, i64 140, !87, i64 144, !87, i64 148, !36, i64 152, !36, i64 160}
!158 = !{!"UnifiedPaintSettings", !87, i64 0, !93, i64 4, !93, i64 8, !93, i64 12, !37, i64 16, !37, i64 28, !87, i64 40, !37, i64 44, !93, i64 52, !87, i64 56, !87, i64 60, !37, i64 64, !37, i64 65, !93, i64 72, !37, i64 76, !87, i64 84, !93, i64 88, !37, i64 92, !37, i64 100, !87, i64 108, !36, i64 112, !93, i64 120, !87, i64 124}
!159 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !93, i64 4, !93, i64 8, !93, i64 12, !93, i64 16, !37, i64 20, !37, i64 21, !93, i64 24, !93, i64 28, !93, i64 32, !93, i64 36}
!160 = !{!155, !36, i64 0}
!161 = !{!155, !36, i64 8}
!162 = !{i32 2, i32 5}
!163 = !{!"paint_ops.c:brush_generic_tool_set"}
!164 = !{i32 0, i32 256}
!165 = !{!90, !41, i64 1846}
!166 = !{!90, !36, i64 776}
!167 = !{!"paint_ops.c:brush_tool_toggle"}
!168 = !{!169, !36, i64 1488}
!169 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 1040, !41, i64 1042, !41, i64 1044, !41, i64 1046, !112, i64 1048, !37, i64 1056, !41, i64 1072, !36, i64 1080, !39, i64 1088, !39, i64 1104, !39, i64 1120, !39, i64 1136, !39, i64 1152, !39, i64 1168, !39, i64 1184, !39, i64 1200, !39, i64 1216, !39, i64 1232, !39, i64 1248, !39, i64 1264, !39, i64 1280, !39, i64 1296, !39, i64 1312, !39, i64 1328, !39, i64 1344, !39, i64 1360, !39, i64 1376, !39, i64 1392, !39, i64 1408, !39, i64 1424, !39, i64 1440, !39, i64 1456, !39, i64 1472, !39, i64 1488, !39, i64 1504, !39, i64 1520, !39, i64 1536, !39, i64 1552, !39, i64 1568, !39, i64 1584, !39, i64 1600, !39, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!170 = !{!"paint_ops.c:brush_tool_cycle"}
!171 = !{!90, !36, i64 0}
!172 = distinct !{!172, !72}
!173 = !{!"paint_ops.c:brush_tool"}
!174 = !{!37, !37, i64 0}
!175 = !{!"paint_ops.c:brush_tool_set"}
!176 = !{!"paint_ops.c:brush_uv_sculpt_tool_set_exec"}
!177 = !{!178, !36, i64 264}
!178 = !{!"Scene", !91, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !87, i64 232, !87, i64 236, !87, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !179, i64 280, !188, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !87, i64 4380, !39, i64 4384, !189, i64 4400, !190, i64 4416, !193, i64 4600, !36, i64 4608, !194, i64 4616, !36, i64 4640, !112, i64 4648, !112, i64 4656, !181, i64 4664, !182, i64 4824, !195, i64 4888, !36, i64 4952}
!179 = !{!"RenderData", !180, i64 0, !36, i64 248, !36, i64 256, !183, i64 264, !184, i64 328, !87, i64 400, !87, i64 404, !87, i64 408, !93, i64 412, !87, i64 416, !87, i64 420, !87, i64 424, !87, i64 428, !41, i64 432, !41, i64 434, !93, i64 436, !93, i64 440, !93, i64 444, !93, i64 448, !93, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !87, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !87, i64 484, !87, i64 488, !41, i64 492, !41, i64 494, !87, i64 496, !87, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !87, i64 516, !87, i64 520, !87, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !185, i64 544, !185, i64 560, !186, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !93, i64 612, !93, i64 616, !93, i64 620, !93, i64 624, !87, i64 628, !93, i64 632, !93, i64 636, !93, i64 640, !93, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !93, i64 660, !93, i64 664, !41, i64 668, !41, i64 670, !93, i64 672, !93, i64 676, !37, i64 680, !87, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !87, i64 2520, !41, i64 2524, !41, i64 2526, !93, i64 2528, !93, i64 2532, !41, i64 2536, !41, i64 2538, !93, i64 2540, !41, i64 2544, !41, i64 2546, !87, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !93, i64 2560, !93, i64 2564, !36, i64 2568, !87, i64 2576, !93, i64 2580, !37, i64 2584, !187, i64 2616, !87, i64 3976, !87, i64 3980}
!180 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !93, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !181, i64 24, !182, i64 184}
!181 = !{!"ColorManagedViewSettings", !87, i64 0, !87, i64 4, !37, i64 8, !37, i64 72, !93, i64 136, !93, i64 140, !36, i64 144, !36, i64 152}
!182 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!183 = !{!"QuicktimeCodecSettings", !87, i64 0, !87, i64 4, !87, i64 8, !87, i64 12, !87, i64 16, !87, i64 20, !87, i64 24, !87, i64 28, !87, i64 32, !87, i64 36, !87, i64 40, !87, i64 44, !41, i64 48, !41, i64 50, !87, i64 52, !87, i64 56, !87, i64 60}
!184 = !{!"FFMpegCodecData", !87, i64 0, !87, i64 4, !87, i64 8, !87, i64 12, !87, i64 16, !87, i64 20, !87, i64 24, !87, i64 28, !93, i64 32, !87, i64 36, !87, i64 40, !87, i64 44, !87, i64 48, !87, i64 52, !87, i64 56, !87, i64 60, !36, i64 64}
!185 = !{!"rctf", !93, i64 0, !93, i64 4, !93, i64 8, !93, i64 12}
!186 = !{!"rcti", !87, i64 0, !87, i64 4, !87, i64 8, !87, i64 12}
!187 = !{!"BakeData", !180, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !93, i64 1280, !93, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!188 = !{!"AudioData", !87, i64 0, !93, i64 4, !93, i64 8, !93, i64 12, !87, i64 16, !41, i64 20, !41, i64 22, !93, i64 24, !93, i64 28}
!189 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!190 = !{!"GameData", !189, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !191, i64 40, !41, i64 64, !41, i64 66, !93, i64 68, !192, i64 72, !93, i64 128, !93, i64 132, !87, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !93, i64 164, !93, i64 168, !93, i64 172, !93, i64 176, !93, i64 180}
!191 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !93, i64 8, !93, i64 12, !36, i64 16}
!192 = !{!"RecastData", !93, i64 0, !93, i64 4, !93, i64 8, !93, i64 12, !93, i64 16, !93, i64 20, !93, i64 24, !93, i64 28, !93, i64 32, !93, i64 36, !87, i64 40, !93, i64 44, !93, i64 48, !41, i64 52, !41, i64 54}
!193 = !{!"UnitSettings", !93, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!194 = !{!"PhysicsSettings", !37, i64 0, !87, i64 12, !87, i64 16, !87, i64 20}
!195 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!196 = !{!155, !87, i64 456}
!197 = !{!155, !36, i64 24}
!198 = !{!199, !36, i64 0}
!199 = !{!"UvSculpt", !86, i64 0}
!200 = !{!"paint_ops.c:vertex_color_set_exec"}
!201 = !{!"paint_ops.c:vertex_color_smooth_exec"}
!202 = !{!"paint_ops.c:set_brush_rc_path"}
