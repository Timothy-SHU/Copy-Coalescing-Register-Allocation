; ModuleID = 'blender/source/blender/editors/uvedit/uvedit_ops.c'
source_filename = "blender/source/blender/editors/uvedit/uvedit_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.MLoopUV = type { [2 x float], i32 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.NearestHit = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.UvMapVert = type { ptr, i32, i8, i8, i8 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.UVvert = type { ptr, i8 }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.MTexPoly = type { ptr, i8, i8, i16, i16, i16 }

@.str = private unnamed_addr constant [10 x i8] c"UV Editor\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"WM_OT_context_toggle\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"data_path\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"tool_settings.use_uv_sculpt\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"UV_OT_mark_seam\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"UV_OT_select\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"UV_OT_select_loop\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"UV_OT_select_split\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"UV_OT_select_border\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"pinned\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"UV_OT_circle_select\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"UV_OT_select_lasso\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"UV_OT_select_linked\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"UV_OT_select_linked_pick\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"UV_OT_select_more\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"UV_OT_select_less\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"UV_OT_select_all\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"UV_OT_select_pinned\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"IMAGE_MT_uvs_weldalign\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"UV_OT_stitch\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"UV_OT_pin\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"UV_OT_unwrap\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"UV_OT_minimize_stretch\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"UV_OT_pack_islands\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"UV_OT_average_islands_scale\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"UV_OT_hide\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"UV_OT_reveal\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"UV_OT_cursor_set\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"UV_OT_tile_set\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"IMAGE_MT_uvs_snap\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"IMAGE_MT_uvs_select_mode\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"(De)select All\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"Change selection of all UV vertices\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"Select UV vertices\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.41 = private unnamed_addr constant [61 x i8] c"Extend selection rather than clearing the existing selection\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.44 = private unnamed_addr constant [80 x i8] c"Mouse location in normalized coordinates, 0.0 to 1.0 is within the image bounds\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.45 = private unnamed_addr constant [12 x i8] c"UvLinkStack\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.46 = private unnamed_addr constant [11 x i8] c"UvLinkFlag\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.47 = private unnamed_addr constant [12 x i8] c"Loop Select\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"Select a loop of connected UV vertices\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"Select Linked\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"Select all UV vertices linked to the active UV map\00", align 1
@.str.51 = private unnamed_addr constant [52 x i8] c"Cannot select linked when sync selection is enabled\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"Select Linked Pick\00", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c"Select all UV vertices linked under the mouse\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"Select Split\00", align 1
@.str.55 = private unnamed_addr constant [36 x i8] c"Select only entirely selected faces\00", align 1
@.str.56 = private unnamed_addr constant [54 x i8] c"Cannot split selection when sync selection is enabled\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"Selected Pinned\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"Select all pinned UV vertices\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"Border Select\00", align 1
@.str.60 = private unnamed_addr constant [42 x i8] c"Select UV vertices using border selection\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"Pinned\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"Border select pinned UVs only\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"gesture_mode\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"Lasso Select UV\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c"Select UVs using lasso selection\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@RNA_OperatorMousePath = external global %struct.StructRNA, align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.68 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"Deselect\00", align 1
@.str.70 = private unnamed_addr constant [34 x i8] c"Deselect rather than select items\00", align 1
@.str.71 = private unnamed_addr constant [57 x i8] c"Extend selection instead of deselecting everything first\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"Circle Select\00", align 1
@.str.73 = private unnamed_addr constant [42 x i8] c"Select UV vertices using circle selection\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"Gesture Mode\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"Select More\00", align 1
@.str.82 = private unnamed_addr constant [55 x i8] c"Select more UV vertices connected to initial selection\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"Select Less\00", align 1
@.str.84 = private unnamed_addr constant [62 x i8] c"Deselect UV vertices at the boundary of each selection region\00", align 1
@UV_OT_snap_cursor.target_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.85, i32 0, ptr @.str.86, ptr @.str.68 }, %struct.EnumPropertyItem { i32 1, ptr @.str.87, i32 0, ptr @.str.88, ptr @.str.68 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.85 = private unnamed_addr constant [7 x i8] c"PIXELS\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"Pixels\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"SELECTED\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"Selected\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"Snap Cursor\00", align 1
@.str.90 = private unnamed_addr constant [27 x i8] c"Snap cursor to target type\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"UV_OT_snap_cursor\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"Target\00", align 1
@.str.94 = private unnamed_addr constant [35 x i8] c"Target to snap the selected UVs to\00", align 1
@UV_OT_snap_selected.target_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.85, i32 0, ptr @.str.86, ptr @.str.68 }, %struct.EnumPropertyItem { i32 1, ptr @.str.95, i32 0, ptr @.str.96, ptr @.str.68 }, %struct.EnumPropertyItem { i32 2, ptr @.str.97, i32 0, ptr @.str.98, ptr @.str.68 }, %struct.EnumPropertyItem { i32 3, ptr @.str.99, i32 0, ptr @.str.100, ptr @.str.68 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.95 = private unnamed_addr constant [7 x i8] c"CURSOR\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"Cursor\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"CURSOR_OFFSET\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"Cursor (Offset)\00", align 1
@.str.99 = private unnamed_addr constant [20 x i8] c"ADJACENT_UNSELECTED\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"Adjacent Unselected\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"Snap Selection\00", align 1
@.str.102 = private unnamed_addr constant [41 x i8] c"Snap selected UV vertices to target type\00", align 1
@.str.103 = private unnamed_addr constant [20 x i8] c"UV_OT_snap_selected\00", align 1
@UV_OT_align.axis_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 115, ptr @.str.104, i32 0, ptr @.str.105, ptr @.str.106 }, %struct.EnumPropertyItem { i32 116, ptr @.str.107, i32 0, ptr @.str.108, ptr @.str.109 }, %struct.EnumPropertyItem { i32 117, ptr @.str.110, i32 0, ptr @.str.111, ptr @.str.112 }, %struct.EnumPropertyItem { i32 97, ptr @.str.113, i32 0, ptr @.str.114, ptr @.str.115 }, %struct.EnumPropertyItem { i32 120, ptr @.str.116, i32 0, ptr @.str.117, ptr @.str.118 }, %struct.EnumPropertyItem { i32 121, ptr @.str.119, i32 0, ptr @.str.120, ptr @.str.121 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.104 = private unnamed_addr constant [8 x i8] c"ALIGN_S\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"Straighten\00", align 1
@.str.106 = private unnamed_addr constant [50 x i8] c"Align UVs along the line defined by the endpoints\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"ALIGN_T\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"Straighten X\00", align 1
@.str.109 = private unnamed_addr constant [67 x i8] c"Align UVs along the line defined by the endpoints along the X axis\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"ALIGN_U\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"Straighten Y\00", align 1
@.str.112 = private unnamed_addr constant [67 x i8] c"Align UVs along the line defined by the endpoints along the Y axis\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"ALIGN_AUTO\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"Align Auto\00", align 1
@.str.115 = private unnamed_addr constant [71 x i8] c"Automatically choose the axis on which there is most alignment already\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"ALIGN_X\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"Align X\00", align 1
@.str.118 = private unnamed_addr constant [20 x i8] c"Align UVs on X axis\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"ALIGN_Y\00", align 1
@.str.120 = private unnamed_addr constant [8 x i8] c"Align Y\00", align 1
@.str.121 = private unnamed_addr constant [20 x i8] c"Align UVs on Y axis\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"Align\00", align 1
@.str.123 = private unnamed_addr constant [38 x i8] c"Align selected UV vertices to an axis\00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"UV_OT_align\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"Axis\00", align 1
@.str.127 = private unnamed_addr constant [30 x i8] c"Axis to align UV locations on\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.128 = private unnamed_addr constant [19 x i8] c"BLI_array.eve_line\00", align 1
@.str.129 = private unnamed_addr constant [19 x i8] c"Seams From Islands\00", align 1
@.str.130 = private unnamed_addr constant [58 x i8] c"Set mesh seams according to island setup in the UV editor\00", align 1
@.str.131 = private unnamed_addr constant [25 x i8] c"UV_OT_seams_from_islands\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"mark_seams\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"Mark Seams\00", align 1
@.str.134 = private unnamed_addr constant [29 x i8] c"Mark boundary edges as seams\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"mark_sharp\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"Mark Sharp\00", align 1
@.str.137 = private unnamed_addr constant [29 x i8] c"Mark boundary edges as sharp\00", align 1
@.str.138 = private unnamed_addr constant [32 x i8] c"Mark selected UV edges as seams\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"Weld\00", align 1
@.str.140 = private unnamed_addr constant [35 x i8] c"Weld selected UV vertices together\00", align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"UV_OT_weld\00", align 1
@.str.142 = private unnamed_addr constant [18 x i8] c"Remove Doubles UV\00", align 1
@.str.143 = private unnamed_addr constant [80 x i8] c"Selected UV vertices that are within a radius of each other are welded together\00", align 1
@.str.144 = private unnamed_addr constant [21 x i8] c"UV_OT_remove_doubles\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.146 = private unnamed_addr constant [15 x i8] c"Merge Distance\00", align 1
@.str.147 = private unnamed_addr constant [41 x i8] c"Maximum distance between welded vertices\00", align 1
@.str.148 = private unnamed_addr constant [15 x i8] c"use_unselected\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"Unselected\00", align 1
@.str.150 = private unnamed_addr constant [44 x i8] c"Merge selected to other unselected vertices\00", align 1
@.str.151 = private unnamed_addr constant [19 x i8] c"BLI_array.vert_arr\00", align 1
@.str.152 = private unnamed_addr constant [19 x i8] c"BLI_array.loop_arr\00", align 1
@.str.153 = private unnamed_addr constant [30 x i8] c"BLI_array.loop_arr_unselected\00", align 1
@.str.154 = private unnamed_addr constant [4 x i8] c"Pin\00", align 1
@.str.155 = private unnamed_addr constant [78 x i8] c"Set/clear selected UV vertices as anchored between multiple unwrap operations\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@.str.157 = private unnamed_addr constant [54 x i8] c"Clear pinning for the selection instead of setting it\00", align 1
@.str.158 = private unnamed_addr constant [14 x i8] c"Reveal Hidden\00", align 1
@.str.159 = private unnamed_addr constant [30 x i8] c"Reveal all hidden UV vertices\00", align 1
@.str.160 = private unnamed_addr constant [14 x i8] c"Hide Selected\00", align 1
@.str.161 = private unnamed_addr constant [30 x i8] c"Hide (un)selected UV vertices\00", align 1
@.str.162 = private unnamed_addr constant [37 x i8] c"Hide unselected rather than selected\00", align 1
@.str.163 = private unnamed_addr constant [14 x i8] c"Set 2D Cursor\00", align 1
@.str.164 = private unnamed_addr constant [23 x i8] c"Set 2D cursor location\00", align 1
@.str.165 = private unnamed_addr constant [52 x i8] c"Cursor location in normalized (0.0-1.0) coordinates\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"Set Tile\00", align 1
@.str.167 = private unnamed_addr constant [30 x i8] c"Set UV image tile coordinates\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c"tile\00", align 1
@.str.169 = private unnamed_addr constant [5 x i8] c"Tile\00", align 1
@.str.170 = private unnamed_addr constant [16 x i8] c"Tile coordinate\00", align 1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_uvedit_test(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %0) #9
  %9 = tail call zeroext i8 @EDBM_mtexpoly_check(ptr noundef %8) #9
  br label %10

10:                                               ; preds = %3, %1, %7
  %11 = phi i8 [ %9, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @EDBM_mtexpoly_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_object_get_active_image(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = trunc i32 %1 to i16
  %8 = tail call ptr @give_current_material(ptr noundef %0, i16 noundef signext %7) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 77
  %12 = load i8, ptr %11, align 1, !tbaa !46
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 103
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  br label %17

17:                                               ; preds = %6, %10, %14
  %18 = phi ptr [ %16, %14 ], [ null, %10 ], [ null, %6 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @nodeGetActiveTexture(ptr noundef nonnull %18) #9
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 8
  %27 = load i16, ptr %26, align 4, !tbaa !51
  switch i16 %27, label %41 [
    i16 157, label %28
    i16 143, label %28
  ]

28:                                               ; preds = %25, %25
  %29 = icmp eq ptr %2, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 20
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  store ptr %32, ptr %2, align 8, !tbaa !55
  br label %33

33:                                               ; preds = %30, %28
  %34 = icmp eq ptr %3, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  store ptr null, ptr %3, align 8, !tbaa !55
  br label %36

36:                                               ; preds = %35, %33
  %37 = icmp eq ptr %4, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  store ptr %23, ptr %4, align 8, !tbaa !55
  br label %39

39:                                               ; preds = %38, %36
  %40 = icmp eq ptr %5, null
  br i1 %40, label %54, label %52

41:                                               ; preds = %25, %22
  %42 = icmp eq ptr %2, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %41
  store ptr null, ptr %2, align 8, !tbaa !55
  br label %44

44:                                               ; preds = %43, %41
  %45 = icmp eq ptr %3, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %44
  store ptr null, ptr %3, align 8, !tbaa !55
  br label %47

47:                                               ; preds = %46, %44
  %48 = icmp eq ptr %4, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  store ptr %23, ptr %4, align 8, !tbaa !55
  br label %50

50:                                               ; preds = %49, %47
  %51 = icmp eq ptr %5, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %50, %39
  %53 = phi i8 [ 1, %39 ], [ 0, %50 ]
  store ptr %18, ptr %5, align 8, !tbaa !55
  br label %54

54:                                               ; preds = %52, %50, %39
  %55 = phi i8 [ 1, %39 ], [ 0, %50 ], [ %53, %52 ]
  ret i8 %55
}

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @nodeGetActiveTexture(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_object_assign_active_image(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = trunc i32 %2 to i16
  %6 = tail call ptr @give_current_material(ptr noundef %1, i16 noundef signext %5) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 77
  %10 = load i8, ptr %9, align 1, !tbaa !46
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 103
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = tail call ptr @nodeGetActiveTexture(ptr noundef %14) #9
  br label %16

16:                                               ; preds = %4, %8, %12
  %17 = phi ptr [ %15, %12 ], [ null, %8 ], [ null, %4 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 8
  %21 = load i16, ptr %20, align 4, !tbaa !51
  switch i16 %21, label %26 [
    i16 157, label %22
    i16 143, label %22
  ]

22:                                               ; preds = %19, %19
  %23 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 20
  store ptr %3, ptr %23, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 103
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  tail call void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef %25) #9
  br label %26

26:                                               ; preds = %19, %22, %16
  ret void
}

declare void @ED_node_tag_update_nodetree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_uvedit_assign_image(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readnone %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  %8 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 11
  %11 = load i8, ptr %10, align 2, !tbaa !74
  %12 = and i8 %11, 1
  %13 = icmp eq ptr %3, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 12
  %16 = load i16, ptr %15, align 2, !tbaa !81
  %17 = and i16 %16, -2
  %18 = icmp eq i16 %17, 4
  %19 = icmp eq ptr %2, null
  %20 = or i1 %19, %18
  br i1 %20, label %169, label %23

21:                                               ; preds = %5
  %22 = icmp eq ptr %2, null
  br i1 %22, label %169, label %23

23:                                               ; preds = %14, %21
  %24 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !34
  %26 = icmp eq i16 %25, 1
  br i1 %26, label %27, label %169

27:                                               ; preds = %23
  %28 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %2) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %169, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %28, align 8, !tbaa !83
  %32 = getelementptr inbounds %struct.BMesh, ptr %31, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !85
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %169, label %35

35:                                               ; preds = %30
  %36 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %1) #9
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %169

38:                                               ; preds = %35
  %39 = load ptr, ptr %28, align 8, !tbaa !83
  %40 = getelementptr inbounds %struct.BMesh, ptr %39, i64 0, i32 27
  %41 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %40, i32 noundef 15) #9
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load ptr, ptr %28, align 8, !tbaa !83
  %45 = getelementptr inbounds %struct.BMesh, ptr %44, i64 0, i32 27
  tail call void @BM_data_layer_add(ptr noundef %44, ptr noundef nonnull %45, i32 noundef 15) #9
  %46 = load ptr, ptr %28, align 8, !tbaa !83
  %47 = getelementptr inbounds %struct.BMesh, ptr %46, i64 0, i32 26
  tail call void @BM_data_layer_add(ptr noundef %46, ptr noundef nonnull %47, i32 noundef 16) #9
  %48 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %49 = load ptr, ptr %48, align 8, !tbaa !88
  %50 = load ptr, ptr %28, align 8, !tbaa !83
  %51 = getelementptr inbounds %struct.BMesh, ptr %50, i64 0, i32 27
  %52 = tail call i32 @CustomData_get_active_layer_index(ptr noundef nonnull %51, i32 noundef 15) #9
  tail call void @ED_mesh_uv_loop_reset_ex(ptr noundef %49, i32 noundef %52) #9
  br label %53

53:                                               ; preds = %43, %38
  %54 = phi i8 [ 0, %38 ], [ 1, %43 ]
  %55 = load ptr, ptr %28, align 8, !tbaa !83
  %56 = getelementptr inbounds %struct.BMesh, ptr %55, i64 0, i32 26
  %57 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %56, i32 noundef 16) #9
  %58 = load ptr, ptr %28, align 8, !tbaa !83
  %59 = getelementptr inbounds %struct.BMesh, ptr %58, i64 0, i32 27
  %60 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %59, i32 noundef 15) #9
  %61 = load ptr, ptr %28, align 8, !tbaa !83
  %62 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 3, ptr %62, align 4, !tbaa !89
  %63 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %63, align 8, !tbaa !91
  %64 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %64, align 8, !tbaa !92
  %65 = getelementptr inbounds %struct.BMesh, ptr %61, i64 0, i32 12
  %66 = load ptr, ptr %65, align 8, !tbaa !93
  store ptr %66, ptr %7, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #9
  %67 = load ptr, ptr %64, align 8, !tbaa !92
  %68 = call ptr %67(ptr noundef nonnull %7) #9
  %69 = icmp eq ptr %68, null
  br i1 %69, label %163, label %70

70:                                               ; preds = %53
  %71 = sext i32 %60 to i64
  %72 = icmp eq i8 %12, 0
  %73 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %74 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %75 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %76 = sext i32 %57 to i64
  %77 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 6
  br label %78

78:                                               ; preds = %70, %158
  %79 = phi i8 [ %54, %70 ], [ %159, %158 ]
  %80 = phi ptr [ %68, %70 ], [ %161, %158 ]
  %81 = load ptr, ptr %80, align 8, !tbaa !95
  %82 = getelementptr inbounds i8, ptr %81, i64 %71
  %83 = load ptr, ptr %8, align 8, !tbaa !56
  %84 = getelementptr inbounds %struct.ToolSettings, ptr %83, i64 0, i32 11
  %85 = load i8, ptr %84, align 2, !tbaa !74
  %86 = and i8 %85, 2
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %105, label %88

88:                                               ; preds = %78
  %89 = load ptr, ptr %82, align 8, !tbaa !98
  %90 = icmp eq ptr %89, %4
  br i1 %90, label %91, label %119

91:                                               ; preds = %88
  %92 = and i8 %85, 1
  %93 = icmp eq i8 %92, 0
  %94 = getelementptr inbounds %struct.BMHeader, ptr %80, i64 0, i32 3
  %95 = load i8, ptr %94, align 1, !tbaa !100
  br i1 %93, label %100, label %96

96:                                               ; preds = %91
  %97 = lshr i8 %95, 1
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  br label %119

100:                                              ; preds = %91
  %101 = and i8 %95, 2
  %102 = icmp eq i8 %101, 0
  %103 = and i8 %95, 1
  %104 = select i1 %102, i8 %103, i8 0
  br label %119

105:                                              ; preds = %78
  %106 = and i8 %85, 1
  %107 = icmp eq i8 %106, 0
  %108 = getelementptr inbounds %struct.BMHeader, ptr %80, i64 0, i32 3
  %109 = load i8, ptr %108, align 1, !tbaa !100
  br i1 %107, label %114, label %110

110:                                              ; preds = %105
  %111 = lshr i8 %109, 1
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  br label %119

114:                                              ; preds = %105
  %115 = and i8 %109, 2
  %116 = icmp eq i8 %115, 0
  %117 = and i8 %109, 1
  %118 = select i1 %116, i8 %117, i8 0
  br label %119

119:                                              ; preds = %88, %96, %100, %110, %114
  %120 = phi i8 [ 0, %88 ], [ %99, %96 ], [ %104, %100 ], [ %113, %110 ], [ %118, %114 ]
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %158, label %122

122:                                              ; preds = %119
  br i1 %72, label %151, label %123

123:                                              ; preds = %122
  %124 = and i8 %85, 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.BMHeader, ptr %80, i64 0, i32 3
  %128 = load i8, ptr %127, align 1, !tbaa !100
  %129 = and i8 %128, 1
  br label %148

130:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  store i8 11, ptr %73, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %74, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %75, align 8, !tbaa !92
  store ptr %80, ptr %6, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #9
  %131 = load ptr, ptr %75, align 8, !tbaa !92
  %132 = call ptr %131(ptr noundef nonnull %6) #9
  %133 = icmp eq ptr %132, null
  br i1 %133, label %146, label %134

134:                                              ; preds = %130, %142
  %135 = phi ptr [ %144, %142 ], [ %132, %130 ]
  %136 = load ptr, ptr %135, align 8, !tbaa !101
  %137 = getelementptr inbounds i8, ptr %136, i64 %76
  %138 = getelementptr inbounds %struct.MLoopUV, ptr %137, i64 0, i32 1
  %139 = load i32, ptr %138, align 4, !tbaa !103
  %140 = and i32 %139, 2
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %134
  %143 = load ptr, ptr %75, align 8, !tbaa !92
  %144 = call ptr %143(ptr noundef nonnull %6) #9
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %134, !llvm.loop !105

146:                                              ; preds = %142, %134, %130
  %147 = phi i8 [ 1, %130 ], [ 0, %134 ], [ 1, %142 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  br label %148

148:                                              ; preds = %126, %146
  %149 = phi i8 [ %129, %126 ], [ %147, %146 ]
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %148, %122
  br i1 %13, label %157, label %152

152:                                              ; preds = %151
  store ptr %3, ptr %82, align 8, !tbaa !98
  %153 = load i32, ptr %77, align 4, !tbaa !108
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  call void @id_us_plus(ptr noundef nonnull %3) #9
  br label %158

156:                                              ; preds = %152
  call void @id_lib_extern(ptr noundef nonnull %3) #9
  br label %158

157:                                              ; preds = %151
  store ptr null, ptr %82, align 8, !tbaa !98
  br label %158

158:                                              ; preds = %157, %156, %155, %119, %148
  %159 = phi i8 [ %79, %148 ], [ %79, %119 ], [ 1, %155 ], [ 1, %156 ], [ 1, %157 ]
  %160 = load ptr, ptr %64, align 8, !tbaa !92
  %161 = call ptr %160(ptr noundef nonnull %7) #9
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %78, !llvm.loop !109

163:                                              ; preds = %158, %53
  %164 = phi i8 [ %54, %53 ], [ %159, %158 ]
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %168 = load ptr, ptr %167, align 8, !tbaa !88
  call void @DAG_id_tag_update(ptr noundef %168, i16 noundef signext 0) #9
  br label %169

169:                                              ; preds = %14, %35, %166, %163, %27, %30, %21, %23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  ret void
}

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_data_layer_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_mesh_uv_loop_reset_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_get_active_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @uvedit_face_visible_test(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 11
  %8 = load i8, ptr %7, align 2, !tbaa !74
  %9 = and i8 %8, 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %3, align 8, !tbaa !98
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %42

14:                                               ; preds = %11
  %15 = and i8 %8, 1
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds %struct.BMHeader, ptr %2, i64 0, i32 3
  %18 = load i8, ptr %17, align 1, !tbaa !100
  br i1 %16, label %23, label %19

19:                                               ; preds = %14
  %20 = lshr i8 %18, 1
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  br label %42

23:                                               ; preds = %14
  %24 = and i8 %18, 2
  %25 = icmp eq i8 %24, 0
  %26 = and i8 %18, 1
  %27 = select i1 %25, i8 %26, i8 0
  br label %42

28:                                               ; preds = %4
  %29 = and i8 %8, 1
  %30 = icmp eq i8 %29, 0
  %31 = getelementptr inbounds %struct.BMHeader, ptr %2, i64 0, i32 3
  %32 = load i8, ptr %31, align 1, !tbaa !100
  br i1 %30, label %37, label %33

33:                                               ; preds = %28
  %34 = lshr i8 %32, 1
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  br label %42

37:                                               ; preds = %28
  %38 = and i8 %32, 2
  %39 = icmp eq i8 %38, 0
  %40 = and i8 %32, 1
  %41 = select i1 %39, i8 %40, i8 0
  br label %42

42:                                               ; preds = %37, %23, %33, %19, %11
  %43 = phi i8 [ 0, %11 ], [ %22, %19 ], [ %27, %23 ], [ %36, %33 ], [ %41, %37 ]
  ret i8 %43
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @uvedit_face_select_test(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 11
  %8 = load i8, ptr %7, align 2, !tbaa !74
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %13 = load i8, ptr %12, align 1, !tbaa !100
  %14 = and i8 %13, 1
  br label %38

15:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %16 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 11, ptr %16, align 4, !tbaa !89
  %17 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %17, align 8, !tbaa !91
  %18 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %18, align 8, !tbaa !92
  store ptr %1, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %19 = load ptr, ptr %18, align 8, !tbaa !92
  %20 = call ptr %19(ptr noundef nonnull %4) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %15
  %23 = sext i32 %2 to i64
  br label %24

24:                                               ; preds = %22, %32
  %25 = phi ptr [ %20, %22 ], [ %34, %32 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !101
  %27 = getelementptr inbounds i8, ptr %26, i64 %23
  %28 = getelementptr inbounds %struct.MLoopUV, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !103
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  %33 = load ptr, ptr %18, align 8, !tbaa !92
  %34 = call ptr %33(ptr noundef nonnull %4) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %24, !llvm.loop !105

36:                                               ; preds = %24, %32, %15
  %37 = phi i8 [ 1, %15 ], [ 0, %24 ], [ 1, %32 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  br label %38

38:                                               ; preds = %36, %11
  %39 = phi i8 [ %14, %11 ], [ %37, %36 ]
  ret i8 %39
}

declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @uvedit_face_visible_nolocal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 11
  %6 = load i8, ptr %5, align 2, !tbaa !74
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %10 = load i8, ptr %9, align 1, !tbaa !100
  br i1 %8, label %15, label %11

11:                                               ; preds = %2
  %12 = lshr i8 %10, 1
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  br label %20

15:                                               ; preds = %2
  %16 = and i8 %10, 2
  %17 = icmp eq i8 %16, 0
  %18 = and i8 %10, 1
  %19 = select i1 %17, i8 %18, i8 0
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i8 [ %14, %11 ], [ %19, %15 ]
  ret i8 %21
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @uvedit_face_select_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = icmp eq i8 %3, 0
  %10 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 11
  %13 = load i8, ptr %12, align 2, !tbaa !74
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %9, label %42, label %16

16:                                               ; preds = %6
  br i1 %15, label %22, label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr %1, align 8, !tbaa !83
  tail call void @BM_face_select_set(ptr noundef %18, ptr noundef %2, i8 noundef zeroext 1) #9
  %19 = icmp eq i8 %4, 0
  br i1 %19, label %65, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %1, align 8, !tbaa !83
  tail call void @_bm_select_history_store(ptr noundef %21, ptr noundef %2) #9
  br label %65

22:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  %23 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 11, ptr %23, align 4, !tbaa !89
  %24 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %24, align 8, !tbaa !91
  %25 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %25, align 8, !tbaa !92
  store ptr %2, ptr %8, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %8) #9
  %26 = load ptr, ptr %25, align 8, !tbaa !92
  %27 = call ptr %26(ptr noundef nonnull %8) #9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %22
  %30 = sext i32 %5 to i64
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi ptr [ %27, %29 ], [ %39, %31 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !101
  %34 = getelementptr inbounds i8, ptr %33, i64 %30
  %35 = getelementptr inbounds %struct.MLoopUV, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !103
  %37 = or i32 %36, 2
  store i32 %37, ptr %35, align 4, !tbaa !103
  %38 = load ptr, ptr %25, align 8, !tbaa !92
  %39 = call ptr %38(ptr noundef nonnull %8) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %31, !llvm.loop !110

41:                                               ; preds = %31, %22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  br label %65

42:                                               ; preds = %6
  br i1 %15, label %45, label %43

43:                                               ; preds = %42
  %44 = load ptr, ptr %1, align 8, !tbaa !83
  tail call void @BM_face_select_set(ptr noundef %44, ptr noundef %2, i8 noundef zeroext 0) #9
  br label %65

45:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  %46 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 11, ptr %46, align 4, !tbaa !89
  %47 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %47, align 8, !tbaa !91
  %48 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %48, align 8, !tbaa !92
  store ptr %2, ptr %7, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %7) #9
  %49 = load ptr, ptr %48, align 8, !tbaa !92
  %50 = call ptr %49(ptr noundef nonnull %7) #9
  %51 = icmp eq ptr %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %45
  %53 = sext i32 %5 to i64
  br label %54

54:                                               ; preds = %54, %52
  %55 = phi ptr [ %50, %52 ], [ %62, %54 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !101
  %57 = getelementptr inbounds i8, ptr %56, i64 %53
  %58 = getelementptr inbounds %struct.MLoopUV, ptr %57, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !103
  %60 = and i32 %59, -3
  store i32 %60, ptr %58, align 4, !tbaa !103
  %61 = load ptr, ptr %48, align 8, !tbaa !92
  %62 = call ptr %61(ptr noundef nonnull %7) #9
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %54, !llvm.loop !111

64:                                               ; preds = %54, %45
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  br label %65

65:                                               ; preds = %64, %43, %41, %20, %17
  %66 = phi i8 [ 1, %41 ], [ 0, %17 ], [ 0, %20 ], [ 0, %43 ], [ 1, %64 ]
  ret i8 %66
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @uvedit_face_select_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 11
  %10 = load i8, ptr %9, align 2, !tbaa !74
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr %1, align 8, !tbaa !83
  tail call void @BM_face_select_set(ptr noundef %14, ptr noundef %2, i8 noundef zeroext 1) #9
  %15 = icmp eq i8 %3, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %1, align 8, !tbaa !83
  tail call void @_bm_select_history_store(ptr noundef %17, ptr noundef %2) #9
  br label %38

18:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  %19 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 11, ptr %19, align 4, !tbaa !89
  %20 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %20, align 8, !tbaa !91
  %21 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %21, align 8, !tbaa !92
  store ptr %2, ptr %6, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #9
  %22 = load ptr, ptr %21, align 8, !tbaa !92
  %23 = call ptr %22(ptr noundef nonnull %6) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %18
  %26 = sext i32 %4 to i64
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi ptr [ %23, %25 ], [ %35, %27 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !101
  %30 = getelementptr inbounds i8, ptr %29, i64 %26
  %31 = getelementptr inbounds %struct.MLoopUV, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !103
  %33 = or i32 %32, 2
  store i32 %33, ptr %31, align 4, !tbaa !103
  %34 = load ptr, ptr %21, align 8, !tbaa !92
  %35 = call ptr %34(ptr noundef nonnull %6) #9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %27, !llvm.loop !110

37:                                               ; preds = %27, %18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  br label %38

38:                                               ; preds = %16, %13, %37
  %39 = phi i8 [ 1, %37 ], [ 0, %13 ], [ 0, %16 ]
  ret i8 %39
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @uvedit_face_select_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 11
  %9 = load i8, ptr %8, align 2, !tbaa !74
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %1, align 8, !tbaa !83
  tail call void @BM_face_select_set(ptr noundef %13, ptr noundef %2, i8 noundef zeroext 0) #9
  br label %34

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %15 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 11, ptr %15, align 4, !tbaa !89
  %16 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %16, align 8, !tbaa !91
  %17 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %17, align 8, !tbaa !92
  store ptr %2, ptr %5, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %5) #9
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  %19 = call ptr %18(ptr noundef nonnull %5) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %14
  %22 = sext i32 %3 to i64
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi ptr [ %19, %21 ], [ %31, %23 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !101
  %26 = getelementptr inbounds i8, ptr %25, i64 %22
  %27 = getelementptr inbounds %struct.MLoopUV, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !103
  %29 = and i32 %28, -3
  store i32 %29, ptr %27, align 4, !tbaa !103
  %30 = load ptr, ptr %17, align 8, !tbaa !92
  %31 = call ptr %30(ptr noundef nonnull %5) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %23, !llvm.loop !111

33:                                               ; preds = %23, %14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  br label %34

34:                                               ; preds = %12, %33
  %35 = phi i8 [ 0, %12 ], [ 1, %33 ]
  ret i8 %35
}

declare void @BM_face_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @_bm_select_history_store(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @uvedit_edge_select_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 11
  %7 = load i8, ptr %6, align 2, !tbaa !74
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %44, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !112
  %13 = and i16 %12, 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = getelementptr inbounds %struct.BMHeader, ptr %17, i64 0, i32 3
  %19 = load i8, ptr %18, align 1, !tbaa !100
  %20 = and i8 %19, 1
  br label %62

21:                                               ; preds = %10
  %22 = icmp eq i16 %12, 2
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !114
  %26 = getelementptr inbounds %struct.BMHeader, ptr %25, i64 0, i32 3
  %27 = load i8, ptr %26, align 1, !tbaa !100
  %28 = and i8 %27, 1
  br label %62

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !115
  %32 = getelementptr inbounds %struct.BMHeader, ptr %31, i64 0, i32 3
  %33 = load i8, ptr %32, align 1, !tbaa !100
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !116
  %39 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !115
  %41 = getelementptr inbounds %struct.BMHeader, ptr %40, i64 0, i32 3
  %42 = load i8, ptr %41, align 1, !tbaa !100
  %43 = and i8 %42, 1
  br label %62

44:                                               ; preds = %3
  %45 = load ptr, ptr %1, align 8, !tbaa !101
  %46 = sext i32 %2 to i64
  %47 = getelementptr inbounds i8, ptr %45, i64 %46
  %48 = getelementptr inbounds %struct.MLoopUV, ptr %47, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !103
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !116
  %55 = load ptr, ptr %54, align 8, !tbaa !101
  %56 = getelementptr inbounds i8, ptr %55, i64 %46
  %57 = getelementptr inbounds %struct.MLoopUV, ptr %56, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !103
  %59 = trunc i32 %58 to i8
  %60 = lshr i8 %59, 1
  %61 = and i8 %60, 1
  br label %62

62:                                               ; preds = %44, %52, %29, %36, %23, %15
  %63 = phi i8 [ %20, %15 ], [ %28, %23 ], [ 0, %29 ], [ %43, %36 ], [ 0, %44 ], [ %61, %52 ]
  ret i8 %63
}

; Function Attrs: nounwind uwtable
define dso_local void @uvedit_edge_select_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq i8 %3, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @uvedit_edge_select_enable(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %4, i32 noundef %5)
  br label %10

9:                                                ; preds = %6
  tail call void @uvedit_edge_select_disable(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %5)
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uvedit_edge_select_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 11
  %9 = load i8, ptr %8, align 2, !tbaa !74
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !112
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %0, align 8, !tbaa !83
  %20 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !113
  tail call void @BM_face_select_set(ptr noundef %19, ptr noundef %21, i8 noundef zeroext 1) #9
  br label %36

22:                                               ; preds = %12
  %23 = and i32 %15, 2
  %24 = icmp eq i32 %23, 0
  %25 = load ptr, ptr %0, align 8, !tbaa !83
  %26 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !114
  br i1 %24, label %29, label %28

28:                                               ; preds = %22
  tail call void @BM_edge_select_set(ptr noundef %25, ptr noundef %27, i8 noundef zeroext 1) #9
  br label %36

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.BMEdge, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !117
  tail call void @BM_vert_select_set(ptr noundef %25, ptr noundef %31, i8 noundef zeroext 1) #9
  %32 = load ptr, ptr %0, align 8, !tbaa !83
  %33 = load ptr, ptr %26, align 8, !tbaa !114
  %34 = getelementptr inbounds %struct.BMEdge, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !120
  tail call void @BM_vert_select_set(ptr noundef %32, ptr noundef %35, i8 noundef zeroext 1) #9
  br label %36

36:                                               ; preds = %28, %29, %18
  %37 = icmp eq i8 %3, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr %0, align 8, !tbaa !83
  %40 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !114
  tail call void @_bm_select_history_store(ptr noundef %39, ptr noundef %41) #9
  br label %56

42:                                               ; preds = %5
  %43 = load ptr, ptr %2, align 8, !tbaa !101
  %44 = sext i32 %4 to i64
  %45 = getelementptr inbounds i8, ptr %43, i64 %44
  %46 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !116
  %48 = load ptr, ptr %47, align 8, !tbaa !101
  %49 = getelementptr inbounds i8, ptr %48, i64 %44
  %50 = getelementptr inbounds %struct.MLoopUV, ptr %45, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !103
  %52 = or i32 %51, 2
  store i32 %52, ptr %50, align 4, !tbaa !103
  %53 = getelementptr inbounds %struct.MLoopUV, ptr %49, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !103
  %55 = or i32 %54, 2
  store i32 %55, ptr %53, align 4, !tbaa !103
  br label %56

56:                                               ; preds = %36, %38, %42
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uvedit_edge_select_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 11
  %8 = load i8, ptr %7, align 2, !tbaa !74
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 8
  %13 = load i16, ptr %12, align 2, !tbaa !112
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %0, align 8, !tbaa !83
  %19 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !113
  tail call void @BM_face_select_set(ptr noundef %18, ptr noundef %20, i8 noundef zeroext 0) #9
  br label %49

21:                                               ; preds = %11
  %22 = and i32 %14, 2
  %23 = icmp eq i32 %22, 0
  %24 = load ptr, ptr %0, align 8, !tbaa !83
  %25 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !114
  br i1 %23, label %28, label %27

27:                                               ; preds = %21
  tail call void @BM_edge_select_set(ptr noundef %24, ptr noundef %26, i8 noundef zeroext 0) #9
  br label %49

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.BMEdge, ptr %26, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !117
  tail call void @BM_vert_select_set(ptr noundef %24, ptr noundef %30, i8 noundef zeroext 0) #9
  %31 = load ptr, ptr %0, align 8, !tbaa !83
  %32 = load ptr, ptr %25, align 8, !tbaa !114
  %33 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !120
  tail call void @BM_vert_select_set(ptr noundef %31, ptr noundef %34, i8 noundef zeroext 0) #9
  br label %49

35:                                               ; preds = %4
  %36 = load ptr, ptr %2, align 8, !tbaa !101
  %37 = sext i32 %3 to i64
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
  %39 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !116
  %41 = load ptr, ptr %40, align 8, !tbaa !101
  %42 = getelementptr inbounds i8, ptr %41, i64 %37
  %43 = getelementptr inbounds %struct.MLoopUV, ptr %38, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !103
  %45 = and i32 %44, -3
  store i32 %45, ptr %43, align 4, !tbaa !103
  %46 = getelementptr inbounds %struct.MLoopUV, ptr %42, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !103
  %48 = and i32 %47, -3
  store i32 %48, ptr %46, align 4, !tbaa !103
  br label %49

49:                                               ; preds = %17, %28, %27, %35
  ret void
}

declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @uvedit_uv_select_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 11
  %7 = load i8, ptr %6, align 2, !tbaa !74
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !112
  %13 = and i16 %12, 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  %18 = getelementptr inbounds %struct.BMHeader, ptr %17, i64 0, i32 3
  %19 = load i8, ptr %18, align 1, !tbaa !100
  br label %33

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !115
  %23 = getelementptr inbounds %struct.BMHeader, ptr %22, i64 0, i32 3
  %24 = load i8, ptr %23, align 1, !tbaa !100
  br label %33

25:                                               ; preds = %3
  %26 = load ptr, ptr %1, align 8, !tbaa !101
  %27 = sext i32 %2 to i64
  %28 = getelementptr inbounds i8, ptr %26, i64 %27
  %29 = getelementptr inbounds %struct.MLoopUV, ptr %28, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !103
  %31 = trunc i32 %30 to i8
  %32 = lshr i8 %31, 1
  br label %33

33:                                               ; preds = %25, %20, %15
  %34 = phi i8 [ %19, %15 ], [ %24, %20 ], [ %32, %25 ]
  %35 = and i8 %34, 1
  ret i8 %35
}

; Function Attrs: nounwind uwtable
define dso_local void @uvedit_uv_select_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq i8 %3, 0
  %8 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 11
  %11 = load i8, ptr %10, align 2, !tbaa !74
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %7, label %41, label %14

14:                                               ; preds = %6
  br i1 %13, label %34, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 8
  %17 = load i16, ptr %16, align 2, !tbaa !112
  %18 = and i16 %17, 4
  %19 = icmp eq i16 %18, 0
  %20 = load ptr, ptr %0, align 8, !tbaa !83
  br i1 %19, label %24, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !113
  tail call void @BM_face_select_set(ptr noundef %20, ptr noundef %23, i8 noundef zeroext 1) #9
  br label %27

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !115
  tail call void @BM_vert_select_set(ptr noundef %20, ptr noundef %26, i8 noundef zeroext 1) #9
  br label %27

27:                                               ; preds = %24, %21
  %28 = icmp eq i8 %4, 0
  br i1 %28, label %61, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %0, align 8, !tbaa !83
  %31 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !115
  %33 = tail call zeroext i8 @_bm_select_history_remove(ptr noundef %30, ptr noundef %32) #9
  br label %61

34:                                               ; preds = %14
  %35 = load ptr, ptr %2, align 8, !tbaa !101
  %36 = sext i32 %5 to i64
  %37 = getelementptr inbounds i8, ptr %35, i64 %36
  %38 = getelementptr inbounds %struct.MLoopUV, ptr %37, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !103
  %40 = or i32 %39, 2
  store i32 %40, ptr %38, align 4, !tbaa !103
  br label %61

41:                                               ; preds = %6
  br i1 %13, label %54, label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 8
  %44 = load i16, ptr %43, align 2, !tbaa !112
  %45 = and i16 %44, 4
  %46 = icmp eq i16 %45, 0
  %47 = load ptr, ptr %0, align 8, !tbaa !83
  br i1 %46, label %51, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !113
  tail call void @BM_face_select_set(ptr noundef %47, ptr noundef %50, i8 noundef zeroext 0) #9
  br label %61

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !115
  tail call void @BM_vert_select_set(ptr noundef %47, ptr noundef %53, i8 noundef zeroext 0) #9
  br label %61

54:                                               ; preds = %41
  %55 = load ptr, ptr %2, align 8, !tbaa !101
  %56 = sext i32 %5 to i64
  %57 = getelementptr inbounds i8, ptr %55, i64 %56
  %58 = getelementptr inbounds %struct.MLoopUV, ptr %57, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !103
  %60 = and i32 %59, -3
  store i32 %60, ptr %58, align 4, !tbaa !103
  br label %61

61:                                               ; preds = %54, %51, %48, %34, %29, %27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uvedit_uv_select_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 11
  %9 = load i8, ptr %8, align 2, !tbaa !74
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !112
  %15 = and i16 %14, 4
  %16 = icmp eq i16 %15, 0
  %17 = load ptr, ptr %0, align 8, !tbaa !83
  br i1 %16, label %21, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !113
  tail call void @BM_face_select_set(ptr noundef %17, ptr noundef %20, i8 noundef zeroext 1) #9
  br label %24

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !115
  tail call void @BM_vert_select_set(ptr noundef %17, ptr noundef %23, i8 noundef zeroext 1) #9
  br label %24

24:                                               ; preds = %21, %18
  %25 = icmp eq i8 %3, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %0, align 8, !tbaa !83
  %28 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !115
  %30 = tail call zeroext i8 @_bm_select_history_remove(ptr noundef %27, ptr noundef %29) #9
  br label %38

31:                                               ; preds = %5
  %32 = load ptr, ptr %2, align 8, !tbaa !101
  %33 = sext i32 %4 to i64
  %34 = getelementptr inbounds i8, ptr %32, i64 %33
  %35 = getelementptr inbounds %struct.MLoopUV, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !103
  %37 = or i32 %36, 2
  store i32 %37, ptr %35, align 4, !tbaa !103
  br label %38

38:                                               ; preds = %24, %26, %31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uvedit_uv_select_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 11
  %8 = load i8, ptr %7, align 2, !tbaa !74
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 8
  %13 = load i16, ptr %12, align 2, !tbaa !112
  %14 = and i16 %13, 4
  %15 = icmp eq i16 %14, 0
  %16 = load ptr, ptr %0, align 8, !tbaa !83
  br i1 %15, label %20, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !113
  tail call void @BM_face_select_set(ptr noundef %16, ptr noundef %19, i8 noundef zeroext 0) #9
  br label %30

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !115
  tail call void @BM_vert_select_set(ptr noundef %16, ptr noundef %22, i8 noundef zeroext 0) #9
  br label %30

23:                                               ; preds = %4
  %24 = load ptr, ptr %2, align 8, !tbaa !101
  %25 = sext i32 %3 to i64
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  %27 = getelementptr inbounds %struct.MLoopUV, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !103
  %29 = and i32 %28, -3
  store i32 %29, ptr %27, align 4, !tbaa !103
  br label %30

30:                                               ; preds = %17, %20, %23
  ret void
}

declare zeroext i8 @_bm_select_history_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uvedit_live_unwrap_update(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !121
  %8 = and i32 %7, 2048
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @ED_uvedit_live_unwrap_begin(ptr noundef %1, ptr noundef %2) #9
  tail call void @ED_uvedit_live_unwrap_re_solve() #9
  tail call void @ED_uvedit_live_unwrap_end(i16 noundef signext 0) #9
  br label %11

11:                                               ; preds = %10, %5, %3
  ret void
}

declare void @ED_uvedit_live_unwrap_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_uvedit_live_unwrap_re_solve() local_unnamed_addr #2

declare void @ED_uvedit_live_unwrap_end(i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uv_poly_center(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  store float 0.000000e+00, ptr %1, align 4, !tbaa !127
  %5 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %5, align 4, !tbaa !127
  %6 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 11, ptr %6, align 4, !tbaa !89
  %7 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %7, align 8, !tbaa !91
  %8 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %8, align 8, !tbaa !92
  store ptr %0, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = call ptr %9(ptr noundef nonnull %4) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %3
  %13 = sext i32 %2 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi ptr [ %10, %12 ], [ %26, %14 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  %17 = getelementptr inbounds i8, ptr %16, i64 %13
  %18 = load float, ptr %17, align 4, !tbaa !127
  %19 = load float, ptr %1, align 4, !tbaa !127
  %20 = fadd float %18, %19
  store float %20, ptr %1, align 4, !tbaa !127
  %21 = getelementptr inbounds float, ptr %17, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !127
  %23 = load float, ptr %5, align 4, !tbaa !127
  %24 = fadd float %22, %23
  store float %24, ptr %5, align 4, !tbaa !127
  %25 = load ptr, ptr %8, align 8, !tbaa !92
  %26 = call ptr %25(ptr noundef nonnull %4) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %14, !llvm.loop !128

28:                                               ; preds = %14, %3
  %29 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !129
  %31 = sitofp i32 %30 to float
  %32 = fdiv float 1.000000e+00, %31
  %33 = load float, ptr %1, align 4, !tbaa !127
  %34 = fmul float %33, %32
  store float %34, ptr %1, align 4, !tbaa !127
  %35 = load float, ptr %5, align 4, !tbaa !127
  %36 = fmul float %32, %35
  store float %36, ptr %5, align 4, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @uv_poly_copy_aspect(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, float noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %5
  %8 = zext nneg i32 %4 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %19, %9 ]
  %11 = getelementptr inbounds [2 x float], ptr %0, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !127
  %13 = fmul float %12, %2
  %14 = getelementptr inbounds [2 x float], ptr %1, i64 %10
  store float %13, ptr %14, align 4, !tbaa !127
  %15 = getelementptr inbounds [2 x float], ptr %0, i64 %10, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !127
  %17 = fmul float %16, %3
  %18 = getelementptr inbounds [2 x float], ptr %1, i64 %10, i64 1
  store float %17, ptr %18, align 4, !tbaa !127
  %19 = add nuw nsw i64 %10, 1
  %20 = icmp eq i64 %19, %8
  br i1 %20, label %21, label %9, !llvm.loop !130

21:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_uvedit_minmax(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %2) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 26
  %11 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %10, i32 noundef 16) #9
  %12 = load ptr, ptr %8, align 8, !tbaa !83
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 27
  %14 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %13, i32 noundef 15) #9
  %15 = getelementptr inbounds float, ptr %3, i64 1
  store float 0x46293E5940000000, ptr %15, align 4, !tbaa !127
  store float 0x46293E5940000000, ptr %3, align 4, !tbaa !127
  %16 = getelementptr inbounds float, ptr %4, i64 1
  store float 0xC6293E5940000000, ptr %16, align 4, !tbaa !127
  store float 0xC6293E5940000000, ptr %4, align 4, !tbaa !127
  %17 = load ptr, ptr %8, align 8, !tbaa !83
  %18 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 3, ptr %18, align 4, !tbaa !89
  %19 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %19, align 8, !tbaa !91
  %20 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %20, align 8, !tbaa !92
  %21 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !93
  store ptr %22, ptr %6, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #9
  %23 = load ptr, ptr %20, align 8, !tbaa !92
  %24 = call ptr %23(ptr noundef nonnull %6) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %129, label %26

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %28 = sext i32 %14 to i64
  %29 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %30 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %31 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %32 = sext i32 %11 to i64
  %33 = sext i32 %11 to i64
  br label %34

34:                                               ; preds = %26, %124
  %35 = phi ptr [ %24, %26 ], [ %127, %124 ]
  %36 = phi i8 [ 0, %26 ], [ %125, %124 ]
  %37 = load ptr, ptr %27, align 8, !tbaa !56
  %38 = getelementptr inbounds %struct.ToolSettings, ptr %37, i64 0, i32 11
  %39 = load i8, ptr %38, align 2, !tbaa !74
  %40 = and i8 %39, 2
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %34
  %43 = load ptr, ptr %35, align 8, !tbaa !95
  %44 = getelementptr inbounds i8, ptr %43, i64 %28
  %45 = load ptr, ptr %44, align 8, !tbaa !98
  %46 = icmp eq ptr %45, %1
  br i1 %46, label %47, label %75

47:                                               ; preds = %42
  %48 = and i8 %39, 1
  %49 = icmp eq i8 %48, 0
  %50 = getelementptr inbounds %struct.BMHeader, ptr %35, i64 0, i32 3
  %51 = load i8, ptr %50, align 1, !tbaa !100
  br i1 %49, label %56, label %52

52:                                               ; preds = %47
  %53 = lshr i8 %51, 1
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  br label %75

56:                                               ; preds = %47
  %57 = and i8 %51, 2
  %58 = icmp eq i8 %57, 0
  %59 = and i8 %51, 1
  %60 = select i1 %58, i8 %59, i8 0
  br label %75

61:                                               ; preds = %34
  %62 = and i8 %39, 1
  %63 = icmp eq i8 %62, 0
  %64 = getelementptr inbounds %struct.BMHeader, ptr %35, i64 0, i32 3
  %65 = load i8, ptr %64, align 1, !tbaa !100
  br i1 %63, label %70, label %66

66:                                               ; preds = %61
  %67 = lshr i8 %65, 1
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  br label %75

70:                                               ; preds = %61
  %71 = and i8 %65, 2
  %72 = icmp eq i8 %71, 0
  %73 = and i8 %65, 1
  %74 = select i1 %72, i8 %73, i8 0
  br label %75

75:                                               ; preds = %42, %52, %56, %66, %70
  %76 = phi i8 [ 0, %42 ], [ %55, %52 ], [ %60, %56 ], [ %69, %66 ], [ %74, %70 ]
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %124, label %78

78:                                               ; preds = %75
  store i8 11, ptr %29, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %30, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %31, align 8, !tbaa !92
  store ptr %35, ptr %7, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %7) #9
  %79 = load ptr, ptr %31, align 8, !tbaa !92
  %80 = call ptr %79(ptr noundef nonnull %7) #9
  %81 = icmp eq ptr %80, null
  br i1 %81, label %124, label %82

82:                                               ; preds = %78, %119
  %83 = phi ptr [ %122, %119 ], [ %80, %78 ]
  %84 = phi i8 [ %120, %119 ], [ %36, %78 ]
  %85 = load ptr, ptr %27, align 8, !tbaa !56
  %86 = getelementptr inbounds %struct.ToolSettings, ptr %85, i64 0, i32 11
  %87 = load i8, ptr %86, align 2, !tbaa !74
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.ToolSettings, ptr %85, i64 0, i32 8
  %92 = load i16, ptr %91, align 2, !tbaa !112
  %93 = and i16 %92, 4
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.BMLoop, ptr %83, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !113
  %98 = getelementptr inbounds %struct.BMHeader, ptr %97, i64 0, i32 3
  %99 = load i8, ptr %98, align 1, !tbaa !100
  br label %112

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.BMLoop, ptr %83, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !115
  %103 = getelementptr inbounds %struct.BMHeader, ptr %102, i64 0, i32 3
  %104 = load i8, ptr %103, align 1, !tbaa !100
  br label %112

105:                                              ; preds = %82
  %106 = load ptr, ptr %83, align 8, !tbaa !101
  %107 = getelementptr inbounds i8, ptr %106, i64 %32
  %108 = getelementptr inbounds %struct.MLoopUV, ptr %107, i64 0, i32 1
  %109 = load i32, ptr %108, align 4, !tbaa !103
  %110 = trunc i32 %109 to i8
  %111 = lshr i8 %110, 1
  br label %112

112:                                              ; preds = %95, %100, %105
  %113 = phi i8 [ %99, %95 ], [ %104, %100 ], [ %111, %105 ]
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr %83, align 8, !tbaa !101
  %118 = getelementptr inbounds i8, ptr %117, i64 %33
  call void @minmax_v2v2_v2(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %118) #9
  br label %119

119:                                              ; preds = %112, %116
  %120 = phi i8 [ 1, %116 ], [ %84, %112 ]
  %121 = load ptr, ptr %31, align 8, !tbaa !92
  %122 = call ptr %121(ptr noundef nonnull %7) #9
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %82, !llvm.loop !131

124:                                              ; preds = %119, %78, %75
  %125 = phi i8 [ %36, %75 ], [ %36, %78 ], [ %120, %119 ]
  %126 = load ptr, ptr %20, align 8, !tbaa !92
  %127 = call ptr %126(ptr noundef nonnull %6) #9
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %34, !llvm.loop !132

129:                                              ; preds = %124, %5
  %130 = phi i8 [ 0, %5 ], [ %125, %124 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  ret i8 %130
}

declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uv_find_nearest_edge(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  %8 = load ptr, ptr %2, align 8, !tbaa !83
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 26
  %10 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %9, i32 noundef 16) #9
  %11 = load ptr, ptr %2, align 8, !tbaa !83
  %12 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 27
  %13 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %12, i32 noundef 15) #9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %14 = load ptr, ptr %2, align 8, !tbaa !83
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %14, i8 noundef zeroext 1) #9
  %15 = load ptr, ptr %2, align 8, !tbaa !83
  %16 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 3, ptr %16, align 4, !tbaa !89
  %17 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %17, align 8, !tbaa !91
  %18 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %18, align 8, !tbaa !92
  %19 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !93
  store ptr %20, ptr %6, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #9
  %21 = load ptr, ptr %18, align 8, !tbaa !92
  %22 = call ptr %21(ptr noundef nonnull %6) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %108, label %24

24:                                               ; preds = %5
  %25 = sext i32 %13 to i64
  %26 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %27 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %28 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %29 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %30 = sext i32 %10 to i64
  %31 = getelementptr inbounds %struct.NearestHit, ptr %4, i64 0, i32 1
  %32 = getelementptr inbounds %struct.NearestHit, ptr %4, i64 0, i32 2
  %33 = getelementptr inbounds %struct.NearestHit, ptr %4, i64 0, i32 3
  %34 = getelementptr inbounds %struct.NearestHit, ptr %4, i64 0, i32 4
  %35 = getelementptr inbounds %struct.NearestHit, ptr %4, i64 0, i32 5
  br label %36

36:                                               ; preds = %24, %103
  %37 = phi ptr [ %22, %24 ], [ %106, %103 ]
  %38 = phi float [ 1.000000e+10, %24 ], [ %104, %103 ]
  %39 = load ptr, ptr %37, align 8, !tbaa !95
  %40 = getelementptr inbounds i8, ptr %39, i64 %25
  %41 = load ptr, ptr %26, align 8, !tbaa !56
  %42 = getelementptr inbounds %struct.ToolSettings, ptr %41, i64 0, i32 11
  %43 = load i8, ptr %42, align 2, !tbaa !74
  %44 = and i8 %43, 2
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %36
  %47 = load ptr, ptr %40, align 8, !tbaa !98
  %48 = icmp eq ptr %47, %1
  br i1 %48, label %49, label %77

49:                                               ; preds = %46
  %50 = and i8 %43, 1
  %51 = icmp eq i8 %50, 0
  %52 = getelementptr inbounds %struct.BMHeader, ptr %37, i64 0, i32 3
  %53 = load i8, ptr %52, align 1, !tbaa !100
  br i1 %51, label %58, label %54

54:                                               ; preds = %49
  %55 = lshr i8 %53, 1
  %56 = and i8 %55, 1
  %57 = xor i8 %56, 1
  br label %77

58:                                               ; preds = %49
  %59 = and i8 %53, 2
  %60 = icmp eq i8 %59, 0
  %61 = and i8 %53, 1
  %62 = select i1 %60, i8 %61, i8 0
  br label %77

63:                                               ; preds = %36
  %64 = and i8 %43, 1
  %65 = icmp eq i8 %64, 0
  %66 = getelementptr inbounds %struct.BMHeader, ptr %37, i64 0, i32 3
  %67 = load i8, ptr %66, align 1, !tbaa !100
  br i1 %65, label %72, label %68

68:                                               ; preds = %63
  %69 = lshr i8 %67, 1
  %70 = and i8 %69, 1
  %71 = xor i8 %70, 1
  br label %77

72:                                               ; preds = %63
  %73 = and i8 %67, 2
  %74 = icmp eq i8 %73, 0
  %75 = and i8 %67, 1
  %76 = select i1 %74, i8 %75, i8 0
  br label %77

77:                                               ; preds = %46, %54, %58, %68, %72
  %78 = phi i8 [ 0, %46 ], [ %57, %54 ], [ %62, %58 ], [ %71, %68 ], [ %76, %72 ]
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %103, label %80

80:                                               ; preds = %77
  store i8 11, ptr %27, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %28, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %29, align 8, !tbaa !92
  store ptr %37, ptr %7, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %7) #9
  %81 = load ptr, ptr %29, align 8, !tbaa !92
  %82 = call ptr %81(ptr noundef nonnull %7) #9
  %83 = icmp eq ptr %82, null
  br i1 %83, label %103, label %84

84:                                               ; preds = %80, %97
  %85 = phi ptr [ %100, %97 ], [ %82, %80 ]
  %86 = phi i32 [ %101, %97 ], [ 0, %80 ]
  %87 = phi float [ %98, %97 ], [ %38, %80 ]
  %88 = load ptr, ptr %85, align 8, !tbaa !101
  %89 = getelementptr inbounds i8, ptr %88, i64 %30
  %90 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !116
  %92 = load ptr, ptr %91, align 8, !tbaa !101
  %93 = getelementptr inbounds i8, ptr %92, i64 %30
  %94 = call float @dist_squared_to_line_segment_v2(ptr noundef %3, ptr noundef %89, ptr noundef %93) #9
  %95 = fcmp olt float %94, %87
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  store ptr %40, ptr %31, align 8, !tbaa !133
  store ptr %37, ptr %4, align 8, !tbaa !135
  store ptr %85, ptr %32, align 8, !tbaa !136
  store ptr %89, ptr %33, align 8, !tbaa !137
  store ptr %93, ptr %34, align 8, !tbaa !138
  store i32 %86, ptr %35, align 8, !tbaa !139
  br label %97

97:                                               ; preds = %84, %96
  %98 = phi float [ %94, %96 ], [ %87, %84 ]
  %99 = load ptr, ptr %29, align 8, !tbaa !92
  %100 = call ptr %99(ptr noundef nonnull %7) #9
  %101 = add nuw nsw i32 %86, 1
  %102 = icmp eq ptr %100, null
  br i1 %102, label %103, label %84, !llvm.loop !140

103:                                              ; preds = %97, %80, %77
  %104 = phi float [ %38, %77 ], [ %38, %80 ], [ %98, %97 ]
  %105 = load ptr, ptr %18, align 8, !tbaa !92
  %106 = call ptr %105(ptr noundef nonnull %6) #9
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %36, !llvm.loop !141

108:                                              ; preds = %103, %5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uv_find_nearest_vert(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef readonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  %9 = load ptr, ptr %2, align 8, !tbaa !83
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 26
  %11 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %10, i32 noundef 16) #9
  %12 = load ptr, ptr %2, align 8, !tbaa !83
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 27
  %14 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %13, i32 noundef 15) #9
  tail call void @uv_find_nearest_edge(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %5)
  %15 = getelementptr inbounds %struct.NearestHit, ptr %5, i64 0, i32 2
  %16 = getelementptr inbounds %struct.NearestHit, ptr %5, i64 0, i32 4
  %17 = getelementptr inbounds %struct.NearestHit, ptr %5, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %18 = load ptr, ptr %2, align 8, !tbaa !83
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %18, i8 noundef zeroext 1) #9
  %19 = load ptr, ptr %2, align 8, !tbaa !83
  %20 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 3, ptr %20, align 4, !tbaa !89
  %21 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %21, align 8, !tbaa !91
  %22 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %22, align 8, !tbaa !92
  %23 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !93
  store ptr %24, ptr %7, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #9
  %25 = load ptr, ptr %22, align 8, !tbaa !92
  %26 = call ptr %25(ptr noundef nonnull %7) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %213, label %28

28:                                               ; preds = %6
  %29 = sext i32 %14 to i64
  %30 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %31 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %32 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %33 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %34 = sext i32 %11 to i64
  %35 = icmp eq ptr %4, null
  %36 = getelementptr inbounds float, ptr %3, i64 1
  %37 = getelementptr inbounds float, ptr %4, i64 1
  %38 = getelementptr inbounds float, ptr %3, i64 1
  %39 = getelementptr inbounds float, ptr %3, i64 1
  %40 = getelementptr inbounds %struct.NearestHit, ptr %5, i64 0, i32 1
  %41 = getelementptr inbounds %struct.NearestHit, ptr %5, i64 0, i32 5
  br label %42

42:                                               ; preds = %28, %208
  %43 = phi ptr [ %26, %28 ], [ %211, %208 ]
  %44 = phi float [ 1.000000e+10, %28 ], [ %209, %208 ]
  %45 = load ptr, ptr %43, align 8, !tbaa !95
  %46 = getelementptr inbounds i8, ptr %45, i64 %29
  %47 = load ptr, ptr %30, align 8, !tbaa !56
  %48 = getelementptr inbounds %struct.ToolSettings, ptr %47, i64 0, i32 11
  %49 = load i8, ptr %48, align 2, !tbaa !74
  %50 = and i8 %49, 2
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %42
  %53 = load ptr, ptr %46, align 8, !tbaa !98
  %54 = icmp eq ptr %53, %1
  br i1 %54, label %55, label %83

55:                                               ; preds = %52
  %56 = and i8 %49, 1
  %57 = icmp eq i8 %56, 0
  %58 = getelementptr inbounds %struct.BMHeader, ptr %43, i64 0, i32 3
  %59 = load i8, ptr %58, align 1, !tbaa !100
  br i1 %57, label %64, label %60

60:                                               ; preds = %55
  %61 = lshr i8 %59, 1
  %62 = and i8 %61, 1
  %63 = xor i8 %62, 1
  br label %83

64:                                               ; preds = %55
  %65 = and i8 %59, 2
  %66 = icmp eq i8 %65, 0
  %67 = and i8 %59, 1
  %68 = select i1 %66, i8 %67, i8 0
  br label %83

69:                                               ; preds = %42
  %70 = and i8 %49, 1
  %71 = icmp eq i8 %70, 0
  %72 = getelementptr inbounds %struct.BMHeader, ptr %43, i64 0, i32 3
  %73 = load i8, ptr %72, align 1, !tbaa !100
  br i1 %71, label %78, label %74

74:                                               ; preds = %69
  %75 = lshr i8 %73, 1
  %76 = and i8 %75, 1
  %77 = xor i8 %76, 1
  br label %83

78:                                               ; preds = %69
  %79 = and i8 %73, 2
  %80 = icmp eq i8 %79, 0
  %81 = and i8 %73, 1
  %82 = select i1 %80, i8 %81, i8 0
  br label %83

83:                                               ; preds = %52, %60, %64, %74, %78
  %84 = phi i8 [ 0, %52 ], [ %63, %60 ], [ %68, %64 ], [ %77, %74 ], [ %82, %78 ]
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %208, label %86

86:                                               ; preds = %83
  store i8 11, ptr %31, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %32, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %33, align 8, !tbaa !92
  store ptr %43, ptr %8, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %8) #9
  %87 = load ptr, ptr %33, align 8, !tbaa !92
  %88 = call ptr %87(ptr noundef nonnull %8) #9
  %89 = icmp eq ptr %88, null
  br i1 %89, label %208, label %90

90:                                               ; preds = %86, %202
  %91 = phi ptr [ %205, %202 ], [ %88, %86 ]
  %92 = phi i32 [ %206, %202 ], [ 0, %86 ]
  %93 = phi float [ %203, %202 ], [ %44, %86 ]
  %94 = load ptr, ptr %91, align 8, !tbaa !101
  %95 = getelementptr inbounds i8, ptr %94, i64 %34
  br i1 %35, label %143, label %96

96:                                               ; preds = %90
  %97 = load ptr, ptr %30, align 8, !tbaa !56
  %98 = getelementptr inbounds %struct.ToolSettings, ptr %97, i64 0, i32 11
  %99 = load i8, ptr %98, align 2, !tbaa !74
  %100 = and i8 %99, 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.ToolSettings, ptr %97, i64 0, i32 8
  %104 = load i16, ptr %103, align 2, !tbaa !112
  %105 = and i16 %104, 4
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.BMLoop, ptr %91, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !113
  %110 = getelementptr inbounds %struct.BMHeader, ptr %109, i64 0, i32 3
  %111 = load i8, ptr %110, align 1, !tbaa !100
  br label %122

112:                                              ; preds = %102
  %113 = getelementptr inbounds %struct.BMLoop, ptr %91, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !115
  %115 = getelementptr inbounds %struct.BMHeader, ptr %114, i64 0, i32 3
  %116 = load i8, ptr %115, align 1, !tbaa !100
  br label %122

117:                                              ; preds = %96
  %118 = getelementptr inbounds %struct.MLoopUV, ptr %95, i64 0, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !103
  %120 = trunc i32 %119 to i8
  %121 = lshr i8 %120, 1
  br label %122

122:                                              ; preds = %107, %112, %117
  %123 = phi i8 [ %111, %107 ], [ %116, %112 ], [ %121, %117 ]
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %143, label %126

126:                                              ; preds = %122
  %127 = load float, ptr %95, align 4, !tbaa !127
  %128 = load float, ptr %3, align 4, !tbaa !127
  %129 = fsub float %127, %128
  %130 = getelementptr inbounds float, ptr %95, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !127
  %132 = load float, ptr %36, align 4, !tbaa !127
  %133 = fsub float %131, %132
  %134 = call float @llvm.fabs.f32(float %129)
  %135 = call float @llvm.fabs.f32(float %133)
  %136 = fadd float %134, %135
  %137 = load float, ptr %4, align 4, !tbaa !127
  %138 = call float @llvm.fabs.f32(float %137)
  %139 = load float, ptr %37, align 4, !tbaa !127
  %140 = call float @llvm.fabs.f32(float %139)
  %141 = fadd float %138, %140
  %142 = fadd float %136, %141
  br label %154

143:                                              ; preds = %122, %90
  %144 = load float, ptr %95, align 4, !tbaa !127
  %145 = load float, ptr %3, align 4, !tbaa !127
  %146 = fsub float %144, %145
  %147 = getelementptr inbounds float, ptr %95, i64 1
  %148 = load float, ptr %147, align 4, !tbaa !127
  %149 = load float, ptr %38, align 4, !tbaa !127
  %150 = fsub float %148, %149
  %151 = call float @llvm.fabs.f32(float %146)
  %152 = call float @llvm.fabs.f32(float %150)
  %153 = fadd float %151, %152
  br label %154

154:                                              ; preds = %143, %126
  %155 = phi float [ %142, %126 ], [ %153, %143 ]
  %156 = fcmp ugt float %155, %93
  br i1 %156, label %202, label %157

157:                                              ; preds = %154
  %158 = fcmp oeq float %155, %93
  br i1 %158, label %159, label %197

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.BMLoop, ptr %91, i64 0, i32 7
  %161 = load ptr, ptr %160, align 8, !tbaa !142
  %162 = load ptr, ptr %161, align 8, !tbaa !101
  %163 = getelementptr inbounds i8, ptr %162, i64 %34
  %164 = load float, ptr %163, align 4, !tbaa !127
  %165 = load float, ptr %3, align 4, !tbaa !127
  %166 = fsub float %164, %165
  %167 = getelementptr inbounds float, ptr %95, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !127
  %169 = load float, ptr %39, align 4, !tbaa !127
  %170 = fsub float %168, %169
  %171 = load float, ptr %95, align 4, !tbaa !127
  %172 = fsub float %171, %165
  %173 = getelementptr inbounds float, ptr %163, i64 1
  %174 = load float, ptr %173, align 4, !tbaa !127
  %175 = fsub float %174, %169
  %176 = fneg float %172
  %177 = fmul float %175, %176
  %178 = call float @llvm.fmuladd.f32(float %166, float %170, float %177)
  %179 = fcmp ogt float %178, 0.000000e+00
  br i1 %179, label %180, label %194

180:                                              ; preds = %159
  %181 = getelementptr inbounds %struct.BMLoop, ptr %91, i64 0, i32 6
  %182 = load ptr, ptr %181, align 8, !tbaa !116
  %183 = load ptr, ptr %182, align 8, !tbaa !101
  %184 = getelementptr inbounds i8, ptr %183, i64 %34
  %185 = load float, ptr %184, align 4, !tbaa !127
  %186 = fsub float %185, %165
  %187 = getelementptr inbounds float, ptr %184, i64 1
  %188 = load float, ptr %187, align 4, !tbaa !127
  %189 = fsub float %188, %169
  %190 = fmul float %189, %176
  %191 = call float @llvm.fmuladd.f32(float %186, float %170, float %190)
  %192 = fcmp ole float %191, 0.000000e+00
  %193 = zext i1 %192 to i8
  br label %194

194:                                              ; preds = %159, %180
  %195 = phi i8 [ 0, %159 ], [ %193, %180 ]
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %194, %157
  store ptr %91, ptr %15, align 8, !tbaa !136
  store ptr %95, ptr %17, align 8, !tbaa !137
  %198 = getelementptr inbounds %struct.BMLoop, ptr %91, i64 0, i32 6
  %199 = load ptr, ptr %198, align 8, !tbaa !116
  %200 = load ptr, ptr %199, align 8, !tbaa !101
  %201 = getelementptr inbounds i8, ptr %200, i64 %34
  store ptr %201, ptr %16, align 8, !tbaa !138
  store ptr %46, ptr %40, align 8, !tbaa !133
  store ptr %43, ptr %5, align 8, !tbaa !135
  store i32 %92, ptr %41, align 8, !tbaa !139
  br label %202

202:                                              ; preds = %154, %197, %194
  %203 = phi float [ %155, %197 ], [ %93, %194 ], [ %93, %154 ]
  %204 = load ptr, ptr %33, align 8, !tbaa !92
  %205 = call ptr %204(ptr noundef nonnull %8) #9
  %206 = add nuw nsw i32 %92, 1
  %207 = icmp eq ptr %205, null
  br i1 %207, label %208, label %90, !llvm.loop !143

208:                                              ; preds = %202, %86, %83
  %209 = phi float [ %44, %83 ], [ %44, %86 ], [ %203, %202 ]
  %210 = load ptr, ptr %22, align 8, !tbaa !92
  %211 = call ptr %210(ptr noundef nonnull %7) #9
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %42, !llvm.loop !144

213:                                              ; preds = %208, %6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_uvedit_nearest_uv(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readnone %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %1) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 26
  %11 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %10, i32 noundef 16) #9
  %12 = load ptr, ptr %8, align 8, !tbaa !83
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 27
  %14 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %13, i32 noundef 15) #9
  %15 = load float, ptr %3, align 4, !tbaa !127
  store float %15, ptr %4, align 4, !tbaa !127
  %16 = getelementptr inbounds float, ptr %3, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !127
  %18 = getelementptr inbounds float, ptr %4, i64 1
  store float %17, ptr %18, align 4, !tbaa !127
  %19 = load ptr, ptr %8, align 8, !tbaa !83
  %20 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 3, ptr %20, align 4, !tbaa !89
  %21 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %21, align 8, !tbaa !91
  %22 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %22, align 8, !tbaa !92
  %23 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !93
  store ptr %24, ptr %6, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #9
  %25 = load ptr, ptr %22, align 8, !tbaa !92
  %26 = call ptr %25(ptr noundef nonnull %6) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %115, label %28

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %30 = sext i32 %14 to i64
  %31 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %32 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %33 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %34 = sext i32 %11 to i64
  br label %35

35:                                               ; preds = %28, %109
  %36 = phi ptr [ %26, %28 ], [ %113, %109 ]
  %37 = phi i8 [ 0, %28 ], [ %111, %109 ]
  %38 = phi float [ 1.000000e+10, %28 ], [ %110, %109 ]
  %39 = load ptr, ptr %29, align 8, !tbaa !56
  %40 = getelementptr inbounds %struct.ToolSettings, ptr %39, i64 0, i32 11
  %41 = load i8, ptr %40, align 2, !tbaa !74
  %42 = and i8 %41, 2
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %63, label %44

44:                                               ; preds = %35
  %45 = load ptr, ptr %36, align 8, !tbaa !95
  %46 = getelementptr inbounds i8, ptr %45, i64 %30
  %47 = load ptr, ptr %46, align 8, !tbaa !98
  %48 = icmp eq ptr %47, %2
  br i1 %48, label %49, label %77

49:                                               ; preds = %44
  %50 = and i8 %41, 1
  %51 = icmp eq i8 %50, 0
  %52 = getelementptr inbounds %struct.BMHeader, ptr %36, i64 0, i32 3
  %53 = load i8, ptr %52, align 1, !tbaa !100
  br i1 %51, label %58, label %54

54:                                               ; preds = %49
  %55 = lshr i8 %53, 1
  %56 = and i8 %55, 1
  %57 = xor i8 %56, 1
  br label %77

58:                                               ; preds = %49
  %59 = and i8 %53, 2
  %60 = icmp eq i8 %59, 0
  %61 = and i8 %53, 1
  %62 = select i1 %60, i8 %61, i8 0
  br label %77

63:                                               ; preds = %35
  %64 = and i8 %41, 1
  %65 = icmp eq i8 %64, 0
  %66 = getelementptr inbounds %struct.BMHeader, ptr %36, i64 0, i32 3
  %67 = load i8, ptr %66, align 1, !tbaa !100
  br i1 %65, label %72, label %68

68:                                               ; preds = %63
  %69 = lshr i8 %67, 1
  %70 = and i8 %69, 1
  %71 = xor i8 %70, 1
  br label %77

72:                                               ; preds = %63
  %73 = and i8 %67, 2
  %74 = icmp eq i8 %73, 0
  %75 = and i8 %67, 1
  %76 = select i1 %74, i8 %75, i8 0
  br label %77

77:                                               ; preds = %44, %54, %58, %68, %72
  %78 = phi i8 [ 0, %44 ], [ %57, %54 ], [ %62, %58 ], [ %71, %68 ], [ %76, %72 ]
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %109, label %80

80:                                               ; preds = %77
  store i8 11, ptr %31, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %32, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %33, align 8, !tbaa !92
  store ptr %36, ptr %7, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %7) #9
  %81 = load ptr, ptr %33, align 8, !tbaa !92
  %82 = call ptr %81(ptr noundef nonnull %7) #9
  %83 = icmp eq ptr %82, null
  br i1 %83, label %109, label %84

84:                                               ; preds = %80, %103
  %85 = phi ptr [ %107, %103 ], [ %82, %80 ]
  %86 = phi i8 [ %105, %103 ], [ %37, %80 ]
  %87 = phi float [ %104, %103 ], [ %38, %80 ]
  %88 = load ptr, ptr %85, align 8, !tbaa !101
  %89 = getelementptr inbounds i8, ptr %88, i64 %34
  %90 = load float, ptr %89, align 4, !tbaa !127
  %91 = load float, ptr %3, align 4, !tbaa !127
  %92 = fsub float %90, %91
  %93 = getelementptr inbounds float, ptr %89, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !127
  %95 = load float, ptr %16, align 4, !tbaa !127
  %96 = fsub float %94, %95
  %97 = call float @llvm.fabs.f32(float %92)
  %98 = call float @llvm.fabs.f32(float %96)
  %99 = fadd float %97, %98
  %100 = fcmp ugt float %99, %87
  br i1 %100, label %103, label %101

101:                                              ; preds = %84
  store float %90, ptr %4, align 4, !tbaa !127
  %102 = load float, ptr %93, align 4, !tbaa !127
  store float %102, ptr %18, align 4, !tbaa !127
  br label %103

103:                                              ; preds = %84, %101
  %104 = phi float [ %99, %101 ], [ %87, %84 ]
  %105 = phi i8 [ 1, %101 ], [ %86, %84 ]
  %106 = load ptr, ptr %33, align 8, !tbaa !92
  %107 = call ptr %106(ptr noundef nonnull %7) #9
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %84, !llvm.loop !145

109:                                              ; preds = %103, %80, %77
  %110 = phi float [ %38, %77 ], [ %38, %80 ], [ %104, %103 ]
  %111 = phi i8 [ %37, %77 ], [ %37, %80 ], [ %105, %103 ]
  %112 = load ptr, ptr %22, align 8, !tbaa !92
  %113 = call ptr %112(ptr noundef nonnull %6) #9
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %35, !llvm.loop !146

115:                                              ; preds = %109, %5
  %116 = phi i8 [ 0, %5 ], [ %111, %109 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  ret i8 %116
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_operatortypes_uvedit() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_all) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_loop) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_linked) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_linked_pick) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_split) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_pinned) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_border) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_lasso) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_circle_select) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_more) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_less) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_snap_cursor) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_snap_selected) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_align) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_stitch) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_seams_from_islands) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_mark_seam) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_weld) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_remove_doubles) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_pin) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_average_islands_scale) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_cube_project) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_cylinder_project) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_project_from_view) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_minimize_stretch) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_pack_islands) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_reset) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_sphere_project) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_unwrap) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_reveal) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_hide) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_cursor_set) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_tile_set) #9
  ret void
}

declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @UV_OT_select_all(ptr noundef %0) #0 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.18, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_select_all_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !154
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UV_OT_select(ptr nocapture noundef %0) #0 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.39, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_select_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @uv_select_invoke, ptr %6, align 8, !tbaa !155
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !156
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.42, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, float noundef -1.000000e+02, float noundef 1.000000e+02) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UV_OT_select_loop(ptr nocapture noundef %0) #0 {
  store ptr @.str.47, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.48, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_select_loop_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @uv_select_loop_invoke, ptr %6, align 8, !tbaa !155
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !156
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.42, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, float noundef -1.000000e+02, float noundef 1.000000e+02) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UV_OT_select_linked(ptr nocapture noundef %0) #0 {
  store ptr @.str.49, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.50, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_select_linked_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UV_OT_select_linked_pick(ptr nocapture noundef %0) #0 {
  store ptr @.str.52, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.53, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.15, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @uv_select_linked_pick_invoke, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_select_linked_pick_exec, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !156
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.42, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, float noundef -1.000000e+02, float noundef 1.000000e+02) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @UV_OT_select_split(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.55, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_select_split_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @UV_OT_select_pinned(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_select_pinned_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !154
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UV_OT_select_border(ptr noundef %0) #0 {
  store ptr @.str.59, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.60, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.9, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_border_select_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !157
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit_space_image, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %8, align 8, !tbaa !158
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !152
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) #9
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UV_OT_select_lasso(ptr nocapture noundef %0) #0 {
  store ptr @.str.64, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.65, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lasso_invoke, ptr %4, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lasso_modal, ptr %5, align 8, !tbaa !157
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_lasso_select_exec, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit_space_image, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_lasso_cancel, ptr %8, align 8, !tbaa !158
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %9, align 8, !tbaa !152
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_collection_runtime(ptr noundef %11, ptr noundef nonnull @.str.66, ptr noundef nonnull @RNA_OperatorMousePath, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68) #9
  %13 = load ptr, ptr %10, align 8, !tbaa !156
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #9
  %15 = load ptr, ptr %10, align 8, !tbaa !156
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.71) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UV_OT_circle_select(ptr nocapture noundef %0) #0 {
  store ptr @.str.72, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.73, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_circle_invoke, ptr %4, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_circle_modal, ptr %5, align 8, !tbaa !157
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_circle_select_exec, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit_space_image, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_circle_cancel, ptr %8, align 8, !tbaa !158
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !152
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.74, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.68, i32 noundef -2147483648, i32 noundef 2147483647) #9
  %13 = load ptr, ptr %10, align 8, !tbaa !156
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.76, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.68, i32 noundef -2147483648, i32 noundef 2147483647) #9
  %15 = load ptr, ptr %10, align 8, !tbaa !156
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.78, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.68, i32 noundef 1, i32 noundef 2147483647) #9
  %17 = load ptr, ptr %10, align 8, !tbaa !156
  %18 = tail call ptr @RNA_def_int(ptr noundef %17, ptr noundef nonnull @.str.63, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.68, i32 noundef -2147483648, i32 noundef 2147483647) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @UV_OT_select_more(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.81, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.82, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_select_more_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit_space_image, ptr %6, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @UV_OT_select_less(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.83, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.84, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_select_less_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit_space_image, ptr %6, align 8, !tbaa !154
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UV_OT_snap_cursor(ptr nocapture noundef %0) #0 {
  store ptr @.str.89, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.90, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.91, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_snap_cursor_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit_space_image, ptr %6, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.92, ptr noundef nonnull @UV_OT_snap_cursor.target_items, i32 noundef 0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UV_OT_snap_selected(ptr nocapture noundef %0) #0 {
  store ptr @.str.101, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.102, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.103, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_snap_selection_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit_space_image, ptr %6, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.92, ptr noundef nonnull @UV_OT_snap_selected.target_items, i32 noundef 0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UV_OT_align(ptr nocapture noundef %0) #0 {
  store ptr @.str.122, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.123, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.124, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_align_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.125, ptr noundef nonnull @UV_OT_align.axis_items, i32 noundef 97, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127) #9
  ret void
}

declare void @UV_OT_stitch(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @UV_OT_seams_from_islands(ptr nocapture noundef %0) #0 {
  store ptr @.str.129, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.130, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.131, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_seams_from_islands_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.132, i32 noundef 1, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !156
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.135, i32 noundef 0, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @UV_OT_mark_seam(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.133, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.138, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_mark_seam_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @UV_OT_weld(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.139, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.140, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.141, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_weld_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !154
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UV_OT_remove_doubles(ptr nocapture noundef %0) #0 {
  store ptr @.str.142, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.143, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.144, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_remove_doubles_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.145, float noundef 0x3F947AE140000000, float noundef 0.000000e+00, float noundef 1.000000e+01, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.147, float noundef 0.000000e+00, float noundef 1.000000e+00) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !156
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.148, i32 noundef 0, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UV_OT_pin(ptr nocapture noundef %0) #0 {
  store ptr @.str.154, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.155, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_pin_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.157) #9
  ret void
}

declare void @UV_OT_average_islands_scale(ptr noundef) #2

declare void @UV_OT_cube_project(ptr noundef) #2

declare void @UV_OT_cylinder_project(ptr noundef) #2

declare void @UV_OT_project_from_view(ptr noundef) #2

declare void @UV_OT_minimize_stretch(ptr noundef) #2

declare void @UV_OT_pack_islands(ptr noundef) #2

declare void @UV_OT_reset(ptr noundef) #2

declare void @UV_OT_sphere_project(ptr noundef) #2

declare void @UV_OT_unwrap(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @UV_OT_reveal(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.158, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.159, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_reveal_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !154
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UV_OT_hide(ptr nocapture noundef %0) #0 {
  store ptr @.str.160, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.161, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_hide_exec, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.162) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UV_OT_cursor_set(ptr nocapture noundef %0) #0 {
  store ptr @.str.163, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.164, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_set_2d_cursor_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @uv_set_2d_cursor_invoke, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @uv_set_2d_cursor_poll, ptr %6, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !152
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !156
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.42, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.165, float noundef -1.000000e+01, float noundef 1.000000e+01) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UV_OT_tile_set(ptr nocapture noundef %0) #0 {
  store ptr @.str.166, ptr %0, align 8, !tbaa !147
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.167, ptr %2, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.33, ptr %3, align 8, !tbaa !151
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_tile_exec, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @set_tile_invoke, ptr %5, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_image_active, ptr %6, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !152
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !156
  %10 = tail call ptr @RNA_def_int_vector(ptr noundef %9, ptr noundef nonnull @.str.168, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, i32 noundef 0, i32 noundef 10) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_keymap_uvedit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #9
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 9
  store ptr @ED_operator_uvedit_can_uv_sculpt, ptr %3, align 8, !tbaa !159
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %5 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !161
  tail call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #9
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 101, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %8 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %9 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !161
  tail call void @RNA_boolean_set(ptr noundef %10, ptr noundef nonnull @.str.6, i32 noundef 0) #9
  %11 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %12 = getelementptr inbounds %struct.wmKeyMapItem, ptr %11, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !161
  tail call void @RNA_boolean_set(ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef 1) #9
  %14 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 6, i32 noundef 1, i32 noundef 4, i32 noundef 0) #9
  %15 = getelementptr inbounds %struct.wmKeyMapItem, ptr %14, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !161
  tail call void @RNA_boolean_set(ptr noundef %16, ptr noundef nonnull @.str.6, i32 noundef 0) #9
  %17 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 6, i32 noundef 1, i32 noundef 5, i32 noundef 0) #9
  %18 = getelementptr inbounds %struct.wmKeyMapItem, ptr %17, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !161
  tail call void @RNA_boolean_set(ptr noundef %19, ptr noundef nonnull @.str.6, i32 noundef 1) #9
  %20 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 121, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %22 = getelementptr inbounds %struct.wmKeyMapItem, ptr %21, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !161
  tail call void @RNA_boolean_set(ptr noundef %23, ptr noundef nonnull @.str.10, i32 noundef 0) #9
  %24 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef 98, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %25 = getelementptr inbounds %struct.wmKeyMapItem, ptr %24, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !161
  tail call void @RNA_boolean_set(ptr noundef %26, ptr noundef nonnull @.str.10, i32 noundef 1) #9
  %27 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 99, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 20486, i32 noundef -1, i32 noundef 2, i32 noundef 0) #9
  %29 = getelementptr inbounds %struct.wmKeyMapItem, ptr %28, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !161
  tail call void @RNA_boolean_set(ptr noundef %30, ptr noundef nonnull @.str.13, i32 noundef 0) #9
  %31 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 20486, i32 noundef -1, i32 noundef 3, i32 noundef 0) #9
  %32 = getelementptr inbounds %struct.wmKeyMapItem, ptr %31, i64 0, i32 17
  %33 = load ptr, ptr %32, align 8, !tbaa !161
  tail call void @RNA_boolean_set(ptr noundef %33, ptr noundef nonnull @.str.13, i32 noundef 1) #9
  %34 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %35 = getelementptr inbounds %struct.wmKeyMapItem, ptr %34, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !161
  tail call void @RNA_boolean_set(ptr noundef %36, ptr noundef nonnull @.str.6, i32 noundef 0) #9
  %37 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %38 = getelementptr inbounds %struct.wmKeyMapItem, ptr %37, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !161
  tail call void @RNA_boolean_set(ptr noundef %39, ptr noundef nonnull @.str.6, i32 noundef 0) #9
  %40 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 1, i32 noundef 3, i32 noundef 0) #9
  %41 = getelementptr inbounds %struct.wmKeyMapItem, ptr %40, i64 0, i32 17
  %42 = load ptr, ptr %41, align 8, !tbaa !161
  tail call void @RNA_boolean_set(ptr noundef %42, ptr noundef nonnull @.str.6, i32 noundef 1) #9
  %43 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %44 = getelementptr inbounds %struct.wmKeyMapItem, ptr %43, i64 0, i32 17
  %45 = load ptr, ptr %44, align 8, !tbaa !161
  tail call void @RNA_boolean_set(ptr noundef %45, ptr noundef nonnull @.str.6, i32 noundef 1) #9
  %46 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 164, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %47 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 162, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %48 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %49 = getelementptr inbounds %struct.wmKeyMapItem, ptr %48, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !161
  tail call void @RNA_enum_set(ptr noundef %50, ptr noundef nonnull @.str.19, i32 noundef 0) #9
  %51 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %52 = getelementptr inbounds %struct.wmKeyMapItem, ptr %51, i64 0, i32 17
  %53 = load ptr, ptr %52, align 8, !tbaa !161
  tail call void @RNA_enum_set(ptr noundef %53, ptr noundef nonnull @.str.19, i32 noundef 3) #9
  %54 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef 112, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %55 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 119, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %56 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef 118, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %57 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 112, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %58 = getelementptr inbounds %struct.wmKeyMapItem, ptr %57, i64 0, i32 17
  %59 = load ptr, ptr %58, align 8, !tbaa !161
  tail call void @RNA_boolean_set(ptr noundef %59, ptr noundef nonnull @.str.24, i32 noundef 0) #9
  %60 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 112, i32 noundef 1, i32 noundef 4, i32 noundef 0) #9
  %61 = getelementptr inbounds %struct.wmKeyMapItem, ptr %60, i64 0, i32 17
  %62 = load ptr, ptr %61, align 8, !tbaa !161
  tail call void @RNA_boolean_set(ptr noundef %62, ptr noundef nonnull @.str.24, i32 noundef 1) #9
  %63 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef 118, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %65 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef 112, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %66 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef 97, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %67 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %68 = getelementptr inbounds %struct.wmKeyMapItem, ptr %67, i64 0, i32 17
  %69 = load ptr, ptr %68, align 8, !tbaa !161
  tail call void @RNA_boolean_set(ptr noundef %69, ptr noundef nonnull @.str.30, i32 noundef 0) #9
  %70 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef 104, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %71 = getelementptr inbounds %struct.wmKeyMapItem, ptr %70, i64 0, i32 17
  %72 = load ptr, ptr %71, align 8, !tbaa !161
  tail call void @RNA_boolean_set(ptr noundef %72, ptr noundef nonnull @.str.30, i32 noundef 1) #9
  %73 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.31, i32 noundef 104, i32 noundef 1, i32 noundef 4, i32 noundef 0) #9
  %74 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %75 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.33, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %76 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.34, i32 noundef 115, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %77 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.35, i32 noundef 219, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  tail call void @ED_keymap_proportional_cycle(ptr noundef %0, ptr noundef %2) #9
  tail call void @ED_keymap_proportional_editmode(ptr noundef %0, ptr noundef %2, i8 noundef zeroext 0) #9
  tail call void @transform_keymap_for_space(ptr noundef %0, ptr noundef %2, i32 noundef 6) #9
  ret void
}

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @ED_operator_uvedit_can_uv_sculpt(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #9
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #9
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %5 = tail call zeroext i8 @ED_space_image_show_uvedit(ptr noundef %2, ptr noundef %4) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 64
  %9 = load i32, ptr %8, align 8, !tbaa !163
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %7 ]
  ret i32 %13
}

declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_keymap_add_menu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_keymap_proportional_cycle(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_keymap_proportional_editmode(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @transform_keymap_for_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

declare void @bmiter__loop_of_face_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %5 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #9
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #9
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !164
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.19) #9
  tail call fastcc void @uv_select_all_perform(ptr noundef %3, ptr noundef %5, ptr noundef %6, i32 noundef %9)
  %10 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %11) #9
  ret i32 4
}

declare i32 @ED_operator_uvedit(ptr noundef) #2

declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_image(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @uv_select_all_perform(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  %9 = load ptr, ptr %2, align 8, !tbaa !83
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 26
  %11 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %10, i32 noundef 16) #9
  %12 = load ptr, ptr %2, align 8, !tbaa !83
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 27
  %14 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %13, i32 noundef 15) #9
  %15 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 11
  %16 = load i8, ptr %15, align 2, !tbaa !74
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  switch i32 %3, label %195 [
    i32 0, label %20
    i32 1, label %21
    i32 2, label %22
    i32 3, label %23
  ]

20:                                               ; preds = %19
  tail call void @EDBM_select_toggle_all(ptr noundef nonnull %2) #9
  br label %195

21:                                               ; preds = %19
  tail call void @EDBM_flag_enable_all(ptr noundef nonnull %2, i8 noundef zeroext 1) #9
  br label %195

22:                                               ; preds = %19
  tail call void @EDBM_flag_disable_all(ptr noundef nonnull %2, i8 noundef zeroext 1) #9
  br label %195

23:                                               ; preds = %19
  tail call void @EDBM_select_swap(ptr noundef nonnull %2) #9
  tail call void @EDBM_selectmode_flush(ptr noundef nonnull %2) #9
  br label %195

24:                                               ; preds = %4
  %25 = icmp eq i32 %3, 0
  br i1 %25, label %26, label %107

26:                                               ; preds = %24
  %27 = load ptr, ptr %2, align 8, !tbaa !83
  %28 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %28, align 4, !tbaa !89
  %29 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %29, align 8, !tbaa !91
  %30 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %30, align 8, !tbaa !92
  %31 = getelementptr inbounds %struct.BMesh, ptr %27, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !93
  store ptr %32, ptr %5, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #9
  %33 = load ptr, ptr %30, align 8, !tbaa !92
  %34 = call ptr %33(ptr noundef nonnull %5) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %107, label %36

36:                                               ; preds = %26
  %37 = sext i32 %14 to i64
  %38 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %39 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %40 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %41 = sext i32 %11 to i64
  br label %42

42:                                               ; preds = %36, %102
  %43 = phi i32 [ 1, %36 ], [ %103, %102 ]
  %44 = phi ptr [ %34, %36 ], [ %105, %102 ]
  %45 = load ptr, ptr %7, align 8, !tbaa !56
  %46 = getelementptr inbounds %struct.ToolSettings, ptr %45, i64 0, i32 11
  %47 = load i8, ptr %46, align 2, !tbaa !74
  %48 = and i8 %47, 2
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %42
  %51 = load ptr, ptr %44, align 8, !tbaa !95
  %52 = getelementptr inbounds i8, ptr %51, i64 %37
  %53 = load ptr, ptr %52, align 8, !tbaa !98
  %54 = icmp eq ptr %53, %1
  br i1 %54, label %55, label %83

55:                                               ; preds = %50
  %56 = and i8 %47, 1
  %57 = icmp eq i8 %56, 0
  %58 = getelementptr inbounds %struct.BMHeader, ptr %44, i64 0, i32 3
  %59 = load i8, ptr %58, align 1, !tbaa !100
  br i1 %57, label %64, label %60

60:                                               ; preds = %55
  %61 = lshr i8 %59, 1
  %62 = and i8 %61, 1
  %63 = xor i8 %62, 1
  br label %83

64:                                               ; preds = %55
  %65 = and i8 %59, 2
  %66 = icmp eq i8 %65, 0
  %67 = and i8 %59, 1
  %68 = select i1 %66, i8 %67, i8 0
  br label %83

69:                                               ; preds = %42
  %70 = and i8 %47, 1
  %71 = icmp eq i8 %70, 0
  %72 = getelementptr inbounds %struct.BMHeader, ptr %44, i64 0, i32 3
  %73 = load i8, ptr %72, align 1, !tbaa !100
  br i1 %71, label %78, label %74

74:                                               ; preds = %69
  %75 = lshr i8 %73, 1
  %76 = and i8 %75, 1
  %77 = xor i8 %76, 1
  br label %83

78:                                               ; preds = %69
  %79 = and i8 %73, 2
  %80 = icmp eq i8 %79, 0
  %81 = and i8 %73, 1
  %82 = select i1 %80, i8 %81, i8 0
  br label %83

83:                                               ; preds = %50, %60, %64, %74, %78
  %84 = phi i8 [ 0, %50 ], [ %63, %60 ], [ %68, %64 ], [ %77, %74 ], [ %82, %78 ]
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %102, label %86

86:                                               ; preds = %83
  store i8 11, ptr %38, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %39, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %40, align 8, !tbaa !92
  store ptr %44, ptr %6, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #9
  %87 = load ptr, ptr %40, align 8, !tbaa !92
  %88 = call ptr %87(ptr noundef nonnull %6) #9
  %89 = icmp eq ptr %88, null
  br i1 %89, label %102, label %90

90:                                               ; preds = %86, %98
  %91 = phi ptr [ %100, %98 ], [ %88, %86 ]
  %92 = load ptr, ptr %91, align 8, !tbaa !101
  %93 = getelementptr inbounds i8, ptr %92, i64 %41
  %94 = getelementptr inbounds %struct.MLoopUV, ptr %93, i64 0, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !103
  %96 = and i32 %95, 2
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load ptr, ptr %40, align 8, !tbaa !92
  %100 = call ptr %99(ptr noundef nonnull %6) #9
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %90, !llvm.loop !166

102:                                              ; preds = %98, %90, %86, %83
  %103 = phi i32 [ %43, %83 ], [ %43, %86 ], [ 2, %90 ], [ %43, %98 ]
  %104 = load ptr, ptr %30, align 8, !tbaa !92
  %105 = call ptr %104(ptr noundef nonnull %5) #9
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %42, !llvm.loop !167

107:                                              ; preds = %102, %26, %24
  %108 = phi i32 [ %3, %24 ], [ 1, %26 ], [ %103, %102 ]
  %109 = load ptr, ptr %2, align 8, !tbaa !83
  %110 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %110, align 4, !tbaa !89
  %111 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %111, align 8, !tbaa !91
  %112 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %112, align 8, !tbaa !92
  %113 = getelementptr inbounds %struct.BMesh, ptr %109, i64 0, i32 12
  %114 = load ptr, ptr %113, align 8, !tbaa !93
  store ptr %114, ptr %5, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #9
  %115 = load ptr, ptr %112, align 8, !tbaa !92
  %116 = call ptr %115(ptr noundef nonnull %5) #9
  %117 = icmp eq ptr %116, null
  br i1 %117, label %195, label %118

118:                                              ; preds = %107
  %119 = sext i32 %14 to i64
  %120 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %121 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %122 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %123 = sext i32 %11 to i64
  br label %124

124:                                              ; preds = %118, %191
  %125 = phi ptr [ %116, %118 ], [ %193, %191 ]
  %126 = load ptr, ptr %7, align 8, !tbaa !56
  %127 = getelementptr inbounds %struct.ToolSettings, ptr %126, i64 0, i32 11
  %128 = load i8, ptr %127, align 2, !tbaa !74
  %129 = and i8 %128, 2
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %150, label %131

131:                                              ; preds = %124
  %132 = load ptr, ptr %125, align 8, !tbaa !95
  %133 = getelementptr inbounds i8, ptr %132, i64 %119
  %134 = load ptr, ptr %133, align 8, !tbaa !98
  %135 = icmp eq ptr %134, %1
  br i1 %135, label %136, label %164

136:                                              ; preds = %131
  %137 = and i8 %128, 1
  %138 = icmp eq i8 %137, 0
  %139 = getelementptr inbounds %struct.BMHeader, ptr %125, i64 0, i32 3
  %140 = load i8, ptr %139, align 1, !tbaa !100
  br i1 %138, label %145, label %141

141:                                              ; preds = %136
  %142 = lshr i8 %140, 1
  %143 = and i8 %142, 1
  %144 = xor i8 %143, 1
  br label %164

145:                                              ; preds = %136
  %146 = and i8 %140, 2
  %147 = icmp eq i8 %146, 0
  %148 = and i8 %140, 1
  %149 = select i1 %147, i8 %148, i8 0
  br label %164

150:                                              ; preds = %124
  %151 = and i8 %128, 1
  %152 = icmp eq i8 %151, 0
  %153 = getelementptr inbounds %struct.BMHeader, ptr %125, i64 0, i32 3
  %154 = load i8, ptr %153, align 1, !tbaa !100
  br i1 %152, label %159, label %155

155:                                              ; preds = %150
  %156 = lshr i8 %154, 1
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  br label %164

159:                                              ; preds = %150
  %160 = and i8 %154, 2
  %161 = icmp eq i8 %160, 0
  %162 = and i8 %154, 1
  %163 = select i1 %161, i8 %162, i8 0
  br label %164

164:                                              ; preds = %131, %141, %145, %155, %159
  %165 = phi i8 [ 0, %131 ], [ %144, %141 ], [ %149, %145 ], [ %158, %155 ], [ %163, %159 ]
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %191, label %167

167:                                              ; preds = %164
  store i8 11, ptr %120, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %121, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %122, align 8, !tbaa !92
  store ptr %125, ptr %6, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #9
  %168 = load ptr, ptr %122, align 8, !tbaa !92
  %169 = call ptr %168(ptr noundef nonnull %6) #9
  %170 = icmp eq ptr %169, null
  br i1 %170, label %191, label %171

171:                                              ; preds = %167, %187
  %172 = phi ptr [ %189, %187 ], [ %169, %167 ]
  %173 = load ptr, ptr %172, align 8, !tbaa !101
  %174 = getelementptr inbounds i8, ptr %173, i64 %123
  switch i32 %108, label %187 [
    i32 1, label %175
    i32 2, label %179
    i32 3, label %183
  ]

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.MLoopUV, ptr %174, i64 0, i32 1
  %177 = load i32, ptr %176, align 4, !tbaa !103
  %178 = or i32 %177, 2
  store i32 %178, ptr %176, align 4, !tbaa !103
  br label %187

179:                                              ; preds = %171
  %180 = getelementptr inbounds %struct.MLoopUV, ptr %174, i64 0, i32 1
  %181 = load i32, ptr %180, align 4, !tbaa !103
  %182 = and i32 %181, -3
  store i32 %182, ptr %180, align 4, !tbaa !103
  br label %187

183:                                              ; preds = %171
  %184 = getelementptr inbounds %struct.MLoopUV, ptr %174, i64 0, i32 1
  %185 = load i32, ptr %184, align 4, !tbaa !103
  %186 = xor i32 %185, 2
  store i32 %186, ptr %184, align 4, !tbaa !103
  br label %187

187:                                              ; preds = %175, %179, %183, %171
  %188 = load ptr, ptr %122, align 8, !tbaa !92
  %189 = call ptr %188(ptr noundef nonnull %6) #9
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %171, !llvm.loop !168

191:                                              ; preds = %187, %167, %164
  %192 = load ptr, ptr %112, align 8, !tbaa !92
  %193 = call ptr %192(ptr noundef nonnull %5) #9
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %124, !llvm.loop !169

195:                                              ; preds = %191, %107, %20, %21, %22, %23, %19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  ret void
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @EDBM_select_toggle_all(ptr noundef) local_unnamed_addr #2

declare void @EDBM_flag_enable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @EDBM_flag_disable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @EDBM_select_swap(ptr noundef) local_unnamed_addr #2

declare void @EDBM_selectmode_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !164
  call void @RNA_float_get_array(ptr noundef %5, ptr noundef nonnull @.str.42, ptr noundef nonnull %3) #9
  %6 = load ptr, ptr %4, align 8, !tbaa !164
  %7 = call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.6) #9
  %8 = trunc i32 %7 to i8
  %9 = call fastcc i32 @uv_mouse_select(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %8, i8 noundef zeroext 0), !range !170
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_select_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %7 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !171
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !171
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %7, float noundef %10, float noundef %13, ptr noundef nonnull %5, ptr noundef nonnull %14) #9
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  call void @RNA_float_set_array(ptr noundef %16, ptr noundef nonnull @.str.42, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %17 = load ptr, ptr %15, align 8, !tbaa !164
  call void @RNA_float_get_array(ptr noundef %17, ptr noundef nonnull @.str.42, ptr noundef nonnull %4) #9
  %18 = load ptr, ptr %15, align 8, !tbaa !164
  %19 = call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.6) #9
  %20 = trunc i32 %19 to i8
  %21 = call fastcc i32 @uv_mouse_select(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext %20, i8 noundef zeroext 0), !range !170
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret i32 %21
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @uv_mouse_select(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca %struct.BMIter, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.BMIter, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.BMIter, align 8
  %19 = alloca %struct.BMIter, align 8
  %20 = alloca %struct.NearestHit, align 8
  %21 = alloca [2 x float], align 4
  %22 = alloca [2 x float], align 4
  %23 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #9
  %24 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %25 = getelementptr inbounds %struct.Scene, ptr %24, i64 0, i32 20
  %26 = load ptr, ptr %25, align 8, !tbaa !56
  %27 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %28 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #9
  %29 = tail call ptr @BKE_editmesh_from_object(ptr noundef %27) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %20) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #9
  %30 = load ptr, ptr %29, align 8, !tbaa !83
  %31 = getelementptr inbounds %struct.BMesh, ptr %30, i64 0, i32 26
  %32 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %31, i32 noundef 16) #9
  %33 = load ptr, ptr %29, align 8, !tbaa !83
  %34 = getelementptr inbounds %struct.BMesh, ptr %33, i64 0, i32 27
  %35 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %34, i32 noundef 15) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #9
  %36 = icmp eq ptr %23, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %4
  call void @ED_space_image_get_size(ptr noundef nonnull %23, ptr noundef nonnull %16, ptr noundef nonnull %17) #9
  br label %39

38:                                               ; preds = %4
  store i32 256, ptr %16, align 4, !tbaa !171
  store i32 256, ptr %17, align 4, !tbaa !171
  br label %39

39:                                               ; preds = %37, %38
  %40 = load i32, ptr %16, align 4, !tbaa !171
  %41 = sitofp i32 %40 to float
  %42 = fdiv float 0x3FA99999A0000000, %41
  store float %42, ptr %21, align 4, !tbaa !127
  %43 = load i32, ptr %17, align 4, !tbaa !171
  %44 = sitofp i32 %43 to float
  %45 = fdiv float 0x3FA99999A0000000, %44
  %46 = getelementptr inbounds float, ptr %21, i64 1
  store float %45, ptr %46, align 4, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #9
  br i1 %36, label %50, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.SpaceImage, ptr %23, i64 0, i32 14
  %49 = load float, ptr %48, align 8, !tbaa !172
  br label %50

50:                                               ; preds = %39, %47
  %51 = phi float [ %49, %47 ], [ 1.000000e+00, %39 ]
  %52 = fdiv float 5.000000e+00, %51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #9
  br i1 %36, label %54, label %53

53:                                               ; preds = %50
  call void @ED_space_image_get_size(ptr noundef nonnull %23, ptr noundef nonnull %14, ptr noundef nonnull %15) #9
  br label %55

54:                                               ; preds = %50
  store i32 256, ptr %14, align 4, !tbaa !171
  store i32 256, ptr %15, align 4, !tbaa !171
  br label %55

55:                                               ; preds = %53, %54
  %56 = load i32, ptr %14, align 4, !tbaa !171
  %57 = sitofp i32 %56 to float
  %58 = fdiv float %52, %57
  store float %58, ptr %22, align 4, !tbaa !127
  %59 = load i32, ptr %15, align 4, !tbaa !171
  %60 = sitofp i32 %59 to float
  %61 = fdiv float %52, %60
  %62 = getelementptr inbounds float, ptr %22, i64 1
  store float %61, ptr %62, align 4, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #9
  %63 = getelementptr inbounds %struct.ToolSettings, ptr %26, i64 0, i32 11
  %64 = load i8, ptr %63, align 2, !tbaa !74
  %65 = and i8 %64, 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.ToolSettings, ptr %26, i64 0, i32 8
  %69 = load i16, ptr %68, align 2, !tbaa !112
  %70 = zext i16 %69 to i32
  %71 = and i32 %70, 4
  %72 = icmp eq i32 %71, 0
  %73 = and i32 %70, 2
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i32 1, i32 2
  %76 = select i1 %72, i32 %75, i32 4
  br label %85

77:                                               ; preds = %55
  %78 = getelementptr inbounds %struct.ToolSettings, ptr %26, i64 0, i32 12
  %79 = load i8, ptr %78, align 1, !tbaa !173
  %80 = zext i8 %79 to i32
  br i1 %36, label %85, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.SpaceImage, ptr %23, i64 0, i32 23
  %83 = load i8, ptr %82, align 1, !tbaa !174
  %84 = zext i8 %83 to i32
  br label %85

85:                                               ; preds = %81, %77, %67
  %86 = phi i32 [ %76, %67 ], [ %80, %77 ], [ %80, %81 ]
  %87 = phi i32 [ 1, %67 ], [ 1, %77 ], [ %84, %81 ]
  %88 = icmp eq i8 %3, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  call void @uv_find_nearest_edge(ptr noundef %24, ptr noundef %28, ptr noundef nonnull %29, ptr noundef %1, ptr noundef nonnull %20)
  %90 = load ptr, ptr %20, align 8, !tbaa !135
  %91 = icmp eq ptr %90, null
  br i1 %91, label %1439, label %316

92:                                               ; preds = %85
  switch i32 %86, label %1439 [
    i32 1, label %93
    i32 2, label %120
    i32 4, label %163
    i32 8, label %313
  ]

93:                                               ; preds = %92
  call void @uv_find_nearest_vert(ptr noundef %24, ptr noundef %28, ptr noundef nonnull %29, ptr noundef %1, ptr noundef nonnull %22, ptr noundef nonnull %20)
  %94 = load ptr, ptr %20, align 8, !tbaa !135
  %95 = icmp eq ptr %94, null
  br i1 %95, label %1439, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.BMFace, ptr %94, i64 0, i32 3
  %98 = load i32, ptr %97, align 8, !tbaa !129
  %99 = sext i32 %98 to i64
  %100 = shl nsw i64 %99, 2
  %101 = alloca i8, i64 %100, align 16
  %102 = shl nsw i64 %99, 3
  %103 = alloca i8, i64 %102, align 16
  call void @fill_vn_i(ptr noundef nonnull %101, i32 noundef %98, i32 noundef -1) #9
  %104 = getelementptr inbounds %struct.NearestHit, ptr %20, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !136
  %106 = getelementptr inbounds %struct.BMLoop, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !115
  %108 = getelementptr inbounds %struct.BMHeader, ptr %107, i64 0, i32 1
  %109 = load i32, ptr %108, align 8, !tbaa !175
  %110 = getelementptr inbounds %struct.NearestHit, ptr %20, i64 0, i32 5
  %111 = load i32, ptr %110, align 8, !tbaa !139
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, ptr %101, i64 %112
  store i32 %109, ptr %113, align 4, !tbaa !171
  %114 = getelementptr inbounds %struct.NearestHit, ptr %20, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !137
  %116 = getelementptr inbounds ptr, ptr %103, i64 %112
  store ptr %115, ptr %116, align 8, !tbaa !55
  %117 = load ptr, ptr %20, align 8, !tbaa !135
  %118 = getelementptr inbounds %struct.BMFace, ptr %117, i64 0, i32 3
  %119 = load i32, ptr %118, align 8, !tbaa !129
  br label %316

120:                                              ; preds = %92
  call void @uv_find_nearest_edge(ptr noundef %24, ptr noundef %28, ptr noundef nonnull %29, ptr noundef %1, ptr noundef nonnull %20)
  %121 = load ptr, ptr %20, align 8, !tbaa !135
  %122 = icmp eq ptr %121, null
  br i1 %122, label %1439, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.BMFace, ptr %121, i64 0, i32 3
  %125 = load i32, ptr %124, align 8, !tbaa !129
  %126 = sext i32 %125 to i64
  %127 = shl nsw i64 %126, 2
  %128 = alloca i8, i64 %127, align 16
  %129 = shl nsw i64 %126, 3
  %130 = alloca i8, i64 %129, align 16
  call void @fill_vn_i(ptr noundef nonnull %128, i32 noundef %125, i32 noundef -1) #9
  %131 = getelementptr inbounds %struct.NearestHit, ptr %20, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !136
  %133 = getelementptr inbounds %struct.BMLoop, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !115
  %135 = getelementptr inbounds %struct.BMHeader, ptr %134, i64 0, i32 1
  %136 = load i32, ptr %135, align 8, !tbaa !175
  %137 = getelementptr inbounds %struct.NearestHit, ptr %20, i64 0, i32 5
  %138 = load i32, ptr %137, align 8, !tbaa !139
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, ptr %128, i64 %139
  store i32 %136, ptr %140, align 4, !tbaa !171
  %141 = getelementptr inbounds %struct.BMLoop, ptr %132, i64 0, i32 6
  %142 = load ptr, ptr %141, align 8, !tbaa !116
  %143 = getelementptr inbounds %struct.BMLoop, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !115
  %145 = getelementptr inbounds %struct.BMHeader, ptr %144, i64 0, i32 1
  %146 = load i32, ptr %145, align 8, !tbaa !175
  %147 = add nsw i32 %138, 1
  %148 = load ptr, ptr %20, align 8, !tbaa !135
  %149 = getelementptr inbounds %struct.BMFace, ptr %148, i64 0, i32 3
  %150 = load i32, ptr %149, align 8, !tbaa !129
  %151 = srem i32 %147, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, ptr %128, i64 %152
  store i32 %146, ptr %153, align 4, !tbaa !171
  %154 = getelementptr inbounds %struct.NearestHit, ptr %20, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !137
  %156 = getelementptr inbounds ptr, ptr %130, i64 %139
  store ptr %155, ptr %156, align 8, !tbaa !55
  %157 = getelementptr inbounds %struct.NearestHit, ptr %20, i64 0, i32 4
  %158 = load ptr, ptr %157, align 8, !tbaa !138
  %159 = load i32, ptr %149, align 8, !tbaa !129
  %160 = srem i32 %147, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds ptr, ptr %130, i64 %161
  store ptr %158, ptr %162, align 8, !tbaa !55
  br label %316

163:                                              ; preds = %92
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #9
  %164 = load ptr, ptr %29, align 8, !tbaa !83
  %165 = getelementptr inbounds %struct.BMesh, ptr %164, i64 0, i32 26
  %166 = call i32 @CustomData_get_offset(ptr noundef nonnull %165, i32 noundef 16) #9
  %167 = load ptr, ptr %29, align 8, !tbaa !83
  %168 = getelementptr inbounds %struct.BMesh, ptr %167, i64 0, i32 27
  %169 = call i32 @CustomData_get_offset(ptr noundef nonnull %168, i32 noundef 15) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %20, i8 0, i64 48, i1 false)
  call void @uv_find_nearest_edge(ptr noundef %24, ptr noundef %28, ptr noundef nonnull %29, ptr noundef %1, ptr noundef nonnull %20)
  %170 = getelementptr inbounds %struct.NearestHit, ptr %20, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %170, i8 0, i64 24, i1 false)
  %171 = load ptr, ptr %29, align 8, !tbaa !83
  %172 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 4
  store i8 3, ptr %172, align 4, !tbaa !89
  %173 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %173, align 8, !tbaa !91
  %174 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %174, align 8, !tbaa !92
  %175 = getelementptr inbounds %struct.BMesh, ptr %171, i64 0, i32 12
  %176 = load ptr, ptr %175, align 8, !tbaa !93
  store ptr %176, ptr %13, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %13) #9
  %177 = load ptr, ptr %174, align 8, !tbaa !92
  %178 = call ptr %177(ptr noundef nonnull %13) #9
  %179 = icmp eq ptr %178, null
  br i1 %179, label %273, label %180

180:                                              ; preds = %163
  %181 = sext i32 %169 to i64
  %182 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  %183 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  %184 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  %185 = sext i32 %166 to i64
  %186 = getelementptr inbounds float, ptr %1, i64 1
  %187 = getelementptr inbounds %struct.NearestHit, ptr %20, i64 0, i32 1
  br label %188

188:                                              ; preds = %180, %268
  %189 = phi ptr [ %178, %180 ], [ %271, %268 ]
  %190 = phi float [ 1.000000e+10, %180 ], [ %269, %268 ]
  %191 = load ptr, ptr %189, align 8, !tbaa !95
  %192 = getelementptr inbounds i8, ptr %191, i64 %181
  %193 = load ptr, ptr %25, align 8, !tbaa !56
  %194 = getelementptr inbounds %struct.ToolSettings, ptr %193, i64 0, i32 11
  %195 = load i8, ptr %194, align 2, !tbaa !74
  %196 = and i8 %195, 2
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %215, label %198

198:                                              ; preds = %188
  %199 = load ptr, ptr %192, align 8, !tbaa !98
  %200 = icmp eq ptr %199, %28
  br i1 %200, label %201, label %229

201:                                              ; preds = %198
  %202 = and i8 %195, 1
  %203 = icmp eq i8 %202, 0
  %204 = getelementptr inbounds %struct.BMHeader, ptr %189, i64 0, i32 3
  %205 = load i8, ptr %204, align 1, !tbaa !100
  br i1 %203, label %210, label %206

206:                                              ; preds = %201
  %207 = lshr i8 %205, 1
  %208 = and i8 %207, 1
  %209 = xor i8 %208, 1
  br label %229

210:                                              ; preds = %201
  %211 = and i8 %205, 2
  %212 = icmp eq i8 %211, 0
  %213 = and i8 %205, 1
  %214 = select i1 %212, i8 %213, i8 0
  br label %229

215:                                              ; preds = %188
  %216 = and i8 %195, 1
  %217 = icmp eq i8 %216, 0
  %218 = getelementptr inbounds %struct.BMHeader, ptr %189, i64 0, i32 3
  %219 = load i8, ptr %218, align 1, !tbaa !100
  br i1 %217, label %224, label %220

220:                                              ; preds = %215
  %221 = lshr i8 %219, 1
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  br label %229

224:                                              ; preds = %215
  %225 = and i8 %219, 2
  %226 = icmp eq i8 %225, 0
  %227 = and i8 %219, 1
  %228 = select i1 %226, i8 %227, i8 0
  br label %229

229:                                              ; preds = %198, %206, %210, %220, %224
  %230 = phi i8 [ 0, %198 ], [ %209, %206 ], [ %214, %210 ], [ %223, %220 ], [ %228, %224 ]
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %268, label %232

232:                                              ; preds = %229
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #9
  store i8 11, ptr %182, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %183, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %184, align 8, !tbaa !92
  store ptr %189, ptr %9, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %9) #9
  %233 = load ptr, ptr %184, align 8, !tbaa !92
  %234 = call ptr %233(ptr noundef nonnull %9) #9
  %235 = icmp eq ptr %234, null
  br i1 %235, label %250, label %236

236:                                              ; preds = %232, %236
  %237 = phi float [ %246, %236 ], [ 0.000000e+00, %232 ]
  %238 = phi float [ %243, %236 ], [ 0.000000e+00, %232 ]
  %239 = phi ptr [ %248, %236 ], [ %234, %232 ]
  %240 = load ptr, ptr %239, align 8, !tbaa !101
  %241 = getelementptr inbounds i8, ptr %240, i64 %185
  %242 = load float, ptr %241, align 4, !tbaa !127
  %243 = fadd float %238, %242
  %244 = getelementptr inbounds float, ptr %241, i64 1
  %245 = load float, ptr %244, align 4, !tbaa !127
  %246 = fadd float %237, %245
  %247 = load ptr, ptr %184, align 8, !tbaa !92
  %248 = call ptr %247(ptr noundef nonnull %9) #9
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %236, !llvm.loop !128

250:                                              ; preds = %236, %232
  %251 = phi float [ 0.000000e+00, %232 ], [ %246, %236 ]
  %252 = phi float [ 0.000000e+00, %232 ], [ %243, %236 ]
  %253 = getelementptr inbounds %struct.BMFace, ptr %189, i64 0, i32 3
  %254 = load i32, ptr %253, align 8, !tbaa !129
  %255 = sitofp i32 %254 to float
  %256 = fdiv float 1.000000e+00, %255
  %257 = fmul float %252, %256
  %258 = fmul float %251, %256
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #9
  %259 = load float, ptr %1, align 4, !tbaa !127
  %260 = fsub float %257, %259
  %261 = load float, ptr %186, align 4, !tbaa !127
  %262 = fsub float %258, %261
  %263 = call float @llvm.fabs.f32(float %260)
  %264 = call float @llvm.fabs.f32(float %262)
  %265 = fadd float %263, %264
  %266 = fcmp olt float %265, %190
  br i1 %266, label %267, label %268

267:                                              ; preds = %250
  store ptr %192, ptr %187, align 8, !tbaa !133
  store ptr %189, ptr %20, align 8, !tbaa !135
  br label %268

268:                                              ; preds = %267, %250, %229
  %269 = phi float [ %265, %267 ], [ %190, %250 ], [ %190, %229 ]
  %270 = load ptr, ptr %174, align 8, !tbaa !92
  %271 = call ptr %270(ptr noundef nonnull %13) #9
  %272 = icmp eq ptr %271, null
  br i1 %272, label %273, label %188, !llvm.loop !176

273:                                              ; preds = %268, %163
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #9
  %274 = load ptr, ptr %20, align 8, !tbaa !135
  %275 = icmp eq ptr %274, null
  br i1 %275, label %1439, label %276

276:                                              ; preds = %273
  %277 = load ptr, ptr %29, align 8, !tbaa !83
  call void @BM_mesh_active_face_set(ptr noundef %277, ptr noundef nonnull %274) #9
  %278 = load ptr, ptr %20, align 8, !tbaa !135
  %279 = getelementptr inbounds %struct.BMFace, ptr %278, i64 0, i32 3
  %280 = load i32, ptr %279, align 8, !tbaa !129
  %281 = sext i32 %280 to i64
  %282 = shl nsw i64 %281, 2
  %283 = alloca i8, i64 %282, align 16
  %284 = shl nsw i64 %281, 3
  %285 = alloca i8, i64 %284, align 16
  %286 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 4
  store i8 11, ptr %286, align 4, !tbaa !89
  %287 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %287, align 8, !tbaa !91
  %288 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %288, align 8, !tbaa !92
  store ptr %278, ptr %19, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %19) #9
  %289 = load ptr, ptr %288, align 8, !tbaa !92
  %290 = call ptr %289(ptr noundef nonnull %19) #9
  %291 = icmp eq ptr %290, null
  br i1 %291, label %309, label %292

292:                                              ; preds = %276
  %293 = sext i32 %32 to i64
  br label %294

294:                                              ; preds = %292, %294
  %295 = phi i64 [ 0, %292 ], [ %307, %294 ]
  %296 = phi ptr [ %290, %292 ], [ %306, %294 ]
  %297 = load ptr, ptr %296, align 8, !tbaa !101
  %298 = getelementptr inbounds i8, ptr %297, i64 %293
  %299 = getelementptr inbounds ptr, ptr %285, i64 %295
  store ptr %298, ptr %299, align 8, !tbaa !55
  %300 = getelementptr inbounds %struct.BMLoop, ptr %296, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !115
  %302 = getelementptr inbounds %struct.BMHeader, ptr %301, i64 0, i32 1
  %303 = load i32, ptr %302, align 8, !tbaa !175
  %304 = getelementptr inbounds i32, ptr %283, i64 %295
  store i32 %303, ptr %304, align 4, !tbaa !171
  %305 = load ptr, ptr %288, align 8, !tbaa !92
  %306 = call ptr %305(ptr noundef nonnull %19) #9
  %307 = add nuw i64 %295, 1
  %308 = icmp eq ptr %306, null
  br i1 %308, label %309, label %294, !llvm.loop !177

309:                                              ; preds = %294, %276
  %310 = load ptr, ptr %20, align 8, !tbaa !135
  %311 = getelementptr inbounds %struct.BMFace, ptr %310, i64 0, i32 3
  %312 = load i32, ptr %311, align 8, !tbaa !129
  br label %316

313:                                              ; preds = %92
  call void @uv_find_nearest_edge(ptr noundef %24, ptr noundef %28, ptr noundef nonnull %29, ptr noundef %1, ptr noundef nonnull %20)
  %314 = load ptr, ptr %20, align 8, !tbaa !135
  %315 = icmp eq ptr %314, null
  br i1 %315, label %1439, label %316

316:                                              ; preds = %313, %89, %96, %309, %123
  %317 = phi ptr [ %101, %96 ], [ %128, %123 ], [ %283, %309 ], [ null, %89 ], [ null, %313 ]
  %318 = phi i32 [ %119, %96 ], [ %159, %123 ], [ %312, %309 ], [ 0, %89 ], [ 0, %313 ]
  %319 = phi ptr [ %103, %96 ], [ %130, %123 ], [ %285, %309 ], [ null, %89 ], [ null, %313 ]
  br i1 %88, label %815, label %320

320:                                              ; preds = %316
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #9
  %321 = load ptr, ptr %29, align 8, !tbaa !83
  %322 = getelementptr inbounds %struct.BMesh, ptr %321, i64 0, i32 26
  %323 = call i32 @CustomData_get_offset(ptr noundef nonnull %322, i32 noundef 16) #9
  %324 = load ptr, ptr %29, align 8, !tbaa !83
  %325 = getelementptr inbounds %struct.BMesh, ptr %324, i64 0, i32 27
  %326 = call i32 @CustomData_get_offset(ptr noundef nonnull %325, i32 noundef 15) #9
  %327 = load ptr, ptr %29, align 8, !tbaa !83
  call void @BM_mesh_elem_table_ensure(ptr noundef %327, i8 noundef zeroext 8) #9
  %328 = load ptr, ptr %29, align 8, !tbaa !83
  %329 = call ptr @BM_uv_vert_map_create(ptr noundef %328, i8 noundef zeroext 0, ptr noundef nonnull %21) #9
  %330 = load ptr, ptr %29, align 8, !tbaa !83
  call void @BM_mesh_elem_index_ensure(ptr noundef %330, i8 noundef zeroext 9) #9
  %331 = icmp eq i8 %2, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %320
  call fastcc void @uv_select_all_perform(ptr noundef %24, ptr noundef %28, ptr noundef nonnull %29, i32 noundef 2)
  br label %333

333:                                              ; preds = %332, %320
  %334 = load ptr, ptr %29, align 8, !tbaa !83
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %334, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #9
  %335 = load ptr, ptr %20, align 8, !tbaa !135
  %336 = getelementptr inbounds %struct.NearestHit, ptr %20, i64 0, i32 2
  %337 = load ptr, ptr %336, align 8, !tbaa !136
  %338 = getelementptr inbounds %struct.BMLoop, ptr %337, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !115
  %340 = getelementptr inbounds %struct.BMHeader, ptr %339, i64 0, i32 1
  %341 = load i32, ptr %340, align 8, !tbaa !175
  %342 = call ptr @BM_uv_vert_map_at_index(ptr noundef %329, i32 noundef %341) #9
  %343 = icmp eq ptr %342, null
  br i1 %343, label %360, label %344

344:                                              ; preds = %333
  %345 = getelementptr inbounds %struct.BMHeader, ptr %335, i64 0, i32 1
  %346 = load i32, ptr %345, align 8, !tbaa !175
  br label %347

347:                                              ; preds = %344, %357
  %348 = phi ptr [ %342, %344 ], [ %353, %357 ]
  %349 = phi ptr [ %342, %344 ], [ %358, %357 ]
  %350 = getelementptr inbounds %struct.UvMapVert, ptr %349, i64 0, i32 3
  %351 = load i8, ptr %350, align 1, !tbaa !178
  %352 = icmp eq i8 %351, 0
  %353 = select i1 %352, ptr %348, ptr %349
  %354 = getelementptr inbounds %struct.UvMapVert, ptr %349, i64 0, i32 1
  %355 = load i32, ptr %354, align 8, !tbaa !180
  %356 = icmp eq i32 %355, %346
  br i1 %356, label %360, label %357

357:                                              ; preds = %347
  %358 = load ptr, ptr %349, align 8, !tbaa !181
  %359 = icmp eq ptr %358, null
  br i1 %359, label %360, label %347, !llvm.loop !182

360:                                              ; preds = %357, %347, %333
  %361 = phi ptr [ null, %333 ], [ null, %357 ], [ %353, %347 ]
  %362 = load ptr, ptr %20, align 8, !tbaa !135
  %363 = load ptr, ptr %336, align 8, !tbaa !136
  %364 = getelementptr inbounds %struct.BMLoop, ptr %363, i64 0, i32 6
  %365 = load ptr, ptr %364, align 8, !tbaa !116
  %366 = getelementptr inbounds %struct.BMLoop, ptr %365, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !115
  %368 = getelementptr inbounds %struct.BMHeader, ptr %367, i64 0, i32 1
  %369 = load i32, ptr %368, align 8, !tbaa !175
  %370 = call ptr @BM_uv_vert_map_at_index(ptr noundef %329, i32 noundef %369) #9
  %371 = icmp eq ptr %370, null
  br i1 %371, label %388, label %372

372:                                              ; preds = %360
  %373 = getelementptr inbounds %struct.BMHeader, ptr %362, i64 0, i32 1
  %374 = load i32, ptr %373, align 8, !tbaa !175
  br label %375

375:                                              ; preds = %372, %385
  %376 = phi ptr [ %370, %372 ], [ %381, %385 ]
  %377 = phi ptr [ %370, %372 ], [ %386, %385 ]
  %378 = getelementptr inbounds %struct.UvMapVert, ptr %377, i64 0, i32 3
  %379 = load i8, ptr %378, align 1, !tbaa !178
  %380 = icmp eq i8 %379, 0
  %381 = select i1 %380, ptr %376, ptr %377
  %382 = getelementptr inbounds %struct.UvMapVert, ptr %377, i64 0, i32 1
  %383 = load i32, ptr %382, align 8, !tbaa !180
  %384 = icmp eq i32 %383, %374
  br i1 %384, label %388, label %385

385:                                              ; preds = %375
  %386 = load ptr, ptr %377, align 8, !tbaa !181
  %387 = icmp eq ptr %386, null
  br i1 %387, label %388, label %375, !llvm.loop !182

388:                                              ; preds = %385, %375, %360
  %389 = phi ptr [ null, %360 ], [ null, %385 ], [ %381, %375 ]
  %390 = icmp eq ptr %361, null
  br i1 %390, label %403, label %391

391:                                              ; preds = %388, %399
  %392 = phi i32 [ %400, %399 ], [ 0, %388 ]
  %393 = phi ptr [ %401, %399 ], [ %361, %388 ]
  %394 = getelementptr inbounds %struct.UvMapVert, ptr %393, i64 0, i32 3
  %395 = load i8, ptr %394, align 1, !tbaa !178
  %396 = icmp eq i8 %395, 0
  %397 = icmp eq ptr %393, %361
  %398 = or i1 %397, %396
  br i1 %398, label %399, label %403

399:                                              ; preds = %391
  %400 = add nuw nsw i32 %392, 1
  %401 = load ptr, ptr %393, align 8, !tbaa !181
  %402 = icmp eq ptr %401, null
  br i1 %402, label %403, label %391, !llvm.loop !183

403:                                              ; preds = %399, %391, %388
  %404 = phi i32 [ 0, %388 ], [ %400, %399 ], [ %392, %391 ]
  %405 = icmp ult i32 %404, 5
  br i1 %405, label %406, label %408

406:                                              ; preds = %403
  %407 = getelementptr inbounds %struct.UvMapVert, ptr %361, i64 0, i32 4
  store i8 1, ptr %407, align 2, !tbaa !184
  br label %408

408:                                              ; preds = %406, %403
  %409 = icmp eq ptr %389, null
  br i1 %409, label %422, label %410

410:                                              ; preds = %408, %418
  %411 = phi i32 [ %419, %418 ], [ 0, %408 ]
  %412 = phi ptr [ %420, %418 ], [ %389, %408 ]
  %413 = getelementptr inbounds %struct.UvMapVert, ptr %412, i64 0, i32 3
  %414 = load i8, ptr %413, align 1, !tbaa !178
  %415 = icmp eq i8 %414, 0
  %416 = icmp eq ptr %412, %389
  %417 = or i1 %416, %415
  br i1 %417, label %418, label %422

418:                                              ; preds = %410
  %419 = add nuw nsw i32 %411, 1
  %420 = load ptr, ptr %412, align 8, !tbaa !181
  %421 = icmp eq ptr %420, null
  br i1 %421, label %422, label %410, !llvm.loop !183

422:                                              ; preds = %418, %410, %408
  %423 = phi i32 [ 0, %408 ], [ %419, %418 ], [ %411, %410 ]
  %424 = icmp ult i32 %423, 5
  br i1 %424, label %425, label %427

425:                                              ; preds = %422
  %426 = getelementptr inbounds %struct.UvMapVert, ptr %389, i64 0, i32 4
  store i8 1, ptr %426, align 2, !tbaa !184
  br label %427

427:                                              ; preds = %425, %422
  store i32 0, ptr %12, align 4, !tbaa !171
  %428 = call fastcc zeroext i8 @uv_select_edgeloop_edge_tag_faces(ptr noundef nonnull %29, ptr noundef %361, ptr noundef %389, ptr noundef nonnull %12), !range !185
  %429 = getelementptr inbounds %struct.UvMapVert, ptr %361, i64 0, i32 4
  %430 = load i8, ptr %429, align 2, !tbaa !184
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %432, label %437

432:                                              ; preds = %427
  %433 = getelementptr inbounds %struct.UvMapVert, ptr %389, i64 0, i32 4
  %434 = load i8, ptr %433, align 2, !tbaa !184
  %435 = icmp ne i8 %434, 0
  %436 = zext i1 %435 to i8
  br label %437

437:                                              ; preds = %432, %427
  %438 = phi i8 [ 1, %427 ], [ %436, %432 ]
  %439 = icmp eq i8 %438, 0
  br i1 %439, label %621, label %440

440:                                              ; preds = %437
  %441 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  %442 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  %443 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  %444 = sext i32 %326 to i64
  %445 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  %446 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  %447 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  br label %451

448:                                              ; preds = %616, %451
  %449 = phi i8 [ 0, %451 ], [ %617, %616 ]
  %450 = icmp eq i8 %449, 0
  br i1 %450, label %621, label %451, !llvm.loop !186

451:                                              ; preds = %440, %448
  %452 = load ptr, ptr %29, align 8, !tbaa !83
  store i8 3, ptr %441, align 4, !tbaa !89
  store ptr @bmiter__elem_of_mesh_begin, ptr %442, align 8, !tbaa !91
  store ptr @bmiter__elem_of_mesh_step, ptr %443, align 8, !tbaa !92
  %453 = getelementptr inbounds %struct.BMesh, ptr %452, i64 0, i32 12
  %454 = load ptr, ptr %453, align 8, !tbaa !93
  store ptr %454, ptr %10, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %10) #9
  %455 = load ptr, ptr %443, align 8, !tbaa !92
  %456 = call ptr %455(ptr noundef nonnull %10) #9
  %457 = icmp eq ptr %456, null
  br i1 %457, label %448, label %458

458:                                              ; preds = %451, %616
  %459 = phi ptr [ %619, %616 ], [ %456, %451 ]
  %460 = phi i8 [ %617, %616 ], [ 0, %451 ]
  %461 = getelementptr inbounds %struct.BMHeader, ptr %459, i64 0, i32 3
  %462 = load i8, ptr %461, align 1, !tbaa !100
  %463 = and i8 %462, 16
  %464 = icmp eq i8 %463, 0
  br i1 %464, label %465, label %616

465:                                              ; preds = %458
  %466 = load ptr, ptr %25, align 8, !tbaa !56
  %467 = getelementptr inbounds %struct.ToolSettings, ptr %466, i64 0, i32 11
  %468 = load i8, ptr %467, align 2, !tbaa !74
  %469 = and i8 %468, 2
  %470 = icmp eq i8 %469, 0
  br i1 %470, label %488, label %471

471:                                              ; preds = %465
  %472 = load ptr, ptr %459, align 8, !tbaa !95
  %473 = getelementptr inbounds i8, ptr %472, i64 %444
  %474 = load ptr, ptr %473, align 8, !tbaa !98
  %475 = icmp eq ptr %474, %28
  br i1 %475, label %476, label %500

476:                                              ; preds = %471
  %477 = and i8 %468, 1
  %478 = icmp eq i8 %477, 0
  br i1 %478, label %483, label %479

479:                                              ; preds = %476
  %480 = lshr i8 %462, 1
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  br label %500

483:                                              ; preds = %476
  %484 = and i8 %462, 2
  %485 = icmp eq i8 %484, 0
  %486 = and i8 %462, 1
  %487 = select i1 %485, i8 %486, i8 0
  br label %500

488:                                              ; preds = %465
  %489 = and i8 %468, 1
  %490 = icmp eq i8 %489, 0
  br i1 %490, label %495, label %491

491:                                              ; preds = %488
  %492 = lshr i8 %462, 1
  %493 = and i8 %492, 1
  %494 = xor i8 %493, 1
  br label %500

495:                                              ; preds = %488
  %496 = and i8 %462, 2
  %497 = icmp eq i8 %496, 0
  %498 = and i8 %462, 1
  %499 = select i1 %497, i8 %498, i8 0
  br label %500

500:                                              ; preds = %471, %479, %483, %491, %495
  %501 = phi i8 [ 0, %471 ], [ %482, %479 ], [ %487, %483 ], [ %494, %491 ], [ %499, %495 ]
  %502 = icmp eq i8 %501, 0
  br i1 %502, label %616, label %503

503:                                              ; preds = %500
  store i8 11, ptr %445, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %446, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %447, align 8, !tbaa !92
  store ptr %459, ptr %11, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %11) #9
  %504 = load ptr, ptr %447, align 8, !tbaa !92
  %505 = call ptr %504(ptr noundef nonnull %11) #9
  %506 = icmp eq ptr %505, null
  br i1 %506, label %616, label %507

507:                                              ; preds = %503
  %508 = getelementptr inbounds %struct.BMHeader, ptr %459, i64 0, i32 1
  %509 = getelementptr inbounds %struct.BMHeader, ptr %459, i64 0, i32 1
  br label %510

510:                                              ; preds = %507, %612
  %511 = phi ptr [ %505, %507 ], [ %614, %612 ]
  %512 = getelementptr inbounds %struct.BMLoop, ptr %511, i64 0, i32 1
  %513 = load ptr, ptr %512, align 8, !tbaa !115
  %514 = getelementptr inbounds %struct.BMHeader, ptr %513, i64 0, i32 1
  %515 = load i32, ptr %514, align 8, !tbaa !175
  %516 = call ptr @BM_uv_vert_map_at_index(ptr noundef %329, i32 noundef %515) #9
  %517 = icmp eq ptr %516, null
  br i1 %517, label %533, label %518

518:                                              ; preds = %510
  %519 = load i32, ptr %508, align 8, !tbaa !175
  br label %520

520:                                              ; preds = %518, %530
  %521 = phi ptr [ %516, %518 ], [ %526, %530 ]
  %522 = phi ptr [ %516, %518 ], [ %531, %530 ]
  %523 = getelementptr inbounds %struct.UvMapVert, ptr %522, i64 0, i32 3
  %524 = load i8, ptr %523, align 1, !tbaa !178
  %525 = icmp eq i8 %524, 0
  %526 = select i1 %525, ptr %521, ptr %522
  %527 = getelementptr inbounds %struct.UvMapVert, ptr %522, i64 0, i32 1
  %528 = load i32, ptr %527, align 8, !tbaa !180
  %529 = icmp eq i32 %528, %519
  br i1 %529, label %533, label %530

530:                                              ; preds = %520
  %531 = load ptr, ptr %522, align 8, !tbaa !181
  %532 = icmp eq ptr %531, null
  br i1 %532, label %533, label %520, !llvm.loop !182

533:                                              ; preds = %530, %520, %510
  %534 = phi ptr [ null, %510 ], [ null, %530 ], [ %526, %520 ]
  %535 = icmp eq ptr %534, null
  br i1 %535, label %612, label %536

536:                                              ; preds = %533
  %537 = getelementptr inbounds %struct.BMLoop, ptr %511, i64 0, i32 6
  %538 = load ptr, ptr %537, align 8, !tbaa !116
  %539 = getelementptr inbounds %struct.BMLoop, ptr %538, i64 0, i32 1
  %540 = load ptr, ptr %539, align 8, !tbaa !115
  %541 = getelementptr inbounds %struct.BMHeader, ptr %540, i64 0, i32 1
  %542 = load i32, ptr %541, align 8, !tbaa !175
  %543 = call ptr @BM_uv_vert_map_at_index(ptr noundef %329, i32 noundef %542) #9
  %544 = icmp eq ptr %543, null
  br i1 %544, label %560, label %545

545:                                              ; preds = %536
  %546 = load i32, ptr %509, align 8, !tbaa !175
  br label %547

547:                                              ; preds = %545, %557
  %548 = phi ptr [ %543, %545 ], [ %553, %557 ]
  %549 = phi ptr [ %543, %545 ], [ %558, %557 ]
  %550 = getelementptr inbounds %struct.UvMapVert, ptr %549, i64 0, i32 3
  %551 = load i8, ptr %550, align 1, !tbaa !178
  %552 = icmp eq i8 %551, 0
  %553 = select i1 %552, ptr %548, ptr %549
  %554 = getelementptr inbounds %struct.UvMapVert, ptr %549, i64 0, i32 1
  %555 = load i32, ptr %554, align 8, !tbaa !180
  %556 = icmp eq i32 %555, %546
  br i1 %556, label %560, label %557

557:                                              ; preds = %547
  %558 = load ptr, ptr %549, align 8, !tbaa !181
  %559 = icmp eq ptr %558, null
  br i1 %559, label %560, label %547, !llvm.loop !182

560:                                              ; preds = %557, %547, %536
  %561 = phi ptr [ null, %536 ], [ null, %557 ], [ %553, %547 ]
  %562 = icmp eq ptr %561, null
  br i1 %562, label %612, label %563

563:                                              ; preds = %560
  %564 = getelementptr inbounds %struct.UvMapVert, ptr %534, i64 0, i32 4
  %565 = load i8, ptr %564, align 2, !tbaa !184
  %566 = icmp eq i8 %565, 0
  br i1 %566, label %567, label %571

567:                                              ; preds = %563
  %568 = getelementptr inbounds %struct.UvMapVert, ptr %561, i64 0, i32 4
  %569 = load i8, ptr %568, align 2, !tbaa !184
  %570 = icmp eq i8 %569, 0
  br i1 %570, label %612, label %571

571:                                              ; preds = %567, %563
  %572 = call fastcc zeroext i8 @uv_select_edgeloop_edge_tag_faces(ptr noundef nonnull %29, ptr noundef nonnull %534, ptr noundef nonnull %561, ptr noundef nonnull %12), !range !185
  %573 = icmp eq i8 %572, 0
  br i1 %573, label %612, label %574

574:                                              ; preds = %571
  %575 = getelementptr inbounds %struct.UvMapVert, ptr %534, i64 0, i32 4
  %576 = load i8, ptr %461, align 1, !tbaa !100
  %577 = or i8 %576, 16
  store i8 %577, ptr %461, align 1, !tbaa !100
  br label %578

578:                                              ; preds = %574, %586
  %579 = phi i32 [ 0, %574 ], [ %587, %586 ]
  %580 = phi ptr [ %534, %574 ], [ %588, %586 ]
  %581 = getelementptr inbounds %struct.UvMapVert, ptr %580, i64 0, i32 3
  %582 = load i8, ptr %581, align 1, !tbaa !178
  %583 = icmp eq i8 %582, 0
  %584 = icmp eq ptr %580, %534
  %585 = or i1 %584, %583
  br i1 %585, label %586, label %590

586:                                              ; preds = %578
  %587 = add nuw nsw i32 %579, 1
  %588 = load ptr, ptr %580, align 8, !tbaa !181
  %589 = icmp eq ptr %588, null
  br i1 %589, label %590, label %578, !llvm.loop !183

590:                                              ; preds = %578, %586
  %591 = phi i32 [ %579, %578 ], [ %587, %586 ]
  %592 = icmp ult i32 %591, 5
  br i1 %592, label %593, label %594

593:                                              ; preds = %590
  store i8 1, ptr %575, align 2, !tbaa !184
  br label %594

594:                                              ; preds = %593, %590
  br label %595

595:                                              ; preds = %594, %603
  %596 = phi i32 [ %604, %603 ], [ 0, %594 ]
  %597 = phi ptr [ %605, %603 ], [ %561, %594 ]
  %598 = getelementptr inbounds %struct.UvMapVert, ptr %597, i64 0, i32 3
  %599 = load i8, ptr %598, align 1, !tbaa !178
  %600 = icmp eq i8 %599, 0
  %601 = icmp eq ptr %597, %561
  %602 = or i1 %601, %600
  br i1 %602, label %603, label %607

603:                                              ; preds = %595
  %604 = add nuw nsw i32 %596, 1
  %605 = load ptr, ptr %597, align 8, !tbaa !181
  %606 = icmp eq ptr %605, null
  br i1 %606, label %607, label %595, !llvm.loop !183

607:                                              ; preds = %595, %603
  %608 = phi i32 [ %596, %595 ], [ %604, %603 ]
  %609 = icmp ult i32 %608, 5
  br i1 %609, label %610, label %616

610:                                              ; preds = %607
  %611 = getelementptr inbounds %struct.UvMapVert, ptr %561, i64 0, i32 4
  store i8 1, ptr %611, align 2, !tbaa !184
  br label %616

612:                                              ; preds = %571, %567, %560, %533
  %613 = load ptr, ptr %447, align 8, !tbaa !92
  %614 = call ptr %613(ptr noundef nonnull %11) #9
  %615 = icmp eq ptr %614, null
  br i1 %615, label %616, label %510, !llvm.loop !187

616:                                              ; preds = %612, %503, %610, %607, %500, %458
  %617 = phi i8 [ %460, %458 ], [ %460, %500 ], [ 1, %607 ], [ 1, %610 ], [ %460, %503 ], [ %460, %612 ]
  %618 = load ptr, ptr %443, align 8, !tbaa !92
  %619 = call ptr %618(ptr noundef nonnull %10) #9
  %620 = icmp eq ptr %619, null
  br i1 %620, label %448, label %458, !llvm.loop !188

621:                                              ; preds = %448, %437
  %622 = load ptr, ptr %20, align 8, !tbaa !135
  %623 = load ptr, ptr %336, align 8, !tbaa !136
  %624 = getelementptr inbounds %struct.BMLoop, ptr %623, i64 0, i32 1
  %625 = load ptr, ptr %624, align 8, !tbaa !115
  %626 = getelementptr inbounds %struct.BMHeader, ptr %625, i64 0, i32 1
  %627 = load i32, ptr %626, align 8, !tbaa !175
  %628 = call ptr @BM_uv_vert_map_at_index(ptr noundef %329, i32 noundef %627) #9
  %629 = icmp eq ptr %628, null
  br i1 %629, label %646, label %630

630:                                              ; preds = %621
  %631 = getelementptr inbounds %struct.BMHeader, ptr %622, i64 0, i32 1
  %632 = load i32, ptr %631, align 8, !tbaa !175
  br label %633

633:                                              ; preds = %630, %643
  %634 = phi ptr [ %628, %630 ], [ %639, %643 ]
  %635 = phi ptr [ %628, %630 ], [ %644, %643 ]
  %636 = getelementptr inbounds %struct.UvMapVert, ptr %635, i64 0, i32 3
  %637 = load i8, ptr %636, align 1, !tbaa !178
  %638 = icmp eq i8 %637, 0
  %639 = select i1 %638, ptr %634, ptr %635
  %640 = getelementptr inbounds %struct.UvMapVert, ptr %635, i64 0, i32 1
  %641 = load i32, ptr %640, align 8, !tbaa !180
  %642 = icmp eq i32 %641, %632
  br i1 %642, label %646, label %643

643:                                              ; preds = %633
  %644 = load ptr, ptr %635, align 8, !tbaa !181
  %645 = icmp eq ptr %644, null
  br i1 %645, label %646, label %633, !llvm.loop !182

646:                                              ; preds = %643, %633, %621
  %647 = phi ptr [ null, %621 ], [ null, %643 ], [ %639, %633 ]
  %648 = load ptr, ptr %20, align 8, !tbaa !135
  %649 = load ptr, ptr %336, align 8, !tbaa !136
  %650 = getelementptr inbounds %struct.BMLoop, ptr %649, i64 0, i32 6
  %651 = load ptr, ptr %650, align 8, !tbaa !116
  %652 = getelementptr inbounds %struct.BMLoop, ptr %651, i64 0, i32 1
  %653 = load ptr, ptr %652, align 8, !tbaa !115
  %654 = getelementptr inbounds %struct.BMHeader, ptr %653, i64 0, i32 1
  %655 = load i32, ptr %654, align 8, !tbaa !175
  %656 = call ptr @BM_uv_vert_map_at_index(ptr noundef %329, i32 noundef %655) #9
  %657 = getelementptr inbounds %struct.BMHeader, ptr %648, i64 0, i32 1
  %658 = load i32, ptr %657, align 8, !tbaa !175
  %659 = icmp ne ptr %656, null
  call void @llvm.assume(i1 %659)
  %660 = getelementptr inbounds %struct.UvMapVert, ptr %656, i64 0, i32 1
  %661 = load i32, ptr %660, align 8, !tbaa !180
  %662 = icmp eq i32 %661, %658
  br i1 %662, label %674, label %663

663:                                              ; preds = %646, %663
  %664 = phi ptr [ %670, %663 ], [ %656, %646 ]
  %665 = phi ptr [ %666, %663 ], [ %656, %646 ]
  %666 = load ptr, ptr %665, align 8, !tbaa !181, !nonnull !189, !noundef !189
  %667 = getelementptr inbounds %struct.UvMapVert, ptr %666, i64 0, i32 3
  %668 = load i8, ptr %667, align 1, !tbaa !178
  %669 = icmp eq i8 %668, 0
  %670 = select i1 %669, ptr %664, ptr %666
  %671 = getelementptr inbounds %struct.UvMapVert, ptr %666, i64 0, i32 1
  %672 = load i32, ptr %671, align 8, !tbaa !180
  %673 = icmp eq i32 %672, %658
  br i1 %673, label %674, label %663, !llvm.loop !182

674:                                              ; preds = %663, %646
  %675 = phi ptr [ %656, %646 ], [ %670, %663 ]
  %676 = getelementptr inbounds %struct.UvMapVert, ptr %647, i64 0, i32 4
  store i8 1, ptr %676, align 2, !tbaa !184
  %677 = getelementptr inbounds %struct.UvMapVert, ptr %675, i64 0, i32 4
  store i8 1, ptr %677, align 2, !tbaa !184
  br i1 %331, label %712, label %678

678:                                              ; preds = %674
  %679 = load ptr, ptr %336, align 8, !tbaa !136
  %680 = load ptr, ptr %25, align 8, !tbaa !56
  %681 = getelementptr inbounds %struct.ToolSettings, ptr %680, i64 0, i32 11
  %682 = load i8, ptr %681, align 2, !tbaa !74
  %683 = and i8 %682, 1
  %684 = icmp eq i8 %683, 0
  br i1 %684, label %700, label %685

685:                                              ; preds = %678
  %686 = getelementptr inbounds %struct.ToolSettings, ptr %680, i64 0, i32 8
  %687 = load i16, ptr %686, align 2, !tbaa !112
  %688 = and i16 %687, 4
  %689 = icmp eq i16 %688, 0
  br i1 %689, label %695, label %690

690:                                              ; preds = %685
  %691 = getelementptr inbounds %struct.BMLoop, ptr %679, i64 0, i32 3
  %692 = load ptr, ptr %691, align 8, !tbaa !113
  %693 = getelementptr inbounds %struct.BMHeader, ptr %692, i64 0, i32 3
  %694 = load i8, ptr %693, align 1, !tbaa !100
  br label %708

695:                                              ; preds = %685
  %696 = getelementptr inbounds %struct.BMLoop, ptr %679, i64 0, i32 1
  %697 = load ptr, ptr %696, align 8, !tbaa !115
  %698 = getelementptr inbounds %struct.BMHeader, ptr %697, i64 0, i32 3
  %699 = load i8, ptr %698, align 1, !tbaa !100
  br label %708

700:                                              ; preds = %678
  %701 = load ptr, ptr %679, align 8, !tbaa !101
  %702 = sext i32 %323 to i64
  %703 = getelementptr inbounds i8, ptr %701, i64 %702
  %704 = getelementptr inbounds %struct.MLoopUV, ptr %703, i64 0, i32 1
  %705 = load i32, ptr %704, align 4, !tbaa !103
  %706 = trunc i32 %705 to i8
  %707 = lshr i8 %706, 1
  br label %708

708:                                              ; preds = %700, %695, %690
  %709 = phi i8 [ %694, %690 ], [ %699, %695 ], [ %707, %700 ]
  %710 = and i8 %709, 1
  %711 = icmp ne i8 %710, 0
  br label %712

712:                                              ; preds = %708, %674
  %713 = phi i1 [ %711, %708 ], [ false, %674 ]
  %714 = load ptr, ptr %29, align 8, !tbaa !83
  %715 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  store i8 3, ptr %715, align 4, !tbaa !89
  %716 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %716, align 8, !tbaa !91
  %717 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %717, align 8, !tbaa !92
  %718 = getelementptr inbounds %struct.BMesh, ptr %714, i64 0, i32 12
  %719 = load ptr, ptr %718, align 8, !tbaa !93
  store ptr %719, ptr %10, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %10) #9
  %720 = load ptr, ptr %717, align 8, !tbaa !92
  %721 = call ptr %720(ptr noundef nonnull %10) #9
  %722 = icmp eq ptr %721, null
  br i1 %722, label %814, label %723

723:                                              ; preds = %712
  %724 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  %725 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  %726 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  %727 = sext i32 %323 to i64
  %728 = sext i32 %323 to i64
  br label %729

729:                                              ; preds = %723, %810
  %730 = phi ptr [ %721, %723 ], [ %812, %810 ]
  store i8 11, ptr %724, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %725, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %726, align 8, !tbaa !92
  store ptr %730, ptr %11, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %11) #9
  %731 = load ptr, ptr %726, align 8, !tbaa !92
  %732 = call ptr %731(ptr noundef nonnull %11) #9
  %733 = icmp eq ptr %732, null
  br i1 %733, label %810, label %734

734:                                              ; preds = %729
  %735 = getelementptr inbounds %struct.BMHeader, ptr %730, i64 0, i32 1
  br label %736

736:                                              ; preds = %734, %806
  %737 = phi ptr [ %732, %734 ], [ %808, %806 ]
  %738 = getelementptr inbounds %struct.BMLoop, ptr %737, i64 0, i32 1
  %739 = load ptr, ptr %738, align 8, !tbaa !115
  %740 = getelementptr inbounds %struct.BMHeader, ptr %739, i64 0, i32 1
  %741 = load i32, ptr %740, align 8, !tbaa !175
  %742 = call ptr @BM_uv_vert_map_at_index(ptr noundef %329, i32 noundef %741) #9
  %743 = load i32, ptr %735, align 8, !tbaa !175
  %744 = icmp ne ptr %742, null
  call void @llvm.assume(i1 %744)
  %745 = getelementptr inbounds %struct.UvMapVert, ptr %742, i64 0, i32 1
  %746 = load i32, ptr %745, align 8, !tbaa !180
  %747 = icmp eq i32 %746, %743
  br i1 %747, label %759, label %748

748:                                              ; preds = %736, %748
  %749 = phi ptr [ %755, %748 ], [ %742, %736 ]
  %750 = phi ptr [ %751, %748 ], [ %742, %736 ]
  %751 = load ptr, ptr %750, align 8, !tbaa !181, !nonnull !189, !noundef !189
  %752 = getelementptr inbounds %struct.UvMapVert, ptr %751, i64 0, i32 3
  %753 = load i8, ptr %752, align 1, !tbaa !178
  %754 = icmp eq i8 %753, 0
  %755 = select i1 %754, ptr %749, ptr %751
  %756 = getelementptr inbounds %struct.UvMapVert, ptr %751, i64 0, i32 1
  %757 = load i32, ptr %756, align 8, !tbaa !180
  %758 = icmp eq i32 %757, %743
  br i1 %758, label %759, label %748, !llvm.loop !182

759:                                              ; preds = %748, %736
  %760 = phi ptr [ %742, %736 ], [ %755, %748 ]
  %761 = getelementptr inbounds %struct.UvMapVert, ptr %760, i64 0, i32 4
  %762 = load i8, ptr %761, align 2, !tbaa !184
  %763 = icmp eq i8 %762, 0
  br i1 %763, label %806, label %764

764:                                              ; preds = %759
  %765 = load ptr, ptr %25, align 8, !tbaa !56
  %766 = getelementptr inbounds %struct.ToolSettings, ptr %765, i64 0, i32 11
  %767 = load i8, ptr %766, align 2, !tbaa !74
  %768 = and i8 %767, 1
  %769 = icmp eq i8 %768, 0
  br i1 %713, label %788, label %770

770:                                              ; preds = %764
  br i1 %769, label %782, label %771

771:                                              ; preds = %770
  %772 = getelementptr inbounds %struct.ToolSettings, ptr %765, i64 0, i32 8
  %773 = load i16, ptr %772, align 2, !tbaa !112
  %774 = and i16 %773, 4
  %775 = icmp eq i16 %774, 0
  %776 = load ptr, ptr %29, align 8, !tbaa !83
  br i1 %775, label %780, label %777

777:                                              ; preds = %771
  %778 = getelementptr inbounds %struct.BMLoop, ptr %737, i64 0, i32 3
  %779 = load ptr, ptr %778, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %776, ptr noundef %779, i8 noundef zeroext 1) #9
  br label %806

780:                                              ; preds = %771
  %781 = load ptr, ptr %738, align 8, !tbaa !115
  call void @BM_vert_select_set(ptr noundef %776, ptr noundef %781, i8 noundef zeroext 1) #9
  br label %806

782:                                              ; preds = %770
  %783 = load ptr, ptr %737, align 8, !tbaa !101
  %784 = getelementptr inbounds i8, ptr %783, i64 %727
  %785 = getelementptr inbounds %struct.MLoopUV, ptr %784, i64 0, i32 1
  %786 = load i32, ptr %785, align 4, !tbaa !103
  %787 = or i32 %786, 2
  store i32 %787, ptr %785, align 4, !tbaa !103
  br label %806

788:                                              ; preds = %764
  br i1 %769, label %800, label %789

789:                                              ; preds = %788
  %790 = getelementptr inbounds %struct.ToolSettings, ptr %765, i64 0, i32 8
  %791 = load i16, ptr %790, align 2, !tbaa !112
  %792 = and i16 %791, 4
  %793 = icmp eq i16 %792, 0
  %794 = load ptr, ptr %29, align 8, !tbaa !83
  br i1 %793, label %798, label %795

795:                                              ; preds = %789
  %796 = getelementptr inbounds %struct.BMLoop, ptr %737, i64 0, i32 3
  %797 = load ptr, ptr %796, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %794, ptr noundef %797, i8 noundef zeroext 0) #9
  br label %806

798:                                              ; preds = %789
  %799 = load ptr, ptr %738, align 8, !tbaa !115
  call void @BM_vert_select_set(ptr noundef %794, ptr noundef %799, i8 noundef zeroext 0) #9
  br label %806

800:                                              ; preds = %788
  %801 = load ptr, ptr %737, align 8, !tbaa !101
  %802 = getelementptr inbounds i8, ptr %801, i64 %728
  %803 = getelementptr inbounds %struct.MLoopUV, ptr %802, i64 0, i32 1
  %804 = load i32, ptr %803, align 4, !tbaa !103
  %805 = and i32 %804, -3
  store i32 %805, ptr %803, align 4, !tbaa !103
  br label %806

806:                                              ; preds = %800, %798, %795, %782, %780, %777, %759
  %807 = load ptr, ptr %726, align 8, !tbaa !92
  %808 = call ptr %807(ptr noundef nonnull %11) #9
  %809 = icmp eq ptr %808, null
  br i1 %809, label %810, label %736, !llvm.loop !190

810:                                              ; preds = %806, %729
  %811 = load ptr, ptr %717, align 8, !tbaa !92
  %812 = call ptr %811(ptr noundef nonnull %10) #9
  %813 = icmp eq ptr %812, null
  br i1 %813, label %814, label %729, !llvm.loop !191

814:                                              ; preds = %810, %712
  call void @BM_uv_vert_map_free(ptr noundef %329) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #9
  br label %1424

815:                                              ; preds = %316
  %816 = icmp eq i32 %86, 8
  br i1 %816, label %817, label %818

817:                                              ; preds = %815
  call fastcc void @uv_select_linked(ptr noundef %24, ptr noundef %28, ptr noundef nonnull %29, ptr noundef nonnull %21, ptr noundef nonnull %20, i8 noundef zeroext %2)
  br label %1424

818:                                              ; preds = %815
  %819 = icmp eq i8 %2, 0
  br i1 %819, label %1219, label %820

820:                                              ; preds = %818
  switch i32 %86, label %1059 [
    i32 1, label %821
    i32 2, label %902
    i32 4, label %968
  ]

821:                                              ; preds = %820
  %822 = getelementptr inbounds %struct.NearestHit, ptr %20, i64 0, i32 2
  %823 = load ptr, ptr %822, align 8, !tbaa !136
  %824 = load ptr, ptr %25, align 8, !tbaa !56
  %825 = getelementptr inbounds %struct.ToolSettings, ptr %824, i64 0, i32 11
  %826 = load i8, ptr %825, align 2, !tbaa !74
  %827 = and i8 %826, 1
  %828 = icmp eq i8 %827, 0
  br i1 %828, label %844, label %829

829:                                              ; preds = %821
  %830 = getelementptr inbounds %struct.ToolSettings, ptr %824, i64 0, i32 8
  %831 = load i16, ptr %830, align 2, !tbaa !112
  %832 = and i16 %831, 4
  %833 = icmp eq i16 %832, 0
  br i1 %833, label %839, label %834

834:                                              ; preds = %829
  %835 = getelementptr inbounds %struct.BMLoop, ptr %823, i64 0, i32 3
  %836 = load ptr, ptr %835, align 8, !tbaa !113
  %837 = getelementptr inbounds %struct.BMHeader, ptr %836, i64 0, i32 3
  %838 = load i8, ptr %837, align 1, !tbaa !100
  br label %852

839:                                              ; preds = %829
  %840 = getelementptr inbounds %struct.BMLoop, ptr %823, i64 0, i32 1
  %841 = load ptr, ptr %840, align 8, !tbaa !115
  %842 = getelementptr inbounds %struct.BMHeader, ptr %841, i64 0, i32 3
  %843 = load i8, ptr %842, align 1, !tbaa !100
  br label %852

844:                                              ; preds = %821
  %845 = load ptr, ptr %823, align 8, !tbaa !101
  %846 = sext i32 %32 to i64
  %847 = getelementptr inbounds i8, ptr %845, i64 %846
  %848 = getelementptr inbounds %struct.MLoopUV, ptr %847, i64 0, i32 1
  %849 = load i32, ptr %848, align 4, !tbaa !103
  %850 = trunc i32 %849 to i8
  %851 = lshr i8 %850, 1
  br label %852

852:                                              ; preds = %834, %839, %844
  %853 = phi i8 [ %838, %834 ], [ %843, %839 ], [ %851, %844 ]
  %854 = and i8 %853, 1
  %855 = xor i8 %854, 1
  %856 = icmp eq i8 %855, 0
  br i1 %856, label %882, label %857

857:                                              ; preds = %852
  br i1 %828, label %875, label %858

858:                                              ; preds = %857
  %859 = getelementptr inbounds %struct.ToolSettings, ptr %824, i64 0, i32 8
  %860 = load i16, ptr %859, align 2, !tbaa !112
  %861 = and i16 %860, 4
  %862 = icmp eq i16 %861, 0
  %863 = load ptr, ptr %29, align 8, !tbaa !83
  br i1 %862, label %867, label %864

864:                                              ; preds = %858
  %865 = getelementptr inbounds %struct.BMLoop, ptr %823, i64 0, i32 3
  %866 = load ptr, ptr %865, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %863, ptr noundef %866, i8 noundef zeroext 1) #9
  br label %870

867:                                              ; preds = %858
  %868 = getelementptr inbounds %struct.BMLoop, ptr %823, i64 0, i32 1
  %869 = load ptr, ptr %868, align 8, !tbaa !115
  call void @BM_vert_select_set(ptr noundef %863, ptr noundef %869, i8 noundef zeroext 1) #9
  br label %870

870:                                              ; preds = %867, %864
  %871 = load ptr, ptr %29, align 8, !tbaa !83
  %872 = getelementptr inbounds %struct.BMLoop, ptr %823, i64 0, i32 1
  %873 = load ptr, ptr %872, align 8, !tbaa !115
  %874 = call zeroext i8 @_bm_select_history_remove(ptr noundef %871, ptr noundef %873) #9
  br label %1059

875:                                              ; preds = %857
  %876 = load ptr, ptr %823, align 8, !tbaa !101
  %877 = sext i32 %32 to i64
  %878 = getelementptr inbounds i8, ptr %876, i64 %877
  %879 = getelementptr inbounds %struct.MLoopUV, ptr %878, i64 0, i32 1
  %880 = load i32, ptr %879, align 4, !tbaa !103
  %881 = or i32 %880, 2
  store i32 %881, ptr %879, align 4, !tbaa !103
  br label %1059

882:                                              ; preds = %852
  br i1 %828, label %895, label %883

883:                                              ; preds = %882
  %884 = getelementptr inbounds %struct.ToolSettings, ptr %824, i64 0, i32 8
  %885 = load i16, ptr %884, align 2, !tbaa !112
  %886 = and i16 %885, 4
  %887 = icmp eq i16 %886, 0
  %888 = load ptr, ptr %29, align 8, !tbaa !83
  br i1 %887, label %892, label %889

889:                                              ; preds = %883
  %890 = getelementptr inbounds %struct.BMLoop, ptr %823, i64 0, i32 3
  %891 = load ptr, ptr %890, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %888, ptr noundef %891, i8 noundef zeroext 0) #9
  br label %1059

892:                                              ; preds = %883
  %893 = getelementptr inbounds %struct.BMLoop, ptr %823, i64 0, i32 1
  %894 = load ptr, ptr %893, align 8, !tbaa !115
  call void @BM_vert_select_set(ptr noundef %888, ptr noundef %894, i8 noundef zeroext 0) #9
  br label %1059

895:                                              ; preds = %882
  %896 = load ptr, ptr %823, align 8, !tbaa !101
  %897 = sext i32 %32 to i64
  %898 = getelementptr inbounds i8, ptr %896, i64 %897
  %899 = getelementptr inbounds %struct.MLoopUV, ptr %898, i64 0, i32 1
  %900 = load i32, ptr %899, align 4, !tbaa !103
  %901 = and i32 %900, -3
  store i32 %901, ptr %899, align 4, !tbaa !103
  br label %1059

902:                                              ; preds = %820
  %903 = getelementptr inbounds %struct.NearestHit, ptr %20, i64 0, i32 2
  %904 = load ptr, ptr %903, align 8, !tbaa !136
  %905 = load ptr, ptr %25, align 8, !tbaa !56
  %906 = getelementptr inbounds %struct.ToolSettings, ptr %905, i64 0, i32 11
  %907 = load i8, ptr %906, align 2, !tbaa !74
  %908 = and i8 %907, 1
  %909 = icmp eq i8 %908, 0
  br i1 %909, label %944, label %910

910:                                              ; preds = %902
  %911 = getelementptr inbounds %struct.ToolSettings, ptr %905, i64 0, i32 8
  %912 = load i16, ptr %911, align 2, !tbaa !112
  %913 = and i16 %912, 4
  %914 = icmp eq i16 %913, 0
  br i1 %914, label %921, label %915

915:                                              ; preds = %910
  %916 = getelementptr inbounds %struct.BMLoop, ptr %904, i64 0, i32 3
  %917 = load ptr, ptr %916, align 8, !tbaa !113
  %918 = getelementptr inbounds %struct.BMHeader, ptr %917, i64 0, i32 3
  %919 = load i8, ptr %918, align 1, !tbaa !100
  %920 = and i8 %919, 1
  br label %962

921:                                              ; preds = %910
  %922 = icmp eq i16 %912, 2
  br i1 %922, label %923, label %929

923:                                              ; preds = %921
  %924 = getelementptr inbounds %struct.BMLoop, ptr %904, i64 0, i32 2
  %925 = load ptr, ptr %924, align 8, !tbaa !114
  %926 = getelementptr inbounds %struct.BMHeader, ptr %925, i64 0, i32 3
  %927 = load i8, ptr %926, align 1, !tbaa !100
  %928 = and i8 %927, 1
  br label %962

929:                                              ; preds = %921
  %930 = getelementptr inbounds %struct.BMLoop, ptr %904, i64 0, i32 1
  %931 = load ptr, ptr %930, align 8, !tbaa !115
  %932 = getelementptr inbounds %struct.BMHeader, ptr %931, i64 0, i32 3
  %933 = load i8, ptr %932, align 1, !tbaa !100
  %934 = and i8 %933, 1
  %935 = icmp eq i8 %934, 0
  br i1 %935, label %962, label %936

936:                                              ; preds = %929
  %937 = getelementptr inbounds %struct.BMLoop, ptr %904, i64 0, i32 6
  %938 = load ptr, ptr %937, align 8, !tbaa !116
  %939 = getelementptr inbounds %struct.BMLoop, ptr %938, i64 0, i32 1
  %940 = load ptr, ptr %939, align 8, !tbaa !115
  %941 = getelementptr inbounds %struct.BMHeader, ptr %940, i64 0, i32 3
  %942 = load i8, ptr %941, align 1, !tbaa !100
  %943 = and i8 %942, 1
  br label %962

944:                                              ; preds = %902
  %945 = load ptr, ptr %904, align 8, !tbaa !101
  %946 = sext i32 %32 to i64
  %947 = getelementptr inbounds i8, ptr %945, i64 %946
  %948 = getelementptr inbounds %struct.MLoopUV, ptr %947, i64 0, i32 1
  %949 = load i32, ptr %948, align 4, !tbaa !103
  %950 = and i32 %949, 2
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %962, label %952

952:                                              ; preds = %944
  %953 = getelementptr inbounds %struct.BMLoop, ptr %904, i64 0, i32 6
  %954 = load ptr, ptr %953, align 8, !tbaa !116
  %955 = load ptr, ptr %954, align 8, !tbaa !101
  %956 = getelementptr inbounds i8, ptr %955, i64 %946
  %957 = getelementptr inbounds %struct.MLoopUV, ptr %956, i64 0, i32 1
  %958 = load i32, ptr %957, align 4, !tbaa !103
  %959 = trunc i32 %958 to i8
  %960 = lshr i8 %959, 1
  %961 = and i8 %960, 1
  br label %962

962:                                              ; preds = %915, %923, %929, %936, %944, %952
  %963 = phi i8 [ %920, %915 ], [ %928, %923 ], [ 0, %929 ], [ %943, %936 ], [ 0, %944 ], [ %961, %952 ]
  %964 = icmp eq i8 %963, 0
  %965 = xor i8 %963, 1
  br i1 %964, label %966, label %967

966:                                              ; preds = %962
  call void @uvedit_edge_select_enable(ptr noundef %29, ptr noundef %24, ptr noundef %904, i8 noundef zeroext 1, i32 noundef %32)
  br label %1059

967:                                              ; preds = %962
  call void @uvedit_edge_select_disable(ptr noundef %29, ptr noundef %24, ptr noundef %904, i32 noundef %32)
  br label %1059

968:                                              ; preds = %820
  %969 = load ptr, ptr %20, align 8, !tbaa !135
  %970 = load ptr, ptr %25, align 8, !tbaa !56
  %971 = getelementptr inbounds %struct.ToolSettings, ptr %970, i64 0, i32 11
  %972 = load i8, ptr %971, align 2, !tbaa !74
  %973 = and i8 %972, 1
  %974 = icmp eq i8 %973, 0
  br i1 %974, label %979, label %975

975:                                              ; preds = %968
  %976 = getelementptr inbounds %struct.BMHeader, ptr %969, i64 0, i32 3
  %977 = load i8, ptr %976, align 1, !tbaa !100
  %978 = and i8 %977, 1
  br label %1002

979:                                              ; preds = %968
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  %980 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 11, ptr %980, align 4, !tbaa !89
  %981 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %981, align 8, !tbaa !91
  %982 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %982, align 8, !tbaa !92
  store ptr %969, ptr %8, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %8) #9
  %983 = load ptr, ptr %982, align 8, !tbaa !92
  %984 = call ptr %983(ptr noundef nonnull %8) #9
  %985 = icmp eq ptr %984, null
  br i1 %985, label %1000, label %986

986:                                              ; preds = %979
  %987 = sext i32 %32 to i64
  br label %988

988:                                              ; preds = %996, %986
  %989 = phi ptr [ %984, %986 ], [ %998, %996 ]
  %990 = load ptr, ptr %989, align 8, !tbaa !101
  %991 = getelementptr inbounds i8, ptr %990, i64 %987
  %992 = getelementptr inbounds %struct.MLoopUV, ptr %991, i64 0, i32 1
  %993 = load i32, ptr %992, align 4, !tbaa !103
  %994 = and i32 %993, 2
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %1000, label %996

996:                                              ; preds = %988
  %997 = load ptr, ptr %982, align 8, !tbaa !92
  %998 = call ptr %997(ptr noundef nonnull %8) #9
  %999 = icmp eq ptr %998, null
  br i1 %999, label %1000, label %988, !llvm.loop !105

1000:                                             ; preds = %996, %988, %979
  %1001 = phi i8 [ 1, %979 ], [ 0, %988 ], [ 1, %996 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  br label %1002

1002:                                             ; preds = %975, %1000
  %1003 = phi i8 [ %978, %975 ], [ %1001, %1000 ]
  %1004 = icmp eq i8 %1003, 0
  %1005 = zext i1 %1004 to i8
  %1006 = load ptr, ptr %20, align 8, !tbaa !135
  %1007 = load ptr, ptr %25, align 8, !tbaa !56
  %1008 = getelementptr inbounds %struct.ToolSettings, ptr %1007, i64 0, i32 11
  %1009 = load i8, ptr %1008, align 2, !tbaa !74
  %1010 = and i8 %1009, 1
  %1011 = icmp eq i8 %1010, 0
  br i1 %1004, label %1012, label %1036

1012:                                             ; preds = %1002
  br i1 %1011, label %1016, label %1013

1013:                                             ; preds = %1012
  %1014 = load ptr, ptr %29, align 8, !tbaa !83
  call void @BM_face_select_set(ptr noundef %1014, ptr noundef %1006, i8 noundef zeroext 1) #9
  %1015 = load ptr, ptr %29, align 8, !tbaa !83
  call void @_bm_select_history_store(ptr noundef %1015, ptr noundef %1006) #9
  br label %1059

1016:                                             ; preds = %1012
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  %1017 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 11, ptr %1017, align 4, !tbaa !89
  %1018 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %1018, align 8, !tbaa !91
  %1019 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %1019, align 8, !tbaa !92
  store ptr %1006, ptr %7, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %7) #9
  %1020 = load ptr, ptr %1019, align 8, !tbaa !92
  %1021 = call ptr %1020(ptr noundef nonnull %7) #9
  %1022 = icmp eq ptr %1021, null
  br i1 %1022, label %1035, label %1023

1023:                                             ; preds = %1016
  %1024 = sext i32 %32 to i64
  br label %1025

1025:                                             ; preds = %1025, %1023
  %1026 = phi ptr [ %1021, %1023 ], [ %1033, %1025 ]
  %1027 = load ptr, ptr %1026, align 8, !tbaa !101
  %1028 = getelementptr inbounds i8, ptr %1027, i64 %1024
  %1029 = getelementptr inbounds %struct.MLoopUV, ptr %1028, i64 0, i32 1
  %1030 = load i32, ptr %1029, align 4, !tbaa !103
  %1031 = or i32 %1030, 2
  store i32 %1031, ptr %1029, align 4, !tbaa !103
  %1032 = load ptr, ptr %1019, align 8, !tbaa !92
  %1033 = call ptr %1032(ptr noundef nonnull %7) #9
  %1034 = icmp eq ptr %1033, null
  br i1 %1034, label %1035, label %1025, !llvm.loop !110

1035:                                             ; preds = %1025, %1016
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  br label %1059

1036:                                             ; preds = %1002
  br i1 %1011, label %1039, label %1037

1037:                                             ; preds = %1036
  %1038 = load ptr, ptr %29, align 8, !tbaa !83
  call void @BM_face_select_set(ptr noundef %1038, ptr noundef %1006, i8 noundef zeroext 0) #9
  br label %1059

1039:                                             ; preds = %1036
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  %1040 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 11, ptr %1040, align 4, !tbaa !89
  %1041 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %1041, align 8, !tbaa !91
  %1042 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %1042, align 8, !tbaa !92
  store ptr %1006, ptr %6, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #9
  %1043 = load ptr, ptr %1042, align 8, !tbaa !92
  %1044 = call ptr %1043(ptr noundef nonnull %6) #9
  %1045 = icmp eq ptr %1044, null
  br i1 %1045, label %1058, label %1046

1046:                                             ; preds = %1039
  %1047 = sext i32 %32 to i64
  br label %1048

1048:                                             ; preds = %1048, %1046
  %1049 = phi ptr [ %1044, %1046 ], [ %1056, %1048 ]
  %1050 = load ptr, ptr %1049, align 8, !tbaa !101
  %1051 = getelementptr inbounds i8, ptr %1050, i64 %1047
  %1052 = getelementptr inbounds %struct.MLoopUV, ptr %1051, i64 0, i32 1
  %1053 = load i32, ptr %1052, align 4, !tbaa !103
  %1054 = and i32 %1053, -3
  store i32 %1054, ptr %1052, align 4, !tbaa !103
  %1055 = load ptr, ptr %1042, align 8, !tbaa !92
  %1056 = call ptr %1055(ptr noundef nonnull %6) #9
  %1057 = icmp eq ptr %1056, null
  br i1 %1057, label %1058, label %1048, !llvm.loop !111

1058:                                             ; preds = %1048, %1039
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  br label %1059

1059:                                             ; preds = %1058, %1037, %1035, %1013, %895, %892, %889, %875, %870, %967, %966, %820
  %1060 = phi i8 [ 1, %820 ], [ %965, %966 ], [ %965, %967 ], [ %855, %870 ], [ %855, %875 ], [ %855, %889 ], [ %855, %892 ], [ %855, %895 ], [ %1005, %1013 ], [ %1005, %1035 ], [ %1005, %1037 ], [ %1005, %1058 ]
  %1061 = phi i32 [ 0, %820 ], [ 1, %966 ], [ 1, %967 ], [ 1, %870 ], [ 1, %875 ], [ 1, %889 ], [ 1, %892 ], [ 1, %895 ], [ -1, %1013 ], [ -1, %1035 ], [ -1, %1037 ], [ -1, %1058 ]
  %1062 = icmp eq i8 %1060, 0
  %1063 = and i1 %66, %1062
  br i1 %1063, label %1064, label %1066

1064:                                             ; preds = %1059
  %1065 = load ptr, ptr %29, align 8, !tbaa !83
  call void @BM_select_history_validate(ptr noundef %1065) #9
  br label %1066

1066:                                             ; preds = %1064, %1059
  %1067 = icmp eq i32 %87, 1
  br i1 %1067, label %1424, label %1068

1068:                                             ; preds = %1066
  %1069 = load ptr, ptr %29, align 8, !tbaa !83
  call void @BM_mesh_elem_index_ensure(ptr noundef %1069, i8 noundef zeroext 1) #9
  %1070 = load ptr, ptr %29, align 8, !tbaa !83
  %1071 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 4
  store i8 3, ptr %1071, align 4, !tbaa !89
  %1072 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %1072, align 8, !tbaa !91
  %1073 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %1073, align 8, !tbaa !92
  %1074 = getelementptr inbounds %struct.BMesh, ptr %1070, i64 0, i32 12
  %1075 = load ptr, ptr %1074, align 8, !tbaa !93
  store ptr %1075, ptr %18, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %18) #9
  %1076 = load ptr, ptr %1073, align 8, !tbaa !92
  %1077 = call ptr %1076(ptr noundef nonnull %18) #9
  %1078 = icmp eq ptr %1077, null
  br i1 %1078, label %1424, label %1079

1079:                                             ; preds = %1068
  %1080 = sext i32 %35 to i64
  %1081 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 4
  %1082 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 1
  %1083 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 2
  %1084 = sext i32 %32 to i64
  %1085 = icmp sgt i32 %318, 0
  %1086 = trunc i32 %87 to i8
  %1087 = sext i32 %318 to i64
  %1088 = zext nneg i32 %318 to i64
  br label %1089

1089:                                             ; preds = %1079, %1215
  %1090 = phi ptr [ %1077, %1079 ], [ %1217, %1215 ]
  %1091 = load ptr, ptr %25, align 8, !tbaa !56
  %1092 = getelementptr inbounds %struct.ToolSettings, ptr %1091, i64 0, i32 11
  %1093 = load i8, ptr %1092, align 2, !tbaa !74
  %1094 = and i8 %1093, 2
  %1095 = icmp eq i8 %1094, 0
  br i1 %1095, label %1115, label %1096

1096:                                             ; preds = %1089
  %1097 = load ptr, ptr %1090, align 8, !tbaa !95
  %1098 = getelementptr inbounds i8, ptr %1097, i64 %1080
  %1099 = load ptr, ptr %1098, align 8, !tbaa !98
  %1100 = icmp eq ptr %1099, %28
  br i1 %1100, label %1101, label %1129

1101:                                             ; preds = %1096
  %1102 = and i8 %1093, 1
  %1103 = icmp eq i8 %1102, 0
  %1104 = getelementptr inbounds %struct.BMHeader, ptr %1090, i64 0, i32 3
  %1105 = load i8, ptr %1104, align 1, !tbaa !100
  br i1 %1103, label %1110, label %1106

1106:                                             ; preds = %1101
  %1107 = lshr i8 %1105, 1
  %1108 = and i8 %1107, 1
  %1109 = xor i8 %1108, 1
  br label %1129

1110:                                             ; preds = %1101
  %1111 = and i8 %1105, 2
  %1112 = icmp eq i8 %1111, 0
  %1113 = and i8 %1105, 1
  %1114 = select i1 %1112, i8 %1113, i8 0
  br label %1129

1115:                                             ; preds = %1089
  %1116 = and i8 %1093, 1
  %1117 = icmp eq i8 %1116, 0
  %1118 = getelementptr inbounds %struct.BMHeader, ptr %1090, i64 0, i32 3
  %1119 = load i8, ptr %1118, align 1, !tbaa !100
  br i1 %1117, label %1124, label %1120

1120:                                             ; preds = %1115
  %1121 = lshr i8 %1119, 1
  %1122 = and i8 %1121, 1
  %1123 = xor i8 %1122, 1
  br label %1129

1124:                                             ; preds = %1115
  %1125 = and i8 %1119, 2
  %1126 = icmp eq i8 %1125, 0
  %1127 = and i8 %1119, 1
  %1128 = select i1 %1126, i8 %1127, i8 0
  br label %1129

1129:                                             ; preds = %1096, %1106, %1110, %1120, %1124
  %1130 = phi i8 [ 0, %1096 ], [ %1109, %1106 ], [ %1114, %1110 ], [ %1123, %1120 ], [ %1128, %1124 ]
  %1131 = icmp eq i8 %1130, 0
  br i1 %1131, label %1215, label %1132

1132:                                             ; preds = %1129
  store i8 11, ptr %1081, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %1082, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %1083, align 8, !tbaa !92
  store ptr %1090, ptr %19, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %19) #9
  %1133 = load ptr, ptr %1083, align 8, !tbaa !92
  %1134 = call ptr %1133(ptr noundef nonnull %19) #9
  %1135 = icmp eq ptr %1134, null
  br i1 %1135, label %1215, label %1136

1136:                                             ; preds = %1132, %1211
  %1137 = phi ptr [ %1213, %1211 ], [ %1134, %1132 ]
  %1138 = load ptr, ptr %1137, align 8, !tbaa !101
  %1139 = getelementptr inbounds i8, ptr %1138, i64 %1084
  %1140 = getelementptr inbounds %struct.BMLoop, ptr %1137, i64 0, i32 1
  %1141 = load ptr, ptr %1140, align 8, !tbaa !115
  %1142 = getelementptr inbounds %struct.BMHeader, ptr %1141, i64 0, i32 1
  %1143 = load i32, ptr %1142, align 8, !tbaa !175
  br i1 %1085, label %1144, label %1211

1144:                                             ; preds = %1136
  %1145 = load float, ptr %21, align 4
  %1146 = getelementptr inbounds float, ptr %1139, i64 1
  %1147 = load float, ptr %46, align 4
  br label %1148

1148:                                             ; preds = %1144, %1170
  %1149 = phi i64 [ 0, %1144 ], [ %1171, %1170 ]
  %1150 = phi i1 [ %1085, %1144 ], [ %1172, %1170 ]
  %1151 = getelementptr inbounds i32, ptr %317, i64 %1149
  %1152 = load i32, ptr %1151, align 4, !tbaa !171
  %1153 = icmp eq i32 %1152, %1143
  br i1 %1153, label %1154, label %1170

1154:                                             ; preds = %1148
  switch i8 %1086, label %1170 [
    i8 0, label %1155
    i8 2, label %1174
  ]

1155:                                             ; preds = %1154
  %1156 = getelementptr inbounds ptr, ptr %319, i64 %1149
  %1157 = load ptr, ptr %1156, align 8, !tbaa !55
  %1158 = load float, ptr %1157, align 4, !tbaa !127
  %1159 = load float, ptr %1139, align 4, !tbaa !127
  %1160 = fsub float %1158, %1159
  %1161 = call float @llvm.fabs.f32(float %1160)
  %1162 = fcmp olt float %1161, %1145
  br i1 %1162, label %1163, label %1170

1163:                                             ; preds = %1155
  %1164 = getelementptr inbounds float, ptr %1157, i64 1
  %1165 = load float, ptr %1164, align 4, !tbaa !127
  %1166 = load float, ptr %1146, align 4, !tbaa !127
  %1167 = fsub float %1165, %1166
  %1168 = call float @llvm.fabs.f32(float %1167)
  %1169 = fcmp olt float %1168, %1147
  br i1 %1169, label %1174, label %1170

1170:                                             ; preds = %1163, %1155, %1154, %1148
  %1171 = add nuw nsw i64 %1149, 1
  %1172 = icmp slt i64 %1171, %1087
  %1173 = icmp eq i64 %1171, %1088
  br i1 %1173, label %1211, label %1148, !llvm.loop !192

1174:                                             ; preds = %1154, %1163
  br i1 %1150, label %1175, label %1211

1175:                                             ; preds = %1174
  %1176 = load ptr, ptr %25, align 8, !tbaa !56
  %1177 = getelementptr inbounds %struct.ToolSettings, ptr %1176, i64 0, i32 11
  %1178 = load i8, ptr %1177, align 2, !tbaa !74
  %1179 = and i8 %1178, 1
  %1180 = icmp eq i8 %1179, 0
  br i1 %1062, label %1196, label %1181

1181:                                             ; preds = %1175
  br i1 %1180, label %1192, label %1182

1182:                                             ; preds = %1181
  %1183 = getelementptr inbounds %struct.ToolSettings, ptr %1176, i64 0, i32 8
  %1184 = load i16, ptr %1183, align 2, !tbaa !112
  %1185 = and i16 %1184, 4
  %1186 = icmp eq i16 %1185, 0
  %1187 = load ptr, ptr %29, align 8, !tbaa !83
  br i1 %1186, label %1191, label %1188

1188:                                             ; preds = %1182
  %1189 = getelementptr inbounds %struct.BMLoop, ptr %1137, i64 0, i32 3
  %1190 = load ptr, ptr %1189, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %1187, ptr noundef %1190, i8 noundef zeroext 1) #9
  br label %1211

1191:                                             ; preds = %1182
  call void @BM_vert_select_set(ptr noundef %1187, ptr noundef %1141, i8 noundef zeroext 1) #9
  br label %1211

1192:                                             ; preds = %1181
  %1193 = getelementptr inbounds %struct.MLoopUV, ptr %1139, i64 0, i32 1
  %1194 = load i32, ptr %1193, align 4, !tbaa !103
  %1195 = or i32 %1194, 2
  store i32 %1195, ptr %1193, align 4, !tbaa !103
  br label %1211

1196:                                             ; preds = %1175
  br i1 %1180, label %1207, label %1197

1197:                                             ; preds = %1196
  %1198 = getelementptr inbounds %struct.ToolSettings, ptr %1176, i64 0, i32 8
  %1199 = load i16, ptr %1198, align 2, !tbaa !112
  %1200 = and i16 %1199, 4
  %1201 = icmp eq i16 %1200, 0
  %1202 = load ptr, ptr %29, align 8, !tbaa !83
  br i1 %1201, label %1206, label %1203

1203:                                             ; preds = %1197
  %1204 = getelementptr inbounds %struct.BMLoop, ptr %1137, i64 0, i32 3
  %1205 = load ptr, ptr %1204, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %1202, ptr noundef %1205, i8 noundef zeroext 0) #9
  br label %1211

1206:                                             ; preds = %1197
  call void @BM_vert_select_set(ptr noundef %1202, ptr noundef %1141, i8 noundef zeroext 0) #9
  br label %1211

1207:                                             ; preds = %1196
  %1208 = getelementptr inbounds %struct.MLoopUV, ptr %1139, i64 0, i32 1
  %1209 = load i32, ptr %1208, align 4, !tbaa !103
  %1210 = and i32 %1209, -3
  store i32 %1210, ptr %1208, align 4, !tbaa !103
  br label %1211

1211:                                             ; preds = %1170, %1136, %1207, %1206, %1203, %1192, %1191, %1188, %1174
  %1212 = load ptr, ptr %1083, align 8, !tbaa !92
  %1213 = call ptr %1212(ptr noundef nonnull %19) #9
  %1214 = icmp eq ptr %1213, null
  br i1 %1214, label %1215, label %1136, !llvm.loop !193

1215:                                             ; preds = %1211, %1132, %1129
  %1216 = load ptr, ptr %1073, align 8, !tbaa !92
  %1217 = call ptr %1216(ptr noundef nonnull %18) #9
  %1218 = icmp eq ptr %1217, null
  br i1 %1218, label %1424, label %1089, !llvm.loop !194

1219:                                             ; preds = %818
  call fastcc void @uv_select_all_perform(ptr noundef %24, ptr noundef %28, ptr noundef nonnull %29, i32 noundef 2)
  switch i32 %86, label %1285 [
    i32 1, label %1220
    i32 2, label %1252
    i32 4, label %1255
  ]

1220:                                             ; preds = %1219
  %1221 = getelementptr inbounds %struct.NearestHit, ptr %20, i64 0, i32 2
  %1222 = load ptr, ptr %1221, align 8, !tbaa !136
  %1223 = load ptr, ptr %25, align 8, !tbaa !56
  %1224 = getelementptr inbounds %struct.ToolSettings, ptr %1223, i64 0, i32 11
  %1225 = load i8, ptr %1224, align 2, !tbaa !74
  %1226 = and i8 %1225, 1
  %1227 = icmp eq i8 %1226, 0
  br i1 %1227, label %1245, label %1228

1228:                                             ; preds = %1220
  %1229 = getelementptr inbounds %struct.ToolSettings, ptr %1223, i64 0, i32 8
  %1230 = load i16, ptr %1229, align 2, !tbaa !112
  %1231 = and i16 %1230, 4
  %1232 = icmp eq i16 %1231, 0
  %1233 = load ptr, ptr %29, align 8, !tbaa !83
  br i1 %1232, label %1237, label %1234

1234:                                             ; preds = %1228
  %1235 = getelementptr inbounds %struct.BMLoop, ptr %1222, i64 0, i32 3
  %1236 = load ptr, ptr %1235, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %1233, ptr noundef %1236, i8 noundef zeroext 1) #9
  br label %1240

1237:                                             ; preds = %1228
  %1238 = getelementptr inbounds %struct.BMLoop, ptr %1222, i64 0, i32 1
  %1239 = load ptr, ptr %1238, align 8, !tbaa !115
  call void @BM_vert_select_set(ptr noundef %1233, ptr noundef %1239, i8 noundef zeroext 1) #9
  br label %1240

1240:                                             ; preds = %1237, %1234
  %1241 = load ptr, ptr %29, align 8, !tbaa !83
  %1242 = getelementptr inbounds %struct.BMLoop, ptr %1222, i64 0, i32 1
  %1243 = load ptr, ptr %1242, align 8, !tbaa !115
  %1244 = call zeroext i8 @_bm_select_history_remove(ptr noundef %1241, ptr noundef %1243) #9
  br label %1285

1245:                                             ; preds = %1220
  %1246 = load ptr, ptr %1222, align 8, !tbaa !101
  %1247 = sext i32 %32 to i64
  %1248 = getelementptr inbounds i8, ptr %1246, i64 %1247
  %1249 = getelementptr inbounds %struct.MLoopUV, ptr %1248, i64 0, i32 1
  %1250 = load i32, ptr %1249, align 4, !tbaa !103
  %1251 = or i32 %1250, 2
  store i32 %1251, ptr %1249, align 4, !tbaa !103
  br label %1285

1252:                                             ; preds = %1219
  %1253 = getelementptr inbounds %struct.NearestHit, ptr %20, i64 0, i32 2
  %1254 = load ptr, ptr %1253, align 8, !tbaa !136
  call void @uvedit_edge_select_enable(ptr noundef nonnull %29, ptr noundef %24, ptr noundef %1254, i8 noundef zeroext 1, i32 noundef %32)
  br label %1285

1255:                                             ; preds = %1219
  %1256 = load ptr, ptr %20, align 8, !tbaa !135
  %1257 = load ptr, ptr %25, align 8, !tbaa !56
  %1258 = getelementptr inbounds %struct.ToolSettings, ptr %1257, i64 0, i32 11
  %1259 = load i8, ptr %1258, align 2, !tbaa !74
  %1260 = and i8 %1259, 1
  %1261 = icmp eq i8 %1260, 0
  br i1 %1261, label %1265, label %1262

1262:                                             ; preds = %1255
  %1263 = load ptr, ptr %29, align 8, !tbaa !83
  call void @BM_face_select_set(ptr noundef %1263, ptr noundef %1256, i8 noundef zeroext 1) #9
  %1264 = load ptr, ptr %29, align 8, !tbaa !83
  call void @_bm_select_history_store(ptr noundef %1264, ptr noundef %1256) #9
  br label %1285

1265:                                             ; preds = %1255
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %1266 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 11, ptr %1266, align 4, !tbaa !89
  %1267 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %1267, align 8, !tbaa !91
  %1268 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %1268, align 8, !tbaa !92
  store ptr %1256, ptr %5, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %5) #9
  %1269 = load ptr, ptr %1268, align 8, !tbaa !92
  %1270 = call ptr %1269(ptr noundef nonnull %5) #9
  %1271 = icmp eq ptr %1270, null
  br i1 %1271, label %1284, label %1272

1272:                                             ; preds = %1265
  %1273 = sext i32 %32 to i64
  br label %1274

1274:                                             ; preds = %1274, %1272
  %1275 = phi ptr [ %1270, %1272 ], [ %1282, %1274 ]
  %1276 = load ptr, ptr %1275, align 8, !tbaa !101
  %1277 = getelementptr inbounds i8, ptr %1276, i64 %1273
  %1278 = getelementptr inbounds %struct.MLoopUV, ptr %1277, i64 0, i32 1
  %1279 = load i32, ptr %1278, align 4, !tbaa !103
  %1280 = or i32 %1279, 2
  store i32 %1280, ptr %1278, align 4, !tbaa !103
  %1281 = load ptr, ptr %1268, align 8, !tbaa !92
  %1282 = call ptr %1281(ptr noundef nonnull %5) #9
  %1283 = icmp eq ptr %1282, null
  br i1 %1283, label %1284, label %1274, !llvm.loop !110

1284:                                             ; preds = %1274, %1265
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  br label %1285

1285:                                             ; preds = %1284, %1262, %1245, %1240, %1219, %1252
  %1286 = phi i32 [ 1, %1252 ], [ 0, %1219 ], [ 1, %1240 ], [ 1, %1245 ], [ 0, %1262 ], [ 0, %1284 ]
  %1287 = icmp eq i32 %87, 1
  br i1 %1287, label %1424, label %1288

1288:                                             ; preds = %1285
  %1289 = load ptr, ptr %29, align 8, !tbaa !83
  %1290 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 4
  store i8 3, ptr %1290, align 4, !tbaa !89
  %1291 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %1291, align 8, !tbaa !91
  %1292 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %1292, align 8, !tbaa !92
  %1293 = getelementptr inbounds %struct.BMesh, ptr %1289, i64 0, i32 12
  %1294 = load ptr, ptr %1293, align 8, !tbaa !93
  store ptr %1294, ptr %18, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %18) #9
  %1295 = load ptr, ptr %1292, align 8, !tbaa !92
  %1296 = call ptr %1295(ptr noundef nonnull %18) #9
  %1297 = icmp eq ptr %1296, null
  br i1 %1297, label %1424, label %1298

1298:                                             ; preds = %1288
  %1299 = sext i32 %35 to i64
  %1300 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 4
  %1301 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 1
  %1302 = getelementptr inbounds %struct.BMIter, ptr %19, i64 0, i32 2
  %1303 = sext i32 %32 to i64
  %1304 = icmp sgt i32 %318, 0
  %1305 = trunc i32 %87 to i8
  %1306 = sext i32 %318 to i64
  %1307 = zext nneg i32 %318 to i64
  br label %1308

1308:                                             ; preds = %1298, %1419
  %1309 = phi ptr [ %1296, %1298 ], [ %1422, %1419 ]
  %1310 = phi i32 [ %1286, %1298 ], [ %1420, %1419 ]
  %1311 = load ptr, ptr %25, align 8, !tbaa !56
  %1312 = getelementptr inbounds %struct.ToolSettings, ptr %1311, i64 0, i32 11
  %1313 = load i8, ptr %1312, align 2, !tbaa !74
  %1314 = and i8 %1313, 2
  %1315 = icmp eq i8 %1314, 0
  br i1 %1315, label %1335, label %1316

1316:                                             ; preds = %1308
  %1317 = load ptr, ptr %1309, align 8, !tbaa !95
  %1318 = getelementptr inbounds i8, ptr %1317, i64 %1299
  %1319 = load ptr, ptr %1318, align 8, !tbaa !98
  %1320 = icmp eq ptr %1319, %28
  br i1 %1320, label %1321, label %1349

1321:                                             ; preds = %1316
  %1322 = and i8 %1313, 1
  %1323 = icmp eq i8 %1322, 0
  %1324 = getelementptr inbounds %struct.BMHeader, ptr %1309, i64 0, i32 3
  %1325 = load i8, ptr %1324, align 1, !tbaa !100
  br i1 %1323, label %1330, label %1326

1326:                                             ; preds = %1321
  %1327 = lshr i8 %1325, 1
  %1328 = and i8 %1327, 1
  %1329 = xor i8 %1328, 1
  br label %1349

1330:                                             ; preds = %1321
  %1331 = and i8 %1325, 2
  %1332 = icmp eq i8 %1331, 0
  %1333 = and i8 %1325, 1
  %1334 = select i1 %1332, i8 %1333, i8 0
  br label %1349

1335:                                             ; preds = %1308
  %1336 = and i8 %1313, 1
  %1337 = icmp eq i8 %1336, 0
  %1338 = getelementptr inbounds %struct.BMHeader, ptr %1309, i64 0, i32 3
  %1339 = load i8, ptr %1338, align 1, !tbaa !100
  br i1 %1337, label %1344, label %1340

1340:                                             ; preds = %1335
  %1341 = lshr i8 %1339, 1
  %1342 = and i8 %1341, 1
  %1343 = xor i8 %1342, 1
  br label %1349

1344:                                             ; preds = %1335
  %1345 = and i8 %1339, 2
  %1346 = icmp eq i8 %1345, 0
  %1347 = and i8 %1339, 1
  %1348 = select i1 %1346, i8 %1347, i8 0
  br label %1349

1349:                                             ; preds = %1316, %1326, %1330, %1340, %1344
  %1350 = phi i8 [ 0, %1316 ], [ %1329, %1326 ], [ %1334, %1330 ], [ %1343, %1340 ], [ %1348, %1344 ]
  %1351 = icmp eq i8 %1350, 0
  br i1 %1351, label %1419, label %1352

1352:                                             ; preds = %1349
  store i8 11, ptr %1300, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %1301, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %1302, align 8, !tbaa !92
  store ptr %1309, ptr %19, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %19) #9
  %1353 = load ptr, ptr %1302, align 8, !tbaa !92
  %1354 = call ptr %1353(ptr noundef nonnull %19) #9
  %1355 = icmp eq ptr %1354, null
  br i1 %1355, label %1419, label %1356

1356:                                             ; preds = %1352, %1415
  %1357 = phi ptr [ %1417, %1415 ], [ %1354, %1352 ]
  %1358 = load ptr, ptr %1357, align 8, !tbaa !101
  %1359 = getelementptr inbounds i8, ptr %1358, i64 %1303
  %1360 = getelementptr inbounds %struct.BMLoop, ptr %1357, i64 0, i32 1
  %1361 = load ptr, ptr %1360, align 8, !tbaa !115
  %1362 = getelementptr inbounds %struct.BMHeader, ptr %1361, i64 0, i32 1
  %1363 = load i32, ptr %1362, align 8, !tbaa !175
  br i1 %1304, label %1364, label %1415

1364:                                             ; preds = %1356
  %1365 = load float, ptr %21, align 4
  %1366 = getelementptr inbounds float, ptr %1359, i64 1
  %1367 = load float, ptr %46, align 4
  br label %1368

1368:                                             ; preds = %1364, %1390
  %1369 = phi i64 [ 0, %1364 ], [ %1391, %1390 ]
  %1370 = phi i1 [ %1304, %1364 ], [ %1392, %1390 ]
  %1371 = getelementptr inbounds i32, ptr %317, i64 %1369
  %1372 = load i32, ptr %1371, align 4, !tbaa !171
  %1373 = icmp eq i32 %1372, %1363
  br i1 %1373, label %1374, label %1390

1374:                                             ; preds = %1368
  switch i8 %1305, label %1390 [
    i8 0, label %1375
    i8 2, label %1394
  ]

1375:                                             ; preds = %1374
  %1376 = getelementptr inbounds ptr, ptr %319, i64 %1369
  %1377 = load ptr, ptr %1376, align 8, !tbaa !55
  %1378 = load float, ptr %1377, align 4, !tbaa !127
  %1379 = load float, ptr %1359, align 4, !tbaa !127
  %1380 = fsub float %1378, %1379
  %1381 = call float @llvm.fabs.f32(float %1380)
  %1382 = fcmp olt float %1381, %1365
  br i1 %1382, label %1383, label %1390

1383:                                             ; preds = %1375
  %1384 = getelementptr inbounds float, ptr %1377, i64 1
  %1385 = load float, ptr %1384, align 4, !tbaa !127
  %1386 = load float, ptr %1366, align 4, !tbaa !127
  %1387 = fsub float %1385, %1386
  %1388 = call float @llvm.fabs.f32(float %1387)
  %1389 = fcmp olt float %1388, %1367
  br i1 %1389, label %1394, label %1390

1390:                                             ; preds = %1383, %1375, %1374, %1368
  %1391 = add nuw nsw i64 %1369, 1
  %1392 = icmp slt i64 %1391, %1306
  %1393 = icmp eq i64 %1391, %1307
  br i1 %1393, label %1415, label %1368, !llvm.loop !192

1394:                                             ; preds = %1374, %1383
  br i1 %1370, label %1395, label %1415

1395:                                             ; preds = %1394
  %1396 = load ptr, ptr %25, align 8, !tbaa !56
  %1397 = getelementptr inbounds %struct.ToolSettings, ptr %1396, i64 0, i32 11
  %1398 = load i8, ptr %1397, align 2, !tbaa !74
  %1399 = and i8 %1398, 1
  %1400 = icmp eq i8 %1399, 0
  br i1 %1400, label %1411, label %1401

1401:                                             ; preds = %1395
  %1402 = getelementptr inbounds %struct.ToolSettings, ptr %1396, i64 0, i32 8
  %1403 = load i16, ptr %1402, align 2, !tbaa !112
  %1404 = and i16 %1403, 4
  %1405 = icmp eq i16 %1404, 0
  %1406 = load ptr, ptr %29, align 8, !tbaa !83
  br i1 %1405, label %1410, label %1407

1407:                                             ; preds = %1401
  %1408 = getelementptr inbounds %struct.BMLoop, ptr %1357, i64 0, i32 3
  %1409 = load ptr, ptr %1408, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %1406, ptr noundef %1409, i8 noundef zeroext 1) #9
  br label %1415

1410:                                             ; preds = %1401
  call void @BM_vert_select_set(ptr noundef %1406, ptr noundef %1361, i8 noundef zeroext 1) #9
  br label %1415

1411:                                             ; preds = %1395
  %1412 = getelementptr inbounds %struct.MLoopUV, ptr %1359, i64 0, i32 1
  %1413 = load i32, ptr %1412, align 4, !tbaa !103
  %1414 = or i32 %1413, 2
  store i32 %1414, ptr %1412, align 4, !tbaa !103
  br label %1415

1415:                                             ; preds = %1390, %1356, %1411, %1410, %1407, %1394
  %1416 = load ptr, ptr %1302, align 8, !tbaa !92
  %1417 = call ptr %1416(ptr noundef nonnull %19) #9
  %1418 = icmp eq ptr %1417, null
  br i1 %1418, label %1419, label %1356, !llvm.loop !195

1419:                                             ; preds = %1415, %1352, %1349
  %1420 = phi i32 [ %1310, %1349 ], [ %1310, %1352 ], [ 1, %1415 ]
  %1421 = load ptr, ptr %1292, align 8, !tbaa !92
  %1422 = call ptr %1421(ptr noundef nonnull %18) #9
  %1423 = icmp eq ptr %1422, null
  br i1 %1423, label %1424, label %1308, !llvm.loop !196

1424:                                             ; preds = %1215, %1419, %1068, %1288, %817, %1285, %1066, %814
  %1425 = phi i8 [ 1, %814 ], [ 1, %817 ], [ %1060, %1066 ], [ 1, %1285 ], [ 1, %1288 ], [ %1060, %1068 ], [ 1, %1419 ], [ %1060, %1215 ]
  %1426 = phi i32 [ 1, %814 ], [ 0, %817 ], [ %1061, %1066 ], [ %1286, %1285 ], [ %1286, %1288 ], [ 1, %1068 ], [ %1420, %1419 ], [ 1, %1215 ]
  %1427 = icmp ne i32 %1426, 0
  %1428 = select i1 %66, i1 %1427, i1 false
  br i1 %1428, label %1429, label %1435

1429:                                             ; preds = %1424
  br i1 %88, label %1434, label %1430

1430:                                             ; preds = %1429
  %1431 = icmp eq i8 %1425, 0
  br i1 %1431, label %1433, label %1432

1432:                                             ; preds = %1430
  call void @EDBM_select_flush(ptr noundef nonnull %29) #9
  br label %1435

1433:                                             ; preds = %1430
  call void @EDBM_deselect_flush(ptr noundef nonnull %29) #9
  br label %1435

1434:                                             ; preds = %1429
  call void @EDBM_selectmode_flush(ptr noundef nonnull %29) #9
  br label %1435

1435:                                             ; preds = %1432, %1433, %1434, %1424
  %1436 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 19
  %1437 = load ptr, ptr %1436, align 8, !tbaa !88
  call void @DAG_id_tag_update(ptr noundef %1437, i16 noundef signext 0) #9
  %1438 = load ptr, ptr %1436, align 8, !tbaa !88
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %1438) #9
  br label %1439

1439:                                             ; preds = %92, %313, %273, %120, %93, %89, %1435
  %1440 = phi i32 [ 12, %1435 ], [ 2, %89 ], [ 2, %93 ], [ 2, %120 ], [ 2, %273 ], [ 2, %313 ], [ 2, %92 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #9
  ret i32 %1440
}

declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #2

declare void @fill_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_mesh_active_face_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @uv_select_linked(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef readonly %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  %9 = load ptr, ptr %2, align 8, !tbaa !83
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 26
  %11 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %10, i32 noundef 16) #9
  %12 = load ptr, ptr %2, align 8, !tbaa !83
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 27
  %14 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %13, i32 noundef 15) #9
  %15 = load ptr, ptr %2, align 8, !tbaa !83
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %15, i8 noundef zeroext 8) #9
  %16 = load ptr, ptr %2, align 8, !tbaa !83
  %17 = tail call ptr @BM_uv_vert_map_create(ptr noundef %16, i8 noundef zeroext 1, ptr noundef %3) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %369, label %19

19:                                               ; preds = %6
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !55
  %21 = load ptr, ptr %2, align 8, !tbaa !83
  %22 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !85
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 2
  %27 = tail call ptr %20(i64 noundef %26, ptr noundef nonnull @.str.45) #9
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %29 = load ptr, ptr %2, align 8, !tbaa !83
  %30 = getelementptr inbounds %struct.BMesh, ptr %29, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !85
  %32 = sext i32 %31 to i64
  %33 = tail call ptr %28(i64 noundef %32, ptr noundef nonnull @.str.46) #9
  %34 = icmp eq ptr %4, null
  %35 = load ptr, ptr %2, align 8, !tbaa !83
  %36 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 3, ptr %36, align 4, !tbaa !89
  %37 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %37, align 8, !tbaa !91
  %38 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %38, align 8, !tbaa !92
  %39 = getelementptr inbounds %struct.BMesh, ptr %35, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !93
  store ptr %40, ptr %7, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #9
  %41 = load ptr, ptr %38, align 8, !tbaa !92
  %42 = call ptr %41(ptr noundef nonnull %7) #9
  %43 = icmp eq ptr %42, null
  br i1 %34, label %44, label %125

44:                                               ; preds = %19
  br i1 %43, label %139, label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %47 = sext i32 %14 to i64
  %48 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %49 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %50 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %51 = sext i32 %11 to i64
  br label %52

52:                                               ; preds = %45, %119
  %53 = phi ptr [ %42, %45 ], [ %122, %119 ]
  %54 = phi i32 [ 0, %45 ], [ %123, %119 ]
  %55 = phi i32 [ 0, %45 ], [ %120, %119 ]
  %56 = load ptr, ptr %46, align 8, !tbaa !56
  %57 = getelementptr inbounds %struct.ToolSettings, ptr %56, i64 0, i32 11
  %58 = load i8, ptr %57, align 2, !tbaa !74
  %59 = and i8 %58, 2
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %80, label %61

61:                                               ; preds = %52
  %62 = load ptr, ptr %53, align 8, !tbaa !95
  %63 = getelementptr inbounds i8, ptr %62, i64 %47
  %64 = load ptr, ptr %63, align 8, !tbaa !98
  %65 = icmp eq ptr %64, %1
  br i1 %65, label %66, label %94

66:                                               ; preds = %61
  %67 = and i8 %58, 1
  %68 = icmp eq i8 %67, 0
  %69 = getelementptr inbounds %struct.BMHeader, ptr %53, i64 0, i32 3
  %70 = load i8, ptr %69, align 1, !tbaa !100
  br i1 %68, label %75, label %71

71:                                               ; preds = %66
  %72 = lshr i8 %70, 1
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  br label %94

75:                                               ; preds = %66
  %76 = and i8 %70, 2
  %77 = icmp eq i8 %76, 0
  %78 = and i8 %70, 1
  %79 = select i1 %77, i8 %78, i8 0
  br label %94

80:                                               ; preds = %52
  %81 = and i8 %58, 1
  %82 = icmp eq i8 %81, 0
  %83 = getelementptr inbounds %struct.BMHeader, ptr %53, i64 0, i32 3
  %84 = load i8, ptr %83, align 1, !tbaa !100
  br i1 %82, label %89, label %85

85:                                               ; preds = %80
  %86 = lshr i8 %84, 1
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  br label %94

89:                                               ; preds = %80
  %90 = and i8 %84, 2
  %91 = icmp eq i8 %90, 0
  %92 = and i8 %84, 1
  %93 = select i1 %91, i8 %92, i8 0
  br label %94

94:                                               ; preds = %61, %71, %75, %85, %89
  %95 = phi i8 [ 0, %61 ], [ %74, %71 ], [ %79, %75 ], [ %88, %85 ], [ %93, %89 ]
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %119, label %97

97:                                               ; preds = %94
  store i8 11, ptr %48, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %49, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %50, align 8, !tbaa !92
  store ptr %53, ptr %8, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %8) #9
  %98 = load ptr, ptr %50, align 8, !tbaa !92
  %99 = call ptr %98(ptr noundef nonnull %8) #9
  %100 = icmp eq ptr %99, null
  br i1 %100, label %119, label %101

101:                                              ; preds = %97, %115
  %102 = phi ptr [ %117, %115 ], [ %99, %97 ]
  %103 = load ptr, ptr %102, align 8, !tbaa !101
  %104 = getelementptr inbounds i8, ptr %103, i64 %51
  %105 = getelementptr inbounds %struct.MLoopUV, ptr %104, i64 0, i32 1
  %106 = load i32, ptr %105, align 4, !tbaa !103
  %107 = and i32 %106, 2
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %101
  %110 = sext i32 %55 to i64
  %111 = getelementptr inbounds i32, ptr %27, i64 %110
  store i32 %54, ptr %111, align 4, !tbaa !171
  %112 = add nsw i32 %55, 1
  %113 = zext i32 %54 to i64
  %114 = getelementptr inbounds i8, ptr %33, i64 %113
  store i8 1, ptr %114, align 1, !tbaa !94
  br label %119

115:                                              ; preds = %101
  %116 = load ptr, ptr %50, align 8, !tbaa !92
  %117 = call ptr %116(ptr noundef nonnull %8) #9
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %101, !llvm.loop !197

119:                                              ; preds = %115, %97, %94, %109
  %120 = phi i32 [ %112, %109 ], [ %55, %94 ], [ %55, %97 ], [ %55, %115 ]
  %121 = load ptr, ptr %38, align 8, !tbaa !92
  %122 = call ptr %121(ptr noundef nonnull %7) #9
  %123 = add i32 %54, 1
  %124 = icmp eq ptr %122, null
  br i1 %124, label %139, label %52, !llvm.loop !198

125:                                              ; preds = %19
  br i1 %43, label %139, label %126

126:                                              ; preds = %125, %134
  %127 = phi ptr [ %136, %134 ], [ %42, %125 ]
  %128 = phi i32 [ %137, %134 ], [ 0, %125 ]
  %129 = load ptr, ptr %4, align 8, !tbaa !135
  %130 = icmp eq ptr %127, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  store i32 %128, ptr %27, align 4, !tbaa !171
  %132 = zext i32 %128 to i64
  %133 = getelementptr inbounds i8, ptr %33, i64 %132
  store i8 1, ptr %133, align 1, !tbaa !94
  br label %139

134:                                              ; preds = %126
  %135 = load ptr, ptr %38, align 8, !tbaa !92
  %136 = call ptr %135(ptr noundef nonnull %7) #9
  %137 = add i32 %128, 1
  %138 = icmp eq ptr %136, null
  br i1 %138, label %139, label %126, !llvm.loop !199

139:                                              ; preds = %134, %119, %125, %44, %131
  %140 = phi i32 [ 1, %131 ], [ 0, %44 ], [ 0, %125 ], [ %120, %119 ], [ 0, %134 ]
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %214

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %144 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %145 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  br label %149

146:                                              ; preds = %209, %149
  %147 = phi i32 [ %151, %149 ], [ %210, %209 ]
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %214, !llvm.loop !200

149:                                              ; preds = %142, %146
  %150 = phi i32 [ %140, %142 ], [ %147, %146 ]
  %151 = add nsw i32 %150, -1
  %152 = zext nneg i32 %151 to i64
  %153 = getelementptr inbounds i32, ptr %27, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !171
  %155 = load ptr, ptr %2, align 8, !tbaa !83
  %156 = call ptr @BM_face_at_index(ptr noundef %155, i32 noundef %154) #9
  store i8 11, ptr %143, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %144, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %145, align 8, !tbaa !92
  store ptr %156, ptr %8, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %8) #9
  %157 = load ptr, ptr %145, align 8, !tbaa !92
  %158 = call ptr %157(ptr noundef nonnull %8) #9
  %159 = icmp eq ptr %158, null
  br i1 %159, label %146, label %160

160:                                              ; preds = %149, %209
  %161 = phi ptr [ %212, %209 ], [ %158, %149 ]
  %162 = phi i32 [ %210, %209 ], [ %151, %149 ]
  %163 = getelementptr inbounds %struct.BMLoop, ptr %161, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !115
  %165 = getelementptr inbounds %struct.BMHeader, ptr %164, i64 0, i32 1
  %166 = load i32, ptr %165, align 8, !tbaa !175
  %167 = call ptr @BM_uv_vert_map_at_index(ptr noundef nonnull %17, i32 noundef %166) #9
  %168 = icmp eq ptr %167, null
  br i1 %168, label %182, label %169

169:                                              ; preds = %160, %179
  %170 = phi ptr [ %180, %179 ], [ %167, %160 ]
  %171 = phi ptr [ %175, %179 ], [ %167, %160 ]
  %172 = getelementptr inbounds %struct.UvMapVert, ptr %170, i64 0, i32 3
  %173 = load i8, ptr %172, align 1, !tbaa !178
  %174 = icmp eq i8 %173, 0
  %175 = select i1 %174, ptr %171, ptr %170
  %176 = getelementptr inbounds %struct.UvMapVert, ptr %170, i64 0, i32 1
  %177 = load i32, ptr %176, align 8, !tbaa !180
  %178 = icmp eq i32 %177, %154
  br i1 %178, label %182, label %179

179:                                              ; preds = %169
  %180 = load ptr, ptr %170, align 8, !tbaa !181
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %169, !llvm.loop !201

182:                                              ; preds = %179, %169, %160
  %183 = phi ptr [ %167, %160 ], [ %175, %169 ], [ %175, %179 ]
  %184 = icmp eq ptr %183, null
  br i1 %184, label %209, label %185

185:                                              ; preds = %182, %205
  %186 = phi ptr [ %207, %205 ], [ %183, %182 ]
  %187 = phi i32 [ %206, %205 ], [ %162, %182 ]
  %188 = icmp eq ptr %183, %186
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.UvMapVert, ptr %186, i64 0, i32 3
  %191 = load i8, ptr %190, align 1, !tbaa !178
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %209

193:                                              ; preds = %189, %185
  %194 = getelementptr inbounds %struct.UvMapVert, ptr %186, i64 0, i32 1
  %195 = load i32, ptr %194, align 8, !tbaa !180
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %33, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !94
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %193
  store i8 1, ptr %197, align 1, !tbaa !94
  %201 = load i32, ptr %194, align 8, !tbaa !180
  %202 = sext i32 %187 to i64
  %203 = getelementptr inbounds i32, ptr %27, i64 %202
  store i32 %201, ptr %203, align 4, !tbaa !171
  %204 = add nsw i32 %187, 1
  br label %205

205:                                              ; preds = %200, %193
  %206 = phi i32 [ %187, %193 ], [ %204, %200 ]
  %207 = load ptr, ptr %186, align 8, !tbaa !181
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %185, !llvm.loop !202

209:                                              ; preds = %189, %205, %182
  %210 = phi i32 [ %162, %182 ], [ %187, %189 ], [ %206, %205 ]
  %211 = load ptr, ptr %145, align 8, !tbaa !92
  %212 = call ptr %211(ptr noundef nonnull %8) #9
  %213 = icmp eq ptr %212, null
  br i1 %213, label %146, label %160, !llvm.loop !203

214:                                              ; preds = %146, %139
  %215 = icmp eq i8 %5, 0
  %216 = load ptr, ptr %2, align 8, !tbaa !83
  %217 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 3, ptr %217, align 4, !tbaa !89
  %218 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %218, align 8, !tbaa !91
  %219 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %219, align 8, !tbaa !92
  %220 = getelementptr inbounds %struct.BMesh, ptr %216, i64 0, i32 12
  %221 = load ptr, ptr %220, align 8, !tbaa !93
  store ptr %221, ptr %7, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #9
  %222 = load ptr, ptr %219, align 8, !tbaa !92
  %223 = call ptr %222(ptr noundef nonnull %7) #9
  %224 = icmp eq ptr %223, null
  br i1 %215, label %225, label %259

225:                                              ; preds = %214
  br i1 %224, label %366, label %226

226:                                              ; preds = %225
  %227 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %228 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %229 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %230 = sext i32 %11 to i64
  br label %231

231:                                              ; preds = %226, %254
  %232 = phi ptr [ %223, %226 ], [ %256, %254 ]
  %233 = phi i32 [ 0, %226 ], [ %257, %254 ]
  store i8 11, ptr %227, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %228, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %229, align 8, !tbaa !92
  store ptr %232, ptr %8, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %8) #9
  %234 = load ptr, ptr %229, align 8, !tbaa !92
  %235 = call ptr %234(ptr noundef nonnull %8) #9
  %236 = icmp eq ptr %235, null
  br i1 %236, label %254, label %237

237:                                              ; preds = %231
  %238 = zext i32 %233 to i64
  %239 = getelementptr inbounds i8, ptr %33, i64 %238
  br label %240

240:                                              ; preds = %237, %240
  %241 = phi ptr [ %235, %237 ], [ %252, %240 ]
  %242 = load ptr, ptr %241, align 8, !tbaa !101
  %243 = getelementptr inbounds i8, ptr %242, i64 %230
  %244 = load i8, ptr %239, align 1, !tbaa !94
  %245 = icmp eq i8 %244, 0
  %246 = getelementptr inbounds %struct.MLoopUV, ptr %243, i64 0, i32 1
  %247 = load i32, ptr %246, align 4, !tbaa !103
  %248 = and i32 %247, -3
  %249 = select i1 %245, i32 0, i32 2
  %250 = or disjoint i32 %248, %249
  store i32 %250, ptr %246, align 4, !tbaa !103
  %251 = load ptr, ptr %229, align 8, !tbaa !92
  %252 = call ptr %251(ptr noundef nonnull %8) #9
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %240, !llvm.loop !204

254:                                              ; preds = %240, %231
  %255 = load ptr, ptr %219, align 8, !tbaa !92
  %256 = call ptr %255(ptr noundef nonnull %7) #9
  %257 = add i32 %233, 1
  %258 = icmp eq ptr %256, null
  br i1 %258, label %366, label %231, !llvm.loop !205

259:                                              ; preds = %214
  br i1 %224, label %328, label %260

260:                                              ; preds = %259
  %261 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %262 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %263 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %264 = sext i32 %11 to i64
  br label %265

265:                                              ; preds = %260, %288
  %266 = phi ptr [ %223, %260 ], [ %290, %288 ]
  %267 = phi i32 [ 0, %260 ], [ %291, %288 ]
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i8, ptr %33, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !94
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %288, label %272

272:                                              ; preds = %265
  store i8 11, ptr %261, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %262, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %263, align 8, !tbaa !92
  store ptr %266, ptr %8, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %8) #9
  %273 = load ptr, ptr %263, align 8, !tbaa !92
  %274 = call ptr %273(ptr noundef nonnull %8) #9
  %275 = icmp eq ptr %274, null
  br i1 %275, label %288, label %276

276:                                              ; preds = %272, %284
  %277 = phi ptr [ %286, %284 ], [ %274, %272 ]
  %278 = load ptr, ptr %277, align 8, !tbaa !101
  %279 = getelementptr inbounds i8, ptr %278, i64 %264
  %280 = getelementptr inbounds %struct.MLoopUV, ptr %279, i64 0, i32 1
  %281 = load i32, ptr %280, align 4, !tbaa !103
  %282 = and i32 %281, 2
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %293

284:                                              ; preds = %276
  %285 = load ptr, ptr %263, align 8, !tbaa !92
  %286 = call ptr %285(ptr noundef nonnull %8) #9
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %276, !llvm.loop !206

288:                                              ; preds = %284, %272, %265
  %289 = load ptr, ptr %219, align 8, !tbaa !92
  %290 = call ptr %289(ptr noundef nonnull %7) #9
  %291 = add i32 %267, 1
  %292 = icmp eq ptr %290, null
  br i1 %292, label %328, label %265, !llvm.loop !207

293:                                              ; preds = %276
  %294 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %295 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %296 = load ptr, ptr %2, align 8, !tbaa !83
  store i8 3, ptr %217, align 4, !tbaa !89
  store ptr @bmiter__elem_of_mesh_begin, ptr %218, align 8, !tbaa !91
  store ptr @bmiter__elem_of_mesh_step, ptr %219, align 8, !tbaa !92
  %297 = getelementptr inbounds %struct.BMesh, ptr %296, i64 0, i32 12
  %298 = load ptr, ptr %297, align 8, !tbaa !93
  store ptr %298, ptr %7, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #9
  %299 = load ptr, ptr %219, align 8, !tbaa !92
  %300 = call ptr %299(ptr noundef nonnull %7) #9
  %301 = icmp eq ptr %300, null
  br i1 %301, label %366, label %302

302:                                              ; preds = %293, %323
  %303 = phi ptr [ %325, %323 ], [ %300, %293 ]
  %304 = phi i32 [ %326, %323 ], [ 0, %293 ]
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds i8, ptr %33, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !94
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %323, label %309

309:                                              ; preds = %302
  store i8 11, ptr %294, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %295, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %263, align 8, !tbaa !92
  store ptr %303, ptr %8, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %8) #9
  %310 = load ptr, ptr %263, align 8, !tbaa !92
  %311 = call ptr %310(ptr noundef nonnull %8) #9
  %312 = icmp eq ptr %311, null
  br i1 %312, label %323, label %313

313:                                              ; preds = %309, %313
  %314 = phi ptr [ %321, %313 ], [ %311, %309 ]
  %315 = load ptr, ptr %314, align 8, !tbaa !101
  %316 = getelementptr inbounds i8, ptr %315, i64 %264
  %317 = getelementptr inbounds %struct.MLoopUV, ptr %316, i64 0, i32 1
  %318 = load i32, ptr %317, align 4, !tbaa !103
  %319 = and i32 %318, -3
  store i32 %319, ptr %317, align 4, !tbaa !103
  %320 = load ptr, ptr %263, align 8, !tbaa !92
  %321 = call ptr %320(ptr noundef nonnull %8) #9
  %322 = icmp eq ptr %321, null
  br i1 %322, label %323, label %313, !llvm.loop !208

323:                                              ; preds = %313, %309, %302
  %324 = load ptr, ptr %219, align 8, !tbaa !92
  %325 = call ptr %324(ptr noundef nonnull %7) #9
  %326 = add i32 %304, 1
  %327 = icmp eq ptr %325, null
  br i1 %327, label %366, label %302, !llvm.loop !209

328:                                              ; preds = %288, %259
  %329 = load ptr, ptr %2, align 8, !tbaa !83
  store i8 3, ptr %217, align 4, !tbaa !89
  store ptr @bmiter__elem_of_mesh_begin, ptr %218, align 8, !tbaa !91
  store ptr @bmiter__elem_of_mesh_step, ptr %219, align 8, !tbaa !92
  %330 = getelementptr inbounds %struct.BMesh, ptr %329, i64 0, i32 12
  %331 = load ptr, ptr %330, align 8, !tbaa !93
  store ptr %331, ptr %7, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #9
  %332 = load ptr, ptr %219, align 8, !tbaa !92
  %333 = call ptr %332(ptr noundef nonnull %7) #9
  %334 = icmp eq ptr %333, null
  br i1 %334, label %366, label %335

335:                                              ; preds = %328
  %336 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %337 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %338 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %339 = sext i32 %11 to i64
  br label %340

340:                                              ; preds = %335, %361
  %341 = phi ptr [ %333, %335 ], [ %363, %361 ]
  %342 = phi i32 [ 0, %335 ], [ %364, %361 ]
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds i8, ptr %33, i64 %343
  %345 = load i8, ptr %344, align 1, !tbaa !94
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %361, label %347

347:                                              ; preds = %340
  store i8 11, ptr %336, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %337, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %338, align 8, !tbaa !92
  store ptr %341, ptr %8, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %8) #9
  %348 = load ptr, ptr %338, align 8, !tbaa !92
  %349 = call ptr %348(ptr noundef nonnull %8) #9
  %350 = icmp eq ptr %349, null
  br i1 %350, label %361, label %351

351:                                              ; preds = %347, %351
  %352 = phi ptr [ %359, %351 ], [ %349, %347 ]
  %353 = load ptr, ptr %352, align 8, !tbaa !101
  %354 = getelementptr inbounds i8, ptr %353, i64 %339
  %355 = getelementptr inbounds %struct.MLoopUV, ptr %354, i64 0, i32 1
  %356 = load i32, ptr %355, align 4, !tbaa !103
  %357 = or i32 %356, 2
  store i32 %357, ptr %355, align 4, !tbaa !103
  %358 = load ptr, ptr %338, align 8, !tbaa !92
  %359 = call ptr %358(ptr noundef nonnull %8) #9
  %360 = icmp eq ptr %359, null
  br i1 %360, label %361, label %351, !llvm.loop !210

361:                                              ; preds = %351, %347, %340
  %362 = load ptr, ptr %219, align 8, !tbaa !92
  %363 = call ptr %362(ptr noundef nonnull %7) #9
  %364 = add i32 %342, 1
  %365 = icmp eq ptr %363, null
  br i1 %365, label %366, label %340, !llvm.loop !211

366:                                              ; preds = %323, %361, %254, %293, %328, %225
  %367 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %367(ptr noundef %27) #9
  %368 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %368(ptr noundef %33) #9
  call void @BM_uv_vert_map_free(ptr noundef nonnull %17) #9
  br label %369

369:                                              ; preds = %6, %366
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  ret void
}

declare void @BM_select_history_validate(ptr noundef) local_unnamed_addr #2

declare void @EDBM_select_flush(ptr noundef) local_unnamed_addr #2

declare void @EDBM_deselect_flush(ptr noundef) local_unnamed_addr #2

declare void @ED_space_image_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BM_uv_vert_map_create(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @uv_select_edgeloop_edge_tag_faces(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %47, label %6

6:                                                ; preds = %4
  %7 = icmp eq ptr %2, null
  br label %8

8:                                                ; preds = %6, %43
  %9 = phi i32 [ 0, %6 ], [ %44, %43 ]
  %10 = phi ptr [ %1, %6 ], [ %45, %43 ]
  %11 = getelementptr inbounds %struct.UvMapVert, ptr %10, i64 0, i32 3
  %12 = load i8, ptr %11, align 1, !tbaa !178
  %13 = icmp eq i8 %12, 0
  %14 = icmp eq ptr %10, %1
  %15 = or i1 %14, %13
  br i1 %15, label %16, label %47

16:                                               ; preds = %8
  br i1 %7, label %43, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.UvMapVert, ptr %10, i64 0, i32 1
  br label %19

19:                                               ; preds = %17, %40
  %20 = phi ptr [ %2, %17 ], [ %41, %40 ]
  %21 = getelementptr inbounds %struct.UvMapVert, ptr %20, i64 0, i32 3
  %22 = load i8, ptr %21, align 1, !tbaa !178
  %23 = icmp eq i8 %22, 0
  %24 = icmp eq ptr %20, %2
  %25 = or i1 %24, %23
  br i1 %25, label %26, label %43

26:                                               ; preds = %19
  %27 = load i32, ptr %18, align 8, !tbaa !180
  %28 = getelementptr inbounds %struct.UvMapVert, ptr %20, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !180
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load ptr, ptr %0, align 8, !tbaa !83
  %33 = tail call ptr @BM_face_at_index(ptr noundef %32, i32 noundef %27) #9
  %34 = getelementptr inbounds %struct.BMHeader, ptr %33, i64 0, i32 3
  %35 = load i8, ptr %34, align 1, !tbaa !100
  %36 = and i8 %35, 16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %92

38:                                               ; preds = %31
  %39 = add nsw i32 %9, 1
  br label %43

40:                                               ; preds = %26
  %41 = load ptr, ptr %20, align 8, !tbaa !181
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %19, !llvm.loop !212

43:                                               ; preds = %40, %19, %16, %38
  %44 = phi i32 [ %39, %38 ], [ %9, %16 ], [ %9, %19 ], [ %9, %40 ]
  %45 = load ptr, ptr %10, align 8, !tbaa !181
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %8, !llvm.loop !213

47:                                               ; preds = %43, %8, %4
  %48 = phi i32 [ 0, %4 ], [ %44, %43 ], [ %9, %8 ]
  %49 = load i32, ptr %3, align 4, !tbaa !171
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 %48, ptr %3, align 4, !tbaa !171
  br label %54

52:                                               ; preds = %47
  %53 = icmp eq i32 %48, %49
  br i1 %53, label %54, label %92

54:                                               ; preds = %52, %51
  %55 = icmp eq ptr %1, null
  br i1 %55, label %92, label %56

56:                                               ; preds = %54
  %57 = icmp eq ptr %2, null
  br label %58

58:                                               ; preds = %56, %89
  %59 = phi ptr [ %1, %56 ], [ %90, %89 ]
  %60 = getelementptr inbounds %struct.UvMapVert, ptr %59, i64 0, i32 3
  %61 = load i8, ptr %60, align 1, !tbaa !178
  %62 = icmp eq i8 %61, 0
  %63 = icmp eq ptr %59, %1
  %64 = or i1 %63, %62
  br i1 %64, label %65, label %92

65:                                               ; preds = %58
  br i1 %57, label %89, label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.UvMapVert, ptr %59, i64 0, i32 1
  br label %68

68:                                               ; preds = %66, %86
  %69 = phi ptr [ %2, %66 ], [ %87, %86 ]
  %70 = getelementptr inbounds %struct.UvMapVert, ptr %69, i64 0, i32 3
  %71 = load i8, ptr %70, align 1, !tbaa !178
  %72 = icmp eq i8 %71, 0
  %73 = icmp eq ptr %69, %2
  %74 = or i1 %73, %72
  br i1 %74, label %75, label %89

75:                                               ; preds = %68
  %76 = load i32, ptr %67, align 8, !tbaa !180
  %77 = getelementptr inbounds %struct.UvMapVert, ptr %69, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !180
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load ptr, ptr %0, align 8, !tbaa !83
  %82 = tail call ptr @BM_face_at_index(ptr noundef %81, i32 noundef %76) #9
  %83 = getelementptr inbounds %struct.BMHeader, ptr %82, i64 0, i32 3
  %84 = load i8, ptr %83, align 1, !tbaa !100
  %85 = or i8 %84, 16
  store i8 %85, ptr %83, align 1, !tbaa !100
  br label %89

86:                                               ; preds = %75
  %87 = load ptr, ptr %69, align 8, !tbaa !181
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %68, !llvm.loop !214

89:                                               ; preds = %86, %68, %65, %80
  %90 = load ptr, ptr %59, align 8, !tbaa !181
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %58, !llvm.loop !215

92:                                               ; preds = %31, %58, %89, %54, %52
  %93 = phi i8 [ 0, %52 ], [ 1, %54 ], [ 1, %89 ], [ 1, %58 ], [ 0, %31 ]
  ret i8 %93
}

declare void @BM_uv_vert_map_free(ptr noundef) local_unnamed_addr #2

declare ptr @BM_uv_vert_map_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_face_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_select_loop_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !164
  call void @RNA_float_get_array(ptr noundef %5, ptr noundef nonnull @.str.42, ptr noundef nonnull %3) #9
  %6 = load ptr, ptr %4, align 8, !tbaa !164
  %7 = call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.6) #9
  %8 = trunc i32 %7 to i8
  %9 = call fastcc i32 @uv_mouse_select(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %8, i8 noundef zeroext 1), !range !170
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_select_loop_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %7 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !171
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !171
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %7, float noundef %10, float noundef %13, ptr noundef nonnull %5, ptr noundef nonnull %14) #9
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  call void @RNA_float_set_array(ptr noundef %16, ptr noundef nonnull @.str.42, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %17 = load ptr, ptr %15, align 8, !tbaa !164
  call void @RNA_float_get_array(ptr noundef %17, ptr noundef nonnull @.str.42, ptr noundef nonnull %4) #9
  %18 = load ptr, ptr %15, align 8, !tbaa !164
  %19 = call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.6) #9
  %20 = trunc i32 %19 to i8
  %21 = call fastcc i32 @uv_mouse_select(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext %20, i8 noundef zeroext 1), !range !170
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_select_linked_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc i32 @uv_select_linked_internal(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 0), !range !216
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @uv_select_linked_internal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca %struct.NearestHit, align 8
  %9 = alloca [2 x float], align 4
  %10 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #9
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %12 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %15 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #9
  %16 = tail call ptr @BKE_editmesh_from_object(ptr noundef %14) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #9
  %17 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 11
  %18 = load i8, ptr %17, align 2, !tbaa !74
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !217
  tail call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.51) #9
  br label %62

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !164
  %27 = tail call i32 @RNA_boolean_get(ptr noundef %26, ptr noundef nonnull @.str.6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %28 = icmp eq ptr %10, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  call void @ED_space_image_get_size(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  br label %31

30:                                               ; preds = %24
  store i32 256, ptr %5, align 4, !tbaa !171
  store i32 256, ptr %6, align 4, !tbaa !171
  br label %31

31:                                               ; preds = %29, %30
  %32 = load i32, ptr %5, align 4, !tbaa !171
  %33 = sitofp i32 %32 to float
  %34 = fdiv float 0x3FA99999A0000000, %33
  store float %34, ptr %7, align 4, !tbaa !127
  %35 = load i32, ptr %6, align 4, !tbaa !171
  %36 = sitofp i32 %35 to float
  %37 = fdiv float 0x3FA99999A0000000, %36
  %38 = getelementptr inbounds float, ptr %7, i64 1
  store float %37, ptr %38, align 4, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  %39 = icmp eq i32 %3, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  %41 = icmp eq ptr %2, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %40
  %43 = call ptr @CTX_wm_region(ptr noundef %0) #9
  %44 = getelementptr inbounds %struct.ARegion, ptr %43, i64 0, i32 2
  %45 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %46 = load i32, ptr %45, align 4, !tbaa !171
  %47 = sitofp i32 %46 to float
  %48 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %49 = load i32, ptr %48, align 4, !tbaa !171
  %50 = sitofp i32 %49 to float
  %51 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %44, float noundef %47, float noundef %50, ptr noundef nonnull %9, ptr noundef nonnull %51) #9
  %52 = load ptr, ptr %25, align 8, !tbaa !164
  call void @RNA_float_set_array(ptr noundef %52, ptr noundef nonnull @.str.42, ptr noundef nonnull %9) #9
  br label %55

53:                                               ; preds = %40
  %54 = load ptr, ptr %25, align 8, !tbaa !164
  call void @RNA_float_get_array(ptr noundef %54, ptr noundef nonnull @.str.42, ptr noundef nonnull %9) #9
  br label %55

55:                                               ; preds = %53, %42
  call void @uv_find_nearest_edge(ptr noundef %11, ptr noundef %15, ptr noundef %16, ptr noundef nonnull %9, ptr noundef nonnull %8)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %56

56:                                               ; preds = %55, %31
  %57 = phi ptr [ %8, %55 ], [ null, %31 ]
  %58 = trunc i32 %27 to i8
  call fastcc void @uv_select_linked(ptr noundef %11, ptr noundef %15, ptr noundef %16, ptr noundef nonnull %7, ptr noundef %57, i8 noundef zeroext %58)
  %59 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %60 = load ptr, ptr %59, align 8, !tbaa !88
  call void @DAG_id_tag_update(ptr noundef %60, i16 noundef signext 0) #9
  %61 = load ptr, ptr %59, align 8, !tbaa !88
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %61) #9
  br label %62

62:                                               ; preds = %56, %21
  %63 = phi i32 [ 2, %21 ], [ 4, %56 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  ret i32 %63
}

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_select_linked_pick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @uv_select_linked_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1), !range !216
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_select_linked_pick_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc i32 @uv_select_linked_internal(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 1), !range !216
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_select_split_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #9
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %10 = tail call ptr @BKE_editmesh_from_object(ptr noundef %9) #9
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %12 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 26
  %13 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %12, i32 noundef 16) #9
  %14 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 27
  %15 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %14, i32 noundef 15) #9
  %16 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 11
  %17 = load i8, ptr %16, align 2, !tbaa !74
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !217
  tail call void @BKE_report(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.56) #9
  br label %134

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %24, align 4, !tbaa !89
  %25 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %25, align 8, !tbaa !91
  %26 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %26, align 8, !tbaa !92
  %27 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !93
  store ptr %28, ptr %3, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #9
  %29 = load ptr, ptr %26, align 8, !tbaa !92
  %30 = call ptr %29(ptr noundef nonnull %3) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %134, label %32

32:                                               ; preds = %23
  %33 = sext i32 %15 to i64
  %34 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %35 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %36 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %37 = sext i32 %13 to i64
  %38 = sext i32 %13 to i64
  br label %39

39:                                               ; preds = %32, %126
  %40 = phi ptr [ %30, %32 ], [ %129, %126 ]
  %41 = phi i8 [ 0, %32 ], [ %127, %126 ]
  %42 = load ptr, ptr %6, align 8, !tbaa !56
  %43 = getelementptr inbounds %struct.ToolSettings, ptr %42, i64 0, i32 11
  %44 = load i8, ptr %43, align 2, !tbaa !74
  %45 = and i8 %44, 2
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr %40, align 8, !tbaa !95
  %49 = getelementptr inbounds i8, ptr %48, i64 %33
  %50 = load ptr, ptr %49, align 8, !tbaa !98
  %51 = icmp eq ptr %50, %8
  br i1 %51, label %52, label %80

52:                                               ; preds = %47
  %53 = and i8 %44, 1
  %54 = icmp eq i8 %53, 0
  %55 = getelementptr inbounds %struct.BMHeader, ptr %40, i64 0, i32 3
  %56 = load i8, ptr %55, align 1, !tbaa !100
  br i1 %54, label %61, label %57

57:                                               ; preds = %52
  %58 = lshr i8 %56, 1
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  br label %80

61:                                               ; preds = %52
  %62 = and i8 %56, 2
  %63 = icmp eq i8 %62, 0
  %64 = and i8 %56, 1
  %65 = select i1 %63, i8 %64, i8 0
  br label %80

66:                                               ; preds = %39
  %67 = and i8 %44, 1
  %68 = icmp eq i8 %67, 0
  %69 = getelementptr inbounds %struct.BMHeader, ptr %40, i64 0, i32 3
  %70 = load i8, ptr %69, align 1, !tbaa !100
  br i1 %68, label %75, label %71

71:                                               ; preds = %66
  %72 = lshr i8 %70, 1
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  br label %80

75:                                               ; preds = %66
  %76 = and i8 %70, 2
  %77 = icmp eq i8 %76, 0
  %78 = and i8 %70, 1
  %79 = select i1 %77, i8 %78, i8 0
  br label %80

80:                                               ; preds = %47, %57, %61, %71, %75
  %81 = phi i8 [ 0, %47 ], [ %60, %57 ], [ %65, %61 ], [ %74, %71 ], [ %79, %75 ]
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %126, label %83

83:                                               ; preds = %80
  store i8 11, ptr %34, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %35, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %36, align 8, !tbaa !92
  store ptr %40, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %84 = load ptr, ptr %36, align 8, !tbaa !92
  %85 = call ptr %84(ptr noundef nonnull %4) #9
  %86 = icmp eq ptr %85, null
  br i1 %86, label %106, label %87

87:                                               ; preds = %83, %102
  %88 = phi i8 [ %98, %102 ], [ 0, %83 ]
  %89 = phi i8 [ %97, %102 ], [ 0, %83 ]
  %90 = phi ptr [ %104, %102 ], [ %85, %83 ]
  %91 = load ptr, ptr %90, align 8, !tbaa !101
  %92 = getelementptr inbounds i8, ptr %91, i64 %37
  %93 = getelementptr inbounds %struct.MLoopUV, ptr %92, i64 0, i32 1
  %94 = load i32, ptr %93, align 4, !tbaa !103
  %95 = and i32 %94, 2
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %96, i8 %89, i8 1
  %98 = select i1 %96, i8 1, i8 %88
  %99 = icmp ne i8 %97, 0
  %100 = icmp ne i8 %98, 0
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %106, label %102

102:                                              ; preds = %87
  %103 = load ptr, ptr %36, align 8, !tbaa !92
  %104 = call ptr %103(ptr noundef nonnull %4) #9
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %87, !llvm.loop !218

106:                                              ; preds = %102, %87, %83
  %107 = phi i8 [ 0, %83 ], [ %97, %87 ], [ %97, %102 ]
  %108 = phi i8 [ 0, %83 ], [ %98, %87 ], [ %98, %102 ]
  %109 = icmp ne i8 %107, 0
  %110 = icmp ne i8 %108, 0
  %111 = select i1 %109, i1 %110, i1 false
  br i1 %111, label %112, label %126

112:                                              ; preds = %106
  store i8 11, ptr %34, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %35, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %36, align 8, !tbaa !92
  store ptr %40, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %113 = load ptr, ptr %36, align 8, !tbaa !92
  %114 = call ptr %113(ptr noundef nonnull %4) #9
  %115 = icmp eq ptr %114, null
  br i1 %115, label %126, label %116

116:                                              ; preds = %112, %116
  %117 = phi ptr [ %124, %116 ], [ %114, %112 ]
  %118 = load ptr, ptr %117, align 8, !tbaa !101
  %119 = getelementptr inbounds i8, ptr %118, i64 %38
  %120 = getelementptr inbounds %struct.MLoopUV, ptr %119, i64 0, i32 1
  %121 = load i32, ptr %120, align 4, !tbaa !103
  %122 = and i32 %121, -3
  store i32 %122, ptr %120, align 4, !tbaa !103
  %123 = load ptr, ptr %36, align 8, !tbaa !92
  %124 = call ptr %123(ptr noundef nonnull %4) #9
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %116, !llvm.loop !219

126:                                              ; preds = %116, %112, %106, %80
  %127 = phi i8 [ %41, %80 ], [ %41, %106 ], [ 1, %112 ], [ 1, %116 ]
  %128 = load ptr, ptr %26, align 8, !tbaa !92
  %129 = call ptr %128(ptr noundef nonnull %3) #9
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %39, !llvm.loop !220

131:                                              ; preds = %126
  %132 = icmp eq i8 %127, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %131
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 251920384, ptr noundef null) #9
  br label %134

134:                                              ; preds = %23, %131, %133, %20
  %135 = phi i32 [ 2, %20 ], [ 4, %133 ], [ 2, %131 ], [ 2, %23 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  ret i32 %135
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_select_pinned_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %7 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #9
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 26
  %11 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %10, i32 noundef 16) #9
  %12 = load ptr, ptr %8, align 8, !tbaa !83
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 27
  %14 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %13, i32 noundef 15) #9
  %15 = load ptr, ptr %8, align 8, !tbaa !83
  %16 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %16, align 4, !tbaa !89
  %17 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %17, align 8, !tbaa !91
  %18 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %18, align 8, !tbaa !92
  %19 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !93
  store ptr %20, ptr %3, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #9
  %21 = load ptr, ptr %18, align 8, !tbaa !92
  %22 = call ptr %21(ptr noundef nonnull %3) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %114, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %26 = sext i32 %14 to i64
  %27 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %28 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %29 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %30 = sext i32 %11 to i64
  br label %31

31:                                               ; preds = %24, %110
  %32 = phi ptr [ %22, %24 ], [ %112, %110 ]
  %33 = load ptr, ptr %25, align 8, !tbaa !56
  %34 = getelementptr inbounds %struct.ToolSettings, ptr %33, i64 0, i32 11
  %35 = load i8, ptr %34, align 2, !tbaa !74
  %36 = and i8 %35, 2
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr %32, align 8, !tbaa !95
  %40 = getelementptr inbounds i8, ptr %39, i64 %26
  %41 = load ptr, ptr %40, align 8, !tbaa !98
  %42 = icmp eq ptr %41, %7
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = and i8 %35, 1
  %45 = icmp eq i8 %44, 0
  %46 = getelementptr inbounds %struct.BMHeader, ptr %32, i64 0, i32 3
  %47 = load i8, ptr %46, align 1, !tbaa !100
  br i1 %45, label %52, label %48

48:                                               ; preds = %43
  %49 = lshr i8 %47, 1
  %50 = and i8 %49, 1
  %51 = xor i8 %50, 1
  br label %71

52:                                               ; preds = %43
  %53 = and i8 %47, 2
  %54 = icmp eq i8 %53, 0
  %55 = and i8 %47, 1
  %56 = select i1 %54, i8 %55, i8 0
  br label %71

57:                                               ; preds = %31
  %58 = and i8 %35, 1
  %59 = icmp eq i8 %58, 0
  %60 = getelementptr inbounds %struct.BMHeader, ptr %32, i64 0, i32 3
  %61 = load i8, ptr %60, align 1, !tbaa !100
  br i1 %59, label %66, label %62

62:                                               ; preds = %57
  %63 = lshr i8 %61, 1
  %64 = and i8 %63, 1
  %65 = xor i8 %64, 1
  br label %71

66:                                               ; preds = %57
  %67 = and i8 %61, 2
  %68 = icmp eq i8 %67, 0
  %69 = and i8 %61, 1
  %70 = select i1 %68, i8 %69, i8 0
  br label %71

71:                                               ; preds = %38, %48, %52, %62, %66
  %72 = phi i8 [ 0, %38 ], [ %51, %48 ], [ %56, %52 ], [ %65, %62 ], [ %70, %66 ]
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %110, label %74

74:                                               ; preds = %71
  store i8 11, ptr %27, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %28, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %29, align 8, !tbaa !92
  store ptr %32, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %75 = load ptr, ptr %29, align 8, !tbaa !92
  %76 = call ptr %75(ptr noundef nonnull %4) #9
  %77 = icmp eq ptr %76, null
  br i1 %77, label %110, label %78

78:                                               ; preds = %74, %106
  %79 = phi ptr [ %108, %106 ], [ %76, %74 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !101
  %81 = getelementptr inbounds i8, ptr %80, i64 %30
  %82 = getelementptr inbounds %struct.MLoopUV, ptr %81, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !103
  %84 = and i32 %83, 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %78
  %87 = load ptr, ptr %25, align 8, !tbaa !56
  %88 = getelementptr inbounds %struct.ToolSettings, ptr %87, i64 0, i32 11
  %89 = load i8, ptr %88, align 2, !tbaa !74
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.ToolSettings, ptr %87, i64 0, i32 8
  %94 = load i16, ptr %93, align 2, !tbaa !112
  %95 = and i16 %94, 4
  %96 = icmp eq i16 %95, 0
  %97 = load ptr, ptr %8, align 8, !tbaa !83
  br i1 %96, label %101, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.BMLoop, ptr %79, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %97, ptr noundef %100, i8 noundef zeroext 1) #9
  br label %106

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.BMLoop, ptr %79, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !115
  call void @BM_vert_select_set(ptr noundef %97, ptr noundef %103, i8 noundef zeroext 1) #9
  br label %106

104:                                              ; preds = %86
  %105 = or i32 %83, 2
  store i32 %105, ptr %82, align 4, !tbaa !103
  br label %106

106:                                              ; preds = %104, %101, %98, %78
  %107 = load ptr, ptr %29, align 8, !tbaa !92
  %108 = call ptr %107(ptr noundef nonnull %4) #9
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %78, !llvm.loop !221

110:                                              ; preds = %106, %74, %71
  %111 = load ptr, ptr %18, align 8, !tbaa !92
  %112 = call ptr %111(ptr noundef nonnull %3) #9
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %31, !llvm.loop !222

114:                                              ; preds = %110, %2
  %115 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %116 = load ptr, ptr %115, align 8, !tbaa !88
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %116) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  ret i32 4
}

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_border_select_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.rctf, align 4
  %7 = alloca [2 x float], align 4
  %8 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #9
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %13 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #9
  %14 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %15 = tail call ptr @BKE_editmesh_from_object(ptr noundef %12) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %16 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 11
  %17 = load i8, ptr %16, align 2, !tbaa !74
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 8
  %22 = load i16, ptr %21, align 2, !tbaa !112
  %23 = icmp eq i16 %22, 4
  br label %28

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 12
  %26 = load i8, ptr %25, align 1, !tbaa !173
  %27 = icmp eq i8 %26, 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ %23, %20 ], [ %27, %24 ]
  %30 = load ptr, ptr %15, align 8, !tbaa !83
  %31 = getelementptr inbounds %struct.BMesh, ptr %30, i64 0, i32 26
  %32 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %31, i32 noundef 16) #9
  %33 = load ptr, ptr %15, align 8, !tbaa !83
  %34 = getelementptr inbounds %struct.BMesh, ptr %33, i64 0, i32 27
  %35 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %34, i32 noundef 15) #9
  call void @WM_operator_properties_border_to_rctf(ptr noundef %1, ptr noundef nonnull %6) #9
  %36 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 2
  call void @UI_view2d_region_to_view_rctf(ptr noundef nonnull %36, ptr noundef nonnull %6, ptr noundef nonnull %6) #9
  %37 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !164
  %39 = call i32 @RNA_int_get(ptr noundef %38, ptr noundef nonnull @.str.63) #9
  %40 = icmp eq i32 %39, 3
  %41 = zext i1 %40 to i8
  %42 = load ptr, ptr %37, align 8, !tbaa !164
  %43 = call i32 @RNA_boolean_get(ptr noundef %42, ptr noundef nonnull @.str.10) #9
  %44 = load ptr, ptr %37, align 8, !tbaa !164
  %45 = call i32 @RNA_boolean_get(ptr noundef %44, ptr noundef nonnull @.str.6) #9
  %46 = and i32 %45, 255
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %28
  call fastcc void @uv_select_all_perform(ptr noundef %9, ptr noundef %13, ptr noundef nonnull %15, i32 noundef 2)
  br label %49

49:                                               ; preds = %48, %28
  %50 = and i32 %43, 255
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %29, i1 %51, i1 false
  br i1 %52, label %53, label %153

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %54 = load ptr, ptr %15, align 8, !tbaa !83
  %55 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %55, align 4, !tbaa !89
  %56 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %56, align 8, !tbaa !91
  %57 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %57, align 8, !tbaa !92
  %58 = getelementptr inbounds %struct.BMesh, ptr %54, i64 0, i32 12
  %59 = load ptr, ptr %58, align 8, !tbaa !93
  store ptr %59, ptr %4, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #9
  %60 = load ptr, ptr %57, align 8, !tbaa !92
  %61 = call ptr %60(ptr noundef nonnull %4) #9
  %62 = icmp eq ptr %61, null
  br i1 %62, label %352, label %63

63:                                               ; preds = %53
  %64 = sext i32 %35 to i64
  %65 = getelementptr inbounds float, ptr %7, i64 1
  %66 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %67 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %68 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %69 = sext i32 %32 to i64
  br label %70

70:                                               ; preds = %63, %145
  %71 = phi ptr [ %61, %63 ], [ %148, %145 ]
  %72 = phi i8 [ 0, %63 ], [ %146, %145 ]
  %73 = getelementptr inbounds %struct.BMHeader, ptr %71, i64 0, i32 3
  %74 = load i8, ptr %73, align 1, !tbaa !100
  %75 = and i8 %74, -17
  store i8 %75, ptr %73, align 1, !tbaa !100
  %76 = load ptr, ptr %10, align 8, !tbaa !56
  %77 = getelementptr inbounds %struct.ToolSettings, ptr %76, i64 0, i32 11
  %78 = load i8, ptr %77, align 2, !tbaa !74
  %79 = and i8 %78, 2
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %70
  %82 = load ptr, ptr %71, align 8, !tbaa !95
  %83 = getelementptr inbounds i8, ptr %82, i64 %64
  %84 = load ptr, ptr %83, align 8, !tbaa !98
  %85 = icmp eq ptr %84, %13
  br i1 %85, label %86, label %110

86:                                               ; preds = %81
  %87 = and i8 %78, 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = lshr i8 %74, 1
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  br label %110

93:                                               ; preds = %86
  %94 = and i8 %74, 2
  %95 = icmp eq i8 %94, 0
  %96 = and i8 %74, 1
  %97 = select i1 %95, i8 %96, i8 0
  br label %110

98:                                               ; preds = %70
  %99 = and i8 %78, 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = lshr i8 %74, 1
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  br label %110

105:                                              ; preds = %98
  %106 = and i8 %74, 2
  %107 = icmp eq i8 %106, 0
  %108 = and i8 %74, 1
  %109 = select i1 %107, i8 %108, i8 0
  br label %110

110:                                              ; preds = %81, %89, %93, %101, %105
  %111 = phi i8 [ 0, %81 ], [ %92, %89 ], [ %97, %93 ], [ %104, %101 ], [ %109, %105 ]
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %145, label %113

113:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  store float 0.000000e+00, ptr %7, align 4, !tbaa !127
  store float 0.000000e+00, ptr %65, align 4, !tbaa !127
  store i8 11, ptr %66, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %67, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %68, align 8, !tbaa !92
  store ptr %71, ptr %3, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %3) #9
  %114 = load ptr, ptr %68, align 8, !tbaa !92
  %115 = call ptr %114(ptr noundef nonnull %3) #9
  %116 = icmp eq ptr %115, null
  br i1 %116, label %131, label %117

117:                                              ; preds = %113, %117
  %118 = phi ptr [ %129, %117 ], [ %115, %113 ]
  %119 = load ptr, ptr %118, align 8, !tbaa !101
  %120 = getelementptr inbounds i8, ptr %119, i64 %69
  %121 = load float, ptr %120, align 4, !tbaa !127
  %122 = load float, ptr %7, align 4, !tbaa !127
  %123 = fadd float %121, %122
  store float %123, ptr %7, align 4, !tbaa !127
  %124 = getelementptr inbounds float, ptr %120, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !127
  %126 = load float, ptr %65, align 4, !tbaa !127
  %127 = fadd float %125, %126
  store float %127, ptr %65, align 4, !tbaa !127
  %128 = load ptr, ptr %68, align 8, !tbaa !92
  %129 = call ptr %128(ptr noundef nonnull %3) #9
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %117, !llvm.loop !128

131:                                              ; preds = %117, %113
  %132 = getelementptr inbounds %struct.BMFace, ptr %71, i64 0, i32 3
  %133 = load i32, ptr %132, align 8, !tbaa !129
  %134 = sitofp i32 %133 to float
  %135 = fdiv float 1.000000e+00, %134
  %136 = load float, ptr %7, align 4, !tbaa !127
  %137 = fmul float %136, %135
  store float %137, ptr %7, align 4, !tbaa !127
  %138 = load float, ptr %65, align 4, !tbaa !127
  %139 = fmul float %135, %138
  store float %139, ptr %65, align 4, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  %140 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %131
  %143 = load i8, ptr %73, align 1, !tbaa !100
  %144 = or i8 %143, 16
  store i8 %144, ptr %73, align 1, !tbaa !100
  br label %145

145:                                              ; preds = %110, %142, %131
  %146 = phi i8 [ 1, %142 ], [ %72, %131 ], [ %72, %110 ]
  %147 = load ptr, ptr %57, align 8, !tbaa !92
  %148 = call ptr %147(ptr noundef nonnull %4) #9
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %70, !llvm.loop !223

150:                                              ; preds = %145
  %151 = icmp eq i8 %146, 0
  br i1 %151, label %352, label %152

152:                                              ; preds = %150
  call fastcc void @uv_select_flush_from_tag_face(ptr noundef %8, ptr noundef %9, ptr noundef %12, i8 noundef zeroext %41)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %331

153:                                              ; preds = %49
  %154 = load ptr, ptr %15, align 8, !tbaa !83
  %155 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %155, align 4, !tbaa !89
  %156 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %156, align 8, !tbaa !91
  %157 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %157, align 8, !tbaa !92
  %158 = getelementptr inbounds %struct.BMesh, ptr %154, i64 0, i32 12
  %159 = load ptr, ptr %158, align 8, !tbaa !93
  store ptr %159, ptr %4, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #9
  %160 = load ptr, ptr %157, align 8, !tbaa !92
  %161 = call ptr %160(ptr noundef nonnull %4) #9
  %162 = icmp eq ptr %161, null
  br i1 %162, label %331, label %163

163:                                              ; preds = %153
  %164 = sext i32 %35 to i64
  %165 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %166 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %167 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %168 = sext i32 %32 to i64
  br label %169

169:                                              ; preds = %163, %327
  %170 = phi ptr [ %161, %163 ], [ %329, %327 ]
  %171 = load ptr, ptr %10, align 8, !tbaa !56
  %172 = getelementptr inbounds %struct.ToolSettings, ptr %171, i64 0, i32 11
  %173 = load i8, ptr %172, align 2, !tbaa !74
  %174 = and i8 %173, 2
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %195, label %176

176:                                              ; preds = %169
  %177 = load ptr, ptr %170, align 8, !tbaa !95
  %178 = getelementptr inbounds i8, ptr %177, i64 %164
  %179 = load ptr, ptr %178, align 8, !tbaa !98
  %180 = icmp eq ptr %179, %13
  br i1 %180, label %181, label %209

181:                                              ; preds = %176
  %182 = and i8 %173, 1
  %183 = icmp eq i8 %182, 0
  %184 = getelementptr inbounds %struct.BMHeader, ptr %170, i64 0, i32 3
  %185 = load i8, ptr %184, align 1, !tbaa !100
  br i1 %183, label %190, label %186

186:                                              ; preds = %181
  %187 = lshr i8 %185, 1
  %188 = and i8 %187, 1
  %189 = xor i8 %188, 1
  br label %209

190:                                              ; preds = %181
  %191 = and i8 %185, 2
  %192 = icmp eq i8 %191, 0
  %193 = and i8 %185, 1
  %194 = select i1 %192, i8 %193, i8 0
  br label %209

195:                                              ; preds = %169
  %196 = and i8 %173, 1
  %197 = icmp eq i8 %196, 0
  %198 = getelementptr inbounds %struct.BMHeader, ptr %170, i64 0, i32 3
  %199 = load i8, ptr %198, align 1, !tbaa !100
  br i1 %197, label %204, label %200

200:                                              ; preds = %195
  %201 = lshr i8 %199, 1
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  br label %209

204:                                              ; preds = %195
  %205 = and i8 %199, 2
  %206 = icmp eq i8 %205, 0
  %207 = and i8 %199, 1
  %208 = select i1 %206, i8 %207, i8 0
  br label %209

209:                                              ; preds = %176, %186, %190, %200, %204
  %210 = phi i8 [ 0, %176 ], [ %189, %186 ], [ %194, %190 ], [ %203, %200 ], [ %208, %204 ]
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %327, label %212

212:                                              ; preds = %209
  store i8 11, ptr %165, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %166, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %167, align 8, !tbaa !92
  store ptr %170, ptr %5, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %5) #9
  %213 = load ptr, ptr %167, align 8, !tbaa !92
  %214 = call ptr %213(ptr noundef nonnull %5) #9
  %215 = icmp eq ptr %214, null
  br i1 %215, label %327, label %216

216:                                              ; preds = %212, %323
  %217 = phi ptr [ %325, %323 ], [ %214, %212 ]
  %218 = load ptr, ptr %217, align 8, !tbaa !101
  %219 = getelementptr inbounds i8, ptr %218, i64 %168
  br i1 %51, label %224, label %220

220:                                              ; preds = %216
  %221 = load i8, ptr %16, align 2, !tbaa !74
  %222 = and i8 %221, 1
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %271, label %224

224:                                              ; preds = %220, %216
  %225 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %6, ptr noundef %219) #9
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %323, label %227

227:                                              ; preds = %224
  %228 = load ptr, ptr %10, align 8, !tbaa !56
  %229 = getelementptr inbounds %struct.ToolSettings, ptr %228, i64 0, i32 11
  %230 = load i8, ptr %229, align 2, !tbaa !74
  %231 = and i8 %230, 1
  %232 = icmp eq i8 %231, 0
  br i1 %40, label %233, label %252

233:                                              ; preds = %227
  br i1 %232, label %246, label %234

234:                                              ; preds = %233
  %235 = getelementptr inbounds %struct.ToolSettings, ptr %228, i64 0, i32 8
  %236 = load i16, ptr %235, align 2, !tbaa !112
  %237 = and i16 %236, 4
  %238 = icmp eq i16 %237, 0
  %239 = load ptr, ptr %15, align 8, !tbaa !83
  br i1 %238, label %243, label %240

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.BMLoop, ptr %217, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %239, ptr noundef %242, i8 noundef zeroext 1) #9
  br label %323

243:                                              ; preds = %234
  %244 = getelementptr inbounds %struct.BMLoop, ptr %217, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !115
  call void @BM_vert_select_set(ptr noundef %239, ptr noundef %245, i8 noundef zeroext 1) #9
  br label %323

246:                                              ; preds = %233
  %247 = load ptr, ptr %217, align 8, !tbaa !101
  %248 = getelementptr inbounds i8, ptr %247, i64 %168
  %249 = getelementptr inbounds %struct.MLoopUV, ptr %248, i64 0, i32 1
  %250 = load i32, ptr %249, align 4, !tbaa !103
  %251 = or i32 %250, 2
  store i32 %251, ptr %249, align 4, !tbaa !103
  br label %323

252:                                              ; preds = %227
  br i1 %232, label %265, label %253

253:                                              ; preds = %252
  %254 = getelementptr inbounds %struct.ToolSettings, ptr %228, i64 0, i32 8
  %255 = load i16, ptr %254, align 2, !tbaa !112
  %256 = and i16 %255, 4
  %257 = icmp eq i16 %256, 0
  %258 = load ptr, ptr %15, align 8, !tbaa !83
  br i1 %257, label %262, label %259

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct.BMLoop, ptr %217, i64 0, i32 3
  %261 = load ptr, ptr %260, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %258, ptr noundef %261, i8 noundef zeroext 0) #9
  br label %323

262:                                              ; preds = %253
  %263 = getelementptr inbounds %struct.BMLoop, ptr %217, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !115
  call void @BM_vert_select_set(ptr noundef %258, ptr noundef %264, i8 noundef zeroext 0) #9
  br label %323

265:                                              ; preds = %252
  %266 = load ptr, ptr %217, align 8, !tbaa !101
  %267 = getelementptr inbounds i8, ptr %266, i64 %168
  %268 = getelementptr inbounds %struct.MLoopUV, ptr %267, i64 0, i32 1
  %269 = load i32, ptr %268, align 4, !tbaa !103
  %270 = and i32 %269, -3
  store i32 %270, ptr %268, align 4, !tbaa !103
  br label %323

271:                                              ; preds = %220
  %272 = getelementptr inbounds %struct.MLoopUV, ptr %219, i64 0, i32 1
  %273 = load i32, ptr %272, align 4, !tbaa !103
  %274 = and i32 %273, 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %323, label %276

276:                                              ; preds = %271
  %277 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %6, ptr noundef %219) #9
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %323, label %279

279:                                              ; preds = %276
  %280 = load ptr, ptr %10, align 8, !tbaa !56
  %281 = getelementptr inbounds %struct.ToolSettings, ptr %280, i64 0, i32 11
  %282 = load i8, ptr %281, align 2, !tbaa !74
  %283 = and i8 %282, 1
  %284 = icmp eq i8 %283, 0
  br i1 %40, label %285, label %304

285:                                              ; preds = %279
  br i1 %284, label %298, label %286

286:                                              ; preds = %285
  %287 = getelementptr inbounds %struct.ToolSettings, ptr %280, i64 0, i32 8
  %288 = load i16, ptr %287, align 2, !tbaa !112
  %289 = and i16 %288, 4
  %290 = icmp eq i16 %289, 0
  %291 = load ptr, ptr %15, align 8, !tbaa !83
  br i1 %290, label %295, label %292

292:                                              ; preds = %286
  %293 = getelementptr inbounds %struct.BMLoop, ptr %217, i64 0, i32 3
  %294 = load ptr, ptr %293, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %291, ptr noundef %294, i8 noundef zeroext 1) #9
  br label %323

295:                                              ; preds = %286
  %296 = getelementptr inbounds %struct.BMLoop, ptr %217, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !115
  call void @BM_vert_select_set(ptr noundef %291, ptr noundef %297, i8 noundef zeroext 1) #9
  br label %323

298:                                              ; preds = %285
  %299 = load ptr, ptr %217, align 8, !tbaa !101
  %300 = getelementptr inbounds i8, ptr %299, i64 %168
  %301 = getelementptr inbounds %struct.MLoopUV, ptr %300, i64 0, i32 1
  %302 = load i32, ptr %301, align 4, !tbaa !103
  %303 = or i32 %302, 2
  store i32 %303, ptr %301, align 4, !tbaa !103
  br label %323

304:                                              ; preds = %279
  br i1 %284, label %317, label %305

305:                                              ; preds = %304
  %306 = getelementptr inbounds %struct.ToolSettings, ptr %280, i64 0, i32 8
  %307 = load i16, ptr %306, align 2, !tbaa !112
  %308 = and i16 %307, 4
  %309 = icmp eq i16 %308, 0
  %310 = load ptr, ptr %15, align 8, !tbaa !83
  br i1 %309, label %314, label %311

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.BMLoop, ptr %217, i64 0, i32 3
  %313 = load ptr, ptr %312, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %310, ptr noundef %313, i8 noundef zeroext 0) #9
  br label %323

314:                                              ; preds = %305
  %315 = getelementptr inbounds %struct.BMLoop, ptr %217, i64 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !115
  call void @BM_vert_select_set(ptr noundef %310, ptr noundef %316, i8 noundef zeroext 0) #9
  br label %323

317:                                              ; preds = %304
  %318 = load ptr, ptr %217, align 8, !tbaa !101
  %319 = getelementptr inbounds i8, ptr %318, i64 %168
  %320 = getelementptr inbounds %struct.MLoopUV, ptr %319, i64 0, i32 1
  %321 = load i32, ptr %320, align 4, !tbaa !103
  %322 = and i32 %321, -3
  store i32 %322, ptr %320, align 4, !tbaa !103
  br label %323

323:                                              ; preds = %317, %314, %311, %298, %295, %292, %265, %262, %259, %246, %243, %240, %224, %271, %276
  %324 = load ptr, ptr %167, align 8, !tbaa !92
  %325 = call ptr %324(ptr noundef nonnull %5) #9
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %216, !llvm.loop !224

327:                                              ; preds = %323, %212, %209
  %328 = load ptr, ptr %157, align 8, !tbaa !92
  %329 = call ptr %328(ptr noundef nonnull %4) #9
  %330 = icmp eq ptr %329, null
  br i1 %330, label %331, label %169, !llvm.loop !225

331:                                              ; preds = %327, %153, %152
  %332 = load i8, ptr %16, align 2, !tbaa !74
  %333 = and i8 %332, 1
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %345, label %335

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 8
  %337 = load i16, ptr %336, align 2, !tbaa !112
  %338 = icmp eq i16 %337, 4
  br i1 %338, label %342, label %339

339:                                              ; preds = %335
  br i1 %40, label %341, label %340

340:                                              ; preds = %339
  call void @EDBM_deselect_flush(ptr noundef nonnull %15) #9
  br label %342

341:                                              ; preds = %339
  call void @EDBM_select_flush(ptr noundef nonnull %15) #9
  br label %342

342:                                              ; preds = %341, %340, %335
  br i1 %40, label %345, label %343

343:                                              ; preds = %342
  %344 = load ptr, ptr %15, align 8, !tbaa !83
  call void @BM_select_history_validate(ptr noundef %344) #9
  br label %345

345:                                              ; preds = %331, %342, %343
  %346 = load i8, ptr %16, align 2, !tbaa !74
  %347 = and i8 %346, 1
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %353, label %349

349:                                              ; preds = %345
  %350 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %351 = load ptr, ptr %350, align 8, !tbaa !88
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %351) #9
  br label %353

352:                                              ; preds = %53, %150
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %353

353:                                              ; preds = %352, %345, %349
  %354 = phi i32 [ 4, %349 ], [ 4, %345 ], [ 2, %352 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret i32 %354
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @ED_operator_uvedit_space_image(ptr noundef) #2

declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #2

declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @WM_operator_properties_border_to_rctf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @uv_select_flush_from_tag_face(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca [2 x float], align 4
  %12 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = tail call ptr @BKE_editmesh_from_object(ptr noundef %2) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #9
  %15 = load ptr, ptr %14, align 8, !tbaa !83
  %16 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 26
  %17 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %16, i32 noundef 16) #9
  %18 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 11
  %19 = load i8, ptr %18, align 2, !tbaa !74
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %211

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 23
  %24 = load i8, ptr %23, align 1, !tbaa !174
  %25 = icmp eq i8 %24, 2
  br i1 %25, label %26, label %154

26:                                               ; preds = %22
  %27 = load ptr, ptr %14, align 8, !tbaa !83
  %28 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  store i8 1, ptr %28, align 4, !tbaa !89
  %29 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %29, align 8, !tbaa !91
  %30 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %30, align 8, !tbaa !92
  %31 = getelementptr inbounds %struct.BMesh, ptr %27, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !226
  store ptr %32, ptr %9, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #9
  %33 = load ptr, ptr %30, align 8, !tbaa !92
  %34 = call ptr %33(ptr noundef nonnull %9) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %26, %36
  %37 = phi ptr [ %42, %36 ], [ %34, %26 ]
  %38 = getelementptr inbounds %struct.BMHeader, ptr %37, i64 0, i32 3
  %39 = load i8, ptr %38, align 1, !tbaa !100
  %40 = and i8 %39, -17
  store i8 %40, ptr %38, align 1, !tbaa !100
  %41 = load ptr, ptr %30, align 8, !tbaa !92
  %42 = call ptr %41(ptr noundef nonnull %9) #9
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %36, !llvm.loop !227

44:                                               ; preds = %36, %26
  %45 = load ptr, ptr %14, align 8, !tbaa !83
  store i8 3, ptr %28, align 4, !tbaa !89
  store ptr @bmiter__elem_of_mesh_begin, ptr %29, align 8, !tbaa !91
  store ptr @bmiter__elem_of_mesh_step, ptr %30, align 8, !tbaa !92
  %46 = getelementptr inbounds %struct.BMesh, ptr %45, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !93
  store ptr %47, ptr %9, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #9
  %48 = load ptr, ptr %30, align 8, !tbaa !92
  %49 = call ptr %48(ptr noundef nonnull %9) #9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %79, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  %53 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  %54 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  br label %55

55:                                               ; preds = %51, %75
  %56 = phi ptr [ %49, %51 ], [ %77, %75 ]
  %57 = getelementptr inbounds %struct.BMHeader, ptr %56, i64 0, i32 3
  %58 = load i8, ptr %57, align 1, !tbaa !100
  %59 = and i8 %58, 16
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %55
  store i8 11, ptr %52, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %53, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %54, align 8, !tbaa !92
  store ptr %56, ptr %10, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %10) #9
  %62 = load ptr, ptr %54, align 8, !tbaa !92
  %63 = call ptr %62(ptr noundef nonnull %10) #9
  %64 = icmp eq ptr %63, null
  br i1 %64, label %75, label %65

65:                                               ; preds = %61, %65
  %66 = phi ptr [ %73, %65 ], [ %63, %61 ]
  %67 = getelementptr inbounds %struct.BMLoop, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !115
  %69 = getelementptr inbounds %struct.BMHeader, ptr %68, i64 0, i32 3
  %70 = load i8, ptr %69, align 1, !tbaa !100
  %71 = or i8 %70, 16
  store i8 %71, ptr %69, align 1, !tbaa !100
  %72 = load ptr, ptr %54, align 8, !tbaa !92
  %73 = call ptr %72(ptr noundef nonnull %10) #9
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %65, !llvm.loop !228

75:                                               ; preds = %65, %61, %55
  %76 = load ptr, ptr %30, align 8, !tbaa !92
  %77 = call ptr %76(ptr noundef nonnull %9) #9
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %55, !llvm.loop !229

79:                                               ; preds = %75, %44
  %80 = load ptr, ptr %14, align 8, !tbaa !83
  store i8 3, ptr %28, align 4, !tbaa !89
  store ptr @bmiter__elem_of_mesh_begin, ptr %29, align 8, !tbaa !91
  store ptr @bmiter__elem_of_mesh_step, ptr %30, align 8, !tbaa !92
  %81 = getelementptr inbounds %struct.BMesh, ptr %80, i64 0, i32 12
  %82 = load ptr, ptr %81, align 8, !tbaa !93
  store ptr %82, ptr %9, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #9
  %83 = load ptr, ptr %30, align 8, !tbaa !92
  %84 = call ptr %83(ptr noundef nonnull %9) #9
  %85 = icmp eq ptr %84, null
  br i1 %85, label %284, label %86

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  %88 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  %89 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  %90 = icmp eq i8 %3, 0
  %91 = sext i32 %17 to i64
  %92 = sext i32 %17 to i64
  br label %93

93:                                               ; preds = %86, %150
  %94 = phi ptr [ %84, %86 ], [ %152, %150 ]
  store i8 11, ptr %87, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %88, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %89, align 8, !tbaa !92
  store ptr %94, ptr %10, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %10) #9
  %95 = load ptr, ptr %89, align 8, !tbaa !92
  %96 = call ptr %95(ptr noundef nonnull %10) #9
  %97 = icmp eq ptr %96, null
  br i1 %97, label %150, label %98

98:                                               ; preds = %93, %146
  %99 = phi ptr [ %148, %146 ], [ %96, %93 ]
  %100 = getelementptr inbounds %struct.BMLoop, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !115
  %102 = getelementptr inbounds %struct.BMHeader, ptr %101, i64 0, i32 3
  %103 = load i8, ptr %102, align 1, !tbaa !100
  %104 = and i8 %103, 16
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %146, label %106

106:                                              ; preds = %98
  %107 = load ptr, ptr %12, align 8, !tbaa !56
  %108 = getelementptr inbounds %struct.ToolSettings, ptr %107, i64 0, i32 11
  %109 = load i8, ptr %108, align 2, !tbaa !74
  %110 = and i8 %109, 1
  %111 = icmp eq i8 %110, 0
  br i1 %90, label %129, label %112

112:                                              ; preds = %106
  br i1 %111, label %123, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.ToolSettings, ptr %107, i64 0, i32 8
  %115 = load i16, ptr %114, align 2, !tbaa !112
  %116 = and i16 %115, 4
  %117 = icmp eq i16 %116, 0
  %118 = load ptr, ptr %14, align 8, !tbaa !83
  br i1 %117, label %122, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.BMLoop, ptr %99, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %118, ptr noundef %121, i8 noundef zeroext 1) #9
  br label %146

122:                                              ; preds = %113
  call void @BM_vert_select_set(ptr noundef %118, ptr noundef %101, i8 noundef zeroext 1) #9
  br label %146

123:                                              ; preds = %112
  %124 = load ptr, ptr %99, align 8, !tbaa !101
  %125 = getelementptr inbounds i8, ptr %124, i64 %91
  %126 = getelementptr inbounds %struct.MLoopUV, ptr %125, i64 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !103
  %128 = or i32 %127, 2
  store i32 %128, ptr %126, align 4, !tbaa !103
  br label %146

129:                                              ; preds = %106
  br i1 %111, label %140, label %130

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.ToolSettings, ptr %107, i64 0, i32 8
  %132 = load i16, ptr %131, align 2, !tbaa !112
  %133 = and i16 %132, 4
  %134 = icmp eq i16 %133, 0
  %135 = load ptr, ptr %14, align 8, !tbaa !83
  br i1 %134, label %139, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.BMLoop, ptr %99, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %135, ptr noundef %138, i8 noundef zeroext 0) #9
  br label %146

139:                                              ; preds = %130
  call void @BM_vert_select_set(ptr noundef %135, ptr noundef %101, i8 noundef zeroext 0) #9
  br label %146

140:                                              ; preds = %129
  %141 = load ptr, ptr %99, align 8, !tbaa !101
  %142 = getelementptr inbounds i8, ptr %141, i64 %92
  %143 = getelementptr inbounds %struct.MLoopUV, ptr %142, i64 0, i32 1
  %144 = load i32, ptr %143, align 4, !tbaa !103
  %145 = and i32 %144, -3
  store i32 %145, ptr %143, align 4, !tbaa !103
  br label %146

146:                                              ; preds = %140, %139, %136, %123, %122, %119, %98
  %147 = load ptr, ptr %89, align 8, !tbaa !92
  %148 = call ptr %147(ptr noundef nonnull %10) #9
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %98, !llvm.loop !230

150:                                              ; preds = %146, %93
  %151 = load ptr, ptr %30, align 8, !tbaa !92
  %152 = call ptr %151(ptr noundef nonnull %9) #9
  %153 = icmp eq ptr %152, null
  br i1 %153, label %284, label %93, !llvm.loop !231

154:                                              ; preds = %22
  br i1 %21, label %155, label %211

155:                                              ; preds = %154
  %156 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 23
  %157 = load i8, ptr %156, align 1, !tbaa !174
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %211

159:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  %160 = icmp eq ptr %0, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %159
  call void @ED_space_image_get_size(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  br label %163

162:                                              ; preds = %159
  store i32 256, ptr %7, align 4, !tbaa !171
  store i32 256, ptr %8, align 4, !tbaa !171
  br label %163

163:                                              ; preds = %161, %162
  %164 = load i32, ptr %7, align 4, !tbaa !171
  %165 = sitofp i32 %164 to float
  %166 = fdiv float 0x3FA99999A0000000, %165
  store float %166, ptr %11, align 4, !tbaa !127
  %167 = load i32, ptr %8, align 4, !tbaa !171
  %168 = sitofp i32 %167 to float
  %169 = fdiv float 0x3FA99999A0000000, %168
  %170 = getelementptr inbounds float, ptr %11, i64 1
  store float %169, ptr %170, align 4, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  %171 = load ptr, ptr %14, align 8, !tbaa !83
  call void @BM_mesh_elem_table_ensure(ptr noundef %171, i8 noundef zeroext 8) #9
  %172 = load ptr, ptr %14, align 8, !tbaa !83
  %173 = call ptr @BM_uv_vert_map_create(ptr noundef %172, i8 noundef zeroext 0, ptr noundef nonnull %11) #9
  %174 = icmp eq ptr %173, null
  br i1 %174, label %283, label %175

175:                                              ; preds = %163
  %176 = load ptr, ptr %14, align 8, !tbaa !83
  %177 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  store i8 3, ptr %177, align 4, !tbaa !89
  %178 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %178, align 8, !tbaa !91
  %179 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %179, align 8, !tbaa !92
  %180 = getelementptr inbounds %struct.BMesh, ptr %176, i64 0, i32 12
  %181 = load ptr, ptr %180, align 8, !tbaa !93
  store ptr %181, ptr %9, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #9
  %182 = load ptr, ptr %179, align 8, !tbaa !92
  %183 = call ptr %182(ptr noundef nonnull %9) #9
  %184 = icmp eq ptr %183, null
  br i1 %184, label %210, label %185

185:                                              ; preds = %175
  %186 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  %187 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  %188 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  br label %189

189:                                              ; preds = %185, %205
  %190 = phi i32 [ 0, %185 ], [ %208, %205 ]
  %191 = phi ptr [ %183, %185 ], [ %207, %205 ]
  %192 = getelementptr inbounds %struct.BMHeader, ptr %191, i64 0, i32 3
  %193 = load i8, ptr %192, align 1, !tbaa !100
  %194 = and i8 %193, 16
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %205, label %196

196:                                              ; preds = %189
  store i8 11, ptr %186, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %187, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %188, align 8, !tbaa !92
  store ptr %191, ptr %10, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %10) #9
  %197 = load ptr, ptr %188, align 8, !tbaa !92
  %198 = call ptr %197(ptr noundef nonnull %10) #9
  %199 = icmp eq ptr %198, null
  br i1 %199, label %205, label %200

200:                                              ; preds = %196, %200
  %201 = phi ptr [ %203, %200 ], [ %198, %196 ]
  call fastcc void @uv_select_flush_from_tag_sticky_loc_internal(ptr noundef %1, ptr noundef nonnull %14, ptr noundef nonnull %173, i32 noundef %190, ptr noundef nonnull %201, i8 noundef zeroext %3, i32 noundef %17)
  %202 = load ptr, ptr %188, align 8, !tbaa !92
  %203 = call ptr %202(ptr noundef nonnull %10) #9
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %200, !llvm.loop !232

205:                                              ; preds = %200, %196, %189
  %206 = load ptr, ptr %179, align 8, !tbaa !92
  %207 = call ptr %206(ptr noundef nonnull %9) #9
  %208 = add i32 %190, 1
  %209 = icmp eq ptr %207, null
  br i1 %209, label %210, label %189, !llvm.loop !233

210:                                              ; preds = %205, %175
  call void @BM_uv_vert_map_free(ptr noundef nonnull %173) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %284

211:                                              ; preds = %4, %155, %154
  %212 = load ptr, ptr %14, align 8, !tbaa !83
  %213 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  store i8 3, ptr %213, align 4, !tbaa !89
  %214 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %214, align 8, !tbaa !91
  %215 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %215, align 8, !tbaa !92
  %216 = getelementptr inbounds %struct.BMesh, ptr %212, i64 0, i32 12
  %217 = load ptr, ptr %216, align 8, !tbaa !93
  store ptr %217, ptr %9, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #9
  %218 = load ptr, ptr %215, align 8, !tbaa !92
  %219 = call ptr %218(ptr noundef nonnull %9) #9
  %220 = icmp eq ptr %219, null
  br i1 %220, label %284, label %221

221:                                              ; preds = %211
  %222 = icmp eq i8 %3, 0
  %223 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %224 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %225 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %226 = sext i32 %17 to i64
  %227 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %228 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %229 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %230 = sext i32 %17 to i64
  br label %231

231:                                              ; preds = %221, %279
  %232 = phi ptr [ %219, %221 ], [ %281, %279 ]
  %233 = getelementptr inbounds %struct.BMHeader, ptr %232, i64 0, i32 3
  %234 = load i8, ptr %233, align 1, !tbaa !100
  %235 = and i8 %234, 16
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %279, label %237

237:                                              ; preds = %231
  %238 = load ptr, ptr %12, align 8, !tbaa !56
  %239 = getelementptr inbounds %struct.ToolSettings, ptr %238, i64 0, i32 11
  %240 = load i8, ptr %239, align 2, !tbaa !74
  %241 = and i8 %240, 1
  %242 = icmp eq i8 %241, 0
  br i1 %222, label %261, label %243

243:                                              ; preds = %237
  br i1 %242, label %246, label %244

244:                                              ; preds = %243
  %245 = load ptr, ptr %14, align 8, !tbaa !83
  call void @BM_face_select_set(ptr noundef %245, ptr noundef nonnull %232, i8 noundef zeroext 1) #9
  br label %279

246:                                              ; preds = %243
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  store i8 11, ptr %223, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %224, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %225, align 8, !tbaa !92
  store ptr %232, ptr %6, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #9
  %247 = load ptr, ptr %225, align 8, !tbaa !92
  %248 = call ptr %247(ptr noundef nonnull %6) #9
  %249 = icmp eq ptr %248, null
  br i1 %249, label %260, label %250

250:                                              ; preds = %246, %250
  %251 = phi ptr [ %258, %250 ], [ %248, %246 ]
  %252 = load ptr, ptr %251, align 8, !tbaa !101
  %253 = getelementptr inbounds i8, ptr %252, i64 %226
  %254 = getelementptr inbounds %struct.MLoopUV, ptr %253, i64 0, i32 1
  %255 = load i32, ptr %254, align 4, !tbaa !103
  %256 = or i32 %255, 2
  store i32 %256, ptr %254, align 4, !tbaa !103
  %257 = load ptr, ptr %225, align 8, !tbaa !92
  %258 = call ptr %257(ptr noundef nonnull %6) #9
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %250, !llvm.loop !110

260:                                              ; preds = %250, %246
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  br label %279

261:                                              ; preds = %237
  br i1 %242, label %264, label %262

262:                                              ; preds = %261
  %263 = load ptr, ptr %14, align 8, !tbaa !83
  call void @BM_face_select_set(ptr noundef %263, ptr noundef nonnull %232, i8 noundef zeroext 0) #9
  br label %279

264:                                              ; preds = %261
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  store i8 11, ptr %227, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %228, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %229, align 8, !tbaa !92
  store ptr %232, ptr %5, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %5) #9
  %265 = load ptr, ptr %229, align 8, !tbaa !92
  %266 = call ptr %265(ptr noundef nonnull %5) #9
  %267 = icmp eq ptr %266, null
  br i1 %267, label %278, label %268

268:                                              ; preds = %264, %268
  %269 = phi ptr [ %276, %268 ], [ %266, %264 ]
  %270 = load ptr, ptr %269, align 8, !tbaa !101
  %271 = getelementptr inbounds i8, ptr %270, i64 %230
  %272 = getelementptr inbounds %struct.MLoopUV, ptr %271, i64 0, i32 1
  %273 = load i32, ptr %272, align 4, !tbaa !103
  %274 = and i32 %273, -3
  store i32 %274, ptr %272, align 4, !tbaa !103
  %275 = load ptr, ptr %229, align 8, !tbaa !92
  %276 = call ptr %275(ptr noundef nonnull %5) #9
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %268, !llvm.loop !111

278:                                              ; preds = %268, %264
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  br label %279

279:                                              ; preds = %278, %262, %260, %244, %231
  %280 = load ptr, ptr %215, align 8, !tbaa !92
  %281 = call ptr %280(ptr noundef nonnull %9) #9
  %282 = icmp eq ptr %281, null
  br i1 %282, label %284, label %231, !llvm.loop !234

283:                                              ; preds = %163
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  br label %284

284:                                              ; preds = %279, %150, %211, %79, %210, %283
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @uv_select_flush_from_tag_sticky_loc_internal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i8 noundef zeroext %5, i32 noundef %6) unnamed_addr #0 {
  %8 = icmp eq i8 %5, 0
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 11
  %12 = load i8, ptr %11, align 2, !tbaa !74
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %8, label %35, label %15

15:                                               ; preds = %7
  br i1 %14, label %28, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 8
  %18 = load i16, ptr %17, align 2, !tbaa !112
  %19 = and i16 %18, 4
  %20 = icmp eq i16 %19, 0
  %21 = load ptr, ptr %1, align 8, !tbaa !83
  br i1 %20, label %25, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !113
  tail call void @BM_face_select_set(ptr noundef %21, ptr noundef %24, i8 noundef zeroext 1) #9
  br label %55

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !115
  tail call void @BM_vert_select_set(ptr noundef %21, ptr noundef %27, i8 noundef zeroext 1) #9
  br label %55

28:                                               ; preds = %15
  %29 = load ptr, ptr %4, align 8, !tbaa !101
  %30 = sext i32 %6 to i64
  %31 = getelementptr inbounds i8, ptr %29, i64 %30
  %32 = getelementptr inbounds %struct.MLoopUV, ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !103
  %34 = or i32 %33, 2
  store i32 %34, ptr %32, align 4, !tbaa !103
  br label %55

35:                                               ; preds = %7
  br i1 %14, label %48, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 8
  %38 = load i16, ptr %37, align 2, !tbaa !112
  %39 = and i16 %38, 4
  %40 = icmp eq i16 %39, 0
  %41 = load ptr, ptr %1, align 8, !tbaa !83
  br i1 %40, label %45, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !113
  tail call void @BM_face_select_set(ptr noundef %41, ptr noundef %44, i8 noundef zeroext 0) #9
  br label %55

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !115
  tail call void @BM_vert_select_set(ptr noundef %41, ptr noundef %47, i8 noundef zeroext 0) #9
  br label %55

48:                                               ; preds = %35
  %49 = load ptr, ptr %4, align 8, !tbaa !101
  %50 = sext i32 %6 to i64
  %51 = getelementptr inbounds i8, ptr %49, i64 %50
  %52 = getelementptr inbounds %struct.MLoopUV, ptr %51, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !103
  %54 = and i32 %53, -3
  store i32 %54, ptr %52, align 4, !tbaa !103
  br label %55

55:                                               ; preds = %48, %45, %42, %28, %25, %22
  %56 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !115
  %58 = getelementptr inbounds %struct.BMHeader, ptr %57, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !175
  %60 = tail call ptr @BM_uv_vert_map_at_index(ptr noundef %2, i32 noundef %59) #9
  %61 = icmp eq ptr %60, null
  br i1 %61, label %75, label %62

62:                                               ; preds = %55, %72
  %63 = phi ptr [ %68, %72 ], [ null, %55 ]
  %64 = phi ptr [ %73, %72 ], [ %60, %55 ]
  %65 = getelementptr inbounds %struct.UvMapVert, ptr %64, i64 0, i32 3
  %66 = load i8, ptr %65, align 1, !tbaa !178
  %67 = icmp eq i8 %66, 0
  %68 = select i1 %67, ptr %63, ptr %64
  %69 = getelementptr inbounds %struct.UvMapVert, ptr %64, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !180
  %71 = icmp eq i32 %70, %3
  br i1 %71, label %75, label %72

72:                                               ; preds = %62
  %73 = load ptr, ptr %64, align 8, !tbaa !181
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %62, !llvm.loop !235

75:                                               ; preds = %72, %62, %55
  %76 = phi ptr [ null, %55 ], [ %68, %62 ], [ %68, %72 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %153, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %80 = sext i32 %6 to i64
  %81 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %82 = sext i32 %6 to i64
  br label %83

83:                                               ; preds = %78, %150
  %84 = phi ptr [ %76, %78 ], [ %151, %150 ]
  %85 = icmp eq ptr %84, %76
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.UvMapVert, ptr %84, i64 0, i32 3
  %88 = load i8, ptr %87, align 1, !tbaa !178
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %153

90:                                               ; preds = %86, %83
  %91 = getelementptr inbounds %struct.UvMapVert, ptr %84, i64 0, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !180
  %93 = icmp eq i32 %92, %3
  br i1 %93, label %150, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %1, align 8, !tbaa !83
  %96 = tail call ptr @BM_face_at_index(ptr noundef %95, i32 noundef %92) #9
  %97 = load ptr, ptr %1, align 8, !tbaa !83
  %98 = getelementptr inbounds %struct.UvMapVert, ptr %84, i64 0, i32 2
  %99 = load i8, ptr %98, align 4, !tbaa !236
  %100 = zext i8 %99 to i32
  %101 = tail call ptr @BM_iter_at_index(ptr noundef %97, i8 noundef zeroext 11, ptr noundef %96, i32 noundef %100) #9
  br i1 %8, label %126, label %102

102:                                              ; preds = %94
  %103 = load ptr, ptr %79, align 8, !tbaa !56
  %104 = getelementptr inbounds %struct.ToolSettings, ptr %103, i64 0, i32 11
  %105 = load i8, ptr %104, align 2, !tbaa !74
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.ToolSettings, ptr %103, i64 0, i32 8
  %110 = load i16, ptr %109, align 2, !tbaa !112
  %111 = and i16 %110, 4
  %112 = icmp eq i16 %111, 0
  %113 = load ptr, ptr %1, align 8, !tbaa !83
  br i1 %112, label %117, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.BMLoop, ptr %101, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !113
  tail call void @BM_face_select_set(ptr noundef %113, ptr noundef %116, i8 noundef zeroext 1) #9
  br label %150

117:                                              ; preds = %108
  %118 = getelementptr inbounds %struct.BMLoop, ptr %101, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !115
  tail call void @BM_vert_select_set(ptr noundef %113, ptr noundef %119, i8 noundef zeroext 1) #9
  br label %150

120:                                              ; preds = %102
  %121 = load ptr, ptr %101, align 8, !tbaa !101
  %122 = getelementptr inbounds i8, ptr %121, i64 %80
  %123 = getelementptr inbounds %struct.MLoopUV, ptr %122, i64 0, i32 1
  %124 = load i32, ptr %123, align 4, !tbaa !103
  %125 = or i32 %124, 2
  store i32 %125, ptr %123, align 4, !tbaa !103
  br label %150

126:                                              ; preds = %94
  %127 = load ptr, ptr %81, align 8, !tbaa !56
  %128 = getelementptr inbounds %struct.ToolSettings, ptr %127, i64 0, i32 11
  %129 = load i8, ptr %128, align 2, !tbaa !74
  %130 = and i8 %129, 1
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %144, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.ToolSettings, ptr %127, i64 0, i32 8
  %134 = load i16, ptr %133, align 2, !tbaa !112
  %135 = and i16 %134, 4
  %136 = icmp eq i16 %135, 0
  %137 = load ptr, ptr %1, align 8, !tbaa !83
  br i1 %136, label %141, label %138

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.BMLoop, ptr %101, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !113
  tail call void @BM_face_select_set(ptr noundef %137, ptr noundef %140, i8 noundef zeroext 0) #9
  br label %150

141:                                              ; preds = %132
  %142 = getelementptr inbounds %struct.BMLoop, ptr %101, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !115
  tail call void @BM_vert_select_set(ptr noundef %137, ptr noundef %143, i8 noundef zeroext 0) #9
  br label %150

144:                                              ; preds = %126
  %145 = load ptr, ptr %101, align 8, !tbaa !101
  %146 = getelementptr inbounds i8, ptr %145, i64 %82
  %147 = getelementptr inbounds %struct.MLoopUV, ptr %146, i64 0, i32 1
  %148 = load i32, ptr %147, align 4, !tbaa !103
  %149 = and i32 %148, -3
  store i32 %149, ptr %147, align 4, !tbaa !103
  br label %150

150:                                              ; preds = %144, %141, %138, %120, %117, %114, %90
  %151 = load ptr, ptr %84, align 8, !tbaa !181
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %83, !llvm.loop !237

153:                                              ; preds = %150, %86, %75
  ret void
}

declare ptr @BM_iter_at_index(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @WM_gesture_lasso_invoke(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @WM_gesture_lasso_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_lasso_select_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca %struct.rcti, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  %10 = call ptr @WM_gesture_lasso_path_to_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %350, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !164
  %15 = call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.13) #9
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i8
  %18 = load ptr, ptr %13, align 8, !tbaa !164
  %19 = call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.6) #9
  %20 = load i32, ptr %9, align 4, !tbaa !171
  %21 = call ptr @CTX_wm_space_image(ptr noundef %0) #9
  %22 = call ptr @CTX_data_edit_image(ptr noundef %0) #9
  %23 = call ptr @CTX_wm_region(ptr noundef %0) #9
  %24 = call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %25 = call ptr @CTX_data_scene(ptr noundef %0) #9
  %26 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !56
  %28 = call ptr @BKE_editmesh_from_object(ptr noundef %24) #9
  %29 = getelementptr inbounds %struct.ToolSettings, ptr %27, i64 0, i32 11
  %30 = load i8, ptr %29, align 2, !tbaa !74
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %12
  %34 = getelementptr inbounds %struct.ToolSettings, ptr %27, i64 0, i32 8
  %35 = load i16, ptr %34, align 2, !tbaa !112
  %36 = icmp eq i16 %35, 4
  br label %41

37:                                               ; preds = %12
  %38 = getelementptr inbounds %struct.ToolSettings, ptr %27, i64 0, i32 12
  %39 = load i8, ptr %38, align 1, !tbaa !173
  %40 = icmp eq i8 %39, 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i1 [ %36, %33 ], [ %40, %37 ]
  %43 = load ptr, ptr %28, align 8, !tbaa !83
  %44 = getelementptr inbounds %struct.BMesh, ptr %43, i64 0, i32 26
  %45 = call i32 @CustomData_get_offset(ptr noundef nonnull %44, i32 noundef 16) #9
  %46 = load ptr, ptr %28, align 8, !tbaa !83
  %47 = getelementptr inbounds %struct.BMesh, ptr %46, i64 0, i32 27
  %48 = call i32 @CustomData_get_offset(ptr noundef nonnull %47, i32 noundef 15) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  %49 = shl i32 %20, 16
  %50 = ashr exact i32 %49, 16
  call void @BLI_lasso_boundbox(ptr noundef nonnull %8, ptr noundef nonnull %10, i32 noundef %50) #9
  %51 = and i32 %19, 255
  %52 = or i32 %51, %15
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  call fastcc void @uv_select_all_perform(ptr noundef %25, ptr noundef %22, ptr noundef nonnull %28, i32 noundef 2)
  br label %55

55:                                               ; preds = %54, %41
  %56 = load ptr, ptr %28, align 8, !tbaa !83
  %57 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %57, align 4, !tbaa !89
  %58 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %58, align 8, !tbaa !91
  %59 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %59, align 8, !tbaa !92
  %60 = getelementptr inbounds %struct.BMesh, ptr %56, i64 0, i32 12
  %61 = load ptr, ptr %60, align 8, !tbaa !93
  store ptr %61, ptr %5, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #9
  %62 = load ptr, ptr %59, align 8, !tbaa !92
  %63 = call ptr %62(ptr noundef nonnull %5) #9
  %64 = icmp eq ptr %63, null
  br i1 %42, label %65, label %159

65:                                               ; preds = %55
  br i1 %64, label %347, label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %68 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %69 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %70 = sext i32 %45 to i64
  %71 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %72 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %73 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %74 = sext i32 %45 to i64
  %75 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2
  %76 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  br label %77

77:                                               ; preds = %66, %151
  %78 = phi ptr [ %63, %66 ], [ %154, %151 ]
  %79 = phi i8 [ 0, %66 ], [ %152, %151 ]
  %80 = getelementptr inbounds %struct.BMHeader, ptr %78, i64 0, i32 3
  %81 = load i8, ptr %80, align 1, !tbaa !100
  %82 = and i8 %81, -17
  store i8 %82, ptr %80, align 1, !tbaa !100
  %83 = load ptr, ptr %26, align 8, !tbaa !56
  %84 = getelementptr inbounds %struct.ToolSettings, ptr %83, i64 0, i32 11
  %85 = load i8, ptr %84, align 2, !tbaa !74
  %86 = and i8 %85, 1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %77
  %89 = and i8 %81, 1
  br label %108

90:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  store i8 11, ptr %67, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %68, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %69, align 8, !tbaa !92
  store ptr %78, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %91 = load ptr, ptr %69, align 8, !tbaa !92
  %92 = call ptr %91(ptr noundef nonnull %4) #9
  %93 = icmp eq ptr %92, null
  br i1 %93, label %106, label %94

94:                                               ; preds = %90, %102
  %95 = phi ptr [ %104, %102 ], [ %92, %90 ]
  %96 = load ptr, ptr %95, align 8, !tbaa !101
  %97 = getelementptr inbounds i8, ptr %96, i64 %70
  %98 = getelementptr inbounds %struct.MLoopUV, ptr %97, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !103
  %100 = and i32 %99, 2
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %94
  %103 = load ptr, ptr %69, align 8, !tbaa !92
  %104 = call ptr %103(ptr noundef nonnull %4) #9
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %94, !llvm.loop !105

106:                                              ; preds = %102, %94, %90
  %107 = phi i8 [ 1, %90 ], [ 0, %94 ], [ 1, %102 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  br label %108

108:                                              ; preds = %88, %106
  %109 = phi i8 [ %89, %88 ], [ %107, %106 ]
  %110 = icmp eq i8 %109, %17
  br i1 %110, label %151, label %111

111:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  store i8 11, ptr %71, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %72, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %73, align 8, !tbaa !92
  store ptr %78, ptr %3, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %3) #9
  %112 = load ptr, ptr %73, align 8, !tbaa !92
  %113 = call ptr %112(ptr noundef nonnull %3) #9
  %114 = icmp eq ptr %113, null
  br i1 %114, label %129, label %115

115:                                              ; preds = %111, %115
  %116 = phi float [ %125, %115 ], [ 0.000000e+00, %111 ]
  %117 = phi float [ %122, %115 ], [ 0.000000e+00, %111 ]
  %118 = phi ptr [ %127, %115 ], [ %113, %111 ]
  %119 = load ptr, ptr %118, align 8, !tbaa !101
  %120 = getelementptr inbounds i8, ptr %119, i64 %74
  %121 = load float, ptr %120, align 4, !tbaa !127
  %122 = fadd float %117, %121
  %123 = getelementptr inbounds float, ptr %120, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !127
  %125 = fadd float %116, %124
  %126 = load ptr, ptr %73, align 8, !tbaa !92
  %127 = call ptr %126(ptr noundef nonnull %3) #9
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %115, !llvm.loop !128

129:                                              ; preds = %115, %111
  %130 = phi float [ 0.000000e+00, %111 ], [ %125, %115 ]
  %131 = phi float [ 0.000000e+00, %111 ], [ %122, %115 ]
  %132 = getelementptr inbounds %struct.BMFace, ptr %78, i64 0, i32 3
  %133 = load i32, ptr %132, align 8, !tbaa !129
  %134 = sitofp i32 %133 to float
  %135 = fdiv float 1.000000e+00, %134
  %136 = fmul float %131, %135
  %137 = fmul float %130, %135
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  %138 = call zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef nonnull %75, float noundef %136, float noundef %137, ptr noundef nonnull %7, ptr noundef nonnull %76) #9
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %129
  %141 = call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %8, ptr noundef nonnull %7) #9
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %140
  %144 = load i32, ptr %7, align 4, !tbaa !171
  %145 = load i32, ptr %76, align 4, !tbaa !171
  %146 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef nonnull %10, i32 noundef %50, i32 noundef %144, i32 noundef %145, i32 noundef 12000) #9
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %143
  %149 = load i8, ptr %80, align 1, !tbaa !100
  %150 = or i8 %149, 16
  store i8 %150, ptr %80, align 1, !tbaa !100
  br label %151

151:                                              ; preds = %129, %140, %143, %148, %108
  %152 = phi i8 [ %79, %108 ], [ 1, %148 ], [ %79, %143 ], [ %79, %140 ], [ %79, %129 ]
  %153 = load ptr, ptr %59, align 8, !tbaa !92
  %154 = call ptr %153(ptr noundef nonnull %5) #9
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %77, !llvm.loop !238

156:                                              ; preds = %151
  %157 = icmp eq i8 %152, 0
  br i1 %157, label %347, label %158

158:                                              ; preds = %156
  call fastcc void @uv_select_flush_from_tag_face(ptr noundef %21, ptr noundef %25, ptr noundef %24, i8 noundef zeroext %17)
  br label %324

159:                                              ; preds = %55
  br i1 %64, label %347, label %160

160:                                              ; preds = %159
  %161 = sext i32 %48 to i64
  %162 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %163 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %164 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %165 = sext i32 %45 to i64
  %166 = sext i32 %45 to i64
  %167 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2
  %168 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  br label %169

169:                                              ; preds = %160, %317
  %170 = phi ptr [ %63, %160 ], [ %320, %317 ]
  %171 = phi i8 [ 0, %160 ], [ %318, %317 ]
  %172 = load ptr, ptr %26, align 8, !tbaa !56
  %173 = getelementptr inbounds %struct.ToolSettings, ptr %172, i64 0, i32 11
  %174 = load i8, ptr %173, align 2, !tbaa !74
  %175 = and i8 %174, 2
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %196, label %177

177:                                              ; preds = %169
  %178 = load ptr, ptr %170, align 8, !tbaa !95
  %179 = getelementptr inbounds i8, ptr %178, i64 %161
  %180 = load ptr, ptr %179, align 8, !tbaa !98
  %181 = icmp eq ptr %180, %22
  br i1 %181, label %182, label %210

182:                                              ; preds = %177
  %183 = and i8 %174, 1
  %184 = icmp eq i8 %183, 0
  %185 = getelementptr inbounds %struct.BMHeader, ptr %170, i64 0, i32 3
  %186 = load i8, ptr %185, align 1, !tbaa !100
  br i1 %184, label %191, label %187

187:                                              ; preds = %182
  %188 = lshr i8 %186, 1
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  br label %210

191:                                              ; preds = %182
  %192 = and i8 %186, 2
  %193 = icmp eq i8 %192, 0
  %194 = and i8 %186, 1
  %195 = select i1 %193, i8 %194, i8 0
  br label %210

196:                                              ; preds = %169
  %197 = and i8 %174, 1
  %198 = icmp eq i8 %197, 0
  %199 = getelementptr inbounds %struct.BMHeader, ptr %170, i64 0, i32 3
  %200 = load i8, ptr %199, align 1, !tbaa !100
  br i1 %198, label %205, label %201

201:                                              ; preds = %196
  %202 = lshr i8 %200, 1
  %203 = and i8 %202, 1
  %204 = xor i8 %203, 1
  br label %210

205:                                              ; preds = %196
  %206 = and i8 %200, 2
  %207 = icmp eq i8 %206, 0
  %208 = and i8 %200, 1
  %209 = select i1 %207, i8 %208, i8 0
  br label %210

210:                                              ; preds = %177, %187, %191, %201, %205
  %211 = phi i8 [ 0, %177 ], [ %190, %187 ], [ %195, %191 ], [ %204, %201 ], [ %209, %205 ]
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %317, label %213

213:                                              ; preds = %210
  store i8 11, ptr %162, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %163, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %164, align 8, !tbaa !92
  store ptr %170, ptr %6, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #9
  %214 = load ptr, ptr %164, align 8, !tbaa !92
  %215 = call ptr %214(ptr noundef nonnull %6) #9
  %216 = icmp eq ptr %215, null
  br i1 %216, label %317, label %217

217:                                              ; preds = %213, %312
  %218 = phi i8 [ %313, %312 ], [ %171, %213 ]
  %219 = phi ptr [ %315, %312 ], [ %215, %213 ]
  %220 = load ptr, ptr %26, align 8, !tbaa !56
  %221 = getelementptr inbounds %struct.ToolSettings, ptr %220, i64 0, i32 11
  %222 = load i8, ptr %221, align 2, !tbaa !74
  %223 = and i8 %222, 1
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %240, label %225

225:                                              ; preds = %217
  %226 = getelementptr inbounds %struct.ToolSettings, ptr %220, i64 0, i32 8
  %227 = load i16, ptr %226, align 2, !tbaa !112
  %228 = and i16 %227, 4
  %229 = icmp eq i16 %228, 0
  br i1 %229, label %235, label %230

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.BMLoop, ptr %219, i64 0, i32 3
  %232 = load ptr, ptr %231, align 8, !tbaa !113
  %233 = getelementptr inbounds %struct.BMHeader, ptr %232, i64 0, i32 3
  %234 = load i8, ptr %233, align 1, !tbaa !100
  br label %247

235:                                              ; preds = %225
  %236 = getelementptr inbounds %struct.BMLoop, ptr %219, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !115
  %238 = getelementptr inbounds %struct.BMHeader, ptr %237, i64 0, i32 3
  %239 = load i8, ptr %238, align 1, !tbaa !100
  br label %247

240:                                              ; preds = %217
  %241 = load ptr, ptr %219, align 8, !tbaa !101
  %242 = getelementptr inbounds i8, ptr %241, i64 %165
  %243 = getelementptr inbounds %struct.MLoopUV, ptr %242, i64 0, i32 1
  %244 = load i32, ptr %243, align 4, !tbaa !103
  %245 = trunc i32 %244 to i8
  %246 = lshr i8 %245, 1
  br label %247

247:                                              ; preds = %240, %235, %230
  %248 = phi i8 [ %234, %230 ], [ %239, %235 ], [ %246, %240 ]
  %249 = and i8 %248, 1
  %250 = icmp eq i8 %249, 0
  %251 = xor i1 %16, %250
  br i1 %251, label %312, label %252

252:                                              ; preds = %247
  %253 = load ptr, ptr %219, align 8, !tbaa !101
  %254 = getelementptr inbounds i8, ptr %253, i64 %166
  %255 = load float, ptr %254, align 4, !tbaa !127
  %256 = getelementptr inbounds [2 x float], ptr %254, i64 0, i64 1
  %257 = load float, ptr %256, align 4, !tbaa !127
  %258 = call zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef nonnull %167, float noundef %255, float noundef %257, ptr noundef nonnull %7, ptr noundef nonnull %168) #9
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %312, label %260

260:                                              ; preds = %252
  %261 = call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %8, ptr noundef nonnull %7) #9
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %312, label %263

263:                                              ; preds = %260
  %264 = load i32, ptr %7, align 4, !tbaa !171
  %265 = load i32, ptr %168, align 4, !tbaa !171
  %266 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef nonnull %10, i32 noundef %50, i32 noundef %264, i32 noundef %265, i32 noundef 12000) #9
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %312, label %268

268:                                              ; preds = %263
  %269 = load ptr, ptr %26, align 8, !tbaa !56
  %270 = getelementptr inbounds %struct.ToolSettings, ptr %269, i64 0, i32 11
  %271 = load i8, ptr %270, align 2, !tbaa !74
  %272 = and i8 %271, 1
  %273 = icmp eq i8 %272, 0
  br i1 %16, label %274, label %293

274:                                              ; preds = %268
  br i1 %273, label %287, label %275

275:                                              ; preds = %274
  %276 = getelementptr inbounds %struct.ToolSettings, ptr %269, i64 0, i32 8
  %277 = load i16, ptr %276, align 2, !tbaa !112
  %278 = and i16 %277, 4
  %279 = icmp eq i16 %278, 0
  %280 = load ptr, ptr %28, align 8, !tbaa !83
  br i1 %279, label %284, label %281

281:                                              ; preds = %275
  %282 = getelementptr inbounds %struct.BMLoop, ptr %219, i64 0, i32 3
  %283 = load ptr, ptr %282, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %280, ptr noundef %283, i8 noundef zeroext 1) #9
  br label %312

284:                                              ; preds = %275
  %285 = getelementptr inbounds %struct.BMLoop, ptr %219, i64 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !115
  call void @BM_vert_select_set(ptr noundef %280, ptr noundef %286, i8 noundef zeroext 1) #9
  br label %312

287:                                              ; preds = %274
  %288 = load ptr, ptr %219, align 8, !tbaa !101
  %289 = getelementptr inbounds i8, ptr %288, i64 %166
  %290 = getelementptr inbounds %struct.MLoopUV, ptr %289, i64 0, i32 1
  %291 = load i32, ptr %290, align 4, !tbaa !103
  %292 = or i32 %291, 2
  store i32 %292, ptr %290, align 4, !tbaa !103
  br label %312

293:                                              ; preds = %268
  br i1 %273, label %306, label %294

294:                                              ; preds = %293
  %295 = getelementptr inbounds %struct.ToolSettings, ptr %269, i64 0, i32 8
  %296 = load i16, ptr %295, align 2, !tbaa !112
  %297 = and i16 %296, 4
  %298 = icmp eq i16 %297, 0
  %299 = load ptr, ptr %28, align 8, !tbaa !83
  br i1 %298, label %303, label %300

300:                                              ; preds = %294
  %301 = getelementptr inbounds %struct.BMLoop, ptr %219, i64 0, i32 3
  %302 = load ptr, ptr %301, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %299, ptr noundef %302, i8 noundef zeroext 0) #9
  br label %312

303:                                              ; preds = %294
  %304 = getelementptr inbounds %struct.BMLoop, ptr %219, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !115
  call void @BM_vert_select_set(ptr noundef %299, ptr noundef %305, i8 noundef zeroext 0) #9
  br label %312

306:                                              ; preds = %293
  %307 = load ptr, ptr %219, align 8, !tbaa !101
  %308 = getelementptr inbounds i8, ptr %307, i64 %166
  %309 = getelementptr inbounds %struct.MLoopUV, ptr %308, i64 0, i32 1
  %310 = load i32, ptr %309, align 4, !tbaa !103
  %311 = and i32 %310, -3
  store i32 %311, ptr %309, align 4, !tbaa !103
  br label %312

312:                                              ; preds = %306, %303, %300, %287, %284, %281, %263, %260, %252, %247
  %313 = phi i8 [ %218, %247 ], [ %218, %263 ], [ %218, %260 ], [ %218, %252 ], [ 1, %281 ], [ 1, %284 ], [ 1, %287 ], [ 1, %300 ], [ 1, %303 ], [ 1, %306 ]
  %314 = load ptr, ptr %164, align 8, !tbaa !92
  %315 = call ptr %314(ptr noundef nonnull %6) #9
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %217, !llvm.loop !239

317:                                              ; preds = %312, %213, %210
  %318 = phi i8 [ %171, %210 ], [ %171, %213 ], [ %313, %312 ]
  %319 = load ptr, ptr %59, align 8, !tbaa !92
  %320 = call ptr %319(ptr noundef nonnull %5) #9
  %321 = icmp eq ptr %320, null
  br i1 %321, label %322, label %169, !llvm.loop !240

322:                                              ; preds = %317
  %323 = icmp eq i8 %318, 0
  br i1 %323, label %347, label %324

324:                                              ; preds = %158, %322
  %325 = load ptr, ptr %26, align 8, !tbaa !56
  %326 = getelementptr inbounds %struct.ToolSettings, ptr %325, i64 0, i32 11
  %327 = load i8, ptr %326, align 2, !tbaa !74
  %328 = and i8 %327, 1
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %340, label %330

330:                                              ; preds = %324
  %331 = getelementptr inbounds %struct.ToolSettings, ptr %325, i64 0, i32 8
  %332 = load i16, ptr %331, align 2, !tbaa !112
  %333 = icmp eq i16 %332, 4
  br i1 %333, label %337, label %334

334:                                              ; preds = %330
  br i1 %16, label %336, label %335

335:                                              ; preds = %334
  call void @EDBM_deselect_flush(ptr noundef nonnull %28) #9
  br label %337

336:                                              ; preds = %334
  call void @EDBM_select_flush(ptr noundef nonnull %28) #9
  br label %337

337:                                              ; preds = %336, %335, %330
  br i1 %16, label %340, label %338

338:                                              ; preds = %337
  %339 = load ptr, ptr %28, align 8, !tbaa !83
  call void @BM_select_history_validate(ptr noundef %339) #9
  br label %340

340:                                              ; preds = %324, %337, %338
  %341 = load i8, ptr %29, align 2, !tbaa !74
  %342 = and i8 %341, 1
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %347, label %344

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 19
  %346 = load ptr, ptr %345, align 8, !tbaa !88
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %346) #9
  br label %347

347:                                              ; preds = %156, %159, %65, %322, %340, %344
  %348 = phi i32 [ 2, %322 ], [ 4, %340 ], [ 4, %344 ], [ 2, %65 ], [ 2, %159 ], [ 2, %156 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  %349 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %349(ptr noundef nonnull %10) #9
  br label %350

350:                                              ; preds = %2, %347
  %351 = phi i32 [ %348, %347 ], [ 8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  ret i32 %351
}

declare void @WM_gesture_lasso_cancel(ptr noundef, ptr noundef) #2

declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_gesture_lasso_path_to_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_lasso_boundbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_lasso_is_point_inside(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @WM_gesture_circle_invoke(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @WM_gesture_circle_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_circle_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca [2 x float], align 4
  %12 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #9
  %13 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %14 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %17 = tail call ptr @BKE_editmesh_from_object(ptr noundef %16) #9
  %18 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !164
  %21 = tail call i32 @RNA_int_get(ptr noundef %20, ptr noundef nonnull @.str.63) #9
  %22 = icmp eq i32 %21, 3
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.ToolSettings, ptr %15, i64 0, i32 11
  %25 = load i8, ptr %24, align 2, !tbaa !74
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.ToolSettings, ptr %15, i64 0, i32 8
  %30 = load i16, ptr %29, align 2, !tbaa !112
  %31 = icmp eq i16 %30, 4
  br label %36

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.ToolSettings, ptr %15, i64 0, i32 12
  %34 = load i8, ptr %33, align 1, !tbaa !173
  %35 = icmp eq i8 %34, 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i1 [ %31, %28 ], [ %35, %32 ]
  %38 = load ptr, ptr %17, align 8, !tbaa !83
  %39 = getelementptr inbounds %struct.BMesh, ptr %38, i64 0, i32 26
  %40 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %39, i32 noundef 16) #9
  %41 = load ptr, ptr %19, align 8, !tbaa !164
  %42 = tail call i32 @RNA_int_get(ptr noundef %41, ptr noundef nonnull @.str.74) #9
  %43 = load ptr, ptr %19, align 8, !tbaa !164
  %44 = tail call i32 @RNA_int_get(ptr noundef %43, ptr noundef nonnull @.str.76) #9
  %45 = load ptr, ptr %19, align 8, !tbaa !164
  %46 = tail call i32 @RNA_int_get(ptr noundef %45, ptr noundef nonnull @.str.78) #9
  call void @ED_space_image_get_size(ptr noundef %12, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  call void @ED_space_image_get_zoom(ptr noundef %12, ptr noundef %18, ptr noundef nonnull %9, ptr noundef nonnull %10) #9
  %47 = load i32, ptr %7, align 4, !tbaa !171
  %48 = sitofp i32 %47 to float
  %49 = load float, ptr %9, align 4, !tbaa !127
  %50 = fmul float %49, %48
  %51 = sitofp i32 %46 to float
  %52 = fdiv float %50, %51
  %53 = load i32, ptr %8, align 4, !tbaa !171
  %54 = sitofp i32 %53 to float
  %55 = load float, ptr %10, align 4, !tbaa !127
  %56 = fmul float %55, %54
  %57 = fdiv float %56, %51
  %58 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 2
  %59 = sitofp i32 %42 to float
  %60 = sitofp i32 %44 to float
  %61 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %58, float noundef %59, float noundef %60, ptr noundef nonnull %11, ptr noundef nonnull %61) #9
  %62 = load ptr, ptr %17, align 8, !tbaa !83
  %63 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %63, align 4, !tbaa !89
  %64 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %64, align 8, !tbaa !91
  %65 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %65, align 8, !tbaa !92
  %66 = getelementptr inbounds %struct.BMesh, ptr %62, i64 0, i32 12
  %67 = load ptr, ptr %66, align 8, !tbaa !93
  store ptr %67, ptr %5, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #9
  %68 = load ptr, ptr %65, align 8, !tbaa !92
  %69 = call ptr %68(ptr noundef nonnull %5) #9
  %70 = icmp eq ptr %69, null
  br i1 %37, label %71, label %162

71:                                               ; preds = %36
  br i1 %70, label %261, label %72

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %74 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %75 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %76 = sext i32 %40 to i64
  %77 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %78 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %79 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %80 = sext i32 %40 to i64
  br label %81

81:                                               ; preds = %72, %154
  %82 = phi ptr [ %69, %72 ], [ %157, %154 ]
  %83 = phi i8 [ 0, %72 ], [ %155, %154 ]
  %84 = getelementptr inbounds %struct.BMHeader, ptr %82, i64 0, i32 3
  %85 = load i8, ptr %84, align 1, !tbaa !100
  %86 = and i8 %85, -17
  store i8 %86, ptr %84, align 1, !tbaa !100
  %87 = load ptr, ptr %14, align 8, !tbaa !56
  %88 = getelementptr inbounds %struct.ToolSettings, ptr %87, i64 0, i32 11
  %89 = load i8, ptr %88, align 2, !tbaa !74
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %81
  %93 = and i8 %85, 1
  br label %112

94:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  store i8 11, ptr %73, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %74, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %75, align 8, !tbaa !92
  store ptr %82, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %95 = load ptr, ptr %75, align 8, !tbaa !92
  %96 = call ptr %95(ptr noundef nonnull %4) #9
  %97 = icmp eq ptr %96, null
  br i1 %97, label %110, label %98

98:                                               ; preds = %94, %106
  %99 = phi ptr [ %108, %106 ], [ %96, %94 ]
  %100 = load ptr, ptr %99, align 8, !tbaa !101
  %101 = getelementptr inbounds i8, ptr %100, i64 %76
  %102 = getelementptr inbounds %struct.MLoopUV, ptr %101, i64 0, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !103
  %104 = and i32 %103, 2
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %98
  %107 = load ptr, ptr %75, align 8, !tbaa !92
  %108 = call ptr %107(ptr noundef nonnull %4) #9
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %98, !llvm.loop !105

110:                                              ; preds = %106, %98, %94
  %111 = phi i8 [ 1, %94 ], [ 0, %98 ], [ 1, %106 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  br label %112

112:                                              ; preds = %92, %110
  %113 = phi i8 [ %93, %92 ], [ %111, %110 ]
  %114 = icmp eq i8 %113, %23
  br i1 %114, label %154, label %115

115:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  store i8 11, ptr %77, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %78, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %79, align 8, !tbaa !92
  store ptr %82, ptr %3, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %3) #9
  %116 = load ptr, ptr %79, align 8, !tbaa !92
  %117 = call ptr %116(ptr noundef nonnull %3) #9
  %118 = icmp eq ptr %117, null
  br i1 %118, label %133, label %119

119:                                              ; preds = %115, %119
  %120 = phi float [ %129, %119 ], [ 0.000000e+00, %115 ]
  %121 = phi float [ %126, %119 ], [ 0.000000e+00, %115 ]
  %122 = phi ptr [ %131, %119 ], [ %117, %115 ]
  %123 = load ptr, ptr %122, align 8, !tbaa !101
  %124 = getelementptr inbounds i8, ptr %123, i64 %80
  %125 = load float, ptr %124, align 4, !tbaa !127
  %126 = fadd float %121, %125
  %127 = getelementptr inbounds float, ptr %124, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !127
  %129 = fadd float %120, %128
  %130 = load ptr, ptr %79, align 8, !tbaa !92
  %131 = call ptr %130(ptr noundef nonnull %3) #9
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %119, !llvm.loop !128

133:                                              ; preds = %119, %115
  %134 = phi float [ 0.000000e+00, %115 ], [ %129, %119 ]
  %135 = phi float [ 0.000000e+00, %115 ], [ %126, %119 ]
  %136 = getelementptr inbounds %struct.BMFace, ptr %82, i64 0, i32 3
  %137 = load i32, ptr %136, align 8, !tbaa !129
  %138 = sitofp i32 %137 to float
  %139 = fdiv float 1.000000e+00, %138
  %140 = fmul float %135, %139
  %141 = fmul float %134, %139
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  %142 = load float, ptr %11, align 4, !tbaa !127
  %143 = fsub float %140, %142
  %144 = fmul float %52, %143
  %145 = load float, ptr %61, align 4, !tbaa !127
  %146 = fsub float %141, %145
  %147 = fmul float %57, %146
  %148 = fmul float %147, %147
  %149 = call float @llvm.fmuladd.f32(float %144, float %144, float %148)
  %150 = fcmp uge float %149, 1.000000e+00
  br i1 %150, label %154, label %151

151:                                              ; preds = %133
  %152 = load i8, ptr %84, align 1, !tbaa !100
  %153 = or i8 %152, 16
  store i8 %153, ptr %84, align 1, !tbaa !100
  br label %154

154:                                              ; preds = %133, %151, %112
  %155 = phi i8 [ %83, %112 ], [ 1, %151 ], [ %83, %133 ]
  %156 = load ptr, ptr %65, align 8, !tbaa !92
  %157 = call ptr %156(ptr noundef nonnull %5) #9
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %81, !llvm.loop !241

159:                                              ; preds = %154
  %160 = icmp eq i8 %155, 0
  br i1 %160, label %261, label %161

161:                                              ; preds = %159
  call fastcc void @uv_select_flush_from_tag_face(ptr noundef %12, ptr noundef %13, ptr noundef %16, i8 noundef zeroext %23)
  br label %244

162:                                              ; preds = %36
  br i1 %70, label %261, label %163

163:                                              ; preds = %162
  %164 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %165 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %166 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %167 = sext i32 %40 to i64
  br label %168

168:                                              ; preds = %163, %237
  %169 = phi ptr [ %69, %163 ], [ %240, %237 ]
  %170 = phi i8 [ 0, %163 ], [ %238, %237 ]
  store i8 11, ptr %164, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %165, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %166, align 8, !tbaa !92
  store ptr %169, ptr %6, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #9
  %171 = load ptr, ptr %166, align 8, !tbaa !92
  %172 = call ptr %171(ptr noundef nonnull %6) #9
  %173 = icmp eq ptr %172, null
  br i1 %173, label %237, label %174

174:                                              ; preds = %168, %231
  %175 = phi ptr [ %235, %231 ], [ %172, %168 ]
  %176 = phi i8 [ %233, %231 ], [ %170, %168 ]
  %177 = load ptr, ptr %175, align 8, !tbaa !101
  %178 = getelementptr inbounds i8, ptr %177, i64 %167
  %179 = load float, ptr %178, align 4, !tbaa !127
  %180 = load float, ptr %11, align 4, !tbaa !127
  %181 = fsub float %179, %180
  %182 = fmul float %52, %181
  %183 = getelementptr inbounds float, ptr %178, i64 1
  %184 = load float, ptr %183, align 4, !tbaa !127
  %185 = load float, ptr %61, align 4, !tbaa !127
  %186 = fsub float %184, %185
  %187 = fmul float %57, %186
  %188 = fmul float %187, %187
  %189 = call float @llvm.fmuladd.f32(float %182, float %182, float %188)
  %190 = fcmp uge float %189, 1.000000e+00
  br i1 %190, label %231, label %191

191:                                              ; preds = %174
  %192 = load ptr, ptr %14, align 8, !tbaa !56
  %193 = getelementptr inbounds %struct.ToolSettings, ptr %192, i64 0, i32 11
  %194 = load i8, ptr %193, align 2, !tbaa !74
  %195 = and i8 %194, 1
  %196 = icmp eq i8 %195, 0
  br i1 %22, label %197, label %214

197:                                              ; preds = %191
  br i1 %196, label %210, label %198

198:                                              ; preds = %197
  %199 = getelementptr inbounds %struct.ToolSettings, ptr %192, i64 0, i32 8
  %200 = load i16, ptr %199, align 2, !tbaa !112
  %201 = and i16 %200, 4
  %202 = icmp eq i16 %201, 0
  %203 = load ptr, ptr %17, align 8, !tbaa !83
  br i1 %202, label %207, label %204

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.BMLoop, ptr %175, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %203, ptr noundef %206, i8 noundef zeroext 1) #9
  br label %231

207:                                              ; preds = %198
  %208 = getelementptr inbounds %struct.BMLoop, ptr %175, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !115
  call void @BM_vert_select_set(ptr noundef %203, ptr noundef %209, i8 noundef zeroext 1) #9
  br label %231

210:                                              ; preds = %197
  %211 = getelementptr inbounds %struct.MLoopUV, ptr %178, i64 0, i32 1
  %212 = load i32, ptr %211, align 4, !tbaa !103
  %213 = or i32 %212, 2
  store i32 %213, ptr %211, align 4, !tbaa !103
  br label %231

214:                                              ; preds = %191
  br i1 %196, label %227, label %215

215:                                              ; preds = %214
  %216 = getelementptr inbounds %struct.ToolSettings, ptr %192, i64 0, i32 8
  %217 = load i16, ptr %216, align 2, !tbaa !112
  %218 = and i16 %217, 4
  %219 = icmp eq i16 %218, 0
  %220 = load ptr, ptr %17, align 8, !tbaa !83
  br i1 %219, label %224, label %221

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.BMLoop, ptr %175, i64 0, i32 3
  %223 = load ptr, ptr %222, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %220, ptr noundef %223, i8 noundef zeroext 0) #9
  br label %231

224:                                              ; preds = %215
  %225 = getelementptr inbounds %struct.BMLoop, ptr %175, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !115
  call void @BM_vert_select_set(ptr noundef %220, ptr noundef %226, i8 noundef zeroext 0) #9
  br label %231

227:                                              ; preds = %214
  %228 = getelementptr inbounds %struct.MLoopUV, ptr %178, i64 0, i32 1
  %229 = load i32, ptr %228, align 4, !tbaa !103
  %230 = and i32 %229, -3
  store i32 %230, ptr %228, align 4, !tbaa !103
  br label %231

231:                                              ; preds = %227, %224, %221, %210, %207, %204, %174
  %232 = phi i8 [ 0, %174 ], [ 1, %204 ], [ 1, %207 ], [ 1, %210 ], [ 1, %221 ], [ 1, %224 ], [ 1, %227 ]
  %233 = or i8 %232, %176
  %234 = load ptr, ptr %166, align 8, !tbaa !92
  %235 = call ptr %234(ptr noundef nonnull %6) #9
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %174, !llvm.loop !242

237:                                              ; preds = %231, %168
  %238 = phi i8 [ %170, %168 ], [ %233, %231 ]
  %239 = load ptr, ptr %65, align 8, !tbaa !92
  %240 = call ptr %239(ptr noundef nonnull %5) #9
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %168, !llvm.loop !243

242:                                              ; preds = %237
  %243 = icmp eq i8 %238, 0
  br i1 %243, label %261, label %244

244:                                              ; preds = %161, %242
  %245 = load i8, ptr %24, align 2, !tbaa !74
  %246 = and i8 %245, 1
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %258, label %248

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.ToolSettings, ptr %15, i64 0, i32 8
  %250 = load i16, ptr %249, align 2, !tbaa !112
  %251 = icmp eq i16 %250, 4
  br i1 %251, label %255, label %252

252:                                              ; preds = %248
  br i1 %22, label %254, label %253

253:                                              ; preds = %252
  call void @EDBM_deselect_flush(ptr noundef nonnull %17) #9
  br label %255

254:                                              ; preds = %252
  call void @EDBM_select_flush(ptr noundef nonnull %17) #9
  br label %255

255:                                              ; preds = %254, %253, %248
  br i1 %22, label %258, label %256

256:                                              ; preds = %255
  %257 = load ptr, ptr %17, align 8, !tbaa !83
  call void @BM_select_history_validate(ptr noundef %257) #9
  br label %258

258:                                              ; preds = %244, %255, %256
  %259 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %260 = load ptr, ptr %259, align 8, !tbaa !88
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %260) #9
  br label %261

261:                                              ; preds = %159, %162, %71, %258, %242
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  ret i32 4
}

declare void @WM_gesture_circle_cancel(ptr noundef, ptr noundef) #2

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_space_image_get_zoom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  tail call fastcc void @uv_select_more_less(ptr noundef %0, i8 noundef zeroext 1)
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @uv_select_more_less(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca [2 x float], align 4
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %11 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %12 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #9
  %13 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #9
  %14 = tail call ptr @BKE_editmesh_from_object(ptr noundef %11) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #9
  %15 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = load ptr, ptr %14, align 8, !tbaa !83
  %18 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 26
  %19 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %18, i32 noundef 16) #9
  %20 = load ptr, ptr %14, align 8, !tbaa !83
  %21 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 27
  %22 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %21, i32 noundef 15) #9
  %23 = getelementptr inbounds %struct.ToolSettings, ptr %16, i64 0, i32 11
  %24 = load i8, ptr %23, align 2, !tbaa !74
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = icmp eq i8 %1, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %27
  tail call void @EDBM_select_more(ptr noundef nonnull %14) #9
  br label %532

30:                                               ; preds = %27
  tail call void @EDBM_select_less(ptr noundef nonnull %14) #9
  br label %532

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.ToolSettings, ptr %16, i64 0, i32 12
  %33 = load i8, ptr %32, align 1, !tbaa !173
  %34 = icmp eq i8 %33, 4
  %35 = load ptr, ptr %14, align 8, !tbaa !83
  %36 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 3, ptr %36, align 4, !tbaa !89
  %37 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %37, align 8, !tbaa !91
  %38 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %38, align 8, !tbaa !92
  %39 = getelementptr inbounds %struct.BMesh, ptr %35, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !93
  store ptr %40, ptr %8, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #9
  %41 = load ptr, ptr %38, align 8, !tbaa !92
  %42 = call ptr %41(ptr noundef nonnull %8) #9
  %43 = icmp eq ptr %42, null
  br i1 %34, label %44, label %138

44:                                               ; preds = %31
  br i1 %43, label %53, label %45

45:                                               ; preds = %44, %45
  %46 = phi ptr [ %51, %45 ], [ %42, %44 ]
  %47 = getelementptr inbounds %struct.BMHeader, ptr %46, i64 0, i32 3
  %48 = load i8, ptr %47, align 1, !tbaa !100
  %49 = and i8 %48, -17
  store i8 %49, ptr %47, align 1, !tbaa !100
  %50 = load ptr, ptr %38, align 8, !tbaa !92
  %51 = call ptr %50(ptr noundef nonnull %8) #9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %45, !llvm.loop !244

53:                                               ; preds = %45, %44
  %54 = load ptr, ptr %14, align 8, !tbaa !83
  store i8 3, ptr %36, align 4, !tbaa !89
  store ptr @bmiter__elem_of_mesh_begin, ptr %37, align 8, !tbaa !91
  store ptr @bmiter__elem_of_mesh_step, ptr %38, align 8, !tbaa !92
  %55 = getelementptr inbounds %struct.BMesh, ptr %54, i64 0, i32 12
  %56 = load ptr, ptr %55, align 8, !tbaa !93
  store ptr %56, ptr %8, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #9
  %57 = load ptr, ptr %38, align 8, !tbaa !92
  %58 = call ptr %57(ptr noundef nonnull %8) #9
  %59 = icmp eq ptr %58, null
  br i1 %59, label %137, label %60

60:                                               ; preds = %53
  %61 = sext i32 %22 to i64
  %62 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  %63 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  %64 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  %65 = sext i32 %19 to i64
  br label %66

66:                                               ; preds = %60, %133
  %67 = phi ptr [ %58, %60 ], [ %135, %133 ]
  %68 = load ptr, ptr %15, align 8, !tbaa !56
  %69 = getelementptr inbounds %struct.ToolSettings, ptr %68, i64 0, i32 11
  %70 = load i8, ptr %69, align 2, !tbaa !74
  %71 = and i8 %70, 2
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %66
  %74 = load ptr, ptr %67, align 8, !tbaa !95
  %75 = getelementptr inbounds i8, ptr %74, i64 %61
  %76 = load ptr, ptr %75, align 8, !tbaa !98
  %77 = icmp eq ptr %76, %12
  br i1 %77, label %78, label %106

78:                                               ; preds = %73
  %79 = and i8 %70, 1
  %80 = icmp eq i8 %79, 0
  %81 = getelementptr inbounds %struct.BMHeader, ptr %67, i64 0, i32 3
  %82 = load i8, ptr %81, align 1, !tbaa !100
  br i1 %80, label %87, label %83

83:                                               ; preds = %78
  %84 = lshr i8 %82, 1
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  br label %106

87:                                               ; preds = %78
  %88 = and i8 %82, 2
  %89 = icmp eq i8 %88, 0
  %90 = and i8 %82, 1
  %91 = select i1 %89, i8 %90, i8 0
  br label %106

92:                                               ; preds = %66
  %93 = and i8 %70, 1
  %94 = icmp eq i8 %93, 0
  %95 = getelementptr inbounds %struct.BMHeader, ptr %67, i64 0, i32 3
  %96 = load i8, ptr %95, align 1, !tbaa !100
  br i1 %94, label %101, label %97

97:                                               ; preds = %92
  %98 = lshr i8 %96, 1
  %99 = and i8 %98, 1
  %100 = xor i8 %99, 1
  br label %106

101:                                              ; preds = %92
  %102 = and i8 %96, 2
  %103 = icmp eq i8 %102, 0
  %104 = and i8 %96, 1
  %105 = select i1 %103, i8 %104, i8 0
  br label %106

106:                                              ; preds = %73, %83, %87, %97, %101
  %107 = phi i8 [ 0, %73 ], [ %86, %83 ], [ %91, %87 ], [ %100, %97 ], [ %105, %101 ]
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %133, label %109

109:                                              ; preds = %106
  store i8 11, ptr %62, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %63, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %64, align 8, !tbaa !92
  store ptr %67, ptr %9, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %9) #9
  %110 = load ptr, ptr %64, align 8, !tbaa !92
  %111 = call ptr %110(ptr noundef nonnull %9) #9
  %112 = icmp eq ptr %111, null
  br i1 %112, label %133, label %113

113:                                              ; preds = %109, %129
  %114 = phi ptr [ %131, %129 ], [ %111, %109 ]
  %115 = phi i32 [ %123, %129 ], [ 0, %109 ]
  %116 = load ptr, ptr %114, align 8, !tbaa !101
  %117 = getelementptr inbounds i8, ptr %116, i64 %65
  %118 = getelementptr inbounds %struct.MLoopUV, ptr %117, i64 0, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !103
  %120 = and i32 %119, 2
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %121, i32 2, i32 1
  %123 = or i32 %122, %115
  %124 = icmp eq i32 %123, 3
  br i1 %124, label %125, label %129

125:                                              ; preds = %113
  %126 = getelementptr inbounds %struct.BMHeader, ptr %67, i64 0, i32 3
  %127 = load i8, ptr %126, align 1, !tbaa !100
  %128 = or i8 %127, 16
  store i8 %128, ptr %126, align 1, !tbaa !100
  br label %133

129:                                              ; preds = %113
  %130 = load ptr, ptr %64, align 8, !tbaa !92
  %131 = call ptr %130(ptr noundef nonnull %9) #9
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %113, !llvm.loop !245

133:                                              ; preds = %129, %109, %125, %106
  %134 = load ptr, ptr %38, align 8, !tbaa !92
  %135 = call ptr %134(ptr noundef nonnull %8) #9
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %66, !llvm.loop !246

137:                                              ; preds = %133, %53
  call fastcc void @uv_select_flush_from_tag_face(ptr noundef %13, ptr noundef %10, ptr noundef %11, i8 noundef zeroext %1)
  br label %532

138:                                              ; preds = %31
  br i1 %43, label %160, label %139

139:                                              ; preds = %138
  %140 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  %141 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  %142 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  br label %143

143:                                              ; preds = %139, %156
  %144 = phi ptr [ %42, %139 ], [ %158, %156 ]
  store i8 11, ptr %140, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %141, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %142, align 8, !tbaa !92
  store ptr %144, ptr %9, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %9) #9
  %145 = load ptr, ptr %142, align 8, !tbaa !92
  %146 = call ptr %145(ptr noundef nonnull %9) #9
  %147 = icmp eq ptr %146, null
  br i1 %147, label %156, label %148

148:                                              ; preds = %143, %148
  %149 = phi ptr [ %154, %148 ], [ %146, %143 ]
  %150 = getelementptr inbounds %struct.BMHeader, ptr %149, i64 0, i32 3
  %151 = load i8, ptr %150, align 1, !tbaa !100
  %152 = and i8 %151, -17
  store i8 %152, ptr %150, align 1, !tbaa !100
  %153 = load ptr, ptr %142, align 8, !tbaa !92
  %154 = call ptr %153(ptr noundef nonnull %9) #9
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %148, !llvm.loop !247

156:                                              ; preds = %148, %143
  %157 = load ptr, ptr %38, align 8, !tbaa !92
  %158 = call ptr %157(ptr noundef nonnull %8) #9
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %143, !llvm.loop !248

160:                                              ; preds = %156, %138
  %161 = load ptr, ptr %14, align 8, !tbaa !83
  store i8 3, ptr %36, align 4, !tbaa !89
  store ptr @bmiter__elem_of_mesh_begin, ptr %37, align 8, !tbaa !91
  store ptr @bmiter__elem_of_mesh_step, ptr %38, align 8, !tbaa !92
  %162 = getelementptr inbounds %struct.BMesh, ptr %161, i64 0, i32 12
  %163 = load ptr, ptr %162, align 8, !tbaa !93
  store ptr %163, ptr %8, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #9
  %164 = load ptr, ptr %38, align 8, !tbaa !92
  %165 = call ptr %164(ptr noundef nonnull %8) #9
  %166 = icmp eq ptr %165, null
  br i1 %166, label %249, label %167

167:                                              ; preds = %160
  %168 = sext i32 %22 to i64
  %169 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  %170 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  %171 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  %172 = sext i32 %19 to i64
  %173 = zext nneg i8 %1 to i32
  br label %174

174:                                              ; preds = %167, %245
  %175 = phi ptr [ %165, %167 ], [ %247, %245 ]
  %176 = load ptr, ptr %15, align 8, !tbaa !56
  %177 = getelementptr inbounds %struct.ToolSettings, ptr %176, i64 0, i32 11
  %178 = load i8, ptr %177, align 2, !tbaa !74
  %179 = and i8 %178, 2
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %200, label %181

181:                                              ; preds = %174
  %182 = load ptr, ptr %175, align 8, !tbaa !95
  %183 = getelementptr inbounds i8, ptr %182, i64 %168
  %184 = load ptr, ptr %183, align 8, !tbaa !98
  %185 = icmp eq ptr %184, %12
  br i1 %185, label %186, label %214

186:                                              ; preds = %181
  %187 = and i8 %178, 1
  %188 = icmp eq i8 %187, 0
  %189 = getelementptr inbounds %struct.BMHeader, ptr %175, i64 0, i32 3
  %190 = load i8, ptr %189, align 1, !tbaa !100
  br i1 %188, label %195, label %191

191:                                              ; preds = %186
  %192 = lshr i8 %190, 1
  %193 = and i8 %192, 1
  %194 = xor i8 %193, 1
  br label %214

195:                                              ; preds = %186
  %196 = and i8 %190, 2
  %197 = icmp eq i8 %196, 0
  %198 = and i8 %190, 1
  %199 = select i1 %197, i8 %198, i8 0
  br label %214

200:                                              ; preds = %174
  %201 = and i8 %178, 1
  %202 = icmp eq i8 %201, 0
  %203 = getelementptr inbounds %struct.BMHeader, ptr %175, i64 0, i32 3
  %204 = load i8, ptr %203, align 1, !tbaa !100
  br i1 %202, label %209, label %205

205:                                              ; preds = %200
  %206 = lshr i8 %204, 1
  %207 = and i8 %206, 1
  %208 = xor i8 %207, 1
  br label %214

209:                                              ; preds = %200
  %210 = and i8 %204, 2
  %211 = icmp eq i8 %210, 0
  %212 = and i8 %204, 1
  %213 = select i1 %211, i8 %212, i8 0
  br label %214

214:                                              ; preds = %181, %191, %195, %205, %209
  %215 = phi i8 [ 0, %181 ], [ %194, %191 ], [ %199, %195 ], [ %208, %205 ], [ %213, %209 ]
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %245, label %217

217:                                              ; preds = %214
  store i8 11, ptr %169, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %170, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %171, align 8, !tbaa !92
  store ptr %175, ptr %9, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %9) #9
  %218 = load ptr, ptr %171, align 8, !tbaa !92
  %219 = call ptr %218(ptr noundef nonnull %9) #9
  %220 = icmp eq ptr %219, null
  br i1 %220, label %245, label %221

221:                                              ; preds = %217, %241
  %222 = phi ptr [ %243, %241 ], [ %219, %217 ]
  %223 = load ptr, ptr %222, align 8, !tbaa !101
  %224 = getelementptr inbounds i8, ptr %223, i64 %172
  %225 = getelementptr inbounds %struct.MLoopUV, ptr %224, i64 0, i32 1
  %226 = load i32, ptr %225, align 4, !tbaa !103
  %227 = lshr i32 %226, 1
  %228 = and i32 %227, 1
  %229 = icmp eq i32 %228, %173
  br i1 %229, label %230, label %241

230:                                              ; preds = %221
  %231 = getelementptr inbounds %struct.BMLoop, ptr %222, i64 0, i32 6
  %232 = load ptr, ptr %231, align 8, !tbaa !116
  %233 = getelementptr inbounds %struct.BMHeader, ptr %232, i64 0, i32 3
  %234 = load i8, ptr %233, align 1, !tbaa !100
  %235 = or i8 %234, 16
  store i8 %235, ptr %233, align 1, !tbaa !100
  %236 = getelementptr inbounds %struct.BMLoop, ptr %222, i64 0, i32 7
  %237 = load ptr, ptr %236, align 8, !tbaa !142
  %238 = getelementptr inbounds %struct.BMHeader, ptr %237, i64 0, i32 3
  %239 = load i8, ptr %238, align 1, !tbaa !100
  %240 = or i8 %239, 16
  store i8 %240, ptr %238, align 1, !tbaa !100
  br label %241

241:                                              ; preds = %230, %221
  %242 = load ptr, ptr %171, align 8, !tbaa !92
  %243 = call ptr %242(ptr noundef nonnull %9) #9
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %221, !llvm.loop !249

245:                                              ; preds = %241, %217, %214
  %246 = load ptr, ptr %38, align 8, !tbaa !92
  %247 = call ptr %246(ptr noundef nonnull %8) #9
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %174, !llvm.loop !250

249:                                              ; preds = %245, %160
  %250 = load ptr, ptr %15, align 8, !tbaa !56
  %251 = call ptr @BKE_editmesh_from_object(ptr noundef %11) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  %252 = load ptr, ptr %251, align 8, !tbaa !83
  %253 = getelementptr inbounds %struct.BMesh, ptr %252, i64 0, i32 26
  %254 = call i32 @CustomData_get_offset(ptr noundef nonnull %253, i32 noundef 16) #9
  %255 = getelementptr inbounds %struct.ToolSettings, ptr %250, i64 0, i32 11
  %256 = load i8, ptr %255, align 2, !tbaa !74
  %257 = and i8 %256, 1
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %259, label %450

259:                                              ; preds = %249
  %260 = getelementptr inbounds %struct.SpaceImage, ptr %13, i64 0, i32 23
  %261 = load i8, ptr %260, align 1, !tbaa !174
  %262 = icmp eq i8 %261, 2
  br i1 %262, label %263, label %392

263:                                              ; preds = %259
  %264 = load ptr, ptr %251, align 8, !tbaa !83
  %265 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 1, ptr %265, align 4, !tbaa !89
  %266 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %266, align 8, !tbaa !91
  %267 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %267, align 8, !tbaa !92
  %268 = getelementptr inbounds %struct.BMesh, ptr %264, i64 0, i32 9
  %269 = load ptr, ptr %268, align 8, !tbaa !226
  store ptr %269, ptr %5, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #9
  %270 = load ptr, ptr %267, align 8, !tbaa !92
  %271 = call ptr %270(ptr noundef nonnull %5) #9
  %272 = icmp eq ptr %271, null
  br i1 %272, label %281, label %273

273:                                              ; preds = %263, %273
  %274 = phi ptr [ %279, %273 ], [ %271, %263 ]
  %275 = getelementptr inbounds %struct.BMHeader, ptr %274, i64 0, i32 3
  %276 = load i8, ptr %275, align 1, !tbaa !100
  %277 = and i8 %276, -17
  store i8 %277, ptr %275, align 1, !tbaa !100
  %278 = load ptr, ptr %267, align 8, !tbaa !92
  %279 = call ptr %278(ptr noundef nonnull %5) #9
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %273, !llvm.loop !251

281:                                              ; preds = %273, %263
  %282 = load ptr, ptr %251, align 8, !tbaa !83
  store i8 3, ptr %265, align 4, !tbaa !89
  store ptr @bmiter__elem_of_mesh_begin, ptr %266, align 8, !tbaa !91
  store ptr @bmiter__elem_of_mesh_step, ptr %267, align 8, !tbaa !92
  %283 = getelementptr inbounds %struct.BMesh, ptr %282, i64 0, i32 12
  %284 = load ptr, ptr %283, align 8, !tbaa !93
  store ptr %284, ptr %5, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #9
  %285 = load ptr, ptr %267, align 8, !tbaa !92
  %286 = call ptr %285(ptr noundef nonnull %5) #9
  %287 = icmp eq ptr %286, null
  br i1 %287, label %317, label %288

288:                                              ; preds = %281
  %289 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %290 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %291 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  br label %292

292:                                              ; preds = %288, %313
  %293 = phi ptr [ %286, %288 ], [ %315, %313 ]
  store i8 11, ptr %289, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %290, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %291, align 8, !tbaa !92
  store ptr %293, ptr %6, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #9
  %294 = load ptr, ptr %291, align 8, !tbaa !92
  %295 = call ptr %294(ptr noundef nonnull %6) #9
  %296 = icmp eq ptr %295, null
  br i1 %296, label %313, label %297

297:                                              ; preds = %292, %309
  %298 = phi ptr [ %311, %309 ], [ %295, %292 ]
  %299 = getelementptr inbounds %struct.BMHeader, ptr %298, i64 0, i32 3
  %300 = load i8, ptr %299, align 1, !tbaa !100
  %301 = and i8 %300, 16
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %309, label %303

303:                                              ; preds = %297
  %304 = getelementptr inbounds %struct.BMLoop, ptr %298, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !115
  %306 = getelementptr inbounds %struct.BMHeader, ptr %305, i64 0, i32 3
  %307 = load i8, ptr %306, align 1, !tbaa !100
  %308 = or i8 %307, 16
  store i8 %308, ptr %306, align 1, !tbaa !100
  br label %309

309:                                              ; preds = %303, %297
  %310 = load ptr, ptr %291, align 8, !tbaa !92
  %311 = call ptr %310(ptr noundef nonnull %6) #9
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %297, !llvm.loop !252

313:                                              ; preds = %309, %292
  %314 = load ptr, ptr %267, align 8, !tbaa !92
  %315 = call ptr %314(ptr noundef nonnull %5) #9
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %292, !llvm.loop !253

317:                                              ; preds = %313, %281
  %318 = load ptr, ptr %251, align 8, !tbaa !83
  store i8 3, ptr %265, align 4, !tbaa !89
  store ptr @bmiter__elem_of_mesh_begin, ptr %266, align 8, !tbaa !91
  store ptr @bmiter__elem_of_mesh_step, ptr %267, align 8, !tbaa !92
  %319 = getelementptr inbounds %struct.BMesh, ptr %318, i64 0, i32 12
  %320 = load ptr, ptr %319, align 8, !tbaa !93
  store ptr %320, ptr %5, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #9
  %321 = load ptr, ptr %267, align 8, !tbaa !92
  %322 = call ptr %321(ptr noundef nonnull %5) #9
  %323 = icmp eq ptr %322, null
  br i1 %323, label %531, label %324

324:                                              ; preds = %317
  %325 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %326 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %327 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %328 = icmp eq i8 %1, 0
  %329 = sext i32 %254 to i64
  %330 = sext i32 %254 to i64
  br label %331

331:                                              ; preds = %324, %388
  %332 = phi ptr [ %322, %324 ], [ %390, %388 ]
  store i8 11, ptr %325, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %326, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %327, align 8, !tbaa !92
  store ptr %332, ptr %6, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #9
  %333 = load ptr, ptr %327, align 8, !tbaa !92
  %334 = call ptr %333(ptr noundef nonnull %6) #9
  %335 = icmp eq ptr %334, null
  br i1 %335, label %388, label %336

336:                                              ; preds = %331, %384
  %337 = phi ptr [ %386, %384 ], [ %334, %331 ]
  %338 = getelementptr inbounds %struct.BMLoop, ptr %337, i64 0, i32 1
  %339 = load ptr, ptr %338, align 8, !tbaa !115
  %340 = getelementptr inbounds %struct.BMHeader, ptr %339, i64 0, i32 3
  %341 = load i8, ptr %340, align 1, !tbaa !100
  %342 = and i8 %341, 16
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %384, label %344

344:                                              ; preds = %336
  %345 = load ptr, ptr %15, align 8, !tbaa !56
  %346 = getelementptr inbounds %struct.ToolSettings, ptr %345, i64 0, i32 11
  %347 = load i8, ptr %346, align 2, !tbaa !74
  %348 = and i8 %347, 1
  %349 = icmp eq i8 %348, 0
  br i1 %328, label %367, label %350

350:                                              ; preds = %344
  br i1 %349, label %361, label %351

351:                                              ; preds = %350
  %352 = getelementptr inbounds %struct.ToolSettings, ptr %345, i64 0, i32 8
  %353 = load i16, ptr %352, align 2, !tbaa !112
  %354 = and i16 %353, 4
  %355 = icmp eq i16 %354, 0
  %356 = load ptr, ptr %251, align 8, !tbaa !83
  br i1 %355, label %360, label %357

357:                                              ; preds = %351
  %358 = getelementptr inbounds %struct.BMLoop, ptr %337, i64 0, i32 3
  %359 = load ptr, ptr %358, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %356, ptr noundef %359, i8 noundef zeroext 1) #9
  br label %384

360:                                              ; preds = %351
  call void @BM_vert_select_set(ptr noundef %356, ptr noundef %339, i8 noundef zeroext 1) #9
  br label %384

361:                                              ; preds = %350
  %362 = load ptr, ptr %337, align 8, !tbaa !101
  %363 = getelementptr inbounds i8, ptr %362, i64 %329
  %364 = getelementptr inbounds %struct.MLoopUV, ptr %363, i64 0, i32 1
  %365 = load i32, ptr %364, align 4, !tbaa !103
  %366 = or i32 %365, 2
  store i32 %366, ptr %364, align 4, !tbaa !103
  br label %384

367:                                              ; preds = %344
  br i1 %349, label %378, label %368

368:                                              ; preds = %367
  %369 = getelementptr inbounds %struct.ToolSettings, ptr %345, i64 0, i32 8
  %370 = load i16, ptr %369, align 2, !tbaa !112
  %371 = and i16 %370, 4
  %372 = icmp eq i16 %371, 0
  %373 = load ptr, ptr %251, align 8, !tbaa !83
  br i1 %372, label %377, label %374

374:                                              ; preds = %368
  %375 = getelementptr inbounds %struct.BMLoop, ptr %337, i64 0, i32 3
  %376 = load ptr, ptr %375, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %373, ptr noundef %376, i8 noundef zeroext 0) #9
  br label %384

377:                                              ; preds = %368
  call void @BM_vert_select_set(ptr noundef %373, ptr noundef %339, i8 noundef zeroext 0) #9
  br label %384

378:                                              ; preds = %367
  %379 = load ptr, ptr %337, align 8, !tbaa !101
  %380 = getelementptr inbounds i8, ptr %379, i64 %330
  %381 = getelementptr inbounds %struct.MLoopUV, ptr %380, i64 0, i32 1
  %382 = load i32, ptr %381, align 4, !tbaa !103
  %383 = and i32 %382, -3
  store i32 %383, ptr %381, align 4, !tbaa !103
  br label %384

384:                                              ; preds = %378, %377, %374, %361, %360, %357, %336
  %385 = load ptr, ptr %327, align 8, !tbaa !92
  %386 = call ptr %385(ptr noundef nonnull %6) #9
  %387 = icmp eq ptr %386, null
  br i1 %387, label %388, label %336, !llvm.loop !254

388:                                              ; preds = %384, %331
  %389 = load ptr, ptr %267, align 8, !tbaa !92
  %390 = call ptr %389(ptr noundef nonnull %5) #9
  %391 = icmp eq ptr %390, null
  br i1 %391, label %531, label %331, !llvm.loop !255

392:                                              ; preds = %259
  br i1 %258, label %393, label %450

393:                                              ; preds = %392
  %394 = getelementptr inbounds %struct.SpaceImage, ptr %13, i64 0, i32 23
  %395 = load i8, ptr %394, align 1, !tbaa !174
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %397, label %450

397:                                              ; preds = %393
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %398 = icmp eq ptr %13, null
  br i1 %398, label %400, label %399

399:                                              ; preds = %397
  call void @ED_space_image_get_size(ptr noundef nonnull %13, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  br label %401

400:                                              ; preds = %397
  store i32 256, ptr %3, align 4, !tbaa !171
  store i32 256, ptr %4, align 4, !tbaa !171
  br label %401

401:                                              ; preds = %400, %399
  %402 = load i32, ptr %3, align 4, !tbaa !171
  %403 = sitofp i32 %402 to float
  %404 = fdiv float 0x3FA99999A0000000, %403
  store float %404, ptr %7, align 4, !tbaa !127
  %405 = load i32, ptr %4, align 4, !tbaa !171
  %406 = sitofp i32 %405 to float
  %407 = fdiv float 0x3FA99999A0000000, %406
  %408 = getelementptr inbounds float, ptr %7, i64 1
  store float %407, ptr %408, align 4, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %409 = load ptr, ptr %251, align 8, !tbaa !83
  call void @BM_mesh_elem_table_ensure(ptr noundef %409, i8 noundef zeroext 8) #9
  %410 = load ptr, ptr %251, align 8, !tbaa !83
  %411 = call ptr @BM_uv_vert_map_create(ptr noundef %410, i8 noundef zeroext 0, ptr noundef nonnull %7) #9
  %412 = icmp eq ptr %411, null
  br i1 %412, label %530, label %413

413:                                              ; preds = %401
  %414 = load ptr, ptr %251, align 8, !tbaa !83
  %415 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %415, align 4, !tbaa !89
  %416 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %416, align 8, !tbaa !91
  %417 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %417, align 8, !tbaa !92
  %418 = getelementptr inbounds %struct.BMesh, ptr %414, i64 0, i32 12
  %419 = load ptr, ptr %418, align 8, !tbaa !93
  store ptr %419, ptr %5, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #9
  %420 = load ptr, ptr %417, align 8, !tbaa !92
  %421 = call ptr %420(ptr noundef nonnull %5) #9
  %422 = icmp eq ptr %421, null
  br i1 %422, label %449, label %423

423:                                              ; preds = %413
  %424 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %425 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %426 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  br label %427

427:                                              ; preds = %423, %444
  %428 = phi i32 [ 0, %423 ], [ %447, %444 ]
  %429 = phi ptr [ %421, %423 ], [ %446, %444 ]
  store i8 11, ptr %424, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %425, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %426, align 8, !tbaa !92
  store ptr %429, ptr %6, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #9
  %430 = load ptr, ptr %426, align 8, !tbaa !92
  %431 = call ptr %430(ptr noundef nonnull %6) #9
  %432 = icmp eq ptr %431, null
  br i1 %432, label %444, label %433

433:                                              ; preds = %427, %440
  %434 = phi ptr [ %442, %440 ], [ %431, %427 ]
  %435 = getelementptr inbounds %struct.BMHeader, ptr %434, i64 0, i32 3
  %436 = load i8, ptr %435, align 1, !tbaa !100
  %437 = and i8 %436, 16
  %438 = icmp eq i8 %437, 0
  br i1 %438, label %440, label %439

439:                                              ; preds = %433
  call fastcc void @uv_select_flush_from_tag_sticky_loc_internal(ptr noundef %10, ptr noundef nonnull %251, ptr noundef nonnull %411, i32 noundef %428, ptr noundef nonnull %434, i8 noundef zeroext %1, i32 noundef %254)
  br label %440

440:                                              ; preds = %439, %433
  %441 = load ptr, ptr %426, align 8, !tbaa !92
  %442 = call ptr %441(ptr noundef nonnull %6) #9
  %443 = icmp eq ptr %442, null
  br i1 %443, label %444, label %433, !llvm.loop !256

444:                                              ; preds = %440, %427
  %445 = load ptr, ptr %417, align 8, !tbaa !92
  %446 = call ptr %445(ptr noundef nonnull %5) #9
  %447 = add i32 %428, 1
  %448 = icmp eq ptr %446, null
  br i1 %448, label %449, label %427, !llvm.loop !257

449:                                              ; preds = %444, %413
  call void @BM_uv_vert_map_free(ptr noundef nonnull %411) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %531

450:                                              ; preds = %249, %393, %392
  %451 = load ptr, ptr %251, align 8, !tbaa !83
  %452 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 3, ptr %452, align 4, !tbaa !89
  %453 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %453, align 8, !tbaa !91
  %454 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %454, align 8, !tbaa !92
  %455 = getelementptr inbounds %struct.BMesh, ptr %451, i64 0, i32 12
  %456 = load ptr, ptr %455, align 8, !tbaa !93
  store ptr %456, ptr %5, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #9
  %457 = load ptr, ptr %454, align 8, !tbaa !92
  %458 = call ptr %457(ptr noundef nonnull %5) #9
  %459 = icmp eq ptr %458, null
  br i1 %459, label %531, label %460

460:                                              ; preds = %450
  %461 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %462 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %463 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %464 = icmp eq i8 %1, 0
  %465 = sext i32 %254 to i64
  %466 = sext i32 %254 to i64
  br label %467

467:                                              ; preds = %460, %526
  %468 = phi ptr [ %458, %460 ], [ %528, %526 ]
  store i8 11, ptr %461, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %462, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %463, align 8, !tbaa !92
  store ptr %468, ptr %6, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %6) #9
  %469 = load ptr, ptr %463, align 8, !tbaa !92
  %470 = call ptr %469(ptr noundef nonnull %6) #9
  %471 = icmp eq ptr %470, null
  br i1 %471, label %526, label %472

472:                                              ; preds = %467, %522
  %473 = phi ptr [ %524, %522 ], [ %470, %467 ]
  %474 = getelementptr inbounds %struct.BMHeader, ptr %473, i64 0, i32 3
  %475 = load i8, ptr %474, align 1, !tbaa !100
  %476 = and i8 %475, 16
  %477 = icmp eq i8 %476, 0
  br i1 %477, label %522, label %478

478:                                              ; preds = %472
  %479 = load ptr, ptr %15, align 8, !tbaa !56
  %480 = getelementptr inbounds %struct.ToolSettings, ptr %479, i64 0, i32 11
  %481 = load i8, ptr %480, align 2, !tbaa !74
  %482 = and i8 %481, 1
  %483 = icmp eq i8 %482, 0
  br i1 %464, label %503, label %484

484:                                              ; preds = %478
  br i1 %483, label %497, label %485

485:                                              ; preds = %484
  %486 = getelementptr inbounds %struct.ToolSettings, ptr %479, i64 0, i32 8
  %487 = load i16, ptr %486, align 2, !tbaa !112
  %488 = and i16 %487, 4
  %489 = icmp eq i16 %488, 0
  %490 = load ptr, ptr %251, align 8, !tbaa !83
  br i1 %489, label %494, label %491

491:                                              ; preds = %485
  %492 = getelementptr inbounds %struct.BMLoop, ptr %473, i64 0, i32 3
  %493 = load ptr, ptr %492, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %490, ptr noundef %493, i8 noundef zeroext 1) #9
  br label %522

494:                                              ; preds = %485
  %495 = getelementptr inbounds %struct.BMLoop, ptr %473, i64 0, i32 1
  %496 = load ptr, ptr %495, align 8, !tbaa !115
  call void @BM_vert_select_set(ptr noundef %490, ptr noundef %496, i8 noundef zeroext 1) #9
  br label %522

497:                                              ; preds = %484
  %498 = load ptr, ptr %473, align 8, !tbaa !101
  %499 = getelementptr inbounds i8, ptr %498, i64 %465
  %500 = getelementptr inbounds %struct.MLoopUV, ptr %499, i64 0, i32 1
  %501 = load i32, ptr %500, align 4, !tbaa !103
  %502 = or i32 %501, 2
  store i32 %502, ptr %500, align 4, !tbaa !103
  br label %522

503:                                              ; preds = %478
  br i1 %483, label %516, label %504

504:                                              ; preds = %503
  %505 = getelementptr inbounds %struct.ToolSettings, ptr %479, i64 0, i32 8
  %506 = load i16, ptr %505, align 2, !tbaa !112
  %507 = and i16 %506, 4
  %508 = icmp eq i16 %507, 0
  %509 = load ptr, ptr %251, align 8, !tbaa !83
  br i1 %508, label %513, label %510

510:                                              ; preds = %504
  %511 = getelementptr inbounds %struct.BMLoop, ptr %473, i64 0, i32 3
  %512 = load ptr, ptr %511, align 8, !tbaa !113
  call void @BM_face_select_set(ptr noundef %509, ptr noundef %512, i8 noundef zeroext 0) #9
  br label %522

513:                                              ; preds = %504
  %514 = getelementptr inbounds %struct.BMLoop, ptr %473, i64 0, i32 1
  %515 = load ptr, ptr %514, align 8, !tbaa !115
  call void @BM_vert_select_set(ptr noundef %509, ptr noundef %515, i8 noundef zeroext 0) #9
  br label %522

516:                                              ; preds = %503
  %517 = load ptr, ptr %473, align 8, !tbaa !101
  %518 = getelementptr inbounds i8, ptr %517, i64 %466
  %519 = getelementptr inbounds %struct.MLoopUV, ptr %518, i64 0, i32 1
  %520 = load i32, ptr %519, align 4, !tbaa !103
  %521 = and i32 %520, -3
  store i32 %521, ptr %519, align 4, !tbaa !103
  br label %522

522:                                              ; preds = %516, %513, %510, %497, %494, %491, %472
  %523 = load ptr, ptr %463, align 8, !tbaa !92
  %524 = call ptr %523(ptr noundef nonnull %6) #9
  %525 = icmp eq ptr %524, null
  br i1 %525, label %526, label %472, !llvm.loop !258

526:                                              ; preds = %522, %467
  %527 = load ptr, ptr %454, align 8, !tbaa !92
  %528 = call ptr %527(ptr noundef nonnull %5) #9
  %529 = icmp eq ptr %528, null
  br i1 %529, label %531, label %467, !llvm.loop !259

530:                                              ; preds = %401
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %531

531:                                              ; preds = %526, %388, %450, %317, %449, %530
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  br label %532

532:                                              ; preds = %137, %531, %29, %30
  %533 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %534 = load ptr, ptr %533, align 8, !tbaa !88
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %534) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  ret void
}

declare void @EDBM_select_more(ptr noundef) local_unnamed_addr #2

declare void @EDBM_select_less(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  tail call fastcc void @uv_select_more_less(ptr noundef %0, i8 noundef zeroext 0)
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_snap_cursor_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #9
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %8 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #9
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !164
  %11 = tail call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.92) #9
  switch i32 %11, label %36 [
    i32 0, label %12
    i32 1, label %29
  ]

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !tbaa !171
  call void @ED_space_image_get_size(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %13 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 11
  %14 = load i32, ptr %3, align 4, !tbaa !171
  %15 = sitofp i32 %14 to float
  %16 = load i32, ptr %4, align 4, !tbaa !171
  %17 = sitofp i32 %16 to float
  %18 = load float, ptr %13, align 4, !tbaa !127
  %19 = call float @llvm.fmuladd.f32(float %18, float %15, float 5.000000e-01)
  %20 = fptosi float %19 to i32
  %21 = sitofp i32 %20 to float
  %22 = fdiv float %21, %15
  store float %22, ptr %13, align 4, !tbaa !127
  %23 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 11, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !127
  %25 = call float @llvm.fmuladd.f32(float %24, float %17, float 5.000000e-01)
  %26 = fptosi float %25 to i32
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %27, %17
  store float %28, ptr %23, align 4, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %35

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 11
  %31 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 25
  %32 = load i8, ptr %31, align 1, !tbaa !260
  %33 = tail call fastcc zeroext i8 @uvedit_center(ptr noundef %6, ptr noundef %8, ptr noundef %7, ptr noundef nonnull %30, i8 noundef zeroext %32), !range !185
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %12, %29
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 251920384, ptr noundef %5) #9
  br label %36

36:                                               ; preds = %2, %29, %35
  %37 = phi i32 [ 4, %35 ], [ 2, %29 ], [ 2, %2 ]
  ret i32 %37
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @uvedit_center(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = icmp eq i8 %4, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  %12 = call zeroext i8 @ED_uvedit_minmax(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %9), !range !185
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  call void @mid_v2_v2v2(ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %9) #9
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i8 [ 1, %14 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %155

17:                                               ; preds = %5
  %18 = tail call ptr @BKE_editmesh_from_object(ptr noundef %2) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  %19 = load ptr, ptr %18, align 8, !tbaa !83
  %20 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 26
  %21 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %20, i32 noundef 16) #9
  %22 = load ptr, ptr %18, align 8, !tbaa !83
  %23 = getelementptr inbounds %struct.BMesh, ptr %22, i64 0, i32 27
  %24 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %23, i32 noundef 15) #9
  store float 0.000000e+00, ptr %3, align 4, !tbaa !127
  %25 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %25, align 4, !tbaa !127
  %26 = load ptr, ptr %18, align 8, !tbaa !83
  %27 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 3, ptr %27, align 4, !tbaa !89
  %28 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %28, align 8, !tbaa !91
  %29 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %29, align 8, !tbaa !92
  %30 = getelementptr inbounds %struct.BMesh, ptr %26, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !93
  store ptr %31, ptr %6, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #9
  %32 = load ptr, ptr %29, align 8, !tbaa !92
  %33 = call ptr %32(ptr noundef nonnull %6) #9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %145, label %35

35:                                               ; preds = %17
  %36 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %37 = sext i32 %24 to i64
  %38 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %39 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %40 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %41 = sext i32 %21 to i64
  %42 = sext i32 %21 to i64
  br label %43

43:                                               ; preds = %35, %140
  %44 = phi ptr [ %33, %35 ], [ %143, %140 ]
  %45 = phi i32 [ 0, %35 ], [ %141, %140 ]
  %46 = load ptr, ptr %36, align 8, !tbaa !56
  %47 = getelementptr inbounds %struct.ToolSettings, ptr %46, i64 0, i32 11
  %48 = load i8, ptr %47, align 2, !tbaa !74
  %49 = and i8 %48, 2
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %43
  %52 = load ptr, ptr %44, align 8, !tbaa !95
  %53 = getelementptr inbounds i8, ptr %52, i64 %37
  %54 = load ptr, ptr %53, align 8, !tbaa !98
  %55 = icmp eq ptr %54, %1
  br i1 %55, label %56, label %84

56:                                               ; preds = %51
  %57 = and i8 %48, 1
  %58 = icmp eq i8 %57, 0
  %59 = getelementptr inbounds %struct.BMHeader, ptr %44, i64 0, i32 3
  %60 = load i8, ptr %59, align 1, !tbaa !100
  br i1 %58, label %65, label %61

61:                                               ; preds = %56
  %62 = lshr i8 %60, 1
  %63 = and i8 %62, 1
  %64 = xor i8 %63, 1
  br label %84

65:                                               ; preds = %56
  %66 = and i8 %60, 2
  %67 = icmp eq i8 %66, 0
  %68 = and i8 %60, 1
  %69 = select i1 %67, i8 %68, i8 0
  br label %84

70:                                               ; preds = %43
  %71 = and i8 %48, 1
  %72 = icmp eq i8 %71, 0
  %73 = getelementptr inbounds %struct.BMHeader, ptr %44, i64 0, i32 3
  %74 = load i8, ptr %73, align 1, !tbaa !100
  br i1 %72, label %79, label %75

75:                                               ; preds = %70
  %76 = lshr i8 %74, 1
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  br label %84

79:                                               ; preds = %70
  %80 = and i8 %74, 2
  %81 = icmp eq i8 %80, 0
  %82 = and i8 %74, 1
  %83 = select i1 %81, i8 %82, i8 0
  br label %84

84:                                               ; preds = %51, %61, %65, %75, %79
  %85 = phi i8 [ 0, %51 ], [ %64, %61 ], [ %69, %65 ], [ %78, %75 ], [ %83, %79 ]
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %140, label %87

87:                                               ; preds = %84
  store i8 11, ptr %38, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %39, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %40, align 8, !tbaa !92
  store ptr %44, ptr %7, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %7) #9
  %88 = load ptr, ptr %40, align 8, !tbaa !92
  %89 = call ptr %88(ptr noundef nonnull %7) #9
  %90 = icmp eq ptr %89, null
  br i1 %90, label %140, label %91

91:                                               ; preds = %87, %135
  %92 = phi ptr [ %138, %135 ], [ %89, %87 ]
  %93 = phi i32 [ %136, %135 ], [ %45, %87 ]
  %94 = load ptr, ptr %92, align 8, !tbaa !101
  %95 = load ptr, ptr %36, align 8, !tbaa !56
  %96 = getelementptr inbounds %struct.ToolSettings, ptr %95, i64 0, i32 11
  %97 = load i8, ptr %96, align 2, !tbaa !74
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.ToolSettings, ptr %95, i64 0, i32 8
  %102 = load i16, ptr %101, align 2, !tbaa !112
  %103 = and i16 %102, 4
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !113
  %108 = getelementptr inbounds %struct.BMHeader, ptr %107, i64 0, i32 3
  %109 = load i8, ptr %108, align 1, !tbaa !100
  br label %121

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !115
  %113 = getelementptr inbounds %struct.BMHeader, ptr %112, i64 0, i32 3
  %114 = load i8, ptr %113, align 1, !tbaa !100
  br label %121

115:                                              ; preds = %91
  %116 = getelementptr inbounds i8, ptr %94, i64 %41
  %117 = getelementptr inbounds %struct.MLoopUV, ptr %116, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !103
  %119 = trunc i32 %118 to i8
  %120 = lshr i8 %119, 1
  br label %121

121:                                              ; preds = %115, %110, %105
  %122 = phi i8 [ %109, %105 ], [ %114, %110 ], [ %120, %115 ]
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds i8, ptr %94, i64 %42
  %127 = load float, ptr %126, align 4, !tbaa !127
  %128 = load float, ptr %3, align 4, !tbaa !127
  %129 = fadd float %127, %128
  store float %129, ptr %3, align 4, !tbaa !127
  %130 = getelementptr inbounds float, ptr %126, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !127
  %132 = load float, ptr %25, align 4, !tbaa !127
  %133 = fadd float %131, %132
  store float %133, ptr %25, align 4, !tbaa !127
  %134 = add i32 %93, 1
  br label %135

135:                                              ; preds = %125, %121
  %136 = phi i32 [ %134, %125 ], [ %93, %121 ]
  %137 = load ptr, ptr %40, align 8, !tbaa !92
  %138 = call ptr %137(ptr noundef nonnull %7) #9
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %91, !llvm.loop !261

140:                                              ; preds = %135, %87, %84
  %141 = phi i32 [ %45, %84 ], [ %45, %87 ], [ %136, %135 ]
  %142 = load ptr, ptr %29, align 8, !tbaa !92
  %143 = call ptr %142(ptr noundef nonnull %6) #9
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %43, !llvm.loop !262

145:                                              ; preds = %140, %17
  %146 = phi i32 [ 0, %17 ], [ %141, %140 ]
  %147 = uitofp i32 %146 to float
  %148 = fdiv float 1.000000e+00, %147
  %149 = load float, ptr %3, align 4, !tbaa !127
  %150 = fmul float %148, %149
  store float %150, ptr %3, align 4, !tbaa !127
  %151 = load float, ptr %25, align 4, !tbaa !127
  %152 = fmul float %148, %151
  store float %152, ptr %25, align 4, !tbaa !127
  %153 = icmp ne i32 %146, 0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  %154 = zext i1 %153 to i8
  br label %155

155:                                              ; preds = %145, %15
  %156 = phi i8 [ %16, %15 ], [ %154, %145 ]
  ret i8 %156
}

declare void @mid_v2_v2v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_snap_selection_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca %struct.BMIter, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x float], align 4
  %15 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #9
  %16 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %17 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %18 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #9
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !164
  %21 = tail call i32 @RNA_enum_get(ptr noundef %20, ptr noundef nonnull @.str.92) #9
  switch i32 %21, label %642 [
    i32 0, label %22
    i32 1, label %159
    i32 2, label %286
    i32 3, label %429
  ]

22:                                               ; preds = %2
  %23 = tail call ptr @BKE_editmesh_from_object(ptr noundef %17) #9
  %24 = getelementptr inbounds %struct.SpaceImage, ptr %15, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #9
  store i32 0, ptr %12, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #9
  store i32 0, ptr %13, align 4, !tbaa !171
  %26 = load ptr, ptr %23, align 8, !tbaa !83
  %27 = getelementptr inbounds %struct.BMesh, ptr %26, i64 0, i32 26
  %28 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %27, i32 noundef 16) #9
  %29 = load ptr, ptr %23, align 8, !tbaa !83
  %30 = getelementptr inbounds %struct.BMesh, ptr %29, i64 0, i32 27
  %31 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %30, i32 noundef 15) #9
  call void @ED_space_image_get_size(ptr noundef %15, ptr noundef nonnull %12, ptr noundef nonnull %13) #9
  %32 = load i32, ptr %12, align 4, !tbaa !171
  %33 = sitofp i32 %32 to float
  %34 = load i32, ptr %13, align 4, !tbaa !171
  %35 = sitofp i32 %34 to float
  %36 = load ptr, ptr %23, align 8, !tbaa !83
  %37 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  store i8 3, ptr %37, align 4, !tbaa !89
  %38 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %38, align 8, !tbaa !91
  %39 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %39, align 8, !tbaa !92
  %40 = getelementptr inbounds %struct.BMesh, ptr %36, i64 0, i32 12
  %41 = load ptr, ptr %40, align 8, !tbaa !93
  store ptr %41, ptr %10, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %10) #9
  %42 = load ptr, ptr %39, align 8, !tbaa !92
  %43 = call ptr %42(ptr noundef nonnull %10) #9
  %44 = icmp eq ptr %43, null
  br i1 %44, label %157, label %45

45:                                               ; preds = %22
  %46 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 20
  %47 = sext i32 %31 to i64
  %48 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  %49 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  %50 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  %51 = sext i32 %28 to i64
  %52 = sext i32 %28 to i64
  br label %53

53:                                               ; preds = %45, %152
  %54 = phi ptr [ %43, %45 ], [ %155, %152 ]
  %55 = phi i8 [ 0, %45 ], [ %153, %152 ]
  %56 = load ptr, ptr %46, align 8, !tbaa !56
  %57 = getelementptr inbounds %struct.ToolSettings, ptr %56, i64 0, i32 11
  %58 = load i8, ptr %57, align 2, !tbaa !74
  %59 = and i8 %58, 2
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %80, label %61

61:                                               ; preds = %53
  %62 = load ptr, ptr %54, align 8, !tbaa !95
  %63 = getelementptr inbounds i8, ptr %62, i64 %47
  %64 = load ptr, ptr %63, align 8, !tbaa !98
  %65 = icmp eq ptr %64, %25
  br i1 %65, label %66, label %94

66:                                               ; preds = %61
  %67 = and i8 %58, 1
  %68 = icmp eq i8 %67, 0
  %69 = getelementptr inbounds %struct.BMHeader, ptr %54, i64 0, i32 3
  %70 = load i8, ptr %69, align 1, !tbaa !100
  br i1 %68, label %75, label %71

71:                                               ; preds = %66
  %72 = lshr i8 %70, 1
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  br label %94

75:                                               ; preds = %66
  %76 = and i8 %70, 2
  %77 = icmp eq i8 %76, 0
  %78 = and i8 %70, 1
  %79 = select i1 %77, i8 %78, i8 0
  br label %94

80:                                               ; preds = %53
  %81 = and i8 %58, 1
  %82 = icmp eq i8 %81, 0
  %83 = getelementptr inbounds %struct.BMHeader, ptr %54, i64 0, i32 3
  %84 = load i8, ptr %83, align 1, !tbaa !100
  br i1 %82, label %89, label %85

85:                                               ; preds = %80
  %86 = lshr i8 %84, 1
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  br label %94

89:                                               ; preds = %80
  %90 = and i8 %84, 2
  %91 = icmp eq i8 %90, 0
  %92 = and i8 %84, 1
  %93 = select i1 %91, i8 %92, i8 0
  br label %94

94:                                               ; preds = %61, %71, %75, %85, %89
  %95 = phi i8 [ 0, %61 ], [ %74, %71 ], [ %79, %75 ], [ %88, %85 ], [ %93, %89 ]
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %152, label %97

97:                                               ; preds = %94
  store i8 11, ptr %48, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %49, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %50, align 8, !tbaa !92
  store ptr %54, ptr %11, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %11) #9
  %98 = load ptr, ptr %50, align 8, !tbaa !92
  %99 = call ptr %98(ptr noundef nonnull %11) #9
  %100 = icmp eq ptr %99, null
  br i1 %100, label %152, label %101

101:                                              ; preds = %97, %148
  %102 = phi ptr [ %150, %148 ], [ %99, %97 ]
  %103 = load ptr, ptr %46, align 8, !tbaa !56
  %104 = getelementptr inbounds %struct.ToolSettings, ptr %103, i64 0, i32 11
  %105 = load i8, ptr %104, align 2, !tbaa !74
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.ToolSettings, ptr %103, i64 0, i32 8
  %110 = load i16, ptr %109, align 2, !tbaa !112
  %111 = and i16 %110, 4
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.BMLoop, ptr %102, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !113
  %116 = getelementptr inbounds %struct.BMHeader, ptr %115, i64 0, i32 3
  %117 = load i8, ptr %116, align 1, !tbaa !100
  br label %130

118:                                              ; preds = %108
  %119 = getelementptr inbounds %struct.BMLoop, ptr %102, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !115
  %121 = getelementptr inbounds %struct.BMHeader, ptr %120, i64 0, i32 3
  %122 = load i8, ptr %121, align 1, !tbaa !100
  br label %130

123:                                              ; preds = %101
  %124 = load ptr, ptr %102, align 8, !tbaa !101
  %125 = getelementptr inbounds i8, ptr %124, i64 %51
  %126 = getelementptr inbounds %struct.MLoopUV, ptr %125, i64 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !103
  %128 = trunc i32 %127 to i8
  %129 = lshr i8 %128, 1
  br label %130

130:                                              ; preds = %123, %118, %113
  %131 = phi i8 [ %117, %113 ], [ %122, %118 ], [ %129, %123 ]
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %148, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr %102, align 8, !tbaa !101
  %136 = getelementptr inbounds i8, ptr %135, i64 %52
  %137 = load float, ptr %136, align 4, !tbaa !127
  %138 = call float @llvm.fmuladd.f32(float %137, float %33, float 5.000000e-01)
  %139 = fptosi float %138 to i32
  %140 = sitofp i32 %139 to float
  %141 = fdiv float %140, %33
  store float %141, ptr %136, align 4, !tbaa !127
  %142 = getelementptr inbounds float, ptr %136, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !127
  %144 = call float @llvm.fmuladd.f32(float %143, float %35, float 5.000000e-01)
  %145 = fptosi float %144 to i32
  %146 = sitofp i32 %145 to float
  %147 = fdiv float %146, %35
  store float %147, ptr %142, align 4, !tbaa !127
  br label %148

148:                                              ; preds = %134, %130
  %149 = load ptr, ptr %50, align 8, !tbaa !92
  %150 = call ptr %149(ptr noundef nonnull %11) #9
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %101, !llvm.loop !264

152:                                              ; preds = %148, %97, %94
  %153 = phi i8 [ %55, %94 ], [ 1, %97 ], [ 1, %148 ]
  %154 = load ptr, ptr %39, align 8, !tbaa !92
  %155 = call ptr %154(ptr noundef nonnull %10) #9
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %53, !llvm.loop !265

157:                                              ; preds = %152, %22
  %158 = phi i8 [ 0, %22 ], [ %153, %152 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #9
  br label %642

159:                                              ; preds = %2
  %160 = getelementptr inbounds %struct.SpaceImage, ptr %15, i64 0, i32 11
  %161 = tail call ptr @BKE_editmesh_from_object(ptr noundef %17) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #9
  %162 = load ptr, ptr %161, align 8, !tbaa !83
  %163 = getelementptr inbounds %struct.BMesh, ptr %162, i64 0, i32 26
  %164 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %163, i32 noundef 16) #9
  %165 = load ptr, ptr %161, align 8, !tbaa !83
  %166 = getelementptr inbounds %struct.BMesh, ptr %165, i64 0, i32 27
  %167 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %166, i32 noundef 15) #9
  %168 = load ptr, ptr %161, align 8, !tbaa !83
  %169 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 3, ptr %169, align 4, !tbaa !89
  %170 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %170, align 8, !tbaa !91
  %171 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %171, align 8, !tbaa !92
  %172 = getelementptr inbounds %struct.BMesh, ptr %168, i64 0, i32 12
  %173 = load ptr, ptr %172, align 8, !tbaa !93
  store ptr %173, ptr %8, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #9
  %174 = load ptr, ptr %171, align 8, !tbaa !92
  %175 = call ptr %174(ptr noundef nonnull %8) #9
  %176 = icmp eq ptr %175, null
  br i1 %176, label %284, label %177

177:                                              ; preds = %159
  %178 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 20
  %179 = sext i32 %167 to i64
  %180 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  %181 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  %182 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  %183 = sext i32 %164 to i64
  %184 = sext i32 %164 to i64
  %185 = getelementptr inbounds %struct.SpaceImage, ptr %15, i64 0, i32 11, i64 1
  br label %186

186:                                              ; preds = %177, %279
  %187 = phi ptr [ %175, %177 ], [ %282, %279 ]
  %188 = phi i8 [ 0, %177 ], [ %280, %279 ]
  %189 = load ptr, ptr %178, align 8, !tbaa !56
  %190 = getelementptr inbounds %struct.ToolSettings, ptr %189, i64 0, i32 11
  %191 = load i8, ptr %190, align 2, !tbaa !74
  %192 = and i8 %191, 2
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %213, label %194

194:                                              ; preds = %186
  %195 = load ptr, ptr %187, align 8, !tbaa !95
  %196 = getelementptr inbounds i8, ptr %195, i64 %179
  %197 = load ptr, ptr %196, align 8, !tbaa !98
  %198 = icmp eq ptr %197, %18
  br i1 %198, label %199, label %227

199:                                              ; preds = %194
  %200 = and i8 %191, 1
  %201 = icmp eq i8 %200, 0
  %202 = getelementptr inbounds %struct.BMHeader, ptr %187, i64 0, i32 3
  %203 = load i8, ptr %202, align 1, !tbaa !100
  br i1 %201, label %208, label %204

204:                                              ; preds = %199
  %205 = lshr i8 %203, 1
  %206 = and i8 %205, 1
  %207 = xor i8 %206, 1
  br label %227

208:                                              ; preds = %199
  %209 = and i8 %203, 2
  %210 = icmp eq i8 %209, 0
  %211 = and i8 %203, 1
  %212 = select i1 %210, i8 %211, i8 0
  br label %227

213:                                              ; preds = %186
  %214 = and i8 %191, 1
  %215 = icmp eq i8 %214, 0
  %216 = getelementptr inbounds %struct.BMHeader, ptr %187, i64 0, i32 3
  %217 = load i8, ptr %216, align 1, !tbaa !100
  br i1 %215, label %222, label %218

218:                                              ; preds = %213
  %219 = lshr i8 %217, 1
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  br label %227

222:                                              ; preds = %213
  %223 = and i8 %217, 2
  %224 = icmp eq i8 %223, 0
  %225 = and i8 %217, 1
  %226 = select i1 %224, i8 %225, i8 0
  br label %227

227:                                              ; preds = %194, %204, %208, %218, %222
  %228 = phi i8 [ 0, %194 ], [ %207, %204 ], [ %212, %208 ], [ %221, %218 ], [ %226, %222 ]
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %279, label %230

230:                                              ; preds = %227
  store i8 11, ptr %180, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %181, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %182, align 8, !tbaa !92
  store ptr %187, ptr %9, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %9) #9
  %231 = load ptr, ptr %182, align 8, !tbaa !92
  %232 = call ptr %231(ptr noundef nonnull %9) #9
  %233 = icmp eq ptr %232, null
  br i1 %233, label %279, label %234

234:                                              ; preds = %230, %274
  %235 = phi ptr [ %277, %274 ], [ %232, %230 ]
  %236 = phi i8 [ %275, %274 ], [ %188, %230 ]
  %237 = load ptr, ptr %178, align 8, !tbaa !56
  %238 = getelementptr inbounds %struct.ToolSettings, ptr %237, i64 0, i32 11
  %239 = load i8, ptr %238, align 2, !tbaa !74
  %240 = and i8 %239, 1
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %257, label %242

242:                                              ; preds = %234
  %243 = getelementptr inbounds %struct.ToolSettings, ptr %237, i64 0, i32 8
  %244 = load i16, ptr %243, align 2, !tbaa !112
  %245 = and i16 %244, 4
  %246 = icmp eq i16 %245, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.BMLoop, ptr %235, i64 0, i32 3
  %249 = load ptr, ptr %248, align 8, !tbaa !113
  %250 = getelementptr inbounds %struct.BMHeader, ptr %249, i64 0, i32 3
  %251 = load i8, ptr %250, align 1, !tbaa !100
  br label %264

252:                                              ; preds = %242
  %253 = getelementptr inbounds %struct.BMLoop, ptr %235, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !115
  %255 = getelementptr inbounds %struct.BMHeader, ptr %254, i64 0, i32 3
  %256 = load i8, ptr %255, align 1, !tbaa !100
  br label %264

257:                                              ; preds = %234
  %258 = load ptr, ptr %235, align 8, !tbaa !101
  %259 = getelementptr inbounds i8, ptr %258, i64 %183
  %260 = getelementptr inbounds %struct.MLoopUV, ptr %259, i64 0, i32 1
  %261 = load i32, ptr %260, align 4, !tbaa !103
  %262 = trunc i32 %261 to i8
  %263 = lshr i8 %262, 1
  br label %264

264:                                              ; preds = %257, %252, %247
  %265 = phi i8 [ %251, %247 ], [ %256, %252 ], [ %263, %257 ]
  %266 = and i8 %265, 1
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %274, label %268

268:                                              ; preds = %264
  %269 = load ptr, ptr %235, align 8, !tbaa !101
  %270 = getelementptr inbounds i8, ptr %269, i64 %184
  %271 = load float, ptr %160, align 4, !tbaa !127
  store float %271, ptr %270, align 4, !tbaa !127
  %272 = load float, ptr %185, align 4, !tbaa !127
  %273 = getelementptr inbounds float, ptr %270, i64 1
  store float %272, ptr %273, align 4, !tbaa !127
  br label %274

274:                                              ; preds = %268, %264
  %275 = phi i8 [ 1, %268 ], [ %236, %264 ]
  %276 = load ptr, ptr %182, align 8, !tbaa !92
  %277 = call ptr %276(ptr noundef nonnull %9) #9
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %234, !llvm.loop !266

279:                                              ; preds = %274, %230, %227
  %280 = phi i8 [ %188, %227 ], [ %188, %230 ], [ %275, %274 ]
  %281 = load ptr, ptr %171, align 8, !tbaa !92
  %282 = call ptr %281(ptr noundef nonnull %8) #9
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %186, !llvm.loop !267

284:                                              ; preds = %279, %159
  %285 = phi i8 [ 0, %159 ], [ %280, %279 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  br label %642

286:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  %287 = getelementptr inbounds %struct.SpaceImage, ptr %15, i64 0, i32 25
  %288 = load i8, ptr %287, align 1, !tbaa !260
  %289 = call fastcc zeroext i8 @uvedit_center(ptr noundef %16, ptr noundef %18, ptr noundef %17, ptr noundef nonnull %14, i8 noundef zeroext %288), !range !185
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %427, label %291

291:                                              ; preds = %286
  %292 = getelementptr inbounds %struct.SpaceImage, ptr %15, i64 0, i32 11
  %293 = load float, ptr %292, align 4, !tbaa !127
  %294 = load float, ptr %14, align 4, !tbaa !127
  %295 = fsub float %293, %294
  %296 = getelementptr inbounds %struct.SpaceImage, ptr %15, i64 0, i32 11, i64 1
  %297 = load float, ptr %296, align 4, !tbaa !127
  %298 = getelementptr inbounds float, ptr %14, i64 1
  %299 = load float, ptr %298, align 4, !tbaa !127
  %300 = fsub float %297, %299
  %301 = call ptr @BKE_editmesh_from_object(ptr noundef %17) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  %302 = load ptr, ptr %301, align 8, !tbaa !83
  %303 = getelementptr inbounds %struct.BMesh, ptr %302, i64 0, i32 26
  %304 = call i32 @CustomData_get_offset(ptr noundef nonnull %303, i32 noundef 16) #9
  %305 = load ptr, ptr %301, align 8, !tbaa !83
  %306 = getelementptr inbounds %struct.BMesh, ptr %305, i64 0, i32 27
  %307 = call i32 @CustomData_get_offset(ptr noundef nonnull %306, i32 noundef 15) #9
  %308 = load ptr, ptr %301, align 8, !tbaa !83
  %309 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 3, ptr %309, align 4, !tbaa !89
  %310 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %310, align 8, !tbaa !91
  %311 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %311, align 8, !tbaa !92
  %312 = getelementptr inbounds %struct.BMesh, ptr %308, i64 0, i32 12
  %313 = load ptr, ptr %312, align 8, !tbaa !93
  store ptr %313, ptr %6, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #9
  %314 = load ptr, ptr %311, align 8, !tbaa !92
  %315 = call ptr %314(ptr noundef nonnull %6) #9
  %316 = icmp eq ptr %315, null
  br i1 %316, label %425, label %317

317:                                              ; preds = %291
  %318 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 20
  %319 = sext i32 %307 to i64
  %320 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %321 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %322 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %323 = sext i32 %304 to i64
  %324 = sext i32 %304 to i64
  br label %325

325:                                              ; preds = %317, %420
  %326 = phi ptr [ %315, %317 ], [ %423, %420 ]
  %327 = phi i8 [ 0, %317 ], [ %421, %420 ]
  %328 = load ptr, ptr %318, align 8, !tbaa !56
  %329 = getelementptr inbounds %struct.ToolSettings, ptr %328, i64 0, i32 11
  %330 = load i8, ptr %329, align 2, !tbaa !74
  %331 = and i8 %330, 2
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %352, label %333

333:                                              ; preds = %325
  %334 = load ptr, ptr %326, align 8, !tbaa !95
  %335 = getelementptr inbounds i8, ptr %334, i64 %319
  %336 = load ptr, ptr %335, align 8, !tbaa !98
  %337 = icmp eq ptr %336, %18
  br i1 %337, label %338, label %366

338:                                              ; preds = %333
  %339 = and i8 %330, 1
  %340 = icmp eq i8 %339, 0
  %341 = getelementptr inbounds %struct.BMHeader, ptr %326, i64 0, i32 3
  %342 = load i8, ptr %341, align 1, !tbaa !100
  br i1 %340, label %347, label %343

343:                                              ; preds = %338
  %344 = lshr i8 %342, 1
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  br label %366

347:                                              ; preds = %338
  %348 = and i8 %342, 2
  %349 = icmp eq i8 %348, 0
  %350 = and i8 %342, 1
  %351 = select i1 %349, i8 %350, i8 0
  br label %366

352:                                              ; preds = %325
  %353 = and i8 %330, 1
  %354 = icmp eq i8 %353, 0
  %355 = getelementptr inbounds %struct.BMHeader, ptr %326, i64 0, i32 3
  %356 = load i8, ptr %355, align 1, !tbaa !100
  br i1 %354, label %361, label %357

357:                                              ; preds = %352
  %358 = lshr i8 %356, 1
  %359 = and i8 %358, 1
  %360 = xor i8 %359, 1
  br label %366

361:                                              ; preds = %352
  %362 = and i8 %356, 2
  %363 = icmp eq i8 %362, 0
  %364 = and i8 %356, 1
  %365 = select i1 %363, i8 %364, i8 0
  br label %366

366:                                              ; preds = %333, %343, %347, %357, %361
  %367 = phi i8 [ 0, %333 ], [ %346, %343 ], [ %351, %347 ], [ %360, %357 ], [ %365, %361 ]
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %420, label %369

369:                                              ; preds = %366
  store i8 11, ptr %320, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %321, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %322, align 8, !tbaa !92
  store ptr %326, ptr %7, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %7) #9
  %370 = load ptr, ptr %322, align 8, !tbaa !92
  %371 = call ptr %370(ptr noundef nonnull %7) #9
  %372 = icmp eq ptr %371, null
  br i1 %372, label %420, label %373

373:                                              ; preds = %369, %415
  %374 = phi ptr [ %418, %415 ], [ %371, %369 ]
  %375 = phi i8 [ %416, %415 ], [ %327, %369 ]
  %376 = load ptr, ptr %318, align 8, !tbaa !56
  %377 = getelementptr inbounds %struct.ToolSettings, ptr %376, i64 0, i32 11
  %378 = load i8, ptr %377, align 2, !tbaa !74
  %379 = and i8 %378, 1
  %380 = icmp eq i8 %379, 0
  br i1 %380, label %396, label %381

381:                                              ; preds = %373
  %382 = getelementptr inbounds %struct.ToolSettings, ptr %376, i64 0, i32 8
  %383 = load i16, ptr %382, align 2, !tbaa !112
  %384 = and i16 %383, 4
  %385 = icmp eq i16 %384, 0
  br i1 %385, label %391, label %386

386:                                              ; preds = %381
  %387 = getelementptr inbounds %struct.BMLoop, ptr %374, i64 0, i32 3
  %388 = load ptr, ptr %387, align 8, !tbaa !113
  %389 = getelementptr inbounds %struct.BMHeader, ptr %388, i64 0, i32 3
  %390 = load i8, ptr %389, align 1, !tbaa !100
  br label %403

391:                                              ; preds = %381
  %392 = getelementptr inbounds %struct.BMLoop, ptr %374, i64 0, i32 1
  %393 = load ptr, ptr %392, align 8, !tbaa !115
  %394 = getelementptr inbounds %struct.BMHeader, ptr %393, i64 0, i32 3
  %395 = load i8, ptr %394, align 1, !tbaa !100
  br label %403

396:                                              ; preds = %373
  %397 = load ptr, ptr %374, align 8, !tbaa !101
  %398 = getelementptr inbounds i8, ptr %397, i64 %323
  %399 = getelementptr inbounds %struct.MLoopUV, ptr %398, i64 0, i32 1
  %400 = load i32, ptr %399, align 4, !tbaa !103
  %401 = trunc i32 %400 to i8
  %402 = lshr i8 %401, 1
  br label %403

403:                                              ; preds = %396, %391, %386
  %404 = phi i8 [ %390, %386 ], [ %395, %391 ], [ %402, %396 ]
  %405 = and i8 %404, 1
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %415, label %407

407:                                              ; preds = %403
  %408 = load ptr, ptr %374, align 8, !tbaa !101
  %409 = getelementptr inbounds i8, ptr %408, i64 %324
  %410 = load float, ptr %409, align 4, !tbaa !127
  %411 = fadd float %295, %410
  store float %411, ptr %409, align 4, !tbaa !127
  %412 = getelementptr inbounds float, ptr %409, i64 1
  %413 = load float, ptr %412, align 4, !tbaa !127
  %414 = fadd float %300, %413
  store float %414, ptr %412, align 4, !tbaa !127
  br label %415

415:                                              ; preds = %407, %403
  %416 = phi i8 [ 1, %407 ], [ %375, %403 ]
  %417 = load ptr, ptr %322, align 8, !tbaa !92
  %418 = call ptr %417(ptr noundef nonnull %7) #9
  %419 = icmp eq ptr %418, null
  br i1 %419, label %420, label %373, !llvm.loop !268

420:                                              ; preds = %415, %369, %366
  %421 = phi i8 [ %327, %366 ], [ %327, %369 ], [ %416, %415 ]
  %422 = load ptr, ptr %311, align 8, !tbaa !92
  %423 = call ptr %422(ptr noundef nonnull %6) #9
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %325, !llvm.loop !269

425:                                              ; preds = %420, %291
  %426 = phi i8 [ 0, %291 ], [ %421, %420 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  br label %427

427:                                              ; preds = %425, %286
  %428 = phi i8 [ %426, %425 ], [ 0, %286 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  br label %642

429:                                              ; preds = %2
  %430 = tail call ptr @BKE_editmesh_from_object(ptr noundef %17) #9
  %431 = load ptr, ptr %430, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %432 = getelementptr inbounds %struct.BMesh, ptr %431, i64 0, i32 26
  %433 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %432, i32 noundef 16) #9
  %434 = getelementptr inbounds %struct.BMesh, ptr %431, i64 0, i32 27
  %435 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %434, i32 noundef 15) #9
  %436 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %436, align 4, !tbaa !89
  %437 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %437, align 8, !tbaa !91
  %438 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %438, align 8, !tbaa !92
  %439 = getelementptr inbounds %struct.BMesh, ptr %431, i64 0, i32 12
  %440 = load ptr, ptr %439, align 8, !tbaa !93
  store ptr %440, ptr %3, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #9
  %441 = load ptr, ptr %438, align 8, !tbaa !92
  %442 = call ptr %441(ptr noundef nonnull %3) #9
  %443 = icmp eq ptr %442, null
  br i1 %443, label %547, label %444

444:                                              ; preds = %429
  %445 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 20
  %446 = sext i32 %435 to i64
  %447 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %448 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %449 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %450 = sext i32 %433 to i64
  br label %451

451:                                              ; preds = %444, %543
  %452 = phi ptr [ %442, %444 ], [ %545, %543 ]
  %453 = load ptr, ptr %445, align 8, !tbaa !56
  %454 = getelementptr inbounds %struct.ToolSettings, ptr %453, i64 0, i32 11
  %455 = load i8, ptr %454, align 2, !tbaa !74
  %456 = and i8 %455, 2
  %457 = icmp eq i8 %456, 0
  br i1 %457, label %477, label %458

458:                                              ; preds = %451
  %459 = load ptr, ptr %452, align 8, !tbaa !95
  %460 = getelementptr inbounds i8, ptr %459, i64 %446
  %461 = load ptr, ptr %460, align 8, !tbaa !98
  %462 = icmp eq ptr %461, %18
  br i1 %462, label %463, label %491

463:                                              ; preds = %458
  %464 = and i8 %455, 1
  %465 = icmp eq i8 %464, 0
  %466 = getelementptr inbounds %struct.BMHeader, ptr %452, i64 0, i32 3
  %467 = load i8, ptr %466, align 1, !tbaa !100
  br i1 %465, label %472, label %468

468:                                              ; preds = %463
  %469 = lshr i8 %467, 1
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  br label %491

472:                                              ; preds = %463
  %473 = and i8 %467, 2
  %474 = icmp eq i8 %473, 0
  %475 = and i8 %467, 1
  %476 = select i1 %474, i8 %475, i8 0
  br label %491

477:                                              ; preds = %451
  %478 = and i8 %455, 1
  %479 = icmp eq i8 %478, 0
  %480 = getelementptr inbounds %struct.BMHeader, ptr %452, i64 0, i32 3
  %481 = load i8, ptr %480, align 1, !tbaa !100
  br i1 %479, label %486, label %482

482:                                              ; preds = %477
  %483 = lshr i8 %481, 1
  %484 = and i8 %483, 1
  %485 = xor i8 %484, 1
  br label %491

486:                                              ; preds = %477
  %487 = and i8 %481, 2
  %488 = icmp eq i8 %487, 0
  %489 = and i8 %481, 1
  %490 = select i1 %488, i8 %489, i8 0
  br label %491

491:                                              ; preds = %458, %468, %472, %482, %486
  %492 = phi i8 [ 0, %458 ], [ %471, %468 ], [ %476, %472 ], [ %485, %482 ], [ %490, %486 ]
  %493 = icmp eq i8 %492, 0
  %494 = getelementptr inbounds %struct.BMHeader, ptr %452, i64 0, i32 3
  %495 = load i8, ptr %494, align 1, !tbaa !100
  br i1 %493, label %541, label %496

496:                                              ; preds = %491
  %497 = or i8 %495, 16
  store i8 %497, ptr %494, align 1, !tbaa !100
  store i8 11, ptr %447, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %448, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %449, align 8, !tbaa !92
  store ptr %452, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %498 = load ptr, ptr %449, align 8, !tbaa !92
  %499 = call ptr %498(ptr noundef nonnull %4) #9
  %500 = icmp eq ptr %499, null
  br i1 %500, label %543, label %501

501:                                              ; preds = %496, %530
  %502 = phi ptr [ %539, %530 ], [ %499, %496 ]
  %503 = load ptr, ptr %445, align 8, !tbaa !56
  %504 = getelementptr inbounds %struct.ToolSettings, ptr %503, i64 0, i32 11
  %505 = load i8, ptr %504, align 2, !tbaa !74
  %506 = and i8 %505, 1
  %507 = icmp eq i8 %506, 0
  br i1 %507, label %523, label %508

508:                                              ; preds = %501
  %509 = getelementptr inbounds %struct.ToolSettings, ptr %503, i64 0, i32 8
  %510 = load i16, ptr %509, align 2, !tbaa !112
  %511 = and i16 %510, 4
  %512 = icmp eq i16 %511, 0
  br i1 %512, label %518, label %513

513:                                              ; preds = %508
  %514 = getelementptr inbounds %struct.BMLoop, ptr %502, i64 0, i32 3
  %515 = load ptr, ptr %514, align 8, !tbaa !113
  %516 = getelementptr inbounds %struct.BMHeader, ptr %515, i64 0, i32 3
  %517 = load i8, ptr %516, align 1, !tbaa !100
  br label %530

518:                                              ; preds = %508
  %519 = getelementptr inbounds %struct.BMLoop, ptr %502, i64 0, i32 1
  %520 = load ptr, ptr %519, align 8, !tbaa !115
  %521 = getelementptr inbounds %struct.BMHeader, ptr %520, i64 0, i32 3
  %522 = load i8, ptr %521, align 1, !tbaa !100
  br label %530

523:                                              ; preds = %501
  %524 = load ptr, ptr %502, align 8, !tbaa !101
  %525 = getelementptr inbounds i8, ptr %524, i64 %450
  %526 = getelementptr inbounds %struct.MLoopUV, ptr %525, i64 0, i32 1
  %527 = load i32, ptr %526, align 4, !tbaa !103
  %528 = trunc i32 %527 to i8
  %529 = lshr i8 %528, 1
  br label %530

530:                                              ; preds = %523, %518, %513
  %531 = phi i8 [ %517, %513 ], [ %522, %518 ], [ %529, %523 ]
  %532 = getelementptr inbounds %struct.BMHeader, ptr %502, i64 0, i32 3
  %533 = load i8, ptr %532, align 1, !tbaa !100
  %534 = and i8 %533, -17
  %535 = shl i8 %531, 4
  %536 = and i8 %535, 16
  %537 = or disjoint i8 %534, %536
  store i8 %537, ptr %532, align 1, !tbaa !100
  %538 = load ptr, ptr %449, align 8, !tbaa !92
  %539 = call ptr %538(ptr noundef nonnull %4) #9
  %540 = icmp eq ptr %539, null
  br i1 %540, label %543, label %501, !llvm.loop !270

541:                                              ; preds = %491
  %542 = and i8 %495, -17
  store i8 %542, ptr %494, align 1, !tbaa !100
  br label %543

543:                                              ; preds = %530, %496, %541
  %544 = load ptr, ptr %438, align 8, !tbaa !92
  %545 = call ptr %544(ptr noundef nonnull %3) #9
  %546 = icmp eq ptr %545, null
  br i1 %546, label %547, label %451, !llvm.loop !271

547:                                              ; preds = %543, %429
  store i8 3, ptr %436, align 4, !tbaa !89
  store ptr @bmiter__elem_of_mesh_begin, ptr %437, align 8, !tbaa !91
  store ptr @bmiter__elem_of_mesh_step, ptr %438, align 8, !tbaa !92
  %548 = load ptr, ptr %439, align 8, !tbaa !93
  store ptr %548, ptr %3, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #9
  %549 = load ptr, ptr %438, align 8, !tbaa !92
  %550 = call ptr %549(ptr noundef nonnull %3) #9
  %551 = icmp eq ptr %550, null
  br i1 %551, label %640, label %552

552:                                              ; preds = %547
  %553 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %554 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %555 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %556 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %557 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %558 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %559 = sext i32 %433 to i64
  %560 = sext i32 %433 to i64
  br label %561

561:                                              ; preds = %552, %635
  %562 = phi ptr [ %550, %552 ], [ %638, %635 ]
  %563 = phi i8 [ 0, %552 ], [ %636, %635 ]
  %564 = getelementptr inbounds %struct.BMHeader, ptr %562, i64 0, i32 3
  %565 = load i8, ptr %564, align 1, !tbaa !100
  %566 = and i8 %565, 16
  %567 = icmp eq i8 %566, 0
  br i1 %567, label %635, label %568

568:                                              ; preds = %561
  store i8 11, ptr %553, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %554, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %555, align 8, !tbaa !92
  store ptr %562, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %569 = load ptr, ptr %555, align 8, !tbaa !92
  %570 = call ptr %569(ptr noundef nonnull %4) #9
  %571 = icmp eq ptr %570, null
  br i1 %571, label %635, label %572

572:                                              ; preds = %568, %630
  %573 = phi ptr [ %633, %630 ], [ %570, %568 ]
  %574 = phi i8 [ %631, %630 ], [ %563, %568 ]
  %575 = getelementptr inbounds %struct.BMHeader, ptr %573, i64 0, i32 3
  %576 = load i8, ptr %575, align 1, !tbaa !100
  %577 = and i8 %576, 16
  %578 = icmp eq i8 %577, 0
  br i1 %578, label %630, label %579

579:                                              ; preds = %572
  %580 = getelementptr inbounds %struct.BMLoop, ptr %573, i64 0, i32 1
  %581 = load ptr, ptr %580, align 8, !tbaa !115
  store i8 6, ptr %556, align 4, !tbaa !89
  store ptr @bmiter__loop_of_vert_begin, ptr %557, align 8, !tbaa !91
  store ptr @bmiter__loop_of_vert_step, ptr %558, align 8, !tbaa !92
  store ptr %581, ptr %5, align 8, !tbaa !94
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %5) #9
  %582 = load ptr, ptr %558, align 8, !tbaa !92
  %583 = call ptr %582(ptr noundef nonnull %5) #9
  %584 = icmp eq ptr %583, null
  br i1 %584, label %617, label %585

585:                                              ; preds = %579, %610
  %586 = phi i32 [ %613, %610 ], [ 0, %579 ]
  %587 = phi ptr [ %615, %610 ], [ %583, %579 ]
  %588 = phi float [ %612, %610 ], [ 0.000000e+00, %579 ]
  %589 = phi float [ %611, %610 ], [ 0.000000e+00, %579 ]
  %590 = getelementptr inbounds %struct.BMLoop, ptr %587, i64 0, i32 3
  %591 = load ptr, ptr %590, align 8, !tbaa !113
  %592 = getelementptr inbounds %struct.BMHeader, ptr %591, i64 0, i32 3
  %593 = load i8, ptr %592, align 1, !tbaa !100
  %594 = and i8 %593, 16
  %595 = icmp eq i8 %594, 0
  br i1 %595, label %610, label %596

596:                                              ; preds = %585
  %597 = getelementptr inbounds %struct.BMHeader, ptr %587, i64 0, i32 3
  %598 = load i8, ptr %597, align 1, !tbaa !100
  %599 = and i8 %598, 16
  %600 = icmp eq i8 %599, 0
  br i1 %600, label %601, label %610

601:                                              ; preds = %596
  %602 = load ptr, ptr %587, align 8, !tbaa !101
  %603 = getelementptr inbounds i8, ptr %602, i64 %559
  %604 = load float, ptr %603, align 4, !tbaa !127
  %605 = fadd float %588, %604
  %606 = getelementptr inbounds float, ptr %603, i64 1
  %607 = load float, ptr %606, align 4, !tbaa !127
  %608 = fadd float %589, %607
  %609 = add nsw i32 %586, 1
  br label %610

610:                                              ; preds = %601, %596, %585
  %611 = phi float [ %589, %585 ], [ %608, %601 ], [ %589, %596 ]
  %612 = phi float [ %588, %585 ], [ %605, %601 ], [ %588, %596 ]
  %613 = phi i32 [ %586, %585 ], [ %609, %601 ], [ %586, %596 ]
  %614 = load ptr, ptr %558, align 8, !tbaa !92
  %615 = call ptr %614(ptr noundef nonnull %5) #9
  %616 = icmp eq ptr %615, null
  br i1 %616, label %617, label %585, !llvm.loop !272

617:                                              ; preds = %610, %579
  %618 = phi float [ 0.000000e+00, %579 ], [ %611, %610 ]
  %619 = phi float [ 0.000000e+00, %579 ], [ %612, %610 ]
  %620 = phi i32 [ 0, %579 ], [ %613, %610 ]
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %630, label %622

622:                                              ; preds = %617
  %623 = load ptr, ptr %573, align 8, !tbaa !101
  %624 = getelementptr inbounds i8, ptr %623, i64 %560
  %625 = sitofp i32 %620 to float
  %626 = fdiv float 1.000000e+00, %625
  %627 = fmul float %619, %626
  store float %627, ptr %624, align 4, !tbaa !127
  %628 = fmul float %618, %626
  %629 = getelementptr inbounds float, ptr %624, i64 1
  store float %628, ptr %629, align 4, !tbaa !127
  br label %630

630:                                              ; preds = %622, %617, %572
  %631 = phi i8 [ %574, %572 ], [ 1, %622 ], [ %574, %617 ]
  %632 = load ptr, ptr %555, align 8, !tbaa !92
  %633 = call ptr %632(ptr noundef nonnull %4) #9
  %634 = icmp eq ptr %633, null
  br i1 %634, label %635, label %572, !llvm.loop !273

635:                                              ; preds = %630, %568, %561
  %636 = phi i8 [ %563, %561 ], [ %563, %568 ], [ %631, %630 ]
  %637 = load ptr, ptr %438, align 8, !tbaa !92
  %638 = call ptr %637(ptr noundef nonnull %3) #9
  %639 = icmp eq ptr %638, null
  br i1 %639, label %640, label %561, !llvm.loop !274

640:                                              ; preds = %635, %547
  %641 = phi i8 [ 0, %547 ], [ %636, %635 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  br label %642

642:                                              ; preds = %2, %640, %427, %284, %157
  %643 = phi i8 [ 0, %2 ], [ %641, %640 ], [ %428, %427 ], [ %285, %284 ], [ %158, %157 ]
  %644 = icmp eq i8 %643, 0
  br i1 %644, label %657, label %645

645:                                              ; preds = %642
  %646 = icmp eq ptr %15, null
  br i1 %646, label %653, label %647

647:                                              ; preds = %645
  %648 = getelementptr inbounds %struct.SpaceImage, ptr %15, i64 0, i32 4
  %649 = load i32, ptr %648, align 4, !tbaa !121
  %650 = and i32 %649, 2048
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %653, label %652

652:                                              ; preds = %647
  call void @ED_uvedit_live_unwrap_begin(ptr noundef %16, ptr noundef %17) #9
  call void @ED_uvedit_live_unwrap_re_solve() #9
  call void @ED_uvedit_live_unwrap_end(i16 noundef signext 0) #9
  br label %653

653:                                              ; preds = %645, %647, %652
  %654 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 19
  %655 = load ptr, ptr %654, align 8, !tbaa !88
  call void @DAG_id_tag_update(ptr noundef %655, i16 noundef signext 0) #9
  %656 = load ptr, ptr %654, align 8, !tbaa !88
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %656) #9
  br label %657

657:                                              ; preds = %642, %653
  %658 = phi i32 [ 4, %653 ], [ 2, %642 ]
  ret i32 %658
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_align_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !164
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.125) #9
  tail call fastcc void @uv_weld_align(ptr noundef %0, i32 noundef %5)
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @uv_weld_align(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca %struct.BMIter, align 8
  %12 = alloca %struct.BMIter, align 8
  %13 = alloca %struct.BMIter, align 8
  %14 = alloca %struct.BMIter, align 8
  %15 = alloca %struct.BMIter, align 8
  %16 = alloca %struct.BMIter, align 8
  %17 = alloca ptr, align 8
  %18 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %19 = tail call ptr @BKE_editmesh_from_object(ptr noundef %18) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %20 = load ptr, ptr %19, align 8, !tbaa !83
  %21 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 26
  %22 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %21, i32 noundef 16) #9
  %23 = load ptr, ptr %19, align 8, !tbaa !83
  %24 = getelementptr inbounds %struct.BMesh, ptr %23, i64 0, i32 27
  %25 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %24, i32 noundef 15) #9
  %26 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %27 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #9
  %28 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #9
  %29 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store float 0x46293E5940000000, ptr %29, align 4, !tbaa !127
  store float 0x46293E5940000000, ptr %6, align 4, !tbaa !127
  %30 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %30, align 4, !tbaa !127
  store float 0xC6293E5940000000, ptr %7, align 4, !tbaa !127
  %31 = icmp eq i32 %1, 97
  br i1 %31, label %32, label %150

32:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #9
  %33 = load ptr, ptr %19, align 8, !tbaa !83
  %34 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 3, ptr %34, align 4, !tbaa !89
  %35 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %35, align 8, !tbaa !91
  %36 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %36, align 8, !tbaa !92
  %37 = getelementptr inbounds %struct.BMesh, ptr %33, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !93
  store ptr %38, ptr %8, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #9
  %39 = load ptr, ptr %36, align 8, !tbaa !92
  %40 = call ptr %39(ptr noundef nonnull %8) #9
  %41 = icmp eq ptr %40, null
  br i1 %41, label %141, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.Scene, ptr %26, i64 0, i32 20
  %44 = sext i32 %25 to i64
  %45 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  %46 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  %47 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  %48 = sext i32 %22 to i64
  %49 = sext i32 %22 to i64
  br label %50

50:                                               ; preds = %42, %137
  %51 = phi ptr [ %40, %42 ], [ %139, %137 ]
  %52 = load ptr, ptr %43, align 8, !tbaa !56
  %53 = getelementptr inbounds %struct.ToolSettings, ptr %52, i64 0, i32 11
  %54 = load i8, ptr %53, align 2, !tbaa !74
  %55 = and i8 %54, 2
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr %51, align 8, !tbaa !95
  %59 = getelementptr inbounds i8, ptr %58, i64 %44
  %60 = load ptr, ptr %59, align 8, !tbaa !98
  %61 = icmp eq ptr %60, %27
  br i1 %61, label %62, label %90

62:                                               ; preds = %57
  %63 = and i8 %54, 1
  %64 = icmp eq i8 %63, 0
  %65 = getelementptr inbounds %struct.BMHeader, ptr %51, i64 0, i32 3
  %66 = load i8, ptr %65, align 1, !tbaa !100
  br i1 %64, label %71, label %67

67:                                               ; preds = %62
  %68 = lshr i8 %66, 1
  %69 = and i8 %68, 1
  %70 = xor i8 %69, 1
  br label %90

71:                                               ; preds = %62
  %72 = and i8 %66, 2
  %73 = icmp eq i8 %72, 0
  %74 = and i8 %66, 1
  %75 = select i1 %73, i8 %74, i8 0
  br label %90

76:                                               ; preds = %50
  %77 = and i8 %54, 1
  %78 = icmp eq i8 %77, 0
  %79 = getelementptr inbounds %struct.BMHeader, ptr %51, i64 0, i32 3
  %80 = load i8, ptr %79, align 1, !tbaa !100
  br i1 %78, label %85, label %81

81:                                               ; preds = %76
  %82 = lshr i8 %80, 1
  %83 = and i8 %82, 1
  %84 = xor i8 %83, 1
  br label %90

85:                                               ; preds = %76
  %86 = and i8 %80, 2
  %87 = icmp eq i8 %86, 0
  %88 = and i8 %80, 1
  %89 = select i1 %87, i8 %88, i8 0
  br label %90

90:                                               ; preds = %57, %67, %71, %81, %85
  %91 = phi i8 [ 0, %57 ], [ %70, %67 ], [ %75, %71 ], [ %84, %81 ], [ %89, %85 ]
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %137, label %93

93:                                               ; preds = %90
  store i8 11, ptr %45, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %46, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %47, align 8, !tbaa !92
  store ptr %51, ptr %9, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %9) #9
  %94 = load ptr, ptr %47, align 8, !tbaa !92
  %95 = call ptr %94(ptr noundef nonnull %9) #9
  %96 = icmp eq ptr %95, null
  br i1 %96, label %137, label %97

97:                                               ; preds = %93, %133
  %98 = phi ptr [ %135, %133 ], [ %95, %93 ]
  %99 = load ptr, ptr %43, align 8, !tbaa !56
  %100 = getelementptr inbounds %struct.ToolSettings, ptr %99, i64 0, i32 11
  %101 = load i8, ptr %100, align 2, !tbaa !74
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %119, label %104

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.ToolSettings, ptr %99, i64 0, i32 8
  %106 = load i16, ptr %105, align 2, !tbaa !112
  %107 = and i16 %106, 4
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.BMLoop, ptr %98, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !113
  %112 = getelementptr inbounds %struct.BMHeader, ptr %111, i64 0, i32 3
  %113 = load i8, ptr %112, align 1, !tbaa !100
  br label %126

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.BMLoop, ptr %98, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !115
  %117 = getelementptr inbounds %struct.BMHeader, ptr %116, i64 0, i32 3
  %118 = load i8, ptr %117, align 1, !tbaa !100
  br label %126

119:                                              ; preds = %97
  %120 = load ptr, ptr %98, align 8, !tbaa !101
  %121 = getelementptr inbounds i8, ptr %120, i64 %48
  %122 = getelementptr inbounds %struct.MLoopUV, ptr %121, i64 0, i32 1
  %123 = load i32, ptr %122, align 4, !tbaa !103
  %124 = trunc i32 %123 to i8
  %125 = lshr i8 %124, 1
  br label %126

126:                                              ; preds = %109, %114, %119
  %127 = phi i8 [ %113, %109 ], [ %118, %114 ], [ %125, %119 ]
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %98, align 8, !tbaa !101
  %132 = getelementptr inbounds i8, ptr %131, i64 %49
  call void @minmax_v2v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %132) #9
  br label %133

133:                                              ; preds = %126, %130
  %134 = load ptr, ptr %47, align 8, !tbaa !92
  %135 = call ptr %134(ptr noundef nonnull %9) #9
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %97, !llvm.loop !275

137:                                              ; preds = %133, %93, %90
  %138 = load ptr, ptr %36, align 8, !tbaa !92
  %139 = call ptr %138(ptr noundef nonnull %8) #9
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %50, !llvm.loop !276

141:                                              ; preds = %137, %32
  %142 = load float, ptr %7, align 4, !tbaa !127
  %143 = load float, ptr %6, align 4, !tbaa !127
  %144 = fsub float %142, %143
  %145 = load float, ptr %30, align 4, !tbaa !127
  %146 = load float, ptr %29, align 4, !tbaa !127
  %147 = fsub float %145, %146
  %148 = fcmp oge float %144, %147
  %149 = select i1 %148, i32 121, i32 120
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  br label %150

150:                                              ; preds = %141, %2
  %151 = phi i32 [ %149, %141 ], [ %1, %2 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %152 = call zeroext i8 @ED_uvedit_minmax(ptr noundef %26, ptr noundef %27, ptr noundef %18, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !185
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  call void @mid_v2_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  br label %155

155:                                              ; preds = %150, %154
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  %156 = add i32 %151, -119
  %157 = icmp ult i32 %156, 2
  br i1 %157, label %158, label %269

158:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #9
  %159 = load ptr, ptr %19, align 8, !tbaa !83
  %160 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  store i8 3, ptr %160, align 4, !tbaa !89
  %161 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %161, align 8, !tbaa !91
  %162 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %162, align 8, !tbaa !92
  %163 = getelementptr inbounds %struct.BMesh, ptr %159, i64 0, i32 12
  %164 = load ptr, ptr %163, align 8, !tbaa !93
  store ptr %164, ptr %10, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %10) #9
  %165 = load ptr, ptr %162, align 8, !tbaa !92
  %166 = call ptr %165(ptr noundef nonnull %10) #9
  %167 = icmp eq ptr %166, null
  br i1 %167, label %268, label %168

168:                                              ; preds = %158
  %169 = getelementptr inbounds %struct.Scene, ptr %26, i64 0, i32 20
  %170 = sext i32 %25 to i64
  %171 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  %172 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  %173 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  %174 = sext i32 %22 to i64
  %175 = sext i32 %22 to i64
  br label %176

176:                                              ; preds = %168, %264
  %177 = phi ptr [ %166, %168 ], [ %266, %264 ]
  %178 = load ptr, ptr %169, align 8, !tbaa !56
  %179 = getelementptr inbounds %struct.ToolSettings, ptr %178, i64 0, i32 11
  %180 = load i8, ptr %179, align 2, !tbaa !74
  %181 = and i8 %180, 2
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %202, label %183

183:                                              ; preds = %176
  %184 = load ptr, ptr %177, align 8, !tbaa !95
  %185 = getelementptr inbounds i8, ptr %184, i64 %170
  %186 = load ptr, ptr %185, align 8, !tbaa !98
  %187 = icmp eq ptr %186, %27
  br i1 %187, label %188, label %216

188:                                              ; preds = %183
  %189 = and i8 %180, 1
  %190 = icmp eq i8 %189, 0
  %191 = getelementptr inbounds %struct.BMHeader, ptr %177, i64 0, i32 3
  %192 = load i8, ptr %191, align 1, !tbaa !100
  br i1 %190, label %197, label %193

193:                                              ; preds = %188
  %194 = lshr i8 %192, 1
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  br label %216

197:                                              ; preds = %188
  %198 = and i8 %192, 2
  %199 = icmp eq i8 %198, 0
  %200 = and i8 %192, 1
  %201 = select i1 %199, i8 %200, i8 0
  br label %216

202:                                              ; preds = %176
  %203 = and i8 %180, 1
  %204 = icmp eq i8 %203, 0
  %205 = getelementptr inbounds %struct.BMHeader, ptr %177, i64 0, i32 3
  %206 = load i8, ptr %205, align 1, !tbaa !100
  br i1 %204, label %211, label %207

207:                                              ; preds = %202
  %208 = lshr i8 %206, 1
  %209 = and i8 %208, 1
  %210 = xor i8 %209, 1
  br label %216

211:                                              ; preds = %202
  %212 = and i8 %206, 2
  %213 = icmp eq i8 %212, 0
  %214 = and i8 %206, 1
  %215 = select i1 %213, i8 %214, i8 0
  br label %216

216:                                              ; preds = %183, %193, %197, %207, %211
  %217 = phi i8 [ 0, %183 ], [ %196, %193 ], [ %201, %197 ], [ %210, %207 ], [ %215, %211 ]
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %264, label %219

219:                                              ; preds = %216
  store i8 11, ptr %171, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %172, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %173, align 8, !tbaa !92
  store ptr %177, ptr %11, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %11) #9
  %220 = load ptr, ptr %173, align 8, !tbaa !92
  %221 = call ptr %220(ptr noundef nonnull %11) #9
  %222 = icmp eq ptr %221, null
  br i1 %222, label %264, label %223

223:                                              ; preds = %219, %260
  %224 = phi ptr [ %262, %260 ], [ %221, %219 ]
  %225 = load ptr, ptr %169, align 8, !tbaa !56
  %226 = getelementptr inbounds %struct.ToolSettings, ptr %225, i64 0, i32 11
  %227 = load i8, ptr %226, align 2, !tbaa !74
  %228 = and i8 %227, 1
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %245, label %230

230:                                              ; preds = %223
  %231 = getelementptr inbounds %struct.ToolSettings, ptr %225, i64 0, i32 8
  %232 = load i16, ptr %231, align 2, !tbaa !112
  %233 = and i16 %232, 4
  %234 = icmp eq i16 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.BMLoop, ptr %224, i64 0, i32 3
  %237 = load ptr, ptr %236, align 8, !tbaa !113
  %238 = getelementptr inbounds %struct.BMHeader, ptr %237, i64 0, i32 3
  %239 = load i8, ptr %238, align 1, !tbaa !100
  br label %252

240:                                              ; preds = %230
  %241 = getelementptr inbounds %struct.BMLoop, ptr %224, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !115
  %243 = getelementptr inbounds %struct.BMHeader, ptr %242, i64 0, i32 3
  %244 = load i8, ptr %243, align 1, !tbaa !100
  br label %252

245:                                              ; preds = %223
  %246 = load ptr, ptr %224, align 8, !tbaa !101
  %247 = getelementptr inbounds i8, ptr %246, i64 %174
  %248 = getelementptr inbounds %struct.MLoopUV, ptr %247, i64 0, i32 1
  %249 = load i32, ptr %248, align 4, !tbaa !103
  %250 = trunc i32 %249 to i8
  %251 = lshr i8 %250, 1
  br label %252

252:                                              ; preds = %235, %240, %245
  %253 = phi i8 [ %239, %235 ], [ %244, %240 ], [ %251, %245 ]
  %254 = and i8 %253, 1
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %252
  %257 = load ptr, ptr %224, align 8, !tbaa !101
  %258 = getelementptr inbounds i8, ptr %257, i64 %175
  %259 = load float, ptr %5, align 4, !tbaa !127
  store float %259, ptr %258, align 4, !tbaa !127
  br label %260

260:                                              ; preds = %252, %256
  %261 = load ptr, ptr %173, align 8, !tbaa !92
  %262 = call ptr %261(ptr noundef nonnull %11) #9
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %223, !llvm.loop !277

264:                                              ; preds = %260, %219, %216
  %265 = load ptr, ptr %162, align 8, !tbaa !92
  %266 = call ptr %265(ptr noundef nonnull %10) #9
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %176, !llvm.loop !278

268:                                              ; preds = %264, %158
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #9
  br label %269

269:                                              ; preds = %155, %268
  switch i32 %151, label %383 [
    i32 121, label %270
    i32 119, label %270
  ]

270:                                              ; preds = %269, %269
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #9
  %271 = load ptr, ptr %19, align 8, !tbaa !83
  %272 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 4
  store i8 3, ptr %272, align 4, !tbaa !89
  %273 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %273, align 8, !tbaa !91
  %274 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %274, align 8, !tbaa !92
  %275 = getelementptr inbounds %struct.BMesh, ptr %271, i64 0, i32 12
  %276 = load ptr, ptr %275, align 8, !tbaa !93
  store ptr %276, ptr %12, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %12) #9
  %277 = load ptr, ptr %274, align 8, !tbaa !92
  %278 = call ptr %277(ptr noundef nonnull %12) #9
  %279 = icmp eq ptr %278, null
  br i1 %279, label %382, label %280

280:                                              ; preds = %270
  %281 = getelementptr inbounds %struct.Scene, ptr %26, i64 0, i32 20
  %282 = sext i32 %25 to i64
  %283 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 4
  %284 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 1
  %285 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 2
  %286 = sext i32 %22 to i64
  %287 = sext i32 %22 to i64
  %288 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  br label %289

289:                                              ; preds = %280, %378
  %290 = phi ptr [ %278, %280 ], [ %380, %378 ]
  %291 = load ptr, ptr %281, align 8, !tbaa !56
  %292 = getelementptr inbounds %struct.ToolSettings, ptr %291, i64 0, i32 11
  %293 = load i8, ptr %292, align 2, !tbaa !74
  %294 = and i8 %293, 2
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %315, label %296

296:                                              ; preds = %289
  %297 = load ptr, ptr %290, align 8, !tbaa !95
  %298 = getelementptr inbounds i8, ptr %297, i64 %282
  %299 = load ptr, ptr %298, align 8, !tbaa !98
  %300 = icmp eq ptr %299, %27
  br i1 %300, label %301, label %329

301:                                              ; preds = %296
  %302 = and i8 %293, 1
  %303 = icmp eq i8 %302, 0
  %304 = getelementptr inbounds %struct.BMHeader, ptr %290, i64 0, i32 3
  %305 = load i8, ptr %304, align 1, !tbaa !100
  br i1 %303, label %310, label %306

306:                                              ; preds = %301
  %307 = lshr i8 %305, 1
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  br label %329

310:                                              ; preds = %301
  %311 = and i8 %305, 2
  %312 = icmp eq i8 %311, 0
  %313 = and i8 %305, 1
  %314 = select i1 %312, i8 %313, i8 0
  br label %329

315:                                              ; preds = %289
  %316 = and i8 %293, 1
  %317 = icmp eq i8 %316, 0
  %318 = getelementptr inbounds %struct.BMHeader, ptr %290, i64 0, i32 3
  %319 = load i8, ptr %318, align 1, !tbaa !100
  br i1 %317, label %324, label %320

320:                                              ; preds = %315
  %321 = lshr i8 %319, 1
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  br label %329

324:                                              ; preds = %315
  %325 = and i8 %319, 2
  %326 = icmp eq i8 %325, 0
  %327 = and i8 %319, 1
  %328 = select i1 %326, i8 %327, i8 0
  br label %329

329:                                              ; preds = %296, %306, %310, %320, %324
  %330 = phi i8 [ 0, %296 ], [ %309, %306 ], [ %314, %310 ], [ %323, %320 ], [ %328, %324 ]
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %378, label %332

332:                                              ; preds = %329
  store i8 11, ptr %283, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %284, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %285, align 8, !tbaa !92
  store ptr %290, ptr %13, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %13) #9
  %333 = load ptr, ptr %285, align 8, !tbaa !92
  %334 = call ptr %333(ptr noundef nonnull %13) #9
  %335 = icmp eq ptr %334, null
  br i1 %335, label %378, label %336

336:                                              ; preds = %332, %374
  %337 = phi ptr [ %376, %374 ], [ %334, %332 ]
  %338 = load ptr, ptr %281, align 8, !tbaa !56
  %339 = getelementptr inbounds %struct.ToolSettings, ptr %338, i64 0, i32 11
  %340 = load i8, ptr %339, align 2, !tbaa !74
  %341 = and i8 %340, 1
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %358, label %343

343:                                              ; preds = %336
  %344 = getelementptr inbounds %struct.ToolSettings, ptr %338, i64 0, i32 8
  %345 = load i16, ptr %344, align 2, !tbaa !112
  %346 = and i16 %345, 4
  %347 = icmp eq i16 %346, 0
  br i1 %347, label %353, label %348

348:                                              ; preds = %343
  %349 = getelementptr inbounds %struct.BMLoop, ptr %337, i64 0, i32 3
  %350 = load ptr, ptr %349, align 8, !tbaa !113
  %351 = getelementptr inbounds %struct.BMHeader, ptr %350, i64 0, i32 3
  %352 = load i8, ptr %351, align 1, !tbaa !100
  br label %365

353:                                              ; preds = %343
  %354 = getelementptr inbounds %struct.BMLoop, ptr %337, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !115
  %356 = getelementptr inbounds %struct.BMHeader, ptr %355, i64 0, i32 3
  %357 = load i8, ptr %356, align 1, !tbaa !100
  br label %365

358:                                              ; preds = %336
  %359 = load ptr, ptr %337, align 8, !tbaa !101
  %360 = getelementptr inbounds i8, ptr %359, i64 %286
  %361 = getelementptr inbounds %struct.MLoopUV, ptr %360, i64 0, i32 1
  %362 = load i32, ptr %361, align 4, !tbaa !103
  %363 = trunc i32 %362 to i8
  %364 = lshr i8 %363, 1
  br label %365

365:                                              ; preds = %348, %353, %358
  %366 = phi i8 [ %352, %348 ], [ %357, %353 ], [ %364, %358 ]
  %367 = and i8 %366, 1
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %374, label %369

369:                                              ; preds = %365
  %370 = load ptr, ptr %337, align 8, !tbaa !101
  %371 = getelementptr inbounds i8, ptr %370, i64 %287
  %372 = load float, ptr %288, align 4, !tbaa !127
  %373 = getelementptr inbounds [2 x float], ptr %371, i64 0, i64 1
  store float %372, ptr %373, align 4, !tbaa !127
  br label %374

374:                                              ; preds = %365, %369
  %375 = load ptr, ptr %285, align 8, !tbaa !92
  %376 = call ptr %375(ptr noundef nonnull %13) #9
  %377 = icmp eq ptr %376, null
  br i1 %377, label %378, label %336, !llvm.loop !279

378:                                              ; preds = %374, %332, %329
  %379 = load ptr, ptr %274, align 8, !tbaa !92
  %380 = call ptr %379(ptr noundef nonnull %12) #9
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %289, !llvm.loop !280

382:                                              ; preds = %378, %270
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #9
  br label %383

383:                                              ; preds = %269, %382
  %384 = add i32 %151, -115
  %385 = icmp ult i32 %384, 3
  br i1 %385, label %386, label %802

386:                                              ; preds = %383
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #9
  %387 = load ptr, ptr %19, align 8, !tbaa !83
  %388 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 4
  store i8 1, ptr %388, align 4, !tbaa !89
  %389 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %389, align 8, !tbaa !91
  %390 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %390, align 8, !tbaa !92
  %391 = getelementptr inbounds %struct.BMesh, ptr %387, i64 0, i32 9
  %392 = load ptr, ptr %391, align 8, !tbaa !226
  store ptr %392, ptr %14, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %14) #9
  %393 = load ptr, ptr %390, align 8, !tbaa !92
  %394 = call ptr %393(ptr noundef nonnull %14) #9
  %395 = icmp eq ptr %394, null
  br i1 %395, label %404, label %396

396:                                              ; preds = %386, %396
  %397 = phi ptr [ %402, %396 ], [ %394, %386 ]
  %398 = getelementptr inbounds %struct.BMHeader, ptr %397, i64 0, i32 3
  %399 = load i8, ptr %398, align 1, !tbaa !100
  %400 = and i8 %399, -17
  store i8 %400, ptr %398, align 1, !tbaa !100
  %401 = load ptr, ptr %390, align 8, !tbaa !92
  %402 = call ptr %401(ptr noundef nonnull %14) #9
  %403 = icmp eq ptr %402, null
  br i1 %403, label %404, label %396, !llvm.loop !281

404:                                              ; preds = %396, %386
  %405 = load ptr, ptr %19, align 8, !tbaa !83
  store i8 1, ptr %388, align 4, !tbaa !89
  store ptr @bmiter__elem_of_mesh_begin, ptr %389, align 8, !tbaa !91
  store ptr @bmiter__elem_of_mesh_step, ptr %390, align 8, !tbaa !92
  %406 = getelementptr inbounds %struct.BMesh, ptr %405, i64 0, i32 9
  %407 = load ptr, ptr %406, align 8, !tbaa !226
  store ptr %407, ptr %14, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %14) #9
  %408 = load ptr, ptr %390, align 8, !tbaa !92
  %409 = call ptr %408(ptr noundef nonnull %14) #9
  %410 = icmp eq ptr %409, null
  br i1 %410, label %507, label %411

411:                                              ; preds = %404
  %412 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 4
  %413 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 1
  %414 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 2
  %415 = getelementptr inbounds %struct.Scene, ptr %26, i64 0, i32 20
  %416 = sext i32 %25 to i64
  %417 = sext i32 %22 to i64
  br label %418

418:                                              ; preds = %411, %503
  %419 = phi ptr [ %409, %411 ], [ %505, %503 ]
  store i8 6, ptr %412, align 4, !tbaa !89
  store ptr @bmiter__loop_of_vert_begin, ptr %413, align 8, !tbaa !91
  store ptr @bmiter__loop_of_vert_step, ptr %414, align 8, !tbaa !92
  store ptr %419, ptr %15, align 8, !tbaa !94
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %15) #9
  %420 = load ptr, ptr %414, align 8, !tbaa !92
  %421 = call ptr %420(ptr noundef nonnull %15) #9
  %422 = icmp eq ptr %421, null
  br i1 %422, label %503, label %423

423:                                              ; preds = %418, %499
  %424 = phi ptr [ %501, %499 ], [ %421, %418 ]
  %425 = getelementptr inbounds %struct.BMLoop, ptr %424, i64 0, i32 3
  %426 = load ptr, ptr %425, align 8, !tbaa !113
  %427 = load ptr, ptr %415, align 8, !tbaa !56
  %428 = getelementptr inbounds %struct.ToolSettings, ptr %427, i64 0, i32 11
  %429 = load i8, ptr %428, align 2, !tbaa !74
  %430 = and i8 %429, 2
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %451, label %432

432:                                              ; preds = %423
  %433 = load ptr, ptr %426, align 8, !tbaa !95
  %434 = getelementptr inbounds i8, ptr %433, i64 %416
  %435 = load ptr, ptr %434, align 8, !tbaa !98
  %436 = icmp eq ptr %435, %27
  br i1 %436, label %437, label %465

437:                                              ; preds = %432
  %438 = and i8 %429, 1
  %439 = icmp eq i8 %438, 0
  %440 = getelementptr inbounds %struct.BMHeader, ptr %426, i64 0, i32 3
  %441 = load i8, ptr %440, align 1, !tbaa !100
  br i1 %439, label %446, label %442

442:                                              ; preds = %437
  %443 = lshr i8 %441, 1
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  br label %465

446:                                              ; preds = %437
  %447 = and i8 %441, 2
  %448 = icmp eq i8 %447, 0
  %449 = and i8 %441, 1
  %450 = select i1 %448, i8 %449, i8 0
  br label %465

451:                                              ; preds = %423
  %452 = and i8 %429, 1
  %453 = icmp eq i8 %452, 0
  %454 = getelementptr inbounds %struct.BMHeader, ptr %426, i64 0, i32 3
  %455 = load i8, ptr %454, align 1, !tbaa !100
  br i1 %453, label %460, label %456

456:                                              ; preds = %451
  %457 = lshr i8 %455, 1
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  br label %465

460:                                              ; preds = %451
  %461 = and i8 %455, 2
  %462 = icmp eq i8 %461, 0
  %463 = and i8 %455, 1
  %464 = select i1 %462, i8 %463, i8 0
  br label %465

465:                                              ; preds = %432, %442, %446, %456, %460
  %466 = phi i8 [ 0, %432 ], [ %445, %442 ], [ %450, %446 ], [ %459, %456 ], [ %464, %460 ]
  %467 = icmp eq i8 %466, 0
  br i1 %467, label %499, label %468

468:                                              ; preds = %465
  %469 = and i8 %429, 1
  %470 = icmp eq i8 %469, 0
  br i1 %470, label %484, label %471

471:                                              ; preds = %468
  %472 = getelementptr inbounds %struct.ToolSettings, ptr %427, i64 0, i32 8
  %473 = load i16, ptr %472, align 2, !tbaa !112
  %474 = and i16 %473, 4
  %475 = icmp eq i16 %474, 0
  br i1 %475, label %479, label %476

476:                                              ; preds = %471
  %477 = getelementptr inbounds %struct.BMHeader, ptr %426, i64 0, i32 3
  %478 = load i8, ptr %477, align 1, !tbaa !100
  br label %491

479:                                              ; preds = %471
  %480 = getelementptr inbounds %struct.BMLoop, ptr %424, i64 0, i32 1
  %481 = load ptr, ptr %480, align 8, !tbaa !115
  %482 = getelementptr inbounds %struct.BMHeader, ptr %481, i64 0, i32 3
  %483 = load i8, ptr %482, align 1, !tbaa !100
  br label %491

484:                                              ; preds = %468
  %485 = load ptr, ptr %424, align 8, !tbaa !101
  %486 = getelementptr inbounds i8, ptr %485, i64 %417
  %487 = getelementptr inbounds %struct.MLoopUV, ptr %486, i64 0, i32 1
  %488 = load i32, ptr %487, align 4, !tbaa !103
  %489 = trunc i32 %488 to i8
  %490 = lshr i8 %489, 1
  br label %491

491:                                              ; preds = %476, %479, %484
  %492 = phi i8 [ %478, %476 ], [ %483, %479 ], [ %490, %484 ]
  %493 = and i8 %492, 1
  %494 = icmp eq i8 %493, 0
  br i1 %494, label %499, label %495

495:                                              ; preds = %491
  %496 = getelementptr inbounds %struct.BMHeader, ptr %419, i64 0, i32 3
  %497 = load i8, ptr %496, align 1, !tbaa !100
  %498 = or i8 %497, 16
  store i8 %498, ptr %496, align 1, !tbaa !100
  br label %503

499:                                              ; preds = %491, %465
  %500 = load ptr, ptr %414, align 8, !tbaa !92
  %501 = call ptr %500(ptr noundef nonnull %15) #9
  %502 = icmp eq ptr %501, null
  br i1 %502, label %503, label %423, !llvm.loop !282

503:                                              ; preds = %499, %418, %495
  %504 = load ptr, ptr %390, align 8, !tbaa !92
  %505 = call ptr %504(ptr noundef nonnull %14) #9
  %506 = icmp eq ptr %505, null
  br i1 %506, label %507, label %418, !llvm.loop !283

507:                                              ; preds = %503, %404
  %508 = load ptr, ptr %19, align 8, !tbaa !83
  store i8 2, ptr %388, align 4, !tbaa !89
  store ptr @bmiter__elem_of_mesh_begin, ptr %389, align 8, !tbaa !91
  store ptr @bmiter__elem_of_mesh_step, ptr %390, align 8, !tbaa !92
  %509 = getelementptr inbounds %struct.BMesh, ptr %508, i64 0, i32 10
  %510 = load ptr, ptr %509, align 8, !tbaa !284
  store ptr %510, ptr %14, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %14) #9
  %511 = load ptr, ptr %390, align 8, !tbaa !92
  %512 = call ptr %511(ptr noundef nonnull %14) #9
  %513 = icmp eq ptr %512, null
  br i1 %513, label %541, label %514

514:                                              ; preds = %507, %537
  %515 = phi ptr [ %539, %537 ], [ %512, %507 ]
  %516 = getelementptr inbounds %struct.BMEdge, ptr %515, i64 0, i32 2
  %517 = load ptr, ptr %516, align 8, !tbaa !117
  %518 = getelementptr inbounds %struct.BMHeader, ptr %517, i64 0, i32 3
  %519 = load i8, ptr %518, align 1, !tbaa !100
  %520 = and i8 %519, 16
  %521 = icmp eq i8 %520, 0
  br i1 %521, label %533, label %522

522:                                              ; preds = %514
  %523 = getelementptr inbounds %struct.BMEdge, ptr %515, i64 0, i32 3
  %524 = load ptr, ptr %523, align 8, !tbaa !120
  %525 = getelementptr inbounds %struct.BMHeader, ptr %524, i64 0, i32 3
  %526 = load i8, ptr %525, align 1, !tbaa !100
  %527 = and i8 %526, 16
  %528 = icmp eq i8 %527, 0
  br i1 %528, label %533, label %529

529:                                              ; preds = %522
  %530 = getelementptr inbounds %struct.BMHeader, ptr %515, i64 0, i32 3
  %531 = load i8, ptr %530, align 1, !tbaa !100
  %532 = or i8 %531, 16
  store i8 %532, ptr %530, align 1, !tbaa !100
  br label %537

533:                                              ; preds = %514, %522
  %534 = getelementptr inbounds %struct.BMHeader, ptr %515, i64 0, i32 3
  %535 = load i8, ptr %534, align 1, !tbaa !100
  %536 = and i8 %535, -17
  store i8 %536, ptr %534, align 1, !tbaa !100
  br label %537

537:                                              ; preds = %529, %533
  %538 = load ptr, ptr %390, align 8, !tbaa !92
  %539 = call ptr %538(ptr noundef nonnull %14) #9
  %540 = icmp eq ptr %539, null
  br i1 %540, label %541, label %514, !llvm.loop !285

541:                                              ; preds = %537, %507
  %542 = load ptr, ptr %19, align 8, !tbaa !83
  store i8 1, ptr %388, align 4, !tbaa !89
  store ptr @bmiter__elem_of_mesh_begin, ptr %389, align 8, !tbaa !91
  store ptr @bmiter__elem_of_mesh_step, ptr %390, align 8, !tbaa !92
  %543 = getelementptr inbounds %struct.BMesh, ptr %542, i64 0, i32 9
  %544 = load ptr, ptr %543, align 8, !tbaa !226
  store ptr %544, ptr %14, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %14) #9
  %545 = load ptr, ptr %390, align 8, !tbaa !92
  %546 = call ptr %545(ptr noundef nonnull %14) #9
  %547 = icmp eq ptr %546, null
  br i1 %547, label %578, label %548

548:                                              ; preds = %541
  %549 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 4
  %550 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 1
  %551 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 2
  br label %552

552:                                              ; preds = %548, %574
  %553 = phi ptr [ null, %548 ], [ %573, %574 ]
  %554 = phi ptr [ %546, %548 ], [ %576, %574 ]
  store i8 4, ptr %549, align 4, !tbaa !89
  store ptr @bmiter__edge_of_vert_begin, ptr %550, align 8, !tbaa !91
  store ptr @bmiter__edge_of_vert_step, ptr %551, align 8, !tbaa !92
  store ptr %554, ptr %16, align 8, !tbaa !94
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %16) #9
  %555 = load ptr, ptr %551, align 8, !tbaa !92
  %556 = call ptr %555(ptr noundef nonnull %16) #9
  %557 = icmp eq ptr %556, null
  br i1 %557, label %570, label %558

558:                                              ; preds = %552, %558
  %559 = phi i32 [ %566, %558 ], [ 0, %552 ]
  %560 = phi ptr [ %568, %558 ], [ %556, %552 ]
  %561 = getelementptr inbounds %struct.BMHeader, ptr %560, i64 0, i32 3
  %562 = load i8, ptr %561, align 1, !tbaa !100
  %563 = lshr i8 %562, 4
  %564 = and i8 %563, 1
  %565 = zext nneg i8 %564 to i32
  %566 = add i32 %559, %565
  %567 = load ptr, ptr %551, align 8, !tbaa !92
  %568 = call ptr %567(ptr noundef nonnull %16) #9
  %569 = icmp eq ptr %568, null
  br i1 %569, label %570, label %558, !llvm.loop !286

570:                                              ; preds = %558, %552
  %571 = phi i32 [ 0, %552 ], [ %566, %558 ]
  %572 = icmp eq i32 %571, 1
  %573 = select i1 %572, ptr %554, ptr %553
  br i1 %572, label %578, label %574

574:                                              ; preds = %570
  %575 = load ptr, ptr %390, align 8, !tbaa !92
  %576 = call ptr %575(ptr noundef nonnull %14) #9
  %577 = icmp eq ptr %576, null
  br i1 %577, label %578, label %552, !llvm.loop !287

578:                                              ; preds = %574, %570, %541
  %579 = phi ptr [ null, %541 ], [ %573, %570 ], [ %573, %574 ]
  %580 = icmp eq ptr %579, null
  br i1 %580, label %801, label %581

581:                                              ; preds = %578
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #9
  store ptr null, ptr %17, align 8, !tbaa !55
  %582 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 4
  %583 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 1
  %584 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 2
  br label %585

585:                                              ; preds = %581, %636
  %586 = phi i32 [ 1, %581 ], [ %639, %636 ]
  %587 = phi i64 [ 0, %581 ], [ %597, %636 ]
  %588 = phi ptr [ %579, %581 ], [ %637, %636 ]
  %589 = load ptr, ptr %17, align 8
  %590 = icmp eq ptr %589, null
  br i1 %590, label %595, label %591

591:                                              ; preds = %585
  %592 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !55
  %593 = call i64 %592(ptr noundef nonnull %589) #9
  %594 = lshr i64 %593, 3
  br label %595

595:                                              ; preds = %591, %585
  %596 = phi i64 [ %594, %591 ], [ 0, %585 ]
  %597 = add nuw i64 %587, 1
  %598 = icmp ugt i64 %596, %587
  br i1 %598, label %601, label %599

599:                                              ; preds = %595
  %600 = trunc i64 %587 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %17, ptr noundef null, i32 noundef 8, i32 noundef %600, i32 noundef 1, ptr noundef nonnull @.str.128) #9
  br label %601

601:                                              ; preds = %599, %595
  %602 = load ptr, ptr %17, align 8, !tbaa !55
  %603 = getelementptr inbounds ptr, ptr %602, i64 %587
  store ptr %588, ptr %603, align 8, !tbaa !55
  %604 = getelementptr inbounds %struct.BMHeader, ptr %588, i64 0, i32 3
  %605 = load i8, ptr %604, align 1, !tbaa !100
  %606 = and i8 %605, -17
  store i8 %606, ptr %604, align 1, !tbaa !100
  store i8 4, ptr %582, align 4, !tbaa !89
  store ptr @bmiter__edge_of_vert_begin, ptr %583, align 8, !tbaa !91
  store ptr @bmiter__edge_of_vert_step, ptr %584, align 8, !tbaa !92
  store ptr %588, ptr %16, align 8, !tbaa !94
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %16) #9
  %607 = load ptr, ptr %584, align 8, !tbaa !92
  %608 = call ptr %607(ptr noundef nonnull %16) #9
  %609 = icmp eq ptr %608, null
  br i1 %609, label %636, label %610

610:                                              ; preds = %601, %631
  %611 = phi ptr [ %632, %631 ], [ null, %601 ]
  %612 = phi ptr [ %634, %631 ], [ %608, %601 ]
  %613 = getelementptr inbounds %struct.BMHeader, ptr %612, i64 0, i32 3
  %614 = load i8, ptr %613, align 1, !tbaa !100
  %615 = and i8 %614, 16
  %616 = icmp eq i8 %615, 0
  br i1 %616, label %631, label %617

617:                                              ; preds = %610
  %618 = getelementptr inbounds %struct.BMEdge, ptr %612, i64 0, i32 2
  %619 = load ptr, ptr %618, align 8, !tbaa !117
  %620 = icmp eq ptr %619, %588
  %621 = getelementptr inbounds %struct.BMEdge, ptr %612, i64 0, i32 3
  %622 = load ptr, ptr %621, align 8, !tbaa !120
  %623 = icmp eq ptr %622, %588
  %624 = select i1 %623, ptr %619, ptr null
  %625 = select i1 %620, ptr %622, ptr %624
  %626 = getelementptr inbounds %struct.BMHeader, ptr %625, i64 0, i32 3
  %627 = load i8, ptr %626, align 1, !tbaa !100
  %628 = and i8 %627, 16
  %629 = icmp eq i8 %628, 0
  %630 = select i1 %629, ptr %611, ptr %625
  br i1 %629, label %631, label %636

631:                                              ; preds = %617, %610
  %632 = phi ptr [ %630, %617 ], [ %611, %610 ]
  %633 = load ptr, ptr %584, align 8, !tbaa !92
  %634 = call ptr %633(ptr noundef nonnull %16) #9
  %635 = icmp eq ptr %634, null
  br i1 %635, label %636, label %610, !llvm.loop !288

636:                                              ; preds = %631, %617, %601
  %637 = phi ptr [ null, %601 ], [ %632, %631 ], [ %630, %617 ]
  %638 = icmp eq ptr %637, null
  %639 = add nuw i32 %586, 1
  br i1 %638, label %640, label %585, !llvm.loop !289

640:                                              ; preds = %636
  %641 = and i64 %587, 4294967294
  %642 = icmp eq i64 %641, 0
  br i1 %642, label %795, label %643

643:                                              ; preds = %640
  %644 = load ptr, ptr %17, align 8, !tbaa !55
  %645 = load ptr, ptr %644, align 8, !tbaa !55
  %646 = call fastcc ptr @uv_sel_co_from_eve(ptr noundef %26, ptr noundef %27, ptr noundef nonnull %19, ptr noundef %645)
  %647 = load ptr, ptr %17, align 8, !tbaa !55
  %648 = and i64 %597, 4294967295
  %649 = getelementptr ptr, ptr %647, i64 %648
  %650 = getelementptr ptr, ptr %649, i64 -1
  %651 = load ptr, ptr %650, align 8, !tbaa !55
  %652 = call fastcc ptr @uv_sel_co_from_eve(ptr noundef %26, ptr noundef %27, ptr noundef nonnull %19, ptr noundef %651)
  switch i32 %151, label %677 [
    i32 116, label %653
    i32 117, label %665
  ]

653:                                              ; preds = %643
  %654 = getelementptr inbounds float, ptr %646, i64 1
  %655 = load float, ptr %654, align 4, !tbaa !127
  %656 = getelementptr inbounds float, ptr %652, i64 1
  %657 = load float, ptr %656, align 4, !tbaa !127
  %658 = fcmp oeq float %655, %657
  br i1 %658, label %677, label %659

659:                                              ; preds = %653
  %660 = load float, ptr %652, align 4, !tbaa !127
  %661 = load float, ptr %646, align 4, !tbaa !127
  %662 = fsub float %660, %661
  %663 = fsub float %657, %655
  %664 = fdiv float %662, %663
  br label %677

665:                                              ; preds = %643
  %666 = load float, ptr %646, align 4, !tbaa !127
  %667 = load float, ptr %652, align 4, !tbaa !127
  %668 = fcmp oeq float %666, %667
  br i1 %668, label %677, label %669

669:                                              ; preds = %665
  %670 = getelementptr inbounds float, ptr %652, i64 1
  %671 = load float, ptr %670, align 4, !tbaa !127
  %672 = getelementptr inbounds float, ptr %646, i64 1
  %673 = load float, ptr %672, align 4, !tbaa !127
  %674 = fsub float %671, %673
  %675 = fsub float %667, %666
  %676 = fdiv float %674, %675
  br label %677

677:                                              ; preds = %665, %643, %653, %669, %659
  %678 = phi float [ %664, %659 ], [ %676, %669 ], [ 0.000000e+00, %653 ], [ 0.000000e+00, %643 ], [ 0.000000e+00, %665 ]
  %679 = phi i32 [ 116, %659 ], [ %151, %669 ], [ 115, %653 ], [ %151, %643 ], [ 115, %665 ]
  %680 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 4
  %681 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 1
  %682 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 2
  %683 = getelementptr inbounds %struct.Scene, ptr %26, i64 0, i32 20
  %684 = sext i32 %25 to i64
  %685 = sext i32 %22 to i64
  %686 = sext i32 %22 to i64
  %687 = getelementptr inbounds float, ptr %646, i64 1
  %688 = getelementptr inbounds float, ptr %646, i64 1
  %689 = zext i32 %586 to i64
  br label %690

690:                                              ; preds = %677, %792
  %691 = phi i64 [ 0, %677 ], [ %793, %792 ]
  %692 = load ptr, ptr %17, align 8, !tbaa !55
  %693 = getelementptr inbounds ptr, ptr %692, i64 %691
  %694 = load ptr, ptr %693, align 8, !tbaa !55
  store i8 6, ptr %680, align 4, !tbaa !89
  store ptr @bmiter__loop_of_vert_begin, ptr %681, align 8, !tbaa !91
  store ptr @bmiter__loop_of_vert_step, ptr %682, align 8, !tbaa !92
  store ptr %694, ptr %15, align 8, !tbaa !94
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %15) #9
  %695 = load ptr, ptr %682, align 8, !tbaa !92
  %696 = call ptr %695(ptr noundef nonnull %15) #9
  %697 = icmp eq ptr %696, null
  br i1 %697, label %792, label %698

698:                                              ; preds = %690, %788
  %699 = phi ptr [ %790, %788 ], [ %696, %690 ]
  %700 = getelementptr inbounds %struct.BMLoop, ptr %699, i64 0, i32 3
  %701 = load ptr, ptr %700, align 8, !tbaa !113
  %702 = load ptr, ptr %683, align 8, !tbaa !56
  %703 = getelementptr inbounds %struct.ToolSettings, ptr %702, i64 0, i32 11
  %704 = load i8, ptr %703, align 2, !tbaa !74
  %705 = and i8 %704, 2
  %706 = icmp eq i8 %705, 0
  br i1 %706, label %726, label %707

707:                                              ; preds = %698
  %708 = load ptr, ptr %701, align 8, !tbaa !95
  %709 = getelementptr inbounds i8, ptr %708, i64 %684
  %710 = load ptr, ptr %709, align 8, !tbaa !98
  %711 = icmp eq ptr %710, %27
  br i1 %711, label %712, label %740

712:                                              ; preds = %707
  %713 = and i8 %704, 1
  %714 = icmp eq i8 %713, 0
  %715 = getelementptr inbounds %struct.BMHeader, ptr %701, i64 0, i32 3
  %716 = load i8, ptr %715, align 1, !tbaa !100
  br i1 %714, label %721, label %717

717:                                              ; preds = %712
  %718 = lshr i8 %716, 1
  %719 = and i8 %718, 1
  %720 = xor i8 %719, 1
  br label %740

721:                                              ; preds = %712
  %722 = and i8 %716, 2
  %723 = icmp eq i8 %722, 0
  %724 = and i8 %716, 1
  %725 = select i1 %723, i8 %724, i8 0
  br label %740

726:                                              ; preds = %698
  %727 = and i8 %704, 1
  %728 = icmp eq i8 %727, 0
  %729 = getelementptr inbounds %struct.BMHeader, ptr %701, i64 0, i32 3
  %730 = load i8, ptr %729, align 1, !tbaa !100
  br i1 %728, label %735, label %731

731:                                              ; preds = %726
  %732 = lshr i8 %730, 1
  %733 = and i8 %732, 1
  %734 = xor i8 %733, 1
  br label %740

735:                                              ; preds = %726
  %736 = and i8 %730, 2
  %737 = icmp eq i8 %736, 0
  %738 = and i8 %730, 1
  %739 = select i1 %737, i8 %738, i8 0
  br label %740

740:                                              ; preds = %707, %717, %721, %731, %735
  %741 = phi i8 [ 0, %707 ], [ %720, %717 ], [ %725, %721 ], [ %734, %731 ], [ %739, %735 ]
  %742 = icmp eq i8 %741, 0
  br i1 %742, label %788, label %743

743:                                              ; preds = %740
  %744 = and i8 %704, 1
  %745 = icmp eq i8 %744, 0
  br i1 %745, label %759, label %746

746:                                              ; preds = %743
  %747 = getelementptr inbounds %struct.ToolSettings, ptr %702, i64 0, i32 8
  %748 = load i16, ptr %747, align 2, !tbaa !112
  %749 = and i16 %748, 4
  %750 = icmp eq i16 %749, 0
  br i1 %750, label %754, label %751

751:                                              ; preds = %746
  %752 = getelementptr inbounds %struct.BMHeader, ptr %701, i64 0, i32 3
  %753 = load i8, ptr %752, align 1, !tbaa !100
  br label %766

754:                                              ; preds = %746
  %755 = getelementptr inbounds %struct.BMLoop, ptr %699, i64 0, i32 1
  %756 = load ptr, ptr %755, align 8, !tbaa !115
  %757 = getelementptr inbounds %struct.BMHeader, ptr %756, i64 0, i32 3
  %758 = load i8, ptr %757, align 1, !tbaa !100
  br label %766

759:                                              ; preds = %743
  %760 = load ptr, ptr %699, align 8, !tbaa !101
  %761 = getelementptr inbounds i8, ptr %760, i64 %685
  %762 = getelementptr inbounds %struct.MLoopUV, ptr %761, i64 0, i32 1
  %763 = load i32, ptr %762, align 4, !tbaa !103
  %764 = trunc i32 %763 to i8
  %765 = lshr i8 %764, 1
  br label %766

766:                                              ; preds = %751, %754, %759
  %767 = phi i8 [ %753, %751 ], [ %758, %754 ], [ %765, %759 ]
  %768 = and i8 %767, 1
  %769 = icmp eq i8 %768, 0
  br i1 %769, label %788, label %770

770:                                              ; preds = %766
  %771 = load ptr, ptr %699, align 8, !tbaa !101
  %772 = getelementptr inbounds i8, ptr %771, i64 %686
  switch i32 %679, label %787 [
    i32 116, label %773
    i32 117, label %780
  ]

773:                                              ; preds = %770
  %774 = getelementptr inbounds [2 x float], ptr %772, i64 0, i64 1
  %775 = load float, ptr %774, align 4, !tbaa !127
  %776 = load float, ptr %688, align 4, !tbaa !127
  %777 = fsub float %775, %776
  %778 = load float, ptr %646, align 4, !tbaa !127
  %779 = call float @llvm.fmuladd.f32(float %678, float %777, float %778)
  store float %779, ptr %772, align 4, !tbaa !127
  br label %788

780:                                              ; preds = %770
  %781 = load float, ptr %772, align 4, !tbaa !127
  %782 = load float, ptr %646, align 4, !tbaa !127
  %783 = fsub float %781, %782
  %784 = load float, ptr %687, align 4, !tbaa !127
  %785 = call float @llvm.fmuladd.f32(float %678, float %783, float %784)
  %786 = getelementptr inbounds [2 x float], ptr %772, i64 0, i64 1
  store float %785, ptr %786, align 4, !tbaa !127
  br label %788

787:                                              ; preds = %770
  call void @closest_to_line_segment_v2(ptr noundef %772, ptr noundef %772, ptr noundef %646, ptr noundef %652) #9
  br label %788

788:                                              ; preds = %773, %787, %780, %766, %740
  %789 = load ptr, ptr %682, align 8, !tbaa !92
  %790 = call ptr %789(ptr noundef nonnull %15) #9
  %791 = icmp eq ptr %790, null
  br i1 %791, label %792, label %698, !llvm.loop !290

792:                                              ; preds = %788, %690
  %793 = add nuw nsw i64 %691, 1
  %794 = icmp eq i64 %793, %689
  br i1 %794, label %795, label %690, !llvm.loop !291

795:                                              ; preds = %792, %640
  %796 = load ptr, ptr %17, align 8, !tbaa !55
  %797 = icmp eq ptr %796, null
  br i1 %797, label %800, label %798

798:                                              ; preds = %795
  %799 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %799(ptr noundef nonnull %796) #9
  br label %800

800:                                              ; preds = %798, %795
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #9
  br label %801

801:                                              ; preds = %578, %800
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #9
  br label %802

802:                                              ; preds = %383, %801
  %803 = icmp eq ptr %28, null
  br i1 %803, label %810, label %804

804:                                              ; preds = %802
  %805 = getelementptr inbounds %struct.SpaceImage, ptr %28, i64 0, i32 4
  %806 = load i32, ptr %805, align 4, !tbaa !121
  %807 = and i32 %806, 2048
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %810, label %809

809:                                              ; preds = %804
  call void @ED_uvedit_live_unwrap_begin(ptr noundef %26, ptr noundef %18) #9
  call void @ED_uvedit_live_unwrap_re_solve() #9
  call void @ED_uvedit_live_unwrap_end(i16 noundef signext 0) #9
  br label %810

810:                                              ; preds = %802, %804, %809
  %811 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 19
  %812 = load ptr, ptr %811, align 8, !tbaa !88
  call void @DAG_id_tag_update(ptr noundef %812, i16 noundef signext 0) #9
  %813 = load ptr, ptr %811, align 8, !tbaa !88
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %813) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret void
}

declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @uv_sel_co_from_eve(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %6 = load ptr, ptr %2, align 8, !tbaa !83
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 26
  %8 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %7, i32 noundef 16) #9
  %9 = load ptr, ptr %2, align 8, !tbaa !83
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 27
  %11 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %10, i32 noundef 15) #9
  %12 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 6, ptr %12, align 4, !tbaa !89
  %13 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %13, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %14, align 8, !tbaa !92
  store ptr %3, ptr %5, align 8, !tbaa !94
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %5) #9
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = call ptr %15(ptr noundef nonnull %5) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %106, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %20 = sext i32 %11 to i64
  %21 = sext i32 %8 to i64
  %22 = sext i32 %8 to i64
  br label %23

23:                                               ; preds = %18, %102
  %24 = phi ptr [ undef, %18 ], [ %101, %102 ]
  %25 = phi ptr [ %16, %18 ], [ %104, %102 ]
  %26 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !113
  %28 = load ptr, ptr %19, align 8, !tbaa !56
  %29 = getelementptr inbounds %struct.ToolSettings, ptr %28, i64 0, i32 11
  %30 = load i8, ptr %29, align 2, !tbaa !74
  %31 = and i8 %30, 2
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %23
  %34 = load ptr, ptr %27, align 8, !tbaa !95
  %35 = getelementptr inbounds i8, ptr %34, i64 %20
  %36 = load ptr, ptr %35, align 8, !tbaa !98
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %38, label %66

38:                                               ; preds = %33
  %39 = and i8 %30, 1
  %40 = icmp eq i8 %39, 0
  %41 = getelementptr inbounds %struct.BMHeader, ptr %27, i64 0, i32 3
  %42 = load i8, ptr %41, align 1, !tbaa !100
  br i1 %40, label %47, label %43

43:                                               ; preds = %38
  %44 = lshr i8 %42, 1
  %45 = and i8 %44, 1
  %46 = xor i8 %45, 1
  br label %66

47:                                               ; preds = %38
  %48 = and i8 %42, 2
  %49 = icmp eq i8 %48, 0
  %50 = and i8 %42, 1
  %51 = select i1 %49, i8 %50, i8 0
  br label %66

52:                                               ; preds = %23
  %53 = and i8 %30, 1
  %54 = icmp eq i8 %53, 0
  %55 = getelementptr inbounds %struct.BMHeader, ptr %27, i64 0, i32 3
  %56 = load i8, ptr %55, align 1, !tbaa !100
  br i1 %54, label %61, label %57

57:                                               ; preds = %52
  %58 = lshr i8 %56, 1
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  br label %66

61:                                               ; preds = %52
  %62 = and i8 %56, 2
  %63 = icmp eq i8 %62, 0
  %64 = and i8 %56, 1
  %65 = select i1 %63, i8 %64, i8 0
  br label %66

66:                                               ; preds = %33, %43, %47, %57, %61
  %67 = phi i8 [ 0, %33 ], [ %46, %43 ], [ %51, %47 ], [ %60, %57 ], [ %65, %61 ]
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %99, label %69

69:                                               ; preds = %66
  %70 = and i8 %30, 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.ToolSettings, ptr %28, i64 0, i32 8
  %74 = load i16, ptr %73, align 2, !tbaa !112
  %75 = and i16 %74, 4
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.BMHeader, ptr %27, i64 0, i32 3
  %79 = load i8, ptr %78, align 1, !tbaa !100
  br label %92

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !115
  %83 = getelementptr inbounds %struct.BMHeader, ptr %82, i64 0, i32 3
  %84 = load i8, ptr %83, align 1, !tbaa !100
  br label %92

85:                                               ; preds = %69
  %86 = load ptr, ptr %25, align 8, !tbaa !101
  %87 = getelementptr inbounds i8, ptr %86, i64 %21
  %88 = getelementptr inbounds %struct.MLoopUV, ptr %87, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !103
  %90 = trunc i32 %89 to i8
  %91 = lshr i8 %90, 1
  br label %92

92:                                               ; preds = %77, %80, %85
  %93 = phi i8 [ %79, %77 ], [ %84, %80 ], [ %91, %85 ]
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %25, align 8, !tbaa !101
  %98 = getelementptr inbounds i8, ptr %97, i64 %22
  br label %99

99:                                               ; preds = %92, %66, %96
  %100 = phi i32 [ 1, %96 ], [ 4, %66 ], [ 0, %92 ]
  %101 = phi ptr [ %98, %96 ], [ %24, %66 ], [ %24, %92 ]
  switch i32 %100, label %106 [
    i32 0, label %102
    i32 4, label %102
  ]

102:                                              ; preds = %99, %99
  %103 = load ptr, ptr %14, align 8, !tbaa !92
  %104 = call ptr %103(ptr noundef nonnull %5) #9
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %23, !llvm.loop !292

106:                                              ; preds = %99, %102, %4
  %107 = phi ptr [ null, %4 ], [ %101, %99 ], [ null, %102 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  ret ptr %107
}

declare void @closest_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_seams_from_islands_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 4094254846621890327, ptr %3, align 8
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !164
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.132) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !164
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.135) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %13 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !293
  %15 = load ptr, ptr %14, align 8, !tbaa !83
  %16 = tail call zeroext i8 @EDBM_mtexpoly_check(ptr noundef nonnull %14) #9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %153, label %18

18:                                               ; preds = %2
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %15, i8 noundef zeroext 8) #9
  %19 = call ptr @BM_uv_vert_map_create(ptr noundef %15, i8 noundef zeroext 0, ptr noundef nonnull %3) #9
  %20 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 2, ptr %20, align 4, !tbaa !89
  %21 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %21, align 8, !tbaa !91
  %22 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %22, align 8, !tbaa !92
  %23 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !284
  store ptr %24, ptr %4, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #9
  %25 = load ptr, ptr %22, align 8, !tbaa !92
  %26 = call ptr %25(ptr noundef nonnull %4) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %149, label %28

28:                                               ; preds = %18
  %29 = and i32 %10, 255
  %30 = icmp eq i32 %29, 0
  %31 = and i32 %12, 255
  %32 = icmp eq i32 %31, 0
  br label %33

33:                                               ; preds = %28, %145
  %34 = phi ptr [ %26, %28 ], [ %147, %145 ]
  %35 = load ptr, ptr %19, align 8, !tbaa !295
  %36 = getelementptr inbounds %struct.BMEdge, ptr %34, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !117
  %38 = getelementptr inbounds %struct.BMHeader, ptr %37, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !175
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %35, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !55
  br i1 %30, label %47, label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.BMHeader, ptr %34, i64 0, i32 3
  %45 = load i8, ptr %44, align 1, !tbaa !100
  %46 = and i8 %45, -5
  store i8 %46, ptr %44, align 1, !tbaa !100
  br label %47

47:                                               ; preds = %43, %33
  %48 = icmp eq ptr %42, null
  br i1 %48, label %145, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.BMEdge, ptr %34, i64 0, i32 3
  br label %51

51:                                               ; preds = %49, %124
  %52 = phi ptr [ null, %49 ], [ %129, %124 ]
  %53 = phi ptr [ null, %49 ], [ %128, %124 ]
  %54 = phi ptr [ %42, %49 ], [ %130, %124 ]
  %55 = phi i8 [ 0, %49 ], [ %127, %124 ]
  %56 = phi i32 [ 0, %49 ], [ %126, %124 ]
  %57 = phi i8 [ 1, %49 ], [ %64, %124 ]
  %58 = phi i8 [ 0, %49 ], [ %125, %124 ]
  %59 = getelementptr inbounds %struct.UvMapVert, ptr %54, i64 0, i32 3
  %60 = load i8, ptr %59, align 1, !tbaa !178
  %61 = icmp ne i8 %60, 0
  %62 = icmp ne i32 %56, 0
  %63 = select i1 %61, i1 %62, i1 false
  %64 = select i1 %63, i8 0, i8 %57
  %65 = getelementptr inbounds %struct.UvMapVert, ptr %54, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !180
  %67 = call ptr @BM_face_at_index(ptr noundef %15, i32 noundef %66) #9
  %68 = load ptr, ptr %19, align 8, !tbaa !295
  %69 = load ptr, ptr %50, align 8, !tbaa !120
  %70 = getelementptr inbounds %struct.BMHeader, ptr %69, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !175
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds ptr, ptr %68, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !55
  %75 = icmp eq ptr %74, null
  br i1 %75, label %124, label %76

76:                                               ; preds = %51
  %77 = icmp eq i8 %64, 0
  br label %78

78:                                               ; preds = %76, %117
  %79 = phi ptr [ %74, %76 ], [ %122, %117 ]
  %80 = phi ptr [ %52, %76 ], [ %88, %117 ]
  %81 = phi ptr [ %53, %76 ], [ %121, %117 ]
  %82 = phi i8 [ %55, %76 ], [ %120, %117 ]
  %83 = phi i32 [ %56, %76 ], [ %119, %117 ]
  %84 = phi i8 [ 0, %76 ], [ %118, %117 ]
  %85 = getelementptr inbounds %struct.UvMapVert, ptr %79, i64 0, i32 3
  %86 = load i8, ptr %85, align 1, !tbaa !178
  %87 = icmp eq i8 %86, 0
  %88 = select i1 %87, ptr %80, ptr %79
  %89 = getelementptr inbounds %struct.UvMapVert, ptr %79, i64 0, i32 1
  %90 = load i32, ptr %89, align 8, !tbaa !180
  %91 = call ptr @BM_face_at_index(ptr noundef %15, i32 noundef %90) #9
  %92 = icmp eq ptr %67, %91
  br i1 %92, label %93, label %117

93:                                               ; preds = %78
  br i1 %77, label %109, label %94

94:                                               ; preds = %93
  %95 = icmp eq ptr %81, null
  br i1 %95, label %109, label %96

96:                                               ; preds = %94, %104
  %97 = phi ptr [ %107, %104 ], [ %81, %94 ]
  %98 = phi i8 [ %106, %104 ], [ 1, %94 ]
  %99 = getelementptr inbounds %struct.UvMapVert, ptr %97, i64 0, i32 3
  %100 = load i8, ptr %99, align 1, !tbaa !178
  %101 = icmp eq i8 %100, 0
  %102 = icmp eq ptr %97, %81
  %103 = select i1 %101, i1 true, i1 %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  %105 = icmp eq ptr %97, %79
  %106 = select i1 %105, i8 0, i8 %98
  %107 = load ptr, ptr %97, align 8, !tbaa !181
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %96, !llvm.loop !297

109:                                              ; preds = %96, %104, %93, %94
  %110 = phi i8 [ %84, %94 ], [ %84, %93 ], [ %98, %96 ], [ %106, %104 ]
  %111 = phi i32 [ 1, %94 ], [ %83, %93 ], [ %83, %104 ], [ %83, %96 ]
  %112 = phi i8 [ %82, %94 ], [ 1, %93 ], [ %82, %104 ], [ %82, %96 ]
  %113 = phi ptr [ %88, %94 ], [ %81, %93 ], [ %81, %104 ], [ %81, %96 ]
  %114 = icmp ne i8 %112, 0
  %115 = icmp ne i8 %110, 0
  %116 = select i1 %114, i1 true, i1 %115
  br i1 %116, label %124, label %117

117:                                              ; preds = %78, %109
  %118 = phi i8 [ %110, %109 ], [ %84, %78 ]
  %119 = phi i32 [ %111, %109 ], [ %83, %78 ]
  %120 = phi i8 [ %112, %109 ], [ %82, %78 ]
  %121 = phi ptr [ %113, %109 ], [ %81, %78 ]
  %122 = load ptr, ptr %79, align 8, !tbaa !55
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %78, !llvm.loop !298

124:                                              ; preds = %117, %109, %51
  %125 = phi i8 [ %58, %51 ], [ %58, %117 ], [ 1, %109 ]
  %126 = phi i32 [ %56, %51 ], [ %119, %117 ], [ %111, %109 ]
  %127 = phi i8 [ %55, %51 ], [ %120, %117 ], [ %112, %109 ]
  %128 = phi ptr [ %53, %51 ], [ %121, %117 ], [ %113, %109 ]
  %129 = phi ptr [ %52, %51 ], [ %88, %109 ], [ %88, %117 ]
  %130 = load ptr, ptr %54, align 8, !tbaa !181
  %131 = icmp ne ptr %130, null
  %132 = icmp eq i8 %125, 0
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %51, label %134, !llvm.loop !299

134:                                              ; preds = %124
  br i1 %132, label %145, label %135

135:                                              ; preds = %134
  br i1 %30, label %140, label %136

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.BMHeader, ptr %34, i64 0, i32 3
  %138 = load i8, ptr %137, align 1, !tbaa !100
  %139 = or i8 %138, 4
  store i8 %139, ptr %137, align 1, !tbaa !100
  br label %140

140:                                              ; preds = %136, %135
  br i1 %32, label %145, label %141

141:                                              ; preds = %140
  %142 = getelementptr inbounds %struct.BMHeader, ptr %34, i64 0, i32 3
  %143 = load i8, ptr %142, align 1, !tbaa !100
  %144 = and i8 %143, -9
  store i8 %144, ptr %142, align 1, !tbaa !100
  br label %145

145:                                              ; preds = %47, %140, %141, %134
  %146 = load ptr, ptr %22, align 8, !tbaa !92
  %147 = call ptr %146(ptr noundef nonnull %4) #9
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %33, !llvm.loop !300

149:                                              ; preds = %145, %18
  %150 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 36
  %151 = load i32, ptr %150, align 8, !tbaa !301
  %152 = or i32 %151, 128
  store i32 %152, ptr %150, align 8, !tbaa !301
  call void @BM_uv_vert_map_free(ptr noundef %19) #9
  call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 0) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %7) #9
  br label %153

153:                                              ; preds = %2, %149
  %154 = phi i32 [ 4, %149 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %154
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_mark_seam_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  %9 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !293
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %12 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 26
  %13 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %12, i32 noundef 16) #9
  %14 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %14, align 4, !tbaa !89
  %15 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %15, align 8, !tbaa !91
  %16 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %16, align 8, !tbaa !92
  %17 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  store ptr %18, ptr %3, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #9
  %19 = load ptr, ptr %16, align 8, !tbaa !92
  %20 = call ptr %19(ptr noundef nonnull %3) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %108, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %24 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %25 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %26 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %27 = sext i32 %13 to i64
  br label %28

28:                                               ; preds = %22, %104
  %29 = phi ptr [ %20, %22 ], [ %106, %104 ]
  store i8 11, ptr %23, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %24, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %25, align 8, !tbaa !92
  store ptr %29, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %30 = load ptr, ptr %25, align 8, !tbaa !92
  %31 = call ptr %30(ptr noundef nonnull %4) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %104, label %33

33:                                               ; preds = %28, %100
  %34 = phi ptr [ %102, %100 ], [ %31, %28 ]
  %35 = load ptr, ptr %26, align 8, !tbaa !56
  %36 = getelementptr inbounds %struct.ToolSettings, ptr %35, i64 0, i32 11
  %37 = load i8, ptr %36, align 2, !tbaa !74
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %74, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.ToolSettings, ptr %35, i64 0, i32 8
  %42 = load i16, ptr %41, align 2, !tbaa !112
  %43 = and i16 %42, 4
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !113
  %48 = getelementptr inbounds %struct.BMHeader, ptr %47, i64 0, i32 3
  %49 = load i8, ptr %48, align 1, !tbaa !100
  %50 = and i8 %49, 1
  br label %91

51:                                               ; preds = %40
  %52 = icmp eq i16 %42, 2
  br i1 %52, label %53, label %59

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !114
  %56 = getelementptr inbounds %struct.BMHeader, ptr %55, i64 0, i32 3
  %57 = load i8, ptr %56, align 1, !tbaa !100
  %58 = and i8 %57, 1
  br label %91

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !115
  %62 = getelementptr inbounds %struct.BMHeader, ptr %61, i64 0, i32 3
  %63 = load i8, ptr %62, align 1, !tbaa !100
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %91, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !116
  %69 = getelementptr inbounds %struct.BMLoop, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !115
  %71 = getelementptr inbounds %struct.BMHeader, ptr %70, i64 0, i32 3
  %72 = load i8, ptr %71, align 1, !tbaa !100
  %73 = and i8 %72, 1
  br label %91

74:                                               ; preds = %33
  %75 = load ptr, ptr %34, align 8, !tbaa !101
  %76 = getelementptr inbounds i8, ptr %75, i64 %27
  %77 = getelementptr inbounds %struct.MLoopUV, ptr %76, i64 0, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !103
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !116
  %84 = load ptr, ptr %83, align 8, !tbaa !101
  %85 = getelementptr inbounds i8, ptr %84, i64 %27
  %86 = getelementptr inbounds %struct.MLoopUV, ptr %85, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !103
  %88 = trunc i32 %87 to i8
  %89 = lshr i8 %88, 1
  %90 = and i8 %89, 1
  br label %91

91:                                               ; preds = %45, %53, %59, %66, %74, %81
  %92 = phi i8 [ %50, %45 ], [ %58, %53 ], [ 0, %59 ], [ %73, %66 ], [ 0, %74 ], [ %90, %81 ]
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !114
  %97 = getelementptr inbounds %struct.BMHeader, ptr %96, i64 0, i32 3
  %98 = load i8, ptr %97, align 1, !tbaa !100
  %99 = or i8 %98, 4
  store i8 %99, ptr %97, align 1, !tbaa !100
  br label %100

100:                                              ; preds = %91, %94
  %101 = load ptr, ptr %25, align 8, !tbaa !92
  %102 = call ptr %101(ptr noundef nonnull %4) #9
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %33, !llvm.loop !302

104:                                              ; preds = %100, %28
  %105 = load ptr, ptr %16, align 8, !tbaa !92
  %106 = call ptr %105(ptr noundef nonnull %3) #9
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %28, !llvm.loop !303

108:                                              ; preds = %104, %2
  %109 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 36
  %110 = load i32, ptr %109, align 8, !tbaa !301
  %111 = or i32 %110, 128
  store i32 %111, ptr %109, align 8, !tbaa !301
  %112 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %113 = load ptr, ptr %112, align 8, !tbaa !56
  %114 = getelementptr inbounds %struct.ToolSettings, ptr %113, i64 0, i32 50
  %115 = load i8, ptr %114, align 2, !tbaa !304
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %108
  call void @ED_unwrap_lscm(ptr noundef %6, ptr noundef %5, i16 noundef signext 0) #9
  br label %118

118:                                              ; preds = %117, %108
  call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 0) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %8) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  ret i32 4
}

declare void @ED_unwrap_lscm(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_weld_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  tail call fastcc void @uv_weld_align(ptr noundef %0, i32 noundef 119)
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_remove_doubles_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !164
  %14 = tail call float @RNA_float_get(ptr noundef %13, ptr noundef nonnull @.str.145) #9
  %15 = load ptr, ptr %12, align 8, !tbaa !164
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.148) #9
  %17 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %18 = tail call ptr @BKE_editmesh_from_object(ptr noundef %17) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %19 = load ptr, ptr %18, align 8, !tbaa !83
  %20 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 26
  %21 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %20, i32 noundef 16) #9
  %22 = load ptr, ptr %18, align 8, !tbaa !83
  %23 = getelementptr inbounds %struct.BMesh, ptr %22, i64 0, i32 27
  %24 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %23, i32 noundef 15) #9
  %25 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #9
  %26 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %27 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #9
  %28 = and i32 %16, 255
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %31 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %32 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  br i1 %29, label %33, label %285

33:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store ptr null, ptr %5, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store ptr null, ptr %6, align 8, !tbaa !55
  %34 = load ptr, ptr %18, align 8, !tbaa !83
  store i8 3, ptr %30, align 4, !tbaa !89
  store ptr @bmiter__elem_of_mesh_begin, ptr %31, align 8, !tbaa !91
  store ptr @bmiter__elem_of_mesh_step, ptr %32, align 8, !tbaa !92
  %35 = getelementptr inbounds %struct.BMesh, ptr %34, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !93
  store ptr %36, ptr %3, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #9
  %37 = load ptr, ptr %32, align 8, !tbaa !92
  %38 = call ptr %37(ptr noundef nonnull %3) #9
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.Scene, ptr %26, i64 0, i32 20
  %42 = sext i32 %24 to i64
  %43 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %44 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %45 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %46 = sext i32 %21 to i64
  %47 = sext i32 %21 to i64
  br label %58

48:                                               ; preds = %165, %33
  %49 = phi i32 [ 0, %33 ], [ %166, %165 ]
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %274

51:                                               ; preds = %48
  %52 = getelementptr inbounds float, ptr %8, i64 1
  %53 = getelementptr inbounds float, ptr %7, i64 1
  %54 = getelementptr inbounds float, ptr %9, i64 1
  %55 = zext nneg i32 %49 to i64
  %56 = zext nneg i32 %49 to i64
  %57 = zext nneg i32 %49 to i64
  br label %170

58:                                               ; preds = %40, %165
  %59 = phi ptr [ %38, %40 ], [ %168, %165 ]
  %60 = phi i32 [ 0, %40 ], [ %166, %165 ]
  %61 = load ptr, ptr %41, align 8, !tbaa !56
  %62 = getelementptr inbounds %struct.ToolSettings, ptr %61, i64 0, i32 11
  %63 = load i8, ptr %62, align 2, !tbaa !74
  %64 = and i8 %63, 2
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %85, label %66

66:                                               ; preds = %58
  %67 = load ptr, ptr %59, align 8, !tbaa !95
  %68 = getelementptr inbounds i8, ptr %67, i64 %42
  %69 = load ptr, ptr %68, align 8, !tbaa !98
  %70 = icmp eq ptr %69, %27
  br i1 %70, label %71, label %99

71:                                               ; preds = %66
  %72 = and i8 %63, 1
  %73 = icmp eq i8 %72, 0
  %74 = getelementptr inbounds %struct.BMHeader, ptr %59, i64 0, i32 3
  %75 = load i8, ptr %74, align 1, !tbaa !100
  br i1 %73, label %80, label %76

76:                                               ; preds = %71
  %77 = lshr i8 %75, 1
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  br label %99

80:                                               ; preds = %71
  %81 = and i8 %75, 2
  %82 = icmp eq i8 %81, 0
  %83 = and i8 %75, 1
  %84 = select i1 %82, i8 %83, i8 0
  br label %99

85:                                               ; preds = %58
  %86 = and i8 %63, 1
  %87 = icmp eq i8 %86, 0
  %88 = getelementptr inbounds %struct.BMHeader, ptr %59, i64 0, i32 3
  %89 = load i8, ptr %88, align 1, !tbaa !100
  br i1 %87, label %94, label %90

90:                                               ; preds = %85
  %91 = lshr i8 %89, 1
  %92 = and i8 %91, 1
  %93 = xor i8 %92, 1
  br label %99

94:                                               ; preds = %85
  %95 = and i8 %89, 2
  %96 = icmp eq i8 %95, 0
  %97 = and i8 %89, 1
  %98 = select i1 %96, i8 %97, i8 0
  br label %99

99:                                               ; preds = %66, %76, %80, %90, %94
  %100 = phi i8 [ 0, %66 ], [ %79, %76 ], [ %84, %80 ], [ %93, %90 ], [ %98, %94 ]
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %165, label %102

102:                                              ; preds = %99
  store i8 11, ptr %43, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %44, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %45, align 8, !tbaa !92
  store ptr %59, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %103 = load ptr, ptr %45, align 8, !tbaa !92
  %104 = call ptr %103(ptr noundef nonnull %4) #9
  %105 = icmp eq ptr %104, null
  br i1 %105, label %165, label %106

106:                                              ; preds = %102, %160
  %107 = phi ptr [ %163, %160 ], [ %104, %102 ]
  %108 = phi i32 [ %161, %160 ], [ %60, %102 ]
  %109 = load ptr, ptr %41, align 8, !tbaa !56
  %110 = getelementptr inbounds %struct.ToolSettings, ptr %109, i64 0, i32 11
  %111 = load i8, ptr %110, align 2, !tbaa !74
  %112 = and i8 %111, 1
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %129, label %114

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.ToolSettings, ptr %109, i64 0, i32 8
  %116 = load i16, ptr %115, align 2, !tbaa !112
  %117 = and i16 %116, 4
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.BMLoop, ptr %107, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !113
  %122 = getelementptr inbounds %struct.BMHeader, ptr %121, i64 0, i32 3
  %123 = load i8, ptr %122, align 1, !tbaa !100
  br label %136

124:                                              ; preds = %114
  %125 = getelementptr inbounds %struct.BMLoop, ptr %107, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !115
  %127 = getelementptr inbounds %struct.BMHeader, ptr %126, i64 0, i32 3
  %128 = load i8, ptr %127, align 1, !tbaa !100
  br label %136

129:                                              ; preds = %106
  %130 = load ptr, ptr %107, align 8, !tbaa !101
  %131 = getelementptr inbounds i8, ptr %130, i64 %46
  %132 = getelementptr inbounds %struct.MLoopUV, ptr %131, i64 0, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !103
  %134 = trunc i32 %133 to i8
  %135 = lshr i8 %134, 1
  br label %136

136:                                              ; preds = %119, %124, %129
  %137 = phi i8 [ %123, %119 ], [ %128, %124 ], [ %135, %129 ]
  %138 = and i8 %137, 1
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %160, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr %107, align 8, !tbaa !101
  %142 = getelementptr inbounds i8, ptr %141, i64 %47
  %143 = load ptr, ptr %5, align 8
  %144 = icmp eq ptr %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %140
  %146 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !55
  %147 = call i64 %146(ptr noundef nonnull %143) #9
  %148 = lshr i64 %147, 4
  br label %149

149:                                              ; preds = %145, %140
  %150 = phi i64 [ 0, %140 ], [ %148, %145 ]
  %151 = add nsw i32 %108, 1
  %152 = sext i32 %151 to i64
  %153 = icmp ult i64 %150, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef null, i32 noundef 16, i32 noundef %108, i32 noundef 1, ptr noundef nonnull @.str.151) #9
  br label %155

155:                                              ; preds = %154, %149
  %156 = load ptr, ptr %5, align 8, !tbaa !55
  %157 = sext i32 %108 to i64
  %158 = getelementptr inbounds %struct.UVvert, ptr %156, i64 %157
  store ptr %142, ptr %158, align 8, !tbaa.struct !305
  %159 = getelementptr inbounds i8, ptr %158, i64 8
  store i8 0, ptr %159, align 8, !tbaa.struct !306
  br label %160

160:                                              ; preds = %136, %155
  %161 = phi i32 [ %151, %155 ], [ %108, %136 ]
  %162 = load ptr, ptr %45, align 8, !tbaa !92
  %163 = call ptr %162(ptr noundef nonnull %4) #9
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %106, !llvm.loop !307

165:                                              ; preds = %160, %102, %99
  %166 = phi i32 [ %60, %99 ], [ %60, %102 ], [ %161, %160 ]
  %167 = load ptr, ptr %32, align 8, !tbaa !92
  %168 = call ptr %167(ptr noundef nonnull %3) #9
  %169 = icmp eq ptr %168, null
  br i1 %169, label %48, label %58, !llvm.loop !308

170:                                              ; preds = %51, %270
  %171 = phi i64 [ 0, %51 ], [ %271, %270 ]
  %172 = phi i64 [ 1, %51 ], [ %272, %270 ]
  %173 = load ptr, ptr %5, align 8, !tbaa !55
  %174 = getelementptr inbounds %struct.UVvert, ptr %173, i64 %171, i32 1
  %175 = load i8, ptr %174, align 8, !tbaa !309
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %270

177:                                              ; preds = %170
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  %178 = load ptr, ptr %6, align 8
  %179 = icmp eq ptr %178, null
  br i1 %179, label %184, label %180

180:                                              ; preds = %177
  %181 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !55
  %182 = call i64 %181(ptr noundef nonnull %178) #9
  %183 = lshr i64 %182, 3
  br label %184

184:                                              ; preds = %180, %177
  %185 = phi i64 [ %183, %180 ], [ 0, %177 ]
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  call void @_bli_array_grow_func(ptr noundef nonnull %6, ptr noundef null, i32 noundef 8, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.152) #9
  br label %188

188:                                              ; preds = %187, %184
  %189 = load ptr, ptr %5, align 8, !tbaa !55
  %190 = getelementptr inbounds %struct.UVvert, ptr %189, i64 %171
  %191 = load ptr, ptr %190, align 8, !tbaa !311
  %192 = load ptr, ptr %6, align 8, !tbaa !55
  store ptr %191, ptr %192, align 8, !tbaa !55
  %193 = load ptr, ptr %5, align 8, !tbaa !55
  %194 = getelementptr inbounds %struct.UVvert, ptr %193, i64 %171
  %195 = load ptr, ptr %194, align 8, !tbaa !311
  %196 = load float, ptr %195, align 4, !tbaa !127
  store float %196, ptr %8, align 4, !tbaa !127
  %197 = getelementptr inbounds float, ptr %195, i64 1
  %198 = load float, ptr %197, align 4, !tbaa !127
  store float %198, ptr %52, align 4, !tbaa !127
  %199 = load float, ptr %195, align 4, !tbaa !127
  store float %199, ptr %7, align 4, !tbaa !127
  %200 = load float, ptr %197, align 4, !tbaa !127
  store float %200, ptr %53, align 4, !tbaa !127
  %201 = getelementptr inbounds %struct.UVvert, ptr %193, i64 %171, i32 1
  store i8 1, ptr %201, align 8, !tbaa !309
  %202 = add nuw nsw i64 %171, 1
  %203 = icmp ult i64 %202, %55
  br i1 %203, label %204, label %251

204:                                              ; preds = %188, %247
  %205 = phi i64 [ %249, %247 ], [ %172, %188 ]
  %206 = phi i32 [ %248, %247 ], [ 1, %188 ]
  %207 = load ptr, ptr %5, align 8, !tbaa !55
  %208 = getelementptr inbounds %struct.UVvert, ptr %207, i64 %205
  %209 = load ptr, ptr %208, align 8, !tbaa !311
  %210 = getelementptr inbounds %struct.UVvert, ptr %207, i64 %205, i32 1
  %211 = load i8, ptr %210, align 8, !tbaa !309
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %213, label %247

213:                                              ; preds = %204
  %214 = load float, ptr %209, align 4, !tbaa !127
  %215 = load float, ptr %195, align 4, !tbaa !127
  %216 = fsub float %214, %215
  %217 = getelementptr inbounds float, ptr %209, i64 1
  %218 = load float, ptr %217, align 4, !tbaa !127
  %219 = load float, ptr %197, align 4, !tbaa !127
  %220 = fsub float %218, %219
  %221 = call float @llvm.fabs.f32(float %216)
  %222 = call float @llvm.fabs.f32(float %220)
  %223 = fadd float %221, %222
  %224 = fcmp olt float %223, %14
  br i1 %224, label %225, label %247

225:                                              ; preds = %213
  call void @minmax_v2v2_v2(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %209) #9
  %226 = load ptr, ptr %6, align 8
  %227 = icmp eq ptr %226, null
  br i1 %227, label %232, label %228

228:                                              ; preds = %225
  %229 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !55
  %230 = call i64 %229(ptr noundef nonnull %226) #9
  %231 = lshr i64 %230, 3
  br label %232

232:                                              ; preds = %228, %225
  %233 = phi i64 [ %231, %228 ], [ 0, %225 ]
  %234 = add nsw i32 %206, 1
  %235 = sext i32 %234 to i64
  %236 = icmp ult i64 %233, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  call void @_bli_array_grow_func(ptr noundef nonnull %6, ptr noundef null, i32 noundef 8, i32 noundef %206, i32 noundef 1, ptr noundef nonnull @.str.152) #9
  br label %238

238:                                              ; preds = %237, %232
  %239 = load ptr, ptr %5, align 8, !tbaa !55
  %240 = getelementptr inbounds %struct.UVvert, ptr %239, i64 %205
  %241 = load ptr, ptr %240, align 8, !tbaa !311
  %242 = load ptr, ptr %6, align 8, !tbaa !55
  %243 = sext i32 %206 to i64
  %244 = getelementptr inbounds ptr, ptr %242, i64 %243
  store ptr %241, ptr %244, align 8, !tbaa !55
  %245 = load ptr, ptr %5, align 8, !tbaa !55
  %246 = getelementptr inbounds %struct.UVvert, ptr %245, i64 %205, i32 1
  store i8 1, ptr %246, align 8, !tbaa !309
  br label %247

247:                                              ; preds = %204, %213, %238
  %248 = phi i32 [ %234, %238 ], [ %206, %213 ], [ %206, %204 ]
  %249 = add nuw nsw i64 %205, 1
  %250 = icmp eq i64 %249, %57
  br i1 %250, label %251, label %204, !llvm.loop !312

251:                                              ; preds = %247, %188
  %252 = phi i32 [ 1, %188 ], [ %248, %247 ]
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %269, label %254

254:                                              ; preds = %251
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  call void @mid_v2_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  %255 = icmp sgt i32 %252, 0
  br i1 %255, label %256, label %268

256:                                              ; preds = %254
  %257 = load ptr, ptr %6, align 8, !tbaa !55
  %258 = zext nneg i32 %252 to i64
  br label %259

259:                                              ; preds = %256, %259
  %260 = phi i64 [ 0, %256 ], [ %266, %259 ]
  %261 = getelementptr inbounds ptr, ptr %257, i64 %260
  %262 = load ptr, ptr %261, align 8, !tbaa !55
  %263 = load float, ptr %9, align 4, !tbaa !127
  store float %263, ptr %262, align 4, !tbaa !127
  %264 = load float, ptr %54, align 4, !tbaa !127
  %265 = getelementptr inbounds float, ptr %262, i64 1
  store float %264, ptr %265, align 4, !tbaa !127
  %266 = add nuw nsw i64 %260, 1
  %267 = icmp eq i64 %266, %258
  br i1 %267, label %268, label %259, !llvm.loop !313

268:                                              ; preds = %259, %254
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %269

269:                                              ; preds = %268, %251
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %270

270:                                              ; preds = %170, %269
  %271 = add nuw nsw i64 %171, 1
  %272 = add nuw nsw i64 %172, 1
  %273 = icmp eq i64 %271, %56
  br i1 %273, label %274, label %170, !llvm.loop !314

274:                                              ; preds = %270, %48
  %275 = load ptr, ptr %5, align 8, !tbaa !55
  %276 = icmp eq ptr %275, null
  br i1 %276, label %279, label %277

277:                                              ; preds = %274
  %278 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %278(ptr noundef nonnull %275) #9
  br label %279

279:                                              ; preds = %277, %274
  %280 = load ptr, ptr %6, align 8, !tbaa !55
  %281 = icmp eq ptr %280, null
  br i1 %281, label %284, label %282

282:                                              ; preds = %279
  %283 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %283(ptr noundef nonnull %280) #9
  br label %284

284:                                              ; preds = %282, %279
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %487

285:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  store ptr null, ptr %10, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  store ptr null, ptr %11, align 8, !tbaa !55
  %286 = load ptr, ptr %18, align 8, !tbaa !83
  store i8 3, ptr %30, align 4, !tbaa !89
  store ptr @bmiter__elem_of_mesh_begin, ptr %31, align 8, !tbaa !91
  store ptr @bmiter__elem_of_mesh_step, ptr %32, align 8, !tbaa !92
  %287 = getelementptr inbounds %struct.BMesh, ptr %286, i64 0, i32 12
  %288 = load ptr, ptr %287, align 8, !tbaa !93
  store ptr %288, ptr %3, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #9
  %289 = load ptr, ptr %32, align 8, !tbaa !92
  %290 = call ptr %289(ptr noundef nonnull %3) #9
  %291 = icmp eq ptr %290, null
  br i1 %291, label %299, label %292

292:                                              ; preds = %285
  %293 = getelementptr inbounds %struct.Scene, ptr %26, i64 0, i32 20
  %294 = sext i32 %24 to i64
  %295 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %296 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %297 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %298 = sext i32 %21 to i64
  br label %309

299:                                              ; preds = %430, %285
  %300 = phi i32 [ 0, %285 ], [ %431, %430 ]
  %301 = phi i32 [ 0, %285 ], [ %432, %430 ]
  %302 = icmp sgt i32 %300, 0
  br i1 %302, label %303, label %476

303:                                              ; preds = %299
  %304 = load ptr, ptr %10, align 8, !tbaa !55
  %305 = icmp sgt i32 %301, 0
  %306 = load ptr, ptr %11, align 8
  %307 = zext nneg i32 %300 to i64
  %308 = zext nneg i32 %301 to i64
  br label %436

309:                                              ; preds = %292, %430
  %310 = phi i32 [ 0, %292 ], [ %432, %430 ]
  %311 = phi i32 [ 0, %292 ], [ %431, %430 ]
  %312 = phi ptr [ %290, %292 ], [ %434, %430 ]
  %313 = load ptr, ptr %293, align 8, !tbaa !56
  %314 = getelementptr inbounds %struct.ToolSettings, ptr %313, i64 0, i32 11
  %315 = load i8, ptr %314, align 2, !tbaa !74
  %316 = and i8 %315, 2
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %337, label %318

318:                                              ; preds = %309
  %319 = load ptr, ptr %312, align 8, !tbaa !95
  %320 = getelementptr inbounds i8, ptr %319, i64 %294
  %321 = load ptr, ptr %320, align 8, !tbaa !98
  %322 = icmp eq ptr %321, %27
  br i1 %322, label %323, label %351

323:                                              ; preds = %318
  %324 = and i8 %315, 1
  %325 = icmp eq i8 %324, 0
  %326 = getelementptr inbounds %struct.BMHeader, ptr %312, i64 0, i32 3
  %327 = load i8, ptr %326, align 1, !tbaa !100
  br i1 %325, label %332, label %328

328:                                              ; preds = %323
  %329 = lshr i8 %327, 1
  %330 = and i8 %329, 1
  %331 = xor i8 %330, 1
  br label %351

332:                                              ; preds = %323
  %333 = and i8 %327, 2
  %334 = icmp eq i8 %333, 0
  %335 = and i8 %327, 1
  %336 = select i1 %334, i8 %335, i8 0
  br label %351

337:                                              ; preds = %309
  %338 = and i8 %315, 1
  %339 = icmp eq i8 %338, 0
  %340 = getelementptr inbounds %struct.BMHeader, ptr %312, i64 0, i32 3
  %341 = load i8, ptr %340, align 1, !tbaa !100
  br i1 %339, label %346, label %342

342:                                              ; preds = %337
  %343 = lshr i8 %341, 1
  %344 = and i8 %343, 1
  %345 = xor i8 %344, 1
  br label %351

346:                                              ; preds = %337
  %347 = and i8 %341, 2
  %348 = icmp eq i8 %347, 0
  %349 = and i8 %341, 1
  %350 = select i1 %348, i8 %349, i8 0
  br label %351

351:                                              ; preds = %318, %328, %332, %342, %346
  %352 = phi i8 [ 0, %318 ], [ %331, %328 ], [ %336, %332 ], [ %345, %342 ], [ %350, %346 ]
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %430, label %354

354:                                              ; preds = %351
  store i8 11, ptr %295, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %296, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %297, align 8, !tbaa !92
  store ptr %312, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %355 = load ptr, ptr %297, align 8, !tbaa !92
  %356 = call ptr %355(ptr noundef nonnull %4) #9
  %357 = icmp eq ptr %356, null
  br i1 %357, label %430, label %358

358:                                              ; preds = %354, %419
  %359 = phi i32 [ %423, %419 ], [ %310, %354 ]
  %360 = phi i32 [ %422, %419 ], [ %311, %354 ]
  %361 = phi ptr [ %428, %419 ], [ %356, %354 ]
  %362 = load ptr, ptr %361, align 8, !tbaa !101
  %363 = getelementptr inbounds i8, ptr %362, i64 %298
  %364 = load ptr, ptr %293, align 8, !tbaa !56
  %365 = getelementptr inbounds %struct.ToolSettings, ptr %364, i64 0, i32 11
  %366 = load i8, ptr %365, align 2, !tbaa !74
  %367 = and i8 %366, 1
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %384, label %369

369:                                              ; preds = %358
  %370 = getelementptr inbounds %struct.ToolSettings, ptr %364, i64 0, i32 8
  %371 = load i16, ptr %370, align 2, !tbaa !112
  %372 = and i16 %371, 4
  %373 = icmp eq i16 %372, 0
  br i1 %373, label %379, label %374

374:                                              ; preds = %369
  %375 = getelementptr inbounds %struct.BMLoop, ptr %361, i64 0, i32 3
  %376 = load ptr, ptr %375, align 8, !tbaa !113
  %377 = getelementptr inbounds %struct.BMHeader, ptr %376, i64 0, i32 3
  %378 = load i8, ptr %377, align 1, !tbaa !100
  br label %389

379:                                              ; preds = %369
  %380 = getelementptr inbounds %struct.BMLoop, ptr %361, i64 0, i32 1
  %381 = load ptr, ptr %380, align 8, !tbaa !115
  %382 = getelementptr inbounds %struct.BMHeader, ptr %381, i64 0, i32 3
  %383 = load i8, ptr %382, align 1, !tbaa !100
  br label %389

384:                                              ; preds = %358
  %385 = getelementptr inbounds %struct.MLoopUV, ptr %363, i64 0, i32 1
  %386 = load i32, ptr %385, align 4, !tbaa !103
  %387 = trunc i32 %386 to i8
  %388 = lshr i8 %387, 1
  br label %389

389:                                              ; preds = %374, %379, %384
  %390 = phi i8 [ %378, %374 ], [ %383, %379 ], [ %388, %384 ]
  %391 = and i8 %390, 1
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %406, label %393

393:                                              ; preds = %389
  %394 = load ptr, ptr %10, align 8
  %395 = icmp eq ptr %394, null
  br i1 %395, label %400, label %396

396:                                              ; preds = %393
  %397 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !55
  %398 = call i64 %397(ptr noundef nonnull %394) #9
  %399 = lshr i64 %398, 3
  br label %400

400:                                              ; preds = %396, %393
  %401 = phi i64 [ %399, %396 ], [ 0, %393 ]
  %402 = add nsw i32 %360, 1
  %403 = sext i32 %402 to i64
  %404 = icmp ult i64 %401, %403
  br i1 %404, label %405, label %419

405:                                              ; preds = %400
  call void @_bli_array_grow_func(ptr noundef nonnull %10, ptr noundef null, i32 noundef 8, i32 noundef %360, i32 noundef 1, ptr noundef nonnull @.str.152) #9
  br label %419

406:                                              ; preds = %389
  %407 = load ptr, ptr %11, align 8
  %408 = icmp eq ptr %407, null
  br i1 %408, label %413, label %409

409:                                              ; preds = %406
  %410 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !55
  %411 = call i64 %410(ptr noundef nonnull %407) #9
  %412 = lshr i64 %411, 3
  br label %413

413:                                              ; preds = %409, %406
  %414 = phi i64 [ %412, %409 ], [ 0, %406 ]
  %415 = add nsw i32 %359, 1
  %416 = sext i32 %415 to i64
  %417 = icmp ult i64 %414, %416
  br i1 %417, label %418, label %419

418:                                              ; preds = %413
  call void @_bli_array_grow_func(ptr noundef nonnull %11, ptr noundef null, i32 noundef 8, i32 noundef %359, i32 noundef 1, ptr noundef nonnull @.str.153) #9
  br label %419

419:                                              ; preds = %413, %418, %400, %405
  %420 = phi i32 [ %360, %405 ], [ %360, %400 ], [ %359, %418 ], [ %359, %413 ]
  %421 = phi ptr [ %10, %405 ], [ %10, %400 ], [ %11, %418 ], [ %11, %413 ]
  %422 = phi i32 [ %402, %405 ], [ %402, %400 ], [ %360, %418 ], [ %360, %413 ]
  %423 = phi i32 [ %359, %405 ], [ %359, %400 ], [ %415, %418 ], [ %415, %413 ]
  %424 = load ptr, ptr %421, align 8, !tbaa !55
  %425 = sext i32 %420 to i64
  %426 = getelementptr inbounds ptr, ptr %424, i64 %425
  store ptr %363, ptr %426, align 8, !tbaa !55
  %427 = load ptr, ptr %297, align 8, !tbaa !92
  %428 = call ptr %427(ptr noundef nonnull %4) #9
  %429 = icmp eq ptr %428, null
  br i1 %429, label %430, label %358, !llvm.loop !315

430:                                              ; preds = %419, %354, %351
  %431 = phi i32 [ %311, %351 ], [ %311, %354 ], [ %422, %419 ]
  %432 = phi i32 [ %310, %351 ], [ %310, %354 ], [ %423, %419 ]
  %433 = load ptr, ptr %32, align 8, !tbaa !92
  %434 = call ptr %433(ptr noundef nonnull %3) #9
  %435 = icmp eq ptr %434, null
  br i1 %435, label %299, label %309, !llvm.loop !316

436:                                              ; preds = %303, %473
  %437 = phi i64 [ 0, %303 ], [ %474, %473 ]
  %438 = getelementptr inbounds ptr, ptr %304, i64 %437
  %439 = load ptr, ptr %438, align 8, !tbaa !55
  br i1 %305, label %440, label %465

440:                                              ; preds = %436
  %441 = load float, ptr %439, align 4, !tbaa !127
  %442 = getelementptr inbounds float, ptr %439, i64 1
  %443 = load float, ptr %442, align 4, !tbaa !127
  br label %444

444:                                              ; preds = %440, %444
  %445 = phi i64 [ 0, %440 ], [ %463, %444 ]
  %446 = phi ptr [ null, %440 ], [ %462, %444 ]
  %447 = phi float [ 0x47EFFFFFE0000000, %440 ], [ %461, %444 ]
  %448 = getelementptr inbounds ptr, ptr %306, i64 %445
  %449 = load ptr, ptr %448, align 8, !tbaa !55
  %450 = load float, ptr %449, align 4, !tbaa !127
  %451 = fsub float %450, %441
  %452 = getelementptr inbounds float, ptr %449, i64 1
  %453 = load float, ptr %452, align 4, !tbaa !127
  %454 = fsub float %453, %443
  %455 = call float @llvm.fabs.f32(float %451)
  %456 = call float @llvm.fabs.f32(float %454)
  %457 = fadd float %455, %456
  %458 = fcmp olt float %457, %14
  %459 = fcmp olt float %457, %447
  %460 = select i1 %458, i1 %459, i1 false
  %461 = select i1 %460, float %457, float %447
  %462 = select i1 %460, ptr %449, ptr %446
  %463 = add nuw nsw i64 %445, 1
  %464 = icmp eq i64 %463, %308
  br i1 %464, label %465, label %444, !llvm.loop !317

465:                                              ; preds = %444, %436
  %466 = phi ptr [ null, %436 ], [ %462, %444 ]
  %467 = icmp eq ptr %466, null
  br i1 %467, label %473, label %468

468:                                              ; preds = %465
  %469 = load float, ptr %466, align 4, !tbaa !127
  store float %469, ptr %439, align 4, !tbaa !127
  %470 = getelementptr inbounds float, ptr %466, i64 1
  %471 = load float, ptr %470, align 4, !tbaa !127
  %472 = getelementptr inbounds float, ptr %439, i64 1
  store float %471, ptr %472, align 4, !tbaa !127
  br label %473

473:                                              ; preds = %468, %465
  %474 = add nuw nsw i64 %437, 1
  %475 = icmp eq i64 %474, %307
  br i1 %475, label %476, label %436, !llvm.loop !318

476:                                              ; preds = %473, %299
  %477 = load ptr, ptr %10, align 8, !tbaa !55
  %478 = icmp eq ptr %477, null
  br i1 %478, label %481, label %479

479:                                              ; preds = %476
  %480 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %480(ptr noundef nonnull %477) #9
  br label %481

481:                                              ; preds = %479, %476
  %482 = load ptr, ptr %11, align 8, !tbaa !55
  %483 = icmp eq ptr %482, null
  br i1 %483, label %486, label %484

484:                                              ; preds = %481
  %485 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %485(ptr noundef nonnull %482) #9
  br label %486

486:                                              ; preds = %484, %481
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %487

487:                                              ; preds = %486, %284
  %488 = icmp eq ptr %25, null
  br i1 %488, label %495, label %489

489:                                              ; preds = %487
  %490 = getelementptr inbounds %struct.SpaceImage, ptr %25, i64 0, i32 4
  %491 = load i32, ptr %490, align 4, !tbaa !121
  %492 = and i32 %491, 2048
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %495, label %494

494:                                              ; preds = %489
  call void @ED_uvedit_live_unwrap_begin(ptr noundef %26, ptr noundef %17) #9
  call void @ED_uvedit_live_unwrap_re_solve() #9
  call void @ED_uvedit_live_unwrap_end(i16 noundef signext 0) #9
  br label %495

495:                                              ; preds = %487, %489, %494
  %496 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 19
  %497 = load ptr, ptr %496, align 8, !tbaa !88
  call void @DAG_id_tag_update(ptr noundef %497, i16 noundef signext 0) #9
  %498 = load ptr, ptr %496, align 8, !tbaa !88
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %498) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  ret i32 4
}

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_pin_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %7 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #9
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !164
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.24) #9
  %12 = load ptr, ptr %8, align 8, !tbaa !83
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 26
  %14 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %13, i32 noundef 16) #9
  %15 = load ptr, ptr %8, align 8, !tbaa !83
  %16 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 27
  %17 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %16, i32 noundef 15) #9
  %18 = load ptr, ptr %8, align 8, !tbaa !83
  %19 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %19, align 4, !tbaa !89
  %20 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %20, align 8, !tbaa !91
  %21 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %21, align 8, !tbaa !92
  %22 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !93
  store ptr %23, ptr %3, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #9
  %24 = load ptr, ptr %21, align 8, !tbaa !92
  %25 = call ptr %24(ptr noundef nonnull %3) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %158, label %27

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %29 = sext i32 %17 to i64
  %30 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %31 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %32 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %33 = sext i32 %14 to i64
  %34 = and i32 %11, 255
  %35 = icmp eq i32 %34, 0
  br label %36

36:                                               ; preds = %27, %154
  %37 = phi ptr [ %25, %27 ], [ %156, %154 ]
  %38 = load ptr, ptr %28, align 8, !tbaa !56
  %39 = getelementptr inbounds %struct.ToolSettings, ptr %38, i64 0, i32 11
  %40 = load i8, ptr %39, align 2, !tbaa !74
  %41 = and i8 %40, 2
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %36
  %44 = load ptr, ptr %37, align 8, !tbaa !95
  %45 = getelementptr inbounds i8, ptr %44, i64 %29
  %46 = load ptr, ptr %45, align 8, !tbaa !98
  %47 = icmp eq ptr %46, %7
  br i1 %47, label %48, label %76

48:                                               ; preds = %43
  %49 = and i8 %40, 1
  %50 = icmp eq i8 %49, 0
  %51 = getelementptr inbounds %struct.BMHeader, ptr %37, i64 0, i32 3
  %52 = load i8, ptr %51, align 1, !tbaa !100
  br i1 %50, label %57, label %53

53:                                               ; preds = %48
  %54 = lshr i8 %52, 1
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  br label %76

57:                                               ; preds = %48
  %58 = and i8 %52, 2
  %59 = icmp eq i8 %58, 0
  %60 = and i8 %52, 1
  %61 = select i1 %59, i8 %60, i8 0
  br label %76

62:                                               ; preds = %36
  %63 = and i8 %40, 1
  %64 = icmp eq i8 %63, 0
  %65 = getelementptr inbounds %struct.BMHeader, ptr %37, i64 0, i32 3
  %66 = load i8, ptr %65, align 1, !tbaa !100
  br i1 %64, label %71, label %67

67:                                               ; preds = %62
  %68 = lshr i8 %66, 1
  %69 = and i8 %68, 1
  %70 = xor i8 %69, 1
  br label %76

71:                                               ; preds = %62
  %72 = and i8 %66, 2
  %73 = icmp eq i8 %72, 0
  %74 = and i8 %66, 1
  %75 = select i1 %73, i8 %74, i8 0
  br label %76

76:                                               ; preds = %43, %53, %57, %67, %71
  %77 = phi i8 [ 0, %43 ], [ %56, %53 ], [ %61, %57 ], [ %70, %67 ], [ %75, %71 ]
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %154, label %79

79:                                               ; preds = %76
  store i8 11, ptr %30, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %31, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %32, align 8, !tbaa !92
  store ptr %37, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %80 = load ptr, ptr %32, align 8, !tbaa !92
  %81 = call ptr %80(ptr noundef nonnull %4) #9
  %82 = icmp eq ptr %81, null
  br i1 %82, label %154, label %83

83:                                               ; preds = %79, %150
  %84 = phi ptr [ %152, %150 ], [ %81, %79 ]
  %85 = load ptr, ptr %84, align 8, !tbaa !101
  %86 = getelementptr inbounds i8, ptr %85, i64 %33
  %87 = load ptr, ptr %28, align 8, !tbaa !56
  %88 = getelementptr inbounds %struct.ToolSettings, ptr %87, i64 0, i32 11
  %89 = load i8, ptr %88, align 2, !tbaa !74
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  br i1 %35, label %92, label %121

92:                                               ; preds = %83
  br i1 %91, label %108, label %93

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.ToolSettings, ptr %87, i64 0, i32 8
  %95 = load i16, ptr %94, align 2, !tbaa !112
  %96 = and i16 %95, 4
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.BMLoop, ptr %84, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !113
  %101 = getelementptr inbounds %struct.BMHeader, ptr %100, i64 0, i32 3
  %102 = load i8, ptr %101, align 1, !tbaa !100
  br label %113

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.BMLoop, ptr %84, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !115
  %106 = getelementptr inbounds %struct.BMHeader, ptr %105, i64 0, i32 3
  %107 = load i8, ptr %106, align 1, !tbaa !100
  br label %113

108:                                              ; preds = %92
  %109 = getelementptr inbounds %struct.MLoopUV, ptr %86, i64 0, i32 1
  %110 = load i32, ptr %109, align 4, !tbaa !103
  %111 = trunc i32 %110 to i8
  %112 = lshr i8 %111, 1
  br label %113

113:                                              ; preds = %98, %103, %108
  %114 = phi i8 [ %102, %98 ], [ %107, %103 ], [ %112, %108 ]
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %150, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.MLoopUV, ptr %86, i64 0, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !103
  %120 = or i32 %119, 4
  store i32 %120, ptr %118, align 4, !tbaa !103
  br label %150

121:                                              ; preds = %83
  br i1 %91, label %137, label %122

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.ToolSettings, ptr %87, i64 0, i32 8
  %124 = load i16, ptr %123, align 2, !tbaa !112
  %125 = and i16 %124, 4
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.BMLoop, ptr %84, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !113
  %130 = getelementptr inbounds %struct.BMHeader, ptr %129, i64 0, i32 3
  %131 = load i8, ptr %130, align 1, !tbaa !100
  br label %142

132:                                              ; preds = %122
  %133 = getelementptr inbounds %struct.BMLoop, ptr %84, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !115
  %135 = getelementptr inbounds %struct.BMHeader, ptr %134, i64 0, i32 3
  %136 = load i8, ptr %135, align 1, !tbaa !100
  br label %142

137:                                              ; preds = %121
  %138 = getelementptr inbounds %struct.MLoopUV, ptr %86, i64 0, i32 1
  %139 = load i32, ptr %138, align 4, !tbaa !103
  %140 = trunc i32 %139 to i8
  %141 = lshr i8 %140, 1
  br label %142

142:                                              ; preds = %127, %132, %137
  %143 = phi i8 [ %131, %127 ], [ %136, %132 ], [ %141, %137 ]
  %144 = and i8 %143, 1
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.MLoopUV, ptr %86, i64 0, i32 1
  %148 = load i32, ptr %147, align 4, !tbaa !103
  %149 = and i32 %148, -5
  store i32 %149, ptr %147, align 4, !tbaa !103
  br label %150

150:                                              ; preds = %117, %113, %146, %142
  %151 = load ptr, ptr %32, align 8, !tbaa !92
  %152 = call ptr %151(ptr noundef nonnull %4) #9
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %83, !llvm.loop !319

154:                                              ; preds = %150, %79, %76
  %155 = load ptr, ptr %21, align 8, !tbaa !92
  %156 = call ptr %155(ptr noundef nonnull %3) #9
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %36, !llvm.loop !320

158:                                              ; preds = %154, %2
  %159 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %160 = load ptr, ptr %159, align 8, !tbaa !88
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %160) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_reveal_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #9
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 12
  %12 = load i8, ptr %11, align 1, !tbaa !173
  %13 = icmp eq i8 %12, 4
  %14 = icmp eq ptr %5, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 23
  %17 = load i8, ptr %16, align 1, !tbaa !174
  %18 = icmp eq i8 %17, 1
  br label %19

19:                                               ; preds = %2, %15
  %20 = phi i1 [ %18, %15 ], [ false, %2 ]
  %21 = load ptr, ptr %10, align 8, !tbaa !83
  %22 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 26
  %23 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %22, i32 noundef 16) #9
  %24 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 11
  %25 = load i8, ptr %24, align 2, !tbaa !74
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  tail call void @EDBM_mesh_reveal(ptr noundef nonnull %10) #9
  br label %253

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.BMEditMesh, ptr %10, i64 0, i32 12
  %31 = load i16, ptr %30, align 4, !tbaa !321
  %32 = icmp eq i16 %31, 4
  %33 = load ptr, ptr %10, align 8, !tbaa !83
  %34 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %34, align 4, !tbaa !89
  %35 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %35, align 8, !tbaa !91
  %36 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %36, align 8, !tbaa !92
  %37 = getelementptr inbounds %struct.BMesh, ptr %33, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !93
  store ptr %38, ptr %3, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #9
  %39 = load ptr, ptr %36, align 8, !tbaa !92
  %40 = call ptr %39(ptr noundef nonnull %3) #9
  %41 = icmp eq ptr %40, null
  br i1 %13, label %42, label %174

42:                                               ; preds = %29
  br i1 %32, label %43, label %77

43:                                               ; preds = %42
  br i1 %41, label %251, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %46 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %47 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %48 = sext i32 %23 to i64
  br label %49

49:                                               ; preds = %44, %73
  %50 = phi ptr [ %40, %44 ], [ %75, %73 ]
  %51 = getelementptr inbounds %struct.BMHeader, ptr %50, i64 0, i32 3
  %52 = load i8, ptr %51, align 1, !tbaa !100
  %53 = and i8 %52, -17
  store i8 %53, ptr %51, align 1, !tbaa !100
  %54 = and i8 %52, 3
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %49
  store i8 11, ptr %45, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %46, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %47, align 8, !tbaa !92
  store ptr %50, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %57 = load ptr, ptr %47, align 8, !tbaa !92
  %58 = call ptr %57(ptr noundef nonnull %4) #9
  %59 = icmp eq ptr %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %56, %60
  %61 = phi ptr [ %68, %60 ], [ %58, %56 ]
  %62 = load ptr, ptr %61, align 8, !tbaa !101
  %63 = getelementptr inbounds i8, ptr %62, i64 %48
  %64 = getelementptr inbounds %struct.MLoopUV, ptr %63, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !103
  %66 = or i32 %65, 2
  store i32 %66, ptr %64, align 4, !tbaa !103
  %67 = load ptr, ptr %47, align 8, !tbaa !92
  %68 = call ptr %67(ptr noundef nonnull %4) #9
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %60, !llvm.loop !322

70:                                               ; preds = %60, %56
  %71 = load i8, ptr %51, align 1, !tbaa !100
  %72 = or i8 %71, 16
  store i8 %72, ptr %51, align 1, !tbaa !100
  br label %73

73:                                               ; preds = %49, %70
  %74 = load ptr, ptr %36, align 8, !tbaa !92
  %75 = call ptr %74(ptr noundef nonnull %3) #9
  %76 = icmp eq ptr %75, null
  br i1 %76, label %251, label %49, !llvm.loop !323

77:                                               ; preds = %42
  br i1 %20, label %78, label %132

78:                                               ; preds = %77
  br i1 %41, label %251, label %79

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %81 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %82 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %83 = sext i32 %23 to i64
  br label %84

84:                                               ; preds = %79, %128
  %85 = phi ptr [ %40, %79 ], [ %130, %128 ]
  %86 = getelementptr inbounds %struct.BMHeader, ptr %85, i64 0, i32 3
  %87 = load i8, ptr %86, align 1, !tbaa !100
  %88 = and i8 %87, -17
  store i8 %88, ptr %86, align 1, !tbaa !100
  %89 = and i8 %87, 3
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %128

91:                                               ; preds = %84
  store i8 11, ptr %80, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %81, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %82, align 8, !tbaa !92
  store ptr %85, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %92 = load ptr, ptr %82, align 8, !tbaa !92
  %93 = call ptr %92(ptr noundef nonnull %4) #9
  %94 = icmp eq ptr %93, null
  br i1 %94, label %108, label %95

95:                                               ; preds = %91, %95
  %96 = phi i32 [ %104, %95 ], [ 0, %91 ]
  %97 = phi ptr [ %106, %95 ], [ %93, %91 ]
  %98 = getelementptr inbounds %struct.BMLoop, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !115
  %100 = getelementptr inbounds %struct.BMHeader, ptr %99, i64 0, i32 3
  %101 = load i8, ptr %100, align 1, !tbaa !100
  %102 = and i8 %101, 1
  %103 = zext nneg i8 %102 to i32
  %104 = add nuw nsw i32 %96, %103
  %105 = load ptr, ptr %82, align 8, !tbaa !92
  %106 = call ptr %105(ptr noundef nonnull %4) #9
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %95, !llvm.loop !324

108:                                              ; preds = %95, %91
  %109 = phi i32 [ 0, %91 ], [ %104, %95 ]
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %108
  store i8 11, ptr %80, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %81, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %82, align 8, !tbaa !92
  store ptr %85, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %112 = load ptr, ptr %82, align 8, !tbaa !92
  %113 = call ptr %112(ptr noundef nonnull %4) #9
  %114 = icmp eq ptr %113, null
  br i1 %114, label %125, label %115

115:                                              ; preds = %111, %115
  %116 = phi ptr [ %123, %115 ], [ %113, %111 ]
  %117 = load ptr, ptr %116, align 8, !tbaa !101
  %118 = getelementptr inbounds i8, ptr %117, i64 %83
  %119 = getelementptr inbounds %struct.MLoopUV, ptr %118, i64 0, i32 1
  %120 = load i32, ptr %119, align 4, !tbaa !103
  %121 = or i32 %120, 2
  store i32 %121, ptr %119, align 4, !tbaa !103
  %122 = load ptr, ptr %82, align 8, !tbaa !92
  %123 = call ptr %122(ptr noundef nonnull %4) #9
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %115, !llvm.loop !325

125:                                              ; preds = %115, %111
  %126 = load i8, ptr %86, align 1, !tbaa !100
  %127 = or i8 %126, 16
  store i8 %127, ptr %86, align 1, !tbaa !100
  br label %128

128:                                              ; preds = %108, %125, %84
  %129 = load ptr, ptr %36, align 8, !tbaa !92
  %130 = call ptr %129(ptr noundef nonnull %3) #9
  %131 = icmp eq ptr %130, null
  br i1 %131, label %251, label %84, !llvm.loop !326

132:                                              ; preds = %77
  br i1 %41, label %251, label %133

133:                                              ; preds = %132
  %134 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %135 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %136 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %137 = sext i32 %23 to i64
  br label %138

138:                                              ; preds = %133, %170
  %139 = phi ptr [ %40, %133 ], [ %172, %170 ]
  %140 = getelementptr inbounds %struct.BMHeader, ptr %139, i64 0, i32 3
  %141 = load i8, ptr %140, align 1, !tbaa !100
  %142 = and i8 %141, -17
  store i8 %142, ptr %140, align 1, !tbaa !100
  %143 = and i8 %141, 3
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %170

145:                                              ; preds = %138
  store i8 11, ptr %134, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %135, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %136, align 8, !tbaa !92
  store ptr %139, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %146 = load ptr, ptr %136, align 8, !tbaa !92
  %147 = call ptr %146(ptr noundef nonnull %4) #9
  %148 = icmp eq ptr %147, null
  br i1 %148, label %167, label %149

149:                                              ; preds = %145, %163
  %150 = phi ptr [ %165, %163 ], [ %147, %145 ]
  %151 = getelementptr inbounds %struct.BMLoop, ptr %150, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !115
  %153 = getelementptr inbounds %struct.BMHeader, ptr %152, i64 0, i32 3
  %154 = load i8, ptr %153, align 1, !tbaa !100
  %155 = and i8 %154, 1
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %149
  %158 = load ptr, ptr %150, align 8, !tbaa !101
  %159 = getelementptr inbounds i8, ptr %158, i64 %137
  %160 = getelementptr inbounds %struct.MLoopUV, ptr %159, i64 0, i32 1
  %161 = load i32, ptr %160, align 4, !tbaa !103
  %162 = or i32 %161, 2
  store i32 %162, ptr %160, align 4, !tbaa !103
  br label %163

163:                                              ; preds = %149, %157
  %164 = load ptr, ptr %136, align 8, !tbaa !92
  %165 = call ptr %164(ptr noundef nonnull %4) #9
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %149, !llvm.loop !327

167:                                              ; preds = %163, %145
  %168 = load i8, ptr %140, align 1, !tbaa !100
  %169 = or i8 %168, 16
  store i8 %169, ptr %140, align 1, !tbaa !100
  br label %170

170:                                              ; preds = %138, %167
  %171 = load ptr, ptr %36, align 8, !tbaa !92
  %172 = call ptr %171(ptr noundef nonnull %3) #9
  %173 = icmp eq ptr %172, null
  br i1 %173, label %251, label %138, !llvm.loop !328

174:                                              ; preds = %29
  br i1 %32, label %175, label %209

175:                                              ; preds = %174
  br i1 %41, label %251, label %176

176:                                              ; preds = %175
  %177 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %178 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %179 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %180 = sext i32 %23 to i64
  br label %181

181:                                              ; preds = %176, %205
  %182 = phi ptr [ %40, %176 ], [ %207, %205 ]
  %183 = getelementptr inbounds %struct.BMHeader, ptr %182, i64 0, i32 3
  %184 = load i8, ptr %183, align 1, !tbaa !100
  %185 = and i8 %184, -17
  store i8 %185, ptr %183, align 1, !tbaa !100
  %186 = and i8 %184, 3
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %188, label %205

188:                                              ; preds = %181
  store i8 11, ptr %177, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %178, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %179, align 8, !tbaa !92
  store ptr %182, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %189 = load ptr, ptr %179, align 8, !tbaa !92
  %190 = call ptr %189(ptr noundef nonnull %4) #9
  %191 = icmp eq ptr %190, null
  br i1 %191, label %202, label %192

192:                                              ; preds = %188, %192
  %193 = phi ptr [ %200, %192 ], [ %190, %188 ]
  %194 = load ptr, ptr %193, align 8, !tbaa !101
  %195 = getelementptr inbounds i8, ptr %194, i64 %180
  %196 = getelementptr inbounds %struct.MLoopUV, ptr %195, i64 0, i32 1
  %197 = load i32, ptr %196, align 4, !tbaa !103
  %198 = or i32 %197, 2
  store i32 %198, ptr %196, align 4, !tbaa !103
  %199 = load ptr, ptr %179, align 8, !tbaa !92
  %200 = call ptr %199(ptr noundef nonnull %4) #9
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %192, !llvm.loop !329

202:                                              ; preds = %192, %188
  %203 = load i8, ptr %183, align 1, !tbaa !100
  %204 = or i8 %203, 16
  store i8 %204, ptr %183, align 1, !tbaa !100
  br label %205

205:                                              ; preds = %181, %202
  %206 = load ptr, ptr %36, align 8, !tbaa !92
  %207 = call ptr %206(ptr noundef nonnull %3) #9
  %208 = icmp eq ptr %207, null
  br i1 %208, label %251, label %181, !llvm.loop !330

209:                                              ; preds = %174
  br i1 %41, label %251, label %210

210:                                              ; preds = %209
  %211 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %212 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %213 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %214 = sext i32 %23 to i64
  br label %215

215:                                              ; preds = %210, %247
  %216 = phi ptr [ %40, %210 ], [ %249, %247 ]
  %217 = getelementptr inbounds %struct.BMHeader, ptr %216, i64 0, i32 3
  %218 = load i8, ptr %217, align 1, !tbaa !100
  %219 = and i8 %218, -17
  store i8 %219, ptr %217, align 1, !tbaa !100
  %220 = and i8 %218, 3
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %222, label %247

222:                                              ; preds = %215
  store i8 11, ptr %211, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %212, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %213, align 8, !tbaa !92
  store ptr %216, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %223 = load ptr, ptr %213, align 8, !tbaa !92
  %224 = call ptr %223(ptr noundef nonnull %4) #9
  %225 = icmp eq ptr %224, null
  br i1 %225, label %244, label %226

226:                                              ; preds = %222, %240
  %227 = phi ptr [ %242, %240 ], [ %224, %222 ]
  %228 = getelementptr inbounds %struct.BMLoop, ptr %227, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !115
  %230 = getelementptr inbounds %struct.BMHeader, ptr %229, i64 0, i32 3
  %231 = load i8, ptr %230, align 1, !tbaa !100
  %232 = and i8 %231, 1
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %226
  %235 = load ptr, ptr %227, align 8, !tbaa !101
  %236 = getelementptr inbounds i8, ptr %235, i64 %214
  %237 = getelementptr inbounds %struct.MLoopUV, ptr %236, i64 0, i32 1
  %238 = load i32, ptr %237, align 4, !tbaa !103
  %239 = or i32 %238, 2
  store i32 %239, ptr %237, align 4, !tbaa !103
  br label %240

240:                                              ; preds = %226, %234
  %241 = load ptr, ptr %213, align 8, !tbaa !92
  %242 = call ptr %241(ptr noundef nonnull %4) #9
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %226, !llvm.loop !331

244:                                              ; preds = %240, %222
  %245 = load i8, ptr %217, align 1, !tbaa !100
  %246 = or i8 %245, 16
  store i8 %246, ptr %217, align 1, !tbaa !100
  br label %247

247:                                              ; preds = %215, %244
  %248 = load ptr, ptr %36, align 8, !tbaa !92
  %249 = call ptr %248(ptr noundef nonnull %3) #9
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %215, !llvm.loop !332

251:                                              ; preds = %247, %205, %170, %128, %73, %209, %175, %132, %78, %43
  %252 = load ptr, ptr %10, align 8, !tbaa !83
  call void @BM_mesh_elem_hflag_enable_test(ptr noundef %252, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 16) #9
  br label %253

253:                                              ; preds = %251, %28
  %254 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %255 = load ptr, ptr %254, align 8, !tbaa !88
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %255) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  ret i32 4
}

declare void @EDBM_mesh_reveal(ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_hflag_enable_test(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_hide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #9
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = tail call ptr @BKE_editmesh_from_object(ptr noundef %9) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !164
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.30) #9
  %17 = trunc i32 %16 to i8
  %18 = icmp eq ptr %8, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %8, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !263
  br label %22

22:                                               ; preds = %2, %19
  %23 = phi ptr [ %21, %19 ], [ null, %2 ]
  %24 = getelementptr inbounds %struct.ToolSettings, ptr %12, i64 0, i32 12
  %25 = load i8, ptr %24, align 1, !tbaa !173
  %26 = icmp eq i8 %25, 4
  %27 = load ptr, ptr %13, align 8, !tbaa !83
  %28 = getelementptr inbounds %struct.BMesh, ptr %27, i64 0, i32 26
  %29 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %28, i32 noundef 16) #9
  %30 = load ptr, ptr %13, align 8, !tbaa !83
  %31 = getelementptr inbounds %struct.BMesh, ptr %30, i64 0, i32 27
  %32 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %31, i32 noundef 15) #9
  %33 = getelementptr inbounds %struct.ToolSettings, ptr %12, i64 0, i32 11
  %34 = load i8, ptr %33, align 2, !tbaa !74
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %22
  tail call void @EDBM_mesh_hide(ptr noundef nonnull %13, i8 noundef zeroext %17) #9
  br label %315

38:                                               ; preds = %22
  %39 = load ptr, ptr %13, align 8, !tbaa !83
  %40 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 3, ptr %40, align 4, !tbaa !89
  %41 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %41, align 8, !tbaa !91
  %42 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %42, align 8, !tbaa !92
  %43 = getelementptr inbounds %struct.BMesh, ptr %39, i64 0, i32 12
  %44 = load ptr, ptr %43, align 8, !tbaa !93
  store ptr %44, ptr %6, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #9
  %45 = load ptr, ptr %42, align 8, !tbaa !92
  %46 = call ptr %45(ptr noundef nonnull %6) #9
  %47 = icmp eq ptr %46, null
  br i1 %47, label %308, label %48

48:                                               ; preds = %38
  %49 = sext i32 %32 to i64
  %50 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %51 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %52 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %53 = sext i32 %29 to i64
  %54 = icmp eq i8 %17, 0
  %55 = getelementptr inbounds %struct.BMEditMesh, ptr %13, i64 0, i32 12
  %56 = zext i1 %54 to i8
  %57 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %58 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %59 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %60 = getelementptr inbounds %struct.BMEditMesh, ptr %13, i64 0, i32 12
  %61 = zext i1 %54 to i8
  %62 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %63 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %64 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %65 = zext i1 %54 to i8
  %66 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %67 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %68 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  br label %69

69:                                               ; preds = %48, %304
  %70 = phi ptr [ %46, %48 ], [ %306, %304 ]
  %71 = load ptr, ptr %11, align 8, !tbaa !56
  %72 = getelementptr inbounds %struct.ToolSettings, ptr %71, i64 0, i32 11
  %73 = load i8, ptr %72, align 2, !tbaa !74
  %74 = and i8 %73, 2
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %69
  %77 = load ptr, ptr %70, align 8, !tbaa !95
  %78 = getelementptr inbounds i8, ptr %77, i64 %49
  %79 = load ptr, ptr %78, align 8, !tbaa !98
  %80 = icmp eq ptr %79, %23
  br i1 %80, label %81, label %109

81:                                               ; preds = %76
  %82 = and i8 %73, 1
  %83 = icmp eq i8 %82, 0
  %84 = getelementptr inbounds %struct.BMHeader, ptr %70, i64 0, i32 3
  %85 = load i8, ptr %84, align 1, !tbaa !100
  br i1 %83, label %90, label %86

86:                                               ; preds = %81
  %87 = lshr i8 %85, 1
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  br label %109

90:                                               ; preds = %81
  %91 = and i8 %85, 2
  %92 = icmp eq i8 %91, 0
  %93 = and i8 %85, 1
  %94 = select i1 %92, i8 %93, i8 0
  br label %109

95:                                               ; preds = %69
  %96 = and i8 %73, 1
  %97 = icmp eq i8 %96, 0
  %98 = getelementptr inbounds %struct.BMHeader, ptr %70, i64 0, i32 3
  %99 = load i8, ptr %98, align 1, !tbaa !100
  br i1 %97, label %104, label %100

100:                                              ; preds = %95
  %101 = lshr i8 %99, 1
  %102 = and i8 %101, 1
  %103 = xor i8 %102, 1
  br label %109

104:                                              ; preds = %95
  %105 = and i8 %99, 2
  %106 = icmp eq i8 %105, 0
  %107 = and i8 %99, 1
  %108 = select i1 %106, i8 %107, i8 0
  br label %109

109:                                              ; preds = %76, %86, %90, %100, %104
  %110 = phi i8 [ 0, %76 ], [ %89, %86 ], [ %94, %90 ], [ %103, %100 ], [ %108, %104 ]
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %304, label %112

112:                                              ; preds = %109
  store i8 11, ptr %50, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %51, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %52, align 8, !tbaa !92
  store ptr %70, ptr %7, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %7) #9
  %113 = load ptr, ptr %52, align 8, !tbaa !92
  %114 = call ptr %113(ptr noundef nonnull %7) #9
  %115 = icmp eq ptr %114, null
  br i1 %115, label %304, label %116

116:                                              ; preds = %112, %125
  %117 = phi ptr [ %127, %125 ], [ %114, %112 ]
  %118 = load ptr, ptr %117, align 8, !tbaa !101
  %119 = getelementptr inbounds i8, ptr %118, i64 %53
  %120 = getelementptr inbounds %struct.MLoopUV, ptr %119, i64 0, i32 1
  %121 = load i32, ptr %120, align 4, !tbaa !103
  %122 = and i32 %121, 2
  %123 = icmp eq i32 %122, 0
  %124 = xor i1 %54, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %116
  %126 = load ptr, ptr %52, align 8, !tbaa !92
  %127 = call ptr %126(ptr noundef nonnull %7) #9
  %128 = icmp eq ptr %127, null
  br i1 %128, label %304, label %116, !llvm.loop !333

129:                                              ; preds = %116
  br i1 %26, label %130, label %235

130:                                              ; preds = %129
  %131 = load i16, ptr %60, align 4, !tbaa !321
  %132 = icmp eq i16 %131, 4
  %133 = getelementptr inbounds %struct.BMFace, ptr %70, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !334
  br i1 %132, label %135, label %175

135:                                              ; preds = %130, %143
  %136 = phi ptr [ %145, %143 ], [ %134, %130 ]
  %137 = load ptr, ptr %136, align 8, !tbaa !101
  %138 = getelementptr inbounds i8, ptr %137, i64 %53
  %139 = getelementptr inbounds %struct.MLoopUV, ptr %138, i64 0, i32 1
  %140 = load i32, ptr %139, align 4, !tbaa !103
  %141 = and i32 %140, 2
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.BMLoop, ptr %136, i64 0, i32 6
  %145 = load ptr, ptr %144, align 8, !tbaa !116
  %146 = icmp eq ptr %145, %134
  br i1 %146, label %147, label %135, !llvm.loop !335

147:                                              ; preds = %135, %143
  %148 = phi i8 [ 0, %135 ], [ 1, %143 ]
  %149 = icmp eq i8 %148, %65
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load ptr, ptr %13, align 8, !tbaa !83
  call void @BM_face_select_set(ptr noundef %151, ptr noundef nonnull %70, i8 noundef zeroext 0) #9
  br label %152

152:                                              ; preds = %150, %147
  %153 = load ptr, ptr %11, align 8, !tbaa !56
  %154 = getelementptr inbounds %struct.ToolSettings, ptr %153, i64 0, i32 11
  %155 = load i8, ptr %154, align 2, !tbaa !74
  %156 = and i8 %155, 1
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %152
  %159 = load ptr, ptr %13, align 8, !tbaa !83
  call void @BM_face_select_set(ptr noundef %159, ptr noundef nonnull %70, i8 noundef zeroext 0) #9
  br label %304

160:                                              ; preds = %152
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  store i8 11, ptr %66, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %67, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %68, align 8, !tbaa !92
  store ptr %70, ptr %5, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %5) #9
  %161 = load ptr, ptr %68, align 8, !tbaa !92
  %162 = call ptr %161(ptr noundef nonnull %5) #9
  %163 = icmp eq ptr %162, null
  br i1 %163, label %174, label %164

164:                                              ; preds = %160, %164
  %165 = phi ptr [ %172, %164 ], [ %162, %160 ]
  %166 = load ptr, ptr %165, align 8, !tbaa !101
  %167 = getelementptr inbounds i8, ptr %166, i64 %53
  %168 = getelementptr inbounds %struct.MLoopUV, ptr %167, i64 0, i32 1
  %169 = load i32, ptr %168, align 4, !tbaa !103
  %170 = and i32 %169, -3
  store i32 %170, ptr %168, align 4, !tbaa !103
  %171 = load ptr, ptr %68, align 8, !tbaa !92
  %172 = call ptr %171(ptr noundef nonnull %5) #9
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %164, !llvm.loop !111

174:                                              ; preds = %164, %160
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  br label %304

175:                                              ; preds = %130, %183
  %176 = phi ptr [ %185, %183 ], [ %134, %130 ]
  %177 = load ptr, ptr %176, align 8, !tbaa !101
  %178 = getelementptr inbounds i8, ptr %177, i64 %53
  %179 = getelementptr inbounds %struct.MLoopUV, ptr %178, i64 0, i32 1
  %180 = load i32, ptr %179, align 4, !tbaa !103
  %181 = and i32 %180, 2
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %175
  %184 = getelementptr inbounds %struct.BMLoop, ptr %176, i64 0, i32 6
  %185 = load ptr, ptr %184, align 8, !tbaa !116
  %186 = icmp eq ptr %185, %134
  br i1 %186, label %187, label %175, !llvm.loop !335

187:                                              ; preds = %175, %183
  %188 = phi i8 [ 0, %175 ], [ 1, %183 ]
  %189 = icmp eq i8 %188, %61
  br i1 %189, label %190, label %211

190:                                              ; preds = %187
  store i8 11, ptr %50, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %51, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %52, align 8, !tbaa !92
  store ptr %70, ptr %7, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %7) #9
  %191 = load ptr, ptr %52, align 8, !tbaa !92
  %192 = call ptr %191(ptr noundef nonnull %7) #9
  %193 = icmp eq ptr %192, null
  br i1 %193, label %211, label %194

194:                                              ; preds = %190, %207
  %195 = phi ptr [ %209, %207 ], [ %192, %190 ]
  %196 = load ptr, ptr %195, align 8, !tbaa !101
  %197 = getelementptr inbounds i8, ptr %196, i64 %53
  %198 = getelementptr inbounds %struct.MLoopUV, ptr %197, i64 0, i32 1
  %199 = load i32, ptr %198, align 4, !tbaa !103
  %200 = and i32 %199, 2
  %201 = icmp eq i32 %200, 0
  %202 = xor i1 %54, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %194
  %204 = load ptr, ptr %13, align 8, !tbaa !83
  %205 = getelementptr inbounds %struct.BMLoop, ptr %195, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !115
  call void @BM_vert_select_set(ptr noundef %204, ptr noundef %206, i8 noundef zeroext 0) #9
  br label %207

207:                                              ; preds = %194, %203
  %208 = load ptr, ptr %52, align 8, !tbaa !92
  %209 = call ptr %208(ptr noundef nonnull %7) #9
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %194, !llvm.loop !336

211:                                              ; preds = %207, %190, %187
  br i1 %54, label %212, label %304

212:                                              ; preds = %211
  %213 = load ptr, ptr %11, align 8, !tbaa !56
  %214 = getelementptr inbounds %struct.ToolSettings, ptr %213, i64 0, i32 11
  %215 = load i8, ptr %214, align 2, !tbaa !74
  %216 = and i8 %215, 1
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %212
  %219 = load ptr, ptr %13, align 8, !tbaa !83
  call void @BM_face_select_set(ptr noundef %219, ptr noundef nonnull %70, i8 noundef zeroext 0) #9
  br label %304

220:                                              ; preds = %212
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  store i8 11, ptr %62, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %63, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %64, align 8, !tbaa !92
  store ptr %70, ptr %4, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #9
  %221 = load ptr, ptr %64, align 8, !tbaa !92
  %222 = call ptr %221(ptr noundef nonnull %4) #9
  %223 = icmp eq ptr %222, null
  br i1 %223, label %234, label %224

224:                                              ; preds = %220, %224
  %225 = phi ptr [ %232, %224 ], [ %222, %220 ]
  %226 = load ptr, ptr %225, align 8, !tbaa !101
  %227 = getelementptr inbounds i8, ptr %226, i64 %53
  %228 = getelementptr inbounds %struct.MLoopUV, ptr %227, i64 0, i32 1
  %229 = load i32, ptr %228, align 4, !tbaa !103
  %230 = and i32 %229, -3
  store i32 %230, ptr %228, align 4, !tbaa !103
  %231 = load ptr, ptr %64, align 8, !tbaa !92
  %232 = call ptr %231(ptr noundef nonnull %4) #9
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %224, !llvm.loop !111

234:                                              ; preds = %224, %220
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  br label %304

235:                                              ; preds = %129
  %236 = load i16, ptr %55, align 4, !tbaa !321
  %237 = icmp eq i16 %236, 4
  br i1 %237, label %238, label %280

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.BMFace, ptr %70, i64 0, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !334
  br label %241

241:                                              ; preds = %249, %238
  %242 = phi ptr [ %240, %238 ], [ %251, %249 ]
  %243 = load ptr, ptr %242, align 8, !tbaa !101
  %244 = getelementptr inbounds i8, ptr %243, i64 %53
  %245 = getelementptr inbounds %struct.MLoopUV, ptr %244, i64 0, i32 1
  %246 = load i32, ptr %245, align 4, !tbaa !103
  %247 = and i32 %246, 2
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %241
  %250 = getelementptr inbounds %struct.BMLoop, ptr %242, i64 0, i32 6
  %251 = load ptr, ptr %250, align 8, !tbaa !116
  %252 = icmp eq ptr %251, %240
  br i1 %252, label %253, label %241, !llvm.loop !335

253:                                              ; preds = %241, %249
  %254 = phi i8 [ 0, %241 ], [ 1, %249 ]
  %255 = icmp eq i8 %254, %56
  br i1 %255, label %304, label %256

256:                                              ; preds = %253
  %257 = load ptr, ptr %13, align 8, !tbaa !83
  call void @BM_face_select_set(ptr noundef %257, ptr noundef nonnull %70, i8 noundef zeroext 0) #9
  %258 = load ptr, ptr %11, align 8, !tbaa !56
  %259 = getelementptr inbounds %struct.ToolSettings, ptr %258, i64 0, i32 11
  %260 = load i8, ptr %259, align 2, !tbaa !74
  %261 = and i8 %260, 1
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %265, label %263

263:                                              ; preds = %256
  %264 = load ptr, ptr %13, align 8, !tbaa !83
  call void @BM_face_select_set(ptr noundef %264, ptr noundef nonnull %70, i8 noundef zeroext 0) #9
  br label %304

265:                                              ; preds = %256
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  store i8 11, ptr %57, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %58, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %59, align 8, !tbaa !92
  store ptr %70, ptr %3, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %3) #9
  %266 = load ptr, ptr %59, align 8, !tbaa !92
  %267 = call ptr %266(ptr noundef nonnull %3) #9
  %268 = icmp eq ptr %267, null
  br i1 %268, label %279, label %269

269:                                              ; preds = %265, %269
  %270 = phi ptr [ %277, %269 ], [ %267, %265 ]
  %271 = load ptr, ptr %270, align 8, !tbaa !101
  %272 = getelementptr inbounds i8, ptr %271, i64 %53
  %273 = getelementptr inbounds %struct.MLoopUV, ptr %272, i64 0, i32 1
  %274 = load i32, ptr %273, align 4, !tbaa !103
  %275 = and i32 %274, -3
  store i32 %275, ptr %273, align 4, !tbaa !103
  %276 = load ptr, ptr %59, align 8, !tbaa !92
  %277 = call ptr %276(ptr noundef nonnull %3) #9
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %269, !llvm.loop !111

279:                                              ; preds = %269, %265
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  br label %304

280:                                              ; preds = %235
  store i8 11, ptr %50, align 4, !tbaa !89
  store ptr @bmiter__loop_of_face_begin, ptr %51, align 8, !tbaa !91
  store ptr @bmiter__loop_of_face_step, ptr %52, align 8, !tbaa !92
  store ptr %70, ptr %7, align 8, !tbaa !94
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %7) #9
  %281 = load ptr, ptr %52, align 8, !tbaa !92
  %282 = call ptr %281(ptr noundef nonnull %7) #9
  %283 = icmp eq ptr %282, null
  br i1 %283, label %304, label %284

284:                                              ; preds = %280, %300
  %285 = phi ptr [ %302, %300 ], [ %282, %280 ]
  %286 = load ptr, ptr %285, align 8, !tbaa !101
  %287 = getelementptr inbounds i8, ptr %286, i64 %53
  %288 = getelementptr inbounds %struct.MLoopUV, ptr %287, i64 0, i32 1
  %289 = load i32, ptr %288, align 4, !tbaa !103
  %290 = and i32 %289, 2
  %291 = icmp eq i32 %290, 0
  %292 = xor i1 %54, %291
  br i1 %292, label %293, label %300

293:                                              ; preds = %284
  %294 = load ptr, ptr %13, align 8, !tbaa !83
  %295 = getelementptr inbounds %struct.BMLoop, ptr %285, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !115
  call void @BM_vert_select_set(ptr noundef %294, ptr noundef %296, i8 noundef zeroext 0) #9
  br i1 %54, label %297, label %300

297:                                              ; preds = %293
  %298 = load i32, ptr %288, align 4, !tbaa !103
  %299 = and i32 %298, -3
  store i32 %299, ptr %288, align 4, !tbaa !103
  br label %300

300:                                              ; preds = %284, %297, %293
  %301 = load ptr, ptr %52, align 8, !tbaa !92
  %302 = call ptr %301(ptr noundef nonnull %7) #9
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %284, !llvm.loop !337

304:                                              ; preds = %125, %300, %112, %280, %279, %263, %234, %218, %174, %158, %253, %211, %109
  %305 = load ptr, ptr %42, align 8, !tbaa !92
  %306 = call ptr %305(ptr noundef nonnull %6) #9
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %69, !llvm.loop !338

308:                                              ; preds = %304, %38
  %309 = getelementptr inbounds %struct.BMEditMesh, ptr %13, i64 0, i32 12
  %310 = load i16, ptr %309, align 4, !tbaa !321
  %311 = icmp eq i16 %310, 4
  br i1 %311, label %313, label %312

312:                                              ; preds = %308
  call void @EDBM_selectmode_flush_ex(ptr noundef nonnull %13, i16 noundef signext 3) #9
  br label %313

313:                                              ; preds = %312, %308
  %314 = load ptr, ptr %13, align 8, !tbaa !83
  call void @BM_select_history_validate(ptr noundef %314) #9
  br label %315

315:                                              ; preds = %313, %37
  %316 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %317 = load ptr, ptr %316, align 8, !tbaa !88
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %317) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  ret i32 4
}

declare void @EDBM_mesh_hide(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @EDBM_selectmode_flush_ex(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_set_2d_cursor_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !164
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 11
  tail call void @RNA_float_get_array(ptr noundef %7, ptr noundef nonnull @.str.42, ptr noundef nonnull %8) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 251920384, ptr noundef null) #9
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi i32 [ 4, %5 ], [ 2, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @uv_set_2d_cursor_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !171
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !171
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %6, float noundef %9, float noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %13) #9
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !164
  call void @RNA_float_set_array(ptr noundef %15, ptr noundef nonnull @.str.42, ptr noundef nonnull %4) #9
  %16 = call ptr @CTX_wm_space_image(ptr noundef %0) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load ptr, ptr %14, align 8, !tbaa !164
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %16, i64 0, i32 11
  call void @RNA_float_get_array(ptr noundef %19, ptr noundef nonnull @.str.42, ptr noundef nonnull %20) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 251920384, ptr noundef null) #9
  br label %21

21:                                               ; preds = %3, %18
  %22 = phi i32 [ 4, %18 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @uv_set_2d_cursor_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_uvedit_space_image(ptr noundef %0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call i32 @ED_space_image_maskedit_poll(ptr noundef %0) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @ED_space_image_paint_curve(ptr noundef %0) #9
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %7, %4, %1
  %12 = phi i32 [ 1, %4 ], [ 1, %1 ], [ %10, %7 ]
  ret i32 %12
}

declare i32 @ED_space_image_maskedit_poll(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_space_image_paint_curve(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_tile_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [2 x i32], align 4
  %5 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !164
  call void @RNA_int_get_array(ptr noundef %8, ptr noundef nonnull @.str.168, ptr noundef nonnull %4) #9
  %9 = load i32, ptr %4, align 4, !tbaa !171
  %10 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 16
  %11 = load i16, ptr %10, align 4, !tbaa !339
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !171
  %15 = mul i32 %14, %12
  %16 = add i32 %15, %9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  %17 = icmp eq ptr %5, null
  %18 = icmp eq ptr %6, null
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %74, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !34
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %74

24:                                               ; preds = %20
  %25 = call ptr @BKE_editmesh_from_object(ptr noundef nonnull %6) #9
  %26 = call zeroext i8 @EDBM_mtexpoly_check(ptr noundef %25) #9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %74, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 14
  %30 = load i16, ptr %29, align 8, !tbaa !340
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %74, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 12
  %35 = load i16, ptr %34, align 2, !tbaa !81
  %36 = and i16 %35, -2
  %37 = icmp eq i16 %36, 4
  br i1 %37, label %74, label %38

38:                                               ; preds = %33
  %39 = call ptr @BKE_editmesh_from_object(ptr noundef %6) #9
  %40 = load ptr, ptr %39, align 8, !tbaa !83
  %41 = getelementptr inbounds %struct.BMesh, ptr %40, i64 0, i32 27
  %42 = call i32 @CustomData_get_offset(ptr noundef nonnull %41, i32 noundef 15) #9
  %43 = load ptr, ptr %39, align 8, !tbaa !83
  %44 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %44, align 4, !tbaa !89
  %45 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %45, align 8, !tbaa !91
  %46 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %46, align 8, !tbaa !92
  %47 = getelementptr inbounds %struct.BMesh, ptr %43, i64 0, i32 12
  %48 = load ptr, ptr %47, align 8, !tbaa !93
  store ptr %48, ptr %3, align 8, !tbaa !94
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #9
  %49 = load ptr, ptr %46, align 8, !tbaa !92
  %50 = call ptr %49(ptr noundef nonnull %3) #9
  %51 = icmp eq ptr %50, null
  br i1 %51, label %69, label %52

52:                                               ; preds = %38
  %53 = sext i32 %42 to i64
  %54 = trunc i32 %16 to i16
  br label %55

55:                                               ; preds = %52, %65
  %56 = phi ptr [ %50, %52 ], [ %67, %65 ]
  %57 = getelementptr inbounds %struct.BMHeader, ptr %56, i64 0, i32 3
  %58 = load i8, ptr %57, align 1, !tbaa !100
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %56, align 8, !tbaa !95
  %63 = getelementptr inbounds i8, ptr %62, i64 %53
  %64 = getelementptr inbounds %struct.MTexPoly, ptr %63, i64 0, i32 4
  store i16 %54, ptr %64, align 4, !tbaa !341
  br label %65

65:                                               ; preds = %61, %55
  %66 = load ptr, ptr %46, align 8, !tbaa !92
  %67 = call ptr %66(ptr noundef nonnull %3) #9
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %55, !llvm.loop !342

69:                                               ; preds = %65, %38
  %70 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %71 = load ptr, ptr %70, align 8, !tbaa !88
  call void @DAG_id_tag_update(ptr noundef %71, i16 noundef signext 0) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  %72 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %73 = load ptr, ptr %72, align 8, !tbaa !88
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %73) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 251920384, ptr noundef null) #9
  br label %75

74:                                               ; preds = %20, %2, %24, %28, %33
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  br label %75

75:                                               ; preds = %74, %69
  %76 = phi i32 [ 4, %69 ], [ 2, %74 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_tile_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [2 x i32], align 4
  %7 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #9
  %8 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #9
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %10 = icmp eq ptr %8, null
  br i1 %10, label %54, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 14
  %13 = load i16, ptr %12, align 8, !tbaa !340
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %54, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !171
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %22 = load i32, ptr %21, align 4, !tbaa !171
  %23 = sitofp i32 %22 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %17, float noundef %20, float noundef %23, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %24 = load float, ptr %4, align 4
  %25 = fcmp oge float %24, 0.000000e+00
  %26 = load float, ptr %5, align 4
  %27 = fcmp oge float %26, 0.000000e+00
  %28 = select i1 %25, i1 %27, i1 false
  %29 = fcmp olt float %24, 1.000000e+00
  %30 = and i1 %29, %28
  %31 = fcmp olt float %26, 1.000000e+00
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %52

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 16
  %35 = load i16, ptr %34, align 4, !tbaa !339
  %36 = sitofp i16 %35 to float
  %37 = fmul float %24, %36
  store float %37, ptr %4, align 4, !tbaa !127
  %38 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 17
  %39 = load i16, ptr %38, align 2, !tbaa !343
  %40 = sitofp i16 %39 to float
  %41 = fmul float %26, %40
  store float %41, ptr %5, align 4, !tbaa !127
  %42 = fptosi float %37 to i32
  store i32 %42, ptr %6, align 4, !tbaa !171
  %43 = fptosi float %41 to i32
  %44 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  store i32 %43, ptr %44, align 4, !tbaa !171
  %45 = zext i16 %35 to i32
  %46 = mul i32 %43, %45
  %47 = add i32 %46, %42
  %48 = trunc i32 %47 to i16
  %49 = getelementptr inbounds %struct.SpaceImage, ptr %7, i64 0, i32 20
  store i16 %48, ptr %49, align 8, !tbaa !344
  %50 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !164
  call void @RNA_int_set_array(ptr noundef %51, ptr noundef nonnull @.str.168, ptr noundef nonnull %6) #9
  br label %52

52:                                               ; preds = %33, %16
  %53 = call i32 @set_tile_exec(ptr noundef %0, ptr noundef %1), !range !216
  br label %54

54:                                               ; preds = %3, %11, %52
  %55 = phi i32 [ %53, %52 ], [ 2, %11 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %55
}

declare i32 @ED_operator_image_active(ptr noundef) #2

declare ptr @RNA_def_int_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_int_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_int_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_space_image_show_uvedit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

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
!34 = !{!35, !40, i64 136}
!35 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !42, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !45, i64 1304, !45, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!"float", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!47, !38, i64 543}
!47 = !{!"Material", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !48, i64 224, !49, i64 312, !44, i64 328, !44, i64 332, !44, i64 336, !44, i64 340, !44, i64 344, !44, i64 348, !44, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !38, i64 362, !38, i64 363, !44, i64 364, !44, i64 368, !40, i64 372, !40, i64 374, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !44, i64 420, !44, i64 424, !44, i64 428, !44, i64 432, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !44, i64 456, !38, i64 460, !44, i64 524, !44, i64 528, !44, i64 532, !41, i64 536, !38, i64 540, !38, i64 541, !38, i64 542, !38, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !38, i64 550, !38, i64 551, !40, i64 552, !40, i64 554, !44, i64 556, !44, i64 560, !38, i64 564, !44, i64 580, !44, i64 584, !40, i64 588, !40, i64 590, !37, i64 592, !37, i64 600, !38, i64 608, !38, i64 609, !38, i64 610, !38, i64 611, !40, i64 612, !40, i64 614, !44, i64 616, !44, i64 620, !38, i64 624, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !44, i64 800, !44, i64 804, !44, i64 808, !44, i64 812, !44, i64 816, !40, i64 820, !40, i64 822, !38, i64 824, !38, i64 836, !44, i64 848, !44, i64 852, !44, i64 856, !44, i64 860, !44, i64 864, !44, i64 868, !44, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !38, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !38, i64 914, !37, i64 920, !43, i64 928}
!48 = !{!"VolumeSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !38, i64 16, !38, i64 28, !38, i64 40, !44, i64 52, !44, i64 56, !44, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84}
!49 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!50 = !{!47, !37, i64 768}
!51 = !{!52, !40, i64 172}
!52 = !{!"bNode", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 104, !41, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !38, i64 188, !43, i64 200, !43, i64 216, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !43, i64 264, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !41, i64 308, !38, i64 312, !40, i64 376, !40, i64 378, !44, i64 380, !44, i64 384, !40, i64 388, !40, i64 390, !37, i64 392, !53, i64 400, !53, i64 416, !53, i64 432, !40, i64 448, !40, i64 450, !41, i64 452, !37, i64 456}
!53 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!54 = !{!52, !37, i64 240}
!55 = !{!37, !37, i64 0}
!56 = !{!57, !37, i64 264}
!57 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !58, i64 280, !66, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !67, i64 4400, !68, i64 4416, !71, i64 4600, !37, i64 4608, !72, i64 4616, !37, i64 4640, !45, i64 4648, !45, i64 4656, !60, i64 4664, !61, i64 4824, !73, i64 4888, !37, i64 4952}
!58 = !{!"RenderData", !59, i64 0, !37, i64 248, !37, i64 256, !62, i64 264, !63, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !53, i64 544, !53, i64 560, !64, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !65, i64 2616, !41, i64 3976, !41, i64 3980}
!59 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !60, i64 24, !61, i64 184}
!60 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!61 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!62 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!63 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!64 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!65 = !{!"BakeData", !59, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!66 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!67 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!68 = !{!"GameData", !67, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !69, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !70, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!69 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!70 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!71 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!72 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!73 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!74 = !{!75, !38, i64 50}
!75 = !{!"ToolSettings", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !40, i64 44, !40, i64 46, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !44, i64 52, !40, i64 56, !38, i64 58, !38, i64 59, !76, i64 64, !78, i64 168, !44, i64 336, !44, i64 340, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 349, !40, i64 350, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !44, i64 368, !44, i64 372, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !40, i64 392, !38, i64 394, !38, i64 395, !38, i64 396, !38, i64 399, !37, i64 400, !38, i64 408, !38, i64 409, !38, i64 410, !38, i64 411, !38, i64 412, !38, i64 413, !38, i64 421, !38, i64 429, !38, i64 430, !38, i64 431, !38, i64 432, !38, i64 433, !40, i64 434, !40, i64 436, !40, i64 438, !40, i64 440, !38, i64 442, !38, i64 443, !38, i64 444, !38, i64 445, !38, i64 446, !38, i64 447, !41, i64 448, !41, i64 452, !41, i64 456, !41, i64 460, !40, i64 464, !40, i64 466, !41, i64 468, !44, i64 472, !44, i64 476, !79, i64 480, !80, i64 608}
!76 = !{!"ImagePaintSettings", !77, i64 0, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !38, i64 48, !41, i64 52, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !38, i64 88, !44, i64 100}
!77 = !{!"Paint", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!78 = !{!"ParticleEditSettings", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !38, i64 8, !37, i64 120, !44, i64 128, !44, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !37, i64 160}
!79 = !{!"UnifiedPaintSettings", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !38, i64 16, !38, i64 28, !41, i64 40, !38, i64 44, !44, i64 52, !41, i64 56, !41, i64 60, !38, i64 64, !38, i64 65, !44, i64 72, !38, i64 76, !41, i64 84, !44, i64 88, !38, i64 92, !38, i64 100, !41, i64 108, !37, i64 112, !44, i64 120, !41, i64 124}
!80 = !{!"MeshStatVis", !38, i64 0, !38, i64 1, !38, i64 3, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !38, i64 20, !38, i64 21, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36}
!81 = !{!82, !40, i64 1250}
!82 = !{!"Image", !36, i64 0, !38, i64 120, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !38, i64 1176, !40, i64 1240, !40, i64 1242, !40, i64 1244, !40, i64 1246, !40, i64 1248, !40, i64 1250, !41, i64 1252, !40, i64 1256, !40, i64 1258, !40, i64 1260, !40, i64 1262, !40, i64 1264, !40, i64 1266, !41, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !44, i64 1296, !41, i64 1300, !40, i64 1304, !40, i64 1306, !41, i64 1308, !41, i64 1312, !38, i64 1316, !38, i64 1317, !40, i64 1318, !38, i64 1320, !44, i64 1336, !44, i64 1340, !73, i64 1344, !38, i64 1408, !38, i64 1409, !38, i64 1416}
!83 = !{!84, !37, i64 0}
!84 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !45, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!85 = !{!86, !41, i64 12}
!86 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !87, i64 144, !87, i64 344, !87, i64 544, !87, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !43, i64 960, !37, i64 976, !43, i64 984, !37, i64 1000}
!87 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!88 = !{!35, !37, i64 296}
!89 = !{!90, !38, i64 60}
!90 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !41, i64 56, !38, i64 60}
!91 = !{!90, !37, i64 40}
!92 = !{!90, !37, i64 48}
!93 = !{!86, !37, i64 56}
!94 = !{!38, !38, i64 0}
!95 = !{!96, !37, i64 0}
!96 = !{!"BMFace", !97, i64 0, !37, i64 16, !37, i64 24, !41, i64 32, !38, i64 36, !40, i64 48}
!97 = !{!"BMHeader", !37, i64 0, !41, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!98 = !{!99, !37, i64 0}
!99 = !{!"MTexPoly", !37, i64 0, !38, i64 8, !38, i64 9, !40, i64 10, !40, i64 12, !40, i64 14}
!100 = !{!97, !38, i64 13}
!101 = !{!102, !37, i64 0}
!102 = !{!"BMLoop", !97, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!103 = !{!104, !41, i64 8}
!104 = !{!"MLoopUV", !38, i64 0, !41, i64 8}
!105 = distinct !{!105, !106, !107}
!106 = !{!"llvm.loop.mustprogress"}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = !{!82, !41, i64 100}
!109 = distinct !{!109, !106, !107}
!110 = distinct !{!110, !106, !107}
!111 = distinct !{!111, !106, !107}
!112 = !{!75, !40, i64 46}
!113 = !{!102, !37, i64 32}
!114 = !{!102, !37, i64 24}
!115 = !{!102, !37, i64 16}
!116 = !{!102, !37, i64 56}
!117 = !{!118, !37, i64 24}
!118 = !{!"BMEdge", !97, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !119, i64 48, !119, i64 64}
!119 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!120 = !{!118, !37, i64 32}
!121 = !{!122, !41, i64 36}
!122 = !{!"SpaceImage", !37, i64 0, !37, i64 8, !43, i64 16, !41, i64 32, !41, i64 36, !37, i64 40, !123, i64 48, !37, i64 88, !124, i64 96, !125, i64 5360, !37, i64 10520, !38, i64 10528, !44, i64 10536, !44, i64 10540, !44, i64 10544, !44, i64 10548, !44, i64 10552, !38, i64 10556, !38, i64 10557, !40, i64 10558, !40, i64 10560, !40, i64 10562, !38, i64 10564, !38, i64 10565, !38, i64 10566, !38, i64 10567, !126, i64 10568}
!123 = !{!"ImageUser", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!124 = !{!"Scopes", !41, i64 0, !41, i64 4, !41, i64 8, !44, i64 12, !41, i64 16, !44, i64 20, !44, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !38, i64 40, !125, i64 64, !37, i64 5224, !37, i64 5232, !37, i64 5240, !37, i64 5248, !41, i64 5256, !41, i64 5260}
!125 = !{!"Histogram", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 3080, !38, i64 4104, !44, i64 5128, !44, i64 5132, !40, i64 5136, !40, i64 5138, !41, i64 5140, !38, i64 5144}
!126 = !{!"MaskSpaceInfo", !37, i64 0, !38, i64 8, !38, i64 9, !38, i64 10, !38, i64 11}
!127 = !{!44, !44, i64 0}
!128 = distinct !{!128, !106, !107}
!129 = !{!96, !41, i64 32}
!130 = distinct !{!130, !106, !107}
!131 = distinct !{!131, !106, !107}
!132 = distinct !{!132, !106, !107}
!133 = !{!134, !37, i64 8}
!134 = !{!"NearestHit", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !41, i64 40}
!135 = !{!134, !37, i64 0}
!136 = !{!134, !37, i64 16}
!137 = !{!134, !37, i64 24}
!138 = !{!134, !37, i64 32}
!139 = !{!134, !41, i64 40}
!140 = distinct !{!140, !106, !107}
!141 = distinct !{!141, !106, !107}
!142 = !{!102, !37, i64 64}
!143 = distinct !{!143, !106, !107}
!144 = distinct !{!144, !106, !107}
!145 = distinct !{!145, !106, !107}
!146 = distinct !{!146, !106, !107}
!147 = !{!148, !37, i64 0}
!148 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !149, i64 152, !40, i64 184}
!149 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!150 = !{!148, !37, i64 24}
!151 = !{!148, !37, i64 8}
!152 = !{!148, !40, i64 184}
!153 = !{!148, !37, i64 32}
!154 = !{!148, !37, i64 72}
!155 = !{!148, !37, i64 48}
!156 = !{!148, !37, i64 88}
!157 = !{!148, !37, i64 64}
!158 = !{!148, !37, i64 56}
!159 = !{!160, !37, i64 120}
!160 = !{!"wmKeyMap", !37, i64 0, !37, i64 8, !43, i64 16, !43, i64 32, !38, i64 48, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !37, i64 120, !37, i64 128}
!161 = !{!162, !37, i64 176}
!162 = !{!"wmKeyMapItem", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !38, i64 88, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !37, i64 176}
!163 = !{!75, !41, i64 448}
!164 = !{!165, !37, i64 112}
!165 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!166 = distinct !{!166, !106, !107}
!167 = distinct !{!167, !106, !107}
!168 = distinct !{!168, !106, !107}
!169 = distinct !{!169, !106, !107}
!170 = !{i32 2, i32 13}
!171 = !{!41, !41, i64 0}
!172 = !{!122, !44, i64 10544}
!173 = !{!75, !38, i64 51}
!174 = !{!122, !38, i64 10565}
!175 = !{!97, !41, i64 8}
!176 = distinct !{!176, !106, !107}
!177 = distinct !{!177, !106, !107}
!178 = !{!179, !38, i64 13}
!179 = !{!"UvMapVert", !37, i64 0, !41, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!180 = !{!179, !41, i64 8}
!181 = !{!179, !37, i64 0}
!182 = distinct !{!182, !106, !107}
!183 = distinct !{!183, !106, !107}
!184 = !{!179, !38, i64 14}
!185 = !{i8 0, i8 2}
!186 = distinct !{!186, !106, !107}
!187 = distinct !{!187, !106, !107}
!188 = distinct !{!188, !106, !107}
!189 = !{}
!190 = distinct !{!190, !106, !107}
!191 = distinct !{!191, !106, !107}
!192 = distinct !{!192, !106, !107}
!193 = distinct !{!193, !106, !107}
!194 = distinct !{!194, !106, !107}
!195 = distinct !{!195, !106, !107}
!196 = distinct !{!196, !106, !107}
!197 = distinct !{!197, !106, !107}
!198 = distinct !{!198, !106, !107}
!199 = distinct !{!199, !106, !107}
!200 = distinct !{!200, !106, !107}
!201 = distinct !{!201, !106, !107}
!202 = distinct !{!202, !106, !107}
!203 = distinct !{!203, !106, !107}
!204 = distinct !{!204, !106, !107}
!205 = distinct !{!205, !106, !107}
!206 = distinct !{!206, !106, !107}
!207 = distinct !{!207, !106, !107}
!208 = distinct !{!208, !106, !107}
!209 = distinct !{!209, !106, !107}
!210 = distinct !{!210, !106, !107}
!211 = distinct !{!211, !106, !107}
!212 = distinct !{!212, !106, !107}
!213 = distinct !{!213, !106, !107}
!214 = distinct !{!214, !106, !107}
!215 = distinct !{!215, !106, !107}
!216 = !{i32 2, i32 5}
!217 = !{!165, !37, i64 120}
!218 = distinct !{!218, !106, !107}
!219 = distinct !{!219, !106, !107}
!220 = distinct !{!220, !106, !107}
!221 = distinct !{!221, !106, !107}
!222 = distinct !{!222, !106, !107}
!223 = distinct !{!223, !106, !107}
!224 = distinct !{!224, !106, !107}
!225 = distinct !{!225, !106, !107}
!226 = !{!86, !37, i64 32}
!227 = distinct !{!227, !106, !107}
!228 = distinct !{!228, !106, !107}
!229 = distinct !{!229, !106, !107}
!230 = distinct !{!230, !106, !107}
!231 = distinct !{!231, !106, !107}
!232 = distinct !{!232, !106, !107}
!233 = distinct !{!233, !106, !107}
!234 = distinct !{!234, !106, !107}
!235 = distinct !{!235, !106, !107}
!236 = !{!179, !38, i64 12}
!237 = distinct !{!237, !106, !107}
!238 = distinct !{!238, !106, !107}
!239 = distinct !{!239, !106, !107}
!240 = distinct !{!240, !106, !107}
!241 = distinct !{!241, !106, !107}
!242 = distinct !{!242, !106, !107}
!243 = distinct !{!243, !106, !107}
!244 = distinct !{!244, !106, !107}
!245 = distinct !{!245, !106, !107}
!246 = distinct !{!246, !106, !107}
!247 = distinct !{!247, !106, !107}
!248 = distinct !{!248, !106, !107}
!249 = distinct !{!249, !106, !107}
!250 = distinct !{!250, !106, !107}
!251 = distinct !{!251, !106, !107}
!252 = distinct !{!252, !106, !107}
!253 = distinct !{!253, !106, !107}
!254 = distinct !{!254, !106, !107}
!255 = distinct !{!255, !106, !107}
!256 = distinct !{!256, !106, !107}
!257 = distinct !{!257, !106, !107}
!258 = distinct !{!258, !106, !107}
!259 = distinct !{!259, !106, !107}
!260 = !{!122, !38, i64 10567}
!261 = distinct !{!261, !106, !107}
!262 = distinct !{!262, !106, !107}
!263 = !{!122, !37, i64 40}
!264 = distinct !{!264, !106, !107}
!265 = distinct !{!265, !106, !107}
!266 = distinct !{!266, !106, !107}
!267 = distinct !{!267, !106, !107}
!268 = distinct !{!268, !106, !107}
!269 = distinct !{!269, !106, !107}
!270 = distinct !{!270, !106, !107}
!271 = distinct !{!271, !106, !107}
!272 = distinct !{!272, !106, !107}
!273 = distinct !{!273, !106, !107}
!274 = distinct !{!274, !106, !107}
!275 = distinct !{!275, !106, !107}
!276 = distinct !{!276, !106, !107}
!277 = distinct !{!277, !106, !107}
!278 = distinct !{!278, !106, !107}
!279 = distinct !{!279, !106, !107}
!280 = distinct !{!280, !106, !107}
!281 = distinct !{!281, !106, !107}
!282 = distinct !{!282, !106, !107}
!283 = distinct !{!283, !106, !107}
!284 = !{!86, !37, i64 40}
!285 = distinct !{!285, !106, !107}
!286 = distinct !{!286, !106, !107}
!287 = distinct !{!287, !106, !107}
!288 = distinct !{!288, !106, !107}
!289 = distinct !{!289, !106, !107}
!290 = distinct !{!290, !106, !107}
!291 = distinct !{!291, !106, !107}
!292 = distinct !{!292, !106, !107}
!293 = !{!294, !37, i64 272}
!294 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !87, i64 280, !87, i64 480, !87, i64 680, !87, i64 880, !87, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !44, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!295 = !{!296, !37, i64 0}
!296 = !{!"UvVertMap", !37, i64 0, !37, i64 8}
!297 = distinct !{!297, !106, !107}
!298 = distinct !{!298, !106, !107}
!299 = distinct !{!299, !106, !107}
!300 = distinct !{!300, !106, !107}
!301 = !{!294, !41, i64 1344}
!302 = distinct !{!302, !106, !107}
!303 = distinct !{!303, !106, !107}
!304 = !{!75, !38, i64 430}
!305 = !{i64 0, i64 8, !55, i64 8, i64 1, !94}
!306 = !{i64 0, i64 1, !94}
!307 = distinct !{!307, !106, !107}
!308 = distinct !{!308, !106, !107}
!309 = !{!310, !38, i64 8}
!310 = !{!"UVvert", !37, i64 0, !38, i64 8}
!311 = !{!310, !37, i64 0}
!312 = distinct !{!312, !106, !107}
!313 = distinct !{!313, !106, !107}
!314 = distinct !{!314, !106, !107}
!315 = distinct !{!315, !106, !107}
!316 = distinct !{!316, !106, !107}
!317 = distinct !{!317, !106, !107}
!318 = distinct !{!318, !106, !107}
!319 = distinct !{!319, !106, !107}
!320 = distinct !{!320, !106, !107}
!321 = !{!84, !40, i64 92}
!322 = distinct !{!322, !106, !107}
!323 = distinct !{!323, !106, !107}
!324 = distinct !{!324, !106, !107}
!325 = distinct !{!325, !106, !107}
!326 = distinct !{!326, !106, !107}
!327 = distinct !{!327, !106, !107}
!328 = distinct !{!328, !106, !107}
!329 = distinct !{!329, !106, !107}
!330 = distinct !{!330, !106, !107}
!331 = distinct !{!331, !106, !107}
!332 = distinct !{!332, !106, !107}
!333 = distinct !{!333, !106, !107}
!334 = !{!96, !37, i64 24}
!335 = distinct !{!335, !106, !107}
!336 = distinct !{!336, !106, !107}
!337 = distinct !{!337, !106, !107}
!338 = distinct !{!338, !106, !107}
!339 = !{!82, !40, i64 1260}
!340 = !{!82, !40, i64 1256}
!341 = !{!99, !40, i64 12}
!342 = distinct !{!342, !106, !107}
!343 = !{!82, !40, i64 1262}
!344 = !{!122, !40, i64 10560}
