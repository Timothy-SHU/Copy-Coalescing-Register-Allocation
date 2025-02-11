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
%struct.MLoopUV = type { [2 x float], i32 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_uvedit_test(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %0) #13
  %9 = tail call zeroext i8 @EDBM_mtexpoly_check(ptr noundef %8) #13
  br label %10

10:                                               ; preds = %3, %1, %7
  %11 = phi i8 [ %9, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @EDBM_mtexpoly_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_object_get_active_image(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = trunc i32 %1 to i16
  %8 = tail call ptr @give_current_material(ptr noundef %0, i16 noundef signext %7) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 77
  %12 = load i8, ptr %11, align 1, !tbaa !17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 103
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %37, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @nodeGetActiveTexture(ptr noundef nonnull %16) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc zeroext i8 @is_image_texture_node(ptr noundef nonnull %19) #14, !range !22
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = icmp eq ptr %2, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 20
  %28 = load ptr, ptr %27, align 8, !tbaa !23
  store ptr %28, ptr %2, align 8, !tbaa !26
  br label %29

29:                                               ; preds = %26, %24
  %30 = icmp eq ptr %3, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  store ptr null, ptr %3, align 8, !tbaa !26
  br label %32

32:                                               ; preds = %31, %29
  %33 = icmp eq ptr %4, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  store ptr %19, ptr %4, align 8, !tbaa !26
  br label %35

35:                                               ; preds = %34, %32
  %36 = icmp eq ptr %5, null
  br i1 %36, label %53, label %50

37:                                               ; preds = %6, %10, %14, %21, %18
  %38 = phi ptr [ %19, %21 ], [ null, %18 ], [ null, %14 ], [ null, %10 ], [ null, %6 ]
  %39 = phi ptr [ %16, %21 ], [ %16, %18 ], [ null, %14 ], [ null, %10 ], [ null, %6 ]
  %40 = icmp eq ptr %2, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store ptr null, ptr %2, align 8, !tbaa !26
  br label %42

42:                                               ; preds = %41, %37
  %43 = icmp eq ptr %3, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  store ptr null, ptr %3, align 8, !tbaa !26
  br label %45

45:                                               ; preds = %44, %42
  %46 = icmp eq ptr %4, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  store ptr %38, ptr %4, align 8, !tbaa !26
  br label %48

48:                                               ; preds = %47, %45
  %49 = icmp eq ptr %5, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %48, %35
  %51 = phi ptr [ %16, %35 ], [ %39, %48 ]
  %52 = phi i8 [ 1, %35 ], [ 0, %48 ]
  store ptr %51, ptr %5, align 8, !tbaa !26
  br label %53

53:                                               ; preds = %50, %48, %35
  %54 = phi i8 [ 1, %35 ], [ 0, %48 ], [ %52, %50 ]
  ret i8 %54
}

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @nodeGetActiveTexture(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_image_texture_node(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 8
  %3 = load i16, ptr %2, align 4, !tbaa !27
  %4 = icmp eq i16 %3, 143
  %5 = icmp eq i16 %3, 157
  %6 = or i1 %4, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_object_assign_active_image(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = trunc i32 %2 to i16
  %6 = tail call ptr @give_current_material(ptr noundef %1, i16 noundef signext %5) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 77
  %10 = load i8, ptr %9, align 1, !tbaa !17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 103
  %14 = load ptr, ptr %13, align 8, !tbaa !21
  %15 = tail call ptr @nodeGetActiveTexture(ptr noundef %14) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = tail call fastcc zeroext i8 @is_image_texture_node(ptr noundef nonnull %15) #14, !range !22
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 20
  store ptr %3, ptr %21, align 8, !tbaa !23
  %22 = load ptr, ptr %13, align 8, !tbaa !21
  tail call void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef %22) #13
  br label %23

23:                                               ; preds = %4, %8, %20, %17, %12
  ret void
}

; Function Attrs: optsize
declare void @ED_node_tag_update_nodetree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_uvedit_assign_image(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readnone %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  %7 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 11
  %10 = load i8, ptr %9, align 2, !tbaa !46
  %11 = and i8 %10, 1
  %12 = icmp eq ptr %3, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.Image, ptr %3, i64 0, i32 12
  %15 = load i16, ptr %14, align 2, !tbaa !53
  %16 = and i16 %15, -2
  %17 = icmp eq i16 %16, 4
  %18 = icmp eq ptr %2, null
  %19 = or i1 %18, %17
  br i1 %19, label %95, label %22

20:                                               ; preds = %5
  %21 = icmp eq ptr %2, null
  br i1 %21, label %95, label %22

22:                                               ; preds = %13, %20
  %23 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %24 = load i16, ptr %23, align 8, !tbaa !5
  %25 = icmp eq i16 %24, 1
  br i1 %25, label %26, label %95

26:                                               ; preds = %22
  %27 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %2) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %95, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %27, align 8, !tbaa !55
  %31 = getelementptr inbounds %struct.BMesh, ptr %30, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !57
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %95, label %34

34:                                               ; preds = %29
  %35 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef nonnull %1) #13
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %95

37:                                               ; preds = %34
  %38 = load ptr, ptr %27, align 8, !tbaa !55
  %39 = getelementptr inbounds %struct.BMesh, ptr %38, i64 0, i32 27
  %40 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %39, i32 noundef 15) #13
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load ptr, ptr %27, align 8, !tbaa !55
  %44 = getelementptr inbounds %struct.BMesh, ptr %43, i64 0, i32 27
  tail call void @BM_data_layer_add(ptr noundef %43, ptr noundef nonnull %44, i32 noundef 15) #13
  %45 = load ptr, ptr %27, align 8, !tbaa !55
  %46 = getelementptr inbounds %struct.BMesh, ptr %45, i64 0, i32 26
  tail call void @BM_data_layer_add(ptr noundef %45, ptr noundef nonnull %46, i32 noundef 16) #13
  %47 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %48 = load ptr, ptr %47, align 8, !tbaa !60
  %49 = load ptr, ptr %27, align 8, !tbaa !55
  %50 = getelementptr inbounds %struct.BMesh, ptr %49, i64 0, i32 27
  %51 = tail call i32 @CustomData_get_active_layer_index(ptr noundef nonnull %50, i32 noundef 15) #13
  tail call void @ED_mesh_uv_loop_reset_ex(ptr noundef %48, i32 noundef %51) #13
  br label %52

52:                                               ; preds = %42, %37
  %53 = phi i8 [ 0, %37 ], [ 1, %42 ]
  %54 = load ptr, ptr %27, align 8, !tbaa !55
  %55 = getelementptr inbounds %struct.BMesh, ptr %54, i64 0, i32 26
  %56 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %55, i32 noundef 16) #13
  %57 = load ptr, ptr %27, align 8, !tbaa !55
  %58 = getelementptr inbounds %struct.BMesh, ptr %57, i64 0, i32 27
  %59 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %58, i32 noundef 15) #13
  %60 = load ptr, ptr %27, align 8, !tbaa !55
  %61 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %60, i8 noundef zeroext 3, ptr noundef null) #14
  %62 = icmp eq ptr %61, null
  br i1 %62, label %89, label %63

63:                                               ; preds = %52
  %64 = sext i32 %59 to i64
  %65 = icmp eq i8 %11, 0
  %66 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 6
  br label %67

67:                                               ; preds = %63, %85
  %68 = phi i8 [ %53, %63 ], [ %86, %85 ]
  %69 = phi ptr [ %61, %63 ], [ %87, %85 ]
  %70 = load ptr, ptr %69, align 8, !tbaa !61
  %71 = getelementptr inbounds i8, ptr %70, i64 %64
  %72 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %1, ptr noundef %4, ptr noundef nonnull %69, ptr noundef %71) #14, !range !22
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %67
  br i1 %65, label %78, label %75

75:                                               ; preds = %74
  %76 = call zeroext i8 @uvedit_face_select_test(ptr noundef %1, ptr noundef nonnull %69, i32 noundef %56) #14, !range !64
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %75, %74
  br i1 %12, label %84, label %79

79:                                               ; preds = %78
  store ptr %3, ptr %71, align 8, !tbaa !65
  %80 = load i32, ptr %66, align 4, !tbaa !67
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  call void @id_us_plus(ptr noundef nonnull %3) #13
  br label %85

83:                                               ; preds = %79
  call void @id_lib_extern(ptr noundef nonnull %3) #13
  br label %85

84:                                               ; preds = %78
  store ptr null, ptr %71, align 8, !tbaa !65
  br label %85

85:                                               ; preds = %84, %83, %82, %67, %75
  %86 = phi i8 [ %68, %75 ], [ %68, %67 ], [ 1, %82 ], [ 1, %83 ], [ 1, %84 ]
  %87 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %67, !llvm.loop !68

89:                                               ; preds = %85, %52
  %90 = phi i8 [ %53, %52 ], [ %86, %85 ]
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %94 = load ptr, ptr %93, align 8, !tbaa !60
  call void @DAG_id_tag_update(ptr noundef %94, i16 noundef signext 0) #13
  br label %95

95:                                               ; preds = %13, %34, %92, %89, %26, %29, %20, %22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_data_layer_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_mesh_uv_loop_reset_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_active_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #14
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #14
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @uvedit_face_visible_test(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !28
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 11
  %8 = load i8, ptr %7, align 2, !tbaa !46
  %9 = and i8 %8, 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %3, align 8, !tbaa !65
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %16

14:                                               ; preds = %4, %11
  %15 = tail call zeroext i8 @uvedit_face_visible_nolocal(ptr noundef nonnull %0, ptr noundef %2) #14, !range !22
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i8 [ 0, %11 ], [ %15, %14 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @uvedit_face_select_test(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !28
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 11
  %8 = load i8, ptr %7, align 2, !tbaa !46
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %1, i8 noundef zeroext 1) #14, !range !64
  br label %31

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef %1) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = sext i32 %2 to i64
  br label %18

18:                                               ; preds = %16, %26
  %19 = phi ptr [ %14, %16 ], [ %27, %26 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !70
  %21 = getelementptr inbounds i8, ptr %20, i64 %17
  %22 = getelementptr inbounds %struct.MLoopUV, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !72
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %18, !llvm.loop !74

29:                                               ; preds = %18, %26, %13
  %30 = phi i8 [ 1, %13 ], [ 1, %26 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  br label %31

31:                                               ; preds = %29, %11
  %32 = phi i8 [ %12, %11 ], [ %30, %29 ]
  ret i8 %32
}

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call ptr %3(ptr noundef %0) #13
  ret ptr %4
}

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @uvedit_face_visible_nolocal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !28
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 11
  %6 = load i8, ptr %5, align 2, !tbaa !46
  %7 = and i8 %6, 1
  %8 = icmp ne i8 %7, 0
  %9 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %1, i8 noundef zeroext 2) #14, !range !64
  %10 = icmp eq i8 %9, 0
  %11 = xor i1 %10, true
  %12 = select i1 %8, i1 true, i1 %11
  %13 = select i1 %8, i1 %10, i1 false
  br i1 %12, label %17, label %14

14:                                               ; preds = %2
  %15 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %1, i8 noundef zeroext 1) #14, !range !64
  %16 = icmp ne i8 %15, 0
  br label %17

17:                                               ; preds = %2, %14
  %18 = phi i1 [ %16, %14 ], [ %13, %2 ]
  %19 = zext i1 %18 to i8
  ret i8 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !77
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @uvedit_face_select_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq i8 %3, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = tail call zeroext i8 @uvedit_face_select_enable(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %4, i32 noundef %5) #14, !range !22
  br label %12

10:                                               ; preds = %6
  %11 = tail call zeroext i8 @uvedit_face_select_disable(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %5) #14, !range !22
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i8 [ %9, %8 ], [ %11, %10 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @uvedit_face_select_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 11
  %10 = load i8, ptr %9, align 2, !tbaa !46
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr %1, align 8, !tbaa !55
  tail call void @BM_face_select_set(ptr noundef %14, ptr noundef %2, i8 noundef zeroext 1) #13
  %15 = icmp eq i8 %3, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %1, align 8, !tbaa !55
  tail call void @_bm_select_history_store(ptr noundef %17, ptr noundef %2) #13
  br label %33

18:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  %19 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef %2) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = sext i32 %4 to i64
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi ptr [ %19, %21 ], [ %30, %23 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = getelementptr inbounds i8, ptr %25, i64 %22
  %27 = getelementptr inbounds %struct.MLoopUV, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !72
  %29 = or i32 %28, 2
  store i32 %29, ptr %27, align 4, !tbaa !72
  %30 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %23, !llvm.loop !78

32:                                               ; preds = %23, %18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  br label %33

33:                                               ; preds = %16, %13, %32
  %34 = phi i8 [ 1, %32 ], [ 0, %13 ], [ 0, %16 ]
  ret i8 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @uvedit_face_select_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !28
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 11
  %9 = load i8, ptr %8, align 2, !tbaa !46
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %1, align 8, !tbaa !55
  tail call void @BM_face_select_set(ptr noundef %13, ptr noundef %2, i8 noundef zeroext 0) #13
  br label %29

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  %15 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef %2) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = sext i32 %3 to i64
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi ptr [ %15, %17 ], [ %26, %19 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = getelementptr inbounds i8, ptr %21, i64 %18
  %23 = getelementptr inbounds %struct.MLoopUV, ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !72
  %25 = and i32 %24, -3
  store i32 %25, ptr %23, align 4, !tbaa !72
  %26 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19, !llvm.loop !79

28:                                               ; preds = %19, %14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  br label %29

29:                                               ; preds = %12, %28
  %30 = phi i8 [ 0, %12 ], [ 1, %28 ]
  ret i8 %30
}

; Function Attrs: optsize
declare void @BM_face_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_bm_select_history_store(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @uvedit_edge_select_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 11
  %7 = load i8, ptr %6, align 2, !tbaa !46
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !80
  %13 = and i16 %12, 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  %18 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %17, i8 noundef zeroext 1) #14, !range !64
  br label %56

19:                                               ; preds = %10
  %20 = icmp eq i16 %12, 2
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !82
  %24 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %23, i8 noundef zeroext 1) #14, !range !64
  br label %56

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !83
  %28 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %27, i8 noundef zeroext 1) #14, !range !64
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %56, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !84
  %33 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !83
  %35 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %34, i8 noundef zeroext 1) #14, !range !64
  %36 = icmp ne i8 %35, 0
  %37 = zext i1 %36 to i8
  br label %56

38:                                               ; preds = %3
  %39 = load ptr, ptr %1, align 8, !tbaa !70
  %40 = sext i32 %2 to i64
  %41 = getelementptr inbounds i8, ptr %39, i64 %40
  %42 = getelementptr inbounds %struct.MLoopUV, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !72
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !84
  %49 = load ptr, ptr %48, align 8, !tbaa !70
  %50 = getelementptr inbounds i8, ptr %49, i64 %40
  %51 = getelementptr inbounds %struct.MLoopUV, ptr %50, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !72
  %53 = trunc i32 %52 to i8
  %54 = lshr i8 %53, 1
  %55 = and i8 %54, 1
  br label %56

56:                                               ; preds = %38, %46, %25, %30, %21, %15
  %57 = phi i8 [ %18, %15 ], [ %24, %21 ], [ 0, %25 ], [ %37, %30 ], [ 0, %38 ], [ %55, %46 ]
  ret i8 %57
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uvedit_edge_select_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq i8 %3, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @uvedit_edge_select_enable(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %4, i32 noundef %5) #14
  br label %10

9:                                                ; preds = %6
  tail call void @uvedit_edge_select_disable(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %5) #14
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uvedit_edge_select_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !28
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 11
  %9 = load i8, ptr %8, align 2, !tbaa !46
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !80
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %0, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !81
  tail call void @BM_face_select_set(ptr noundef %19, ptr noundef %21, i8 noundef zeroext 1) #13
  br label %36

22:                                               ; preds = %12
  %23 = and i32 %15, 2
  %24 = icmp eq i32 %23, 0
  %25 = load ptr, ptr %0, align 8, !tbaa !55
  %26 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !82
  br i1 %24, label %29, label %28

28:                                               ; preds = %22
  tail call void @BM_edge_select_set(ptr noundef %25, ptr noundef %27, i8 noundef zeroext 1) #13
  br label %36

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.BMEdge, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !85
  tail call void @BM_vert_select_set(ptr noundef %25, ptr noundef %31, i8 noundef zeroext 1) #13
  %32 = load ptr, ptr %0, align 8, !tbaa !55
  %33 = load ptr, ptr %26, align 8, !tbaa !82
  %34 = getelementptr inbounds %struct.BMEdge, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !88
  tail call void @BM_vert_select_set(ptr noundef %32, ptr noundef %35, i8 noundef zeroext 1) #13
  br label %36

36:                                               ; preds = %28, %29, %18
  %37 = icmp eq i8 %3, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr %0, align 8, !tbaa !55
  %40 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !82
  tail call void @_bm_select_history_store(ptr noundef %39, ptr noundef %41) #13
  br label %56

42:                                               ; preds = %5
  %43 = load ptr, ptr %2, align 8, !tbaa !70
  %44 = sext i32 %4 to i64
  %45 = getelementptr inbounds i8, ptr %43, i64 %44
  %46 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !84
  %48 = load ptr, ptr %47, align 8, !tbaa !70
  %49 = getelementptr inbounds i8, ptr %48, i64 %44
  %50 = getelementptr inbounds %struct.MLoopUV, ptr %45, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !72
  %52 = or i32 %51, 2
  store i32 %52, ptr %50, align 4, !tbaa !72
  %53 = getelementptr inbounds %struct.MLoopUV, ptr %49, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !72
  %55 = or i32 %54, 2
  store i32 %55, ptr %53, align 4, !tbaa !72
  br label %56

56:                                               ; preds = %36, %38, %42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uvedit_edge_select_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !28
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 11
  %8 = load i8, ptr %7, align 2, !tbaa !46
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 8
  %13 = load i16, ptr %12, align 2, !tbaa !80
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %0, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !81
  tail call void @BM_face_select_set(ptr noundef %18, ptr noundef %20, i8 noundef zeroext 0) #13
  br label %49

21:                                               ; preds = %11
  %22 = and i32 %14, 2
  %23 = icmp eq i32 %22, 0
  %24 = load ptr, ptr %0, align 8, !tbaa !55
  %25 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !82
  br i1 %23, label %28, label %27

27:                                               ; preds = %21
  tail call void @BM_edge_select_set(ptr noundef %24, ptr noundef %26, i8 noundef zeroext 0) #13
  br label %49

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.BMEdge, ptr %26, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !85
  tail call void @BM_vert_select_set(ptr noundef %24, ptr noundef %30, i8 noundef zeroext 0) #13
  %31 = load ptr, ptr %0, align 8, !tbaa !55
  %32 = load ptr, ptr %25, align 8, !tbaa !82
  %33 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !88
  tail call void @BM_vert_select_set(ptr noundef %31, ptr noundef %34, i8 noundef zeroext 0) #13
  br label %49

35:                                               ; preds = %4
  %36 = load ptr, ptr %2, align 8, !tbaa !70
  %37 = sext i32 %3 to i64
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
  %39 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !84
  %41 = load ptr, ptr %40, align 8, !tbaa !70
  %42 = getelementptr inbounds i8, ptr %41, i64 %37
  %43 = getelementptr inbounds %struct.MLoopUV, ptr %38, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !72
  %45 = and i32 %44, -3
  store i32 %45, ptr %43, align 4, !tbaa !72
  %46 = getelementptr inbounds %struct.MLoopUV, ptr %42, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !72
  %48 = and i32 %47, -3
  store i32 %48, ptr %46, align 4, !tbaa !72
  br label %49

49:                                               ; preds = %17, %28, %27, %35
  ret void
}

; Function Attrs: optsize
declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @uvedit_uv_select_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 11
  %7 = load i8, ptr %6, align 2, !tbaa !46
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !80
  %13 = and i16 %12, 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  %18 = tail call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef %17) #14
  br label %32

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !83
  %22 = tail call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef %21) #14
  br label %32

23:                                               ; preds = %3
  %24 = load ptr, ptr %1, align 8, !tbaa !70
  %25 = sext i32 %2 to i64
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  %27 = getelementptr inbounds %struct.MLoopUV, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !72
  %29 = trunc i32 %28 to i8
  %30 = lshr i8 %29, 1
  %31 = and i8 %30, 1
  br label %32

32:                                               ; preds = %23, %19, %15
  %33 = phi i8 [ %18, %15 ], [ %22, %19 ], [ %31, %23 ]
  ret i8 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !77
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uvedit_uv_select_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq i8 %3, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @uvedit_uv_select_enable(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %4, i32 noundef %5) #14
  br label %10

9:                                                ; preds = %6
  tail call void @uvedit_uv_select_disable(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %5) #14
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uvedit_uv_select_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !28
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 11
  %9 = load i8, ptr %8, align 2, !tbaa !46
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !80
  %15 = and i16 %14, 4
  %16 = icmp eq i16 %15, 0
  %17 = load ptr, ptr %0, align 8, !tbaa !55
  br i1 %16, label %21, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !81
  tail call void @BM_face_select_set(ptr noundef %17, ptr noundef %20, i8 noundef zeroext 1) #13
  br label %24

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !83
  tail call void @BM_vert_select_set(ptr noundef %17, ptr noundef %23, i8 noundef zeroext 1) #13
  br label %24

24:                                               ; preds = %21, %18
  %25 = icmp eq i8 %3, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %0, align 8, !tbaa !55
  %28 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !83
  %30 = tail call zeroext i8 @_bm_select_history_remove(ptr noundef %27, ptr noundef %29) #13
  br label %38

31:                                               ; preds = %5
  %32 = load ptr, ptr %2, align 8, !tbaa !70
  %33 = sext i32 %4 to i64
  %34 = getelementptr inbounds i8, ptr %32, i64 %33
  %35 = getelementptr inbounds %struct.MLoopUV, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !72
  %37 = or i32 %36, 2
  store i32 %37, ptr %35, align 4, !tbaa !72
  br label %38

38:                                               ; preds = %24, %26, %31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uvedit_uv_select_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !28
  %7 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 11
  %8 = load i8, ptr %7, align 2, !tbaa !46
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 8
  %13 = load i16, ptr %12, align 2, !tbaa !80
  %14 = and i16 %13, 4
  %15 = icmp eq i16 %14, 0
  %16 = load ptr, ptr %0, align 8, !tbaa !55
  br i1 %15, label %20, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  tail call void @BM_face_select_set(ptr noundef %16, ptr noundef %19, i8 noundef zeroext 0) #13
  br label %30

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  tail call void @BM_vert_select_set(ptr noundef %16, ptr noundef %22, i8 noundef zeroext 0) #13
  br label %30

23:                                               ; preds = %4
  %24 = load ptr, ptr %2, align 8, !tbaa !70
  %25 = sext i32 %3 to i64
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  %27 = getelementptr inbounds %struct.MLoopUV, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !72
  %29 = and i32 %28, -3
  store i32 %29, ptr %27, align 4, !tbaa !72
  br label %30

30:                                               ; preds = %17, %20, %23
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @_bm_select_history_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uvedit_live_unwrap_update(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !89
  %8 = and i32 %7, 2048
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @ED_uvedit_live_unwrap_begin(ptr noundef %1, ptr noundef %2) #13
  tail call void @ED_uvedit_live_unwrap_re_solve() #13
  tail call void @ED_uvedit_live_unwrap_end(i16 noundef signext 0) #13
  br label %11

11:                                               ; preds = %10, %5, %3
  ret void
}

; Function Attrs: optsize
declare void @ED_uvedit_live_unwrap_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_uvedit_live_unwrap_re_solve() local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_uvedit_live_unwrap_end(i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uv_poly_center(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  tail call fastcc void @zero_v2(ptr noundef %1) #14
  %5 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef %0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = sext i32 %2 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi ptr [ %5, %7 ], [ %13, %9 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = getelementptr inbounds i8, ptr %11, i64 %8
  call fastcc void @add_v2_v2(ptr noundef %1, ptr noundef %12) #14
  %13 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %9, !llvm.loop !95

15:                                               ; preds = %9, %3
  %16 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !96
  %18 = sitofp i32 %17 to float
  %19 = fdiv float 1.000000e+00, %18
  call fastcc void @mul_v2_fl(ptr noundef %1, float noundef %19) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #5 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !97
  %4 = load float, ptr %0, align 4, !tbaa !97
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !97
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !97
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !97
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #6 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !97
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !97
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @uv_poly_copy_aspect(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, float noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #7 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %5
  %8 = zext nneg i32 %4 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %19, %9 ]
  %11 = getelementptr inbounds [2 x float], ptr %0, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !97
  %13 = fmul float %12, %2
  %14 = getelementptr inbounds [2 x float], ptr %1, i64 %10
  store float %13, ptr %14, align 4, !tbaa !97
  %15 = getelementptr inbounds [2 x float], ptr %0, i64 %10, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !97
  %17 = fmul float %16, %3
  %18 = getelementptr inbounds [2 x float], ptr %1, i64 %10, i64 1
  store float %17, ptr %18, align 4, !tbaa !97
  %19 = add nuw nsw i64 %10, 1
  %20 = icmp eq i64 %19, %8
  br i1 %20, label %21, label %9, !llvm.loop !98

21:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_uvedit_minmax(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %2) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 26
  %11 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %10, i32 noundef 16) #13
  %12 = load ptr, ptr %8, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 27
  %14 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %13, i32 noundef 15) #13
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %3, align 4, !tbaa !97
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %4, align 4, !tbaa !97
  %15 = load ptr, ptr %8, align 8, !tbaa !55
  %16 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %15, i8 noundef zeroext 3, ptr noundef null) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %47, label %18

18:                                               ; preds = %5
  %19 = sext i32 %14 to i64
  %20 = sext i32 %11 to i64
  br label %21

21:                                               ; preds = %18, %43
  %22 = phi ptr [ %16, %18 ], [ %45, %43 ]
  %23 = phi i8 [ 0, %18 ], [ %44, %43 ]
  %24 = load ptr, ptr %22, align 8, !tbaa !61
  %25 = getelementptr inbounds i8, ptr %24, i64 %19
  %26 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %22, ptr noundef %25) #14, !range !22
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %21
  %29 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %22) #14
  %30 = icmp eq ptr %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %28, %39
  %32 = phi ptr [ %41, %39 ], [ %29, %28 ]
  %33 = phi i8 [ %40, %39 ], [ %23, %28 ]
  %34 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef nonnull %32, i32 noundef %11) #14, !range !22
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %32, align 8, !tbaa !70
  %38 = getelementptr inbounds i8, ptr %37, i64 %20
  call void @minmax_v2v2_v2(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %38) #13
  br label %39

39:                                               ; preds = %31, %36
  %40 = phi i8 [ 1, %36 ], [ %33, %31 ]
  %41 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %31, !llvm.loop !99

43:                                               ; preds = %39, %28, %21
  %44 = phi i8 [ %23, %21 ], [ %23, %28 ], [ %40, %39 ]
  %45 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %21, !llvm.loop !100

47:                                               ; preds = %43, %5
  %48 = phi i8 [ 0, %5 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  ret i8 %48
}

; Function Attrs: optsize
declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uv_find_nearest_edge(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  %8 = load ptr, ptr %2, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 26
  %10 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %9, i32 noundef 16) #13
  %11 = load ptr, ptr %2, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 27
  %13 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %12, i32 noundef 15) #13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %14 = load ptr, ptr %2, align 8, !tbaa !55
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %14, i8 noundef zeroext 1) #13
  %15 = load ptr, ptr %2, align 8, !tbaa !55
  %16 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %15, i8 noundef zeroext 3, ptr noundef null) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %58, label %18

18:                                               ; preds = %5
  %19 = sext i32 %13 to i64
  %20 = sext i32 %10 to i64
  %21 = getelementptr inbounds %struct.NearestHit, ptr %4, i64 0, i32 1
  %22 = getelementptr inbounds %struct.NearestHit, ptr %4, i64 0, i32 2
  %23 = getelementptr inbounds %struct.NearestHit, ptr %4, i64 0, i32 3
  %24 = getelementptr inbounds %struct.NearestHit, ptr %4, i64 0, i32 4
  %25 = getelementptr inbounds %struct.NearestHit, ptr %4, i64 0, i32 5
  br label %26

26:                                               ; preds = %18, %54
  %27 = phi ptr [ %16, %18 ], [ %56, %54 ]
  %28 = phi float [ 1.000000e+10, %18 ], [ %55, %54 ]
  %29 = load ptr, ptr %27, align 8, !tbaa !61
  %30 = getelementptr inbounds i8, ptr %29, i64 %19
  %31 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %27, ptr noundef %30) #14, !range !22
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %26
  %34 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %27) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %54, label %36

36:                                               ; preds = %33, %49
  %37 = phi ptr [ %51, %49 ], [ %34, %33 ]
  %38 = phi i32 [ %52, %49 ], [ 0, %33 ]
  %39 = phi float [ %50, %49 ], [ %28, %33 ]
  %40 = load ptr, ptr %37, align 8, !tbaa !70
  %41 = getelementptr inbounds i8, ptr %40, i64 %20
  %42 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !84
  %44 = load ptr, ptr %43, align 8, !tbaa !70
  %45 = getelementptr inbounds i8, ptr %44, i64 %20
  %46 = call float @dist_squared_to_line_segment_v2(ptr noundef %3, ptr noundef %41, ptr noundef %45) #13
  %47 = fcmp olt float %46, %39
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  store ptr %30, ptr %21, align 8, !tbaa !101
  store ptr %27, ptr %4, align 8, !tbaa !103
  store ptr %37, ptr %22, align 8, !tbaa !104
  store ptr %41, ptr %23, align 8, !tbaa !105
  store ptr %45, ptr %24, align 8, !tbaa !106
  store i32 %38, ptr %25, align 8, !tbaa !107
  br label %49

49:                                               ; preds = %36, %48
  %50 = phi float [ %46, %48 ], [ %39, %36 ]
  %51 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %52 = add nuw nsw i32 %38, 1
  %53 = icmp eq ptr %51, null
  br i1 %53, label %54, label %36, !llvm.loop !108

54:                                               ; preds = %49, %33, %26
  %55 = phi float [ %28, %26 ], [ %28, %33 ], [ %50, %49 ]
  %56 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %26, !llvm.loop !109

58:                                               ; preds = %54, %5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uv_find_nearest_vert(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef readonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  %9 = load ptr, ptr %2, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 26
  %11 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %10, i32 noundef 16) #13
  %12 = load ptr, ptr %2, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 27
  %14 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %13, i32 noundef 15) #13
  tail call void @uv_find_nearest_edge(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %5) #14
  %15 = getelementptr inbounds %struct.NearestHit, ptr %5, i64 0, i32 2
  %16 = getelementptr inbounds %struct.NearestHit, ptr %5, i64 0, i32 4
  %17 = getelementptr inbounds %struct.NearestHit, ptr %5, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %18 = load ptr, ptr %2, align 8, !tbaa !55
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %18, i8 noundef zeroext 1) #13
  %19 = load ptr, ptr %2, align 8, !tbaa !55
  %20 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef %19, i8 noundef zeroext 3, ptr noundef null) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %75, label %22

22:                                               ; preds = %6
  %23 = sext i32 %14 to i64
  %24 = sext i32 %11 to i64
  %25 = icmp eq ptr %4, null
  %26 = getelementptr inbounds %struct.NearestHit, ptr %5, i64 0, i32 1
  %27 = getelementptr inbounds %struct.NearestHit, ptr %5, i64 0, i32 5
  br label %28

28:                                               ; preds = %22, %71
  %29 = phi ptr [ %20, %22 ], [ %73, %71 ]
  %30 = phi float [ 1.000000e+10, %22 ], [ %72, %71 ]
  %31 = load ptr, ptr %29, align 8, !tbaa !61
  %32 = getelementptr inbounds i8, ptr %31, i64 %23
  %33 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %29, ptr noundef %32) #14, !range !22
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %71, label %35

35:                                               ; preds = %28
  %36 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %29) #14
  %37 = icmp eq ptr %36, null
  br i1 %37, label %71, label %38

38:                                               ; preds = %35, %66
  %39 = phi ptr [ %68, %66 ], [ %36, %35 ]
  %40 = phi i32 [ %69, %66 ], [ 0, %35 ]
  %41 = phi float [ %67, %66 ], [ %30, %35 ]
  %42 = load ptr, ptr %39, align 8, !tbaa !70
  %43 = getelementptr inbounds i8, ptr %42, i64 %24
  br i1 %25, label %51, label %44

44:                                               ; preds = %38
  %45 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef nonnull %39, i32 noundef %11) #14, !range !22
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = call fastcc float @len_manhattan_v2v2(ptr noundef %3, ptr noundef %43) #14
  %49 = call fastcc float @len_manhattan_v2(ptr noundef nonnull %4) #14
  %50 = fadd float %48, %49
  br label %53

51:                                               ; preds = %44, %38
  %52 = call fastcc float @len_manhattan_v2v2(ptr noundef %3, ptr noundef %43) #14
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi float [ %50, %47 ], [ %52, %51 ]
  %55 = fcmp ugt float %54, %41
  br i1 %55, label %66, label %56

56:                                               ; preds = %53
  %57 = fcmp oeq float %54, %41
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = call fastcc zeroext i8 @uv_nearest_between(ptr noundef nonnull %39, ptr noundef %3, i32 noundef %11) #14, !range !22
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58, %56
  store ptr %39, ptr %15, align 8, !tbaa !104
  store ptr %43, ptr %17, align 8, !tbaa !105
  %62 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !84
  %64 = load ptr, ptr %63, align 8, !tbaa !70
  %65 = getelementptr inbounds i8, ptr %64, i64 %24
  store ptr %65, ptr %16, align 8, !tbaa !106
  store ptr %32, ptr %26, align 8, !tbaa !101
  store ptr %29, ptr %5, align 8, !tbaa !103
  store i32 %40, ptr %27, align 8, !tbaa !107
  br label %66

66:                                               ; preds = %53, %61, %58
  %67 = phi float [ %54, %61 ], [ %41, %58 ], [ %41, %53 ]
  %68 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #14
  %69 = add nuw nsw i32 %40, 1
  %70 = icmp eq ptr %68, null
  br i1 %70, label %71, label %38, !llvm.loop !110

71:                                               ; preds = %66, %35, %28
  %72 = phi float [ %30, %28 ], [ %30, %35 ], [ %67, %66 ]
  %73 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %28, !llvm.loop !111

75:                                               ; preds = %71, %6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_manhattan_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #14
  %4 = call fastcc float @len_manhattan_v2(ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_manhattan_v2(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !97
  %3 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %2)
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %5 = fadd <2 x float> %3, %4
  %6 = extractelement <2 x float> %5, i64 0
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @uv_nearest_between(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds i8, ptr %6, i64 %7
  %9 = load ptr, ptr %0, align 8, !tbaa !70
  %10 = getelementptr inbounds i8, ptr %9, i64 %7
  %11 = tail call fastcc float @line_point_side_v2(ptr noundef %8, ptr noundef %10, ptr noundef %1) #14
  %12 = fcmp ogt float %11, 0.000000e+00
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !84
  %16 = load ptr, ptr %15, align 8, !tbaa !70
  %17 = getelementptr inbounds i8, ptr %16, i64 %7
  %18 = tail call fastcc float @line_point_side_v2(ptr noundef %17, ptr noundef %10, ptr noundef %1) #14
  %19 = fcmp ole float %18, 0.000000e+00
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %13, %3
  %22 = phi i8 [ 0, %3 ], [ %20, %13 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_uvedit_nearest_uv(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readnone %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %1) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 26
  %11 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %10, i32 noundef 16) #13
  %12 = load ptr, ptr %8, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 27
  %14 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %13, i32 noundef 15) #13
  tail call fastcc void @copy_v2_v2(ptr noundef %4, ptr noundef %3) #14
  %15 = load ptr, ptr %8, align 8, !tbaa !55
  %16 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %15, i8 noundef zeroext 3, ptr noundef null) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %51, label %18

18:                                               ; preds = %5
  %19 = sext i32 %14 to i64
  %20 = sext i32 %11 to i64
  br label %21

21:                                               ; preds = %18, %46
  %22 = phi ptr [ %16, %18 ], [ %49, %46 ]
  %23 = phi i8 [ 0, %18 ], [ %48, %46 ]
  %24 = phi float [ 1.000000e+10, %18 ], [ %47, %46 ]
  %25 = load ptr, ptr %22, align 8, !tbaa !61
  %26 = getelementptr inbounds i8, ptr %25, i64 %19
  %27 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %22, ptr noundef %26) #14, !range !22
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %21
  %30 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %22) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %29, %41
  %33 = phi ptr [ %44, %41 ], [ %30, %29 ]
  %34 = phi i8 [ %43, %41 ], [ %23, %29 ]
  %35 = phi float [ %42, %41 ], [ %24, %29 ]
  %36 = load ptr, ptr %33, align 8, !tbaa !70
  %37 = getelementptr inbounds i8, ptr %36, i64 %20
  %38 = call fastcc float @len_manhattan_v2v2(ptr noundef %3, ptr noundef %37) #14
  %39 = fcmp ugt float %38, %35
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  call fastcc void @copy_v2_v2(ptr noundef %4, ptr noundef %37) #14
  br label %41

41:                                               ; preds = %32, %40
  %42 = phi float [ %38, %40 ], [ %35, %32 ]
  %43 = phi i8 [ 1, %40 ], [ %34, %32 ]
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %32, !llvm.loop !113

46:                                               ; preds = %41, %29, %21
  %47 = phi float [ %24, %21 ], [ %24, %29 ], [ %42, %41 ]
  %48 = phi i8 [ %23, %21 ], [ %23, %29 ], [ %43, %41 ]
  %49 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %21, !llvm.loop !114

51:                                               ; preds = %46, %5
  %52 = phi i8 [ 0, %5 ], [ %48, %46 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !97
  store float %3, ptr %0, align 4, !tbaa !97
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !97
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !97
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatortypes_uvedit() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_all) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_loop) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_linked) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_linked_pick) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_split) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_pinned) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_border) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_lasso) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_circle_select) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_more) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_select_less) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_snap_cursor) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_snap_selected) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_align) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_stitch) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_seams_from_islands) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_mark_seam) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_weld) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_remove_doubles) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_pin) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_average_islands_scale) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_cube_project) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_cylinder_project) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_project_from_view) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_minimize_stretch) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_pack_islands) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_reset) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_sphere_project) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_unwrap) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_reveal) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_hide) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_cursor_set) #13
  tail call void @WM_operatortype_append(ptr noundef nonnull @UV_OT_tile_set) #13
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UV_OT_select_all(ptr noundef %0) #0 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.18, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_select_all_exec, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !122
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UV_OT_select(ptr nocapture noundef %0) #0 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.39, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_select_exec, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @uv_select_invoke, ptr %6, align 8, !tbaa !123
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %7, align 8, !tbaa !122
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #13
  %11 = load ptr, ptr %8, align 8, !tbaa !124
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.42, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, float noundef -1.000000e+02, float noundef 1.000000e+02) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UV_OT_select_loop(ptr nocapture noundef %0) #0 {
  store ptr @.str.47, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.48, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_select_loop_exec, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @uv_select_loop_invoke, ptr %6, align 8, !tbaa !123
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %7, align 8, !tbaa !122
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #13
  %11 = load ptr, ptr %8, align 8, !tbaa !124
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.42, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, float noundef -1.000000e+02, float noundef 1.000000e+02) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UV_OT_select_linked(ptr nocapture noundef %0) #0 {
  store ptr @.str.49, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.50, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_select_linked_exec, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !122
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UV_OT_select_linked_pick(ptr nocapture noundef %0) #0 {
  store ptr @.str.52, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.53, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.15, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @uv_select_linked_pick_invoke, ptr %5, align 8, !tbaa !123
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_select_linked_pick_exec, ptr %6, align 8, !tbaa !121
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %7, align 8, !tbaa !122
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #13
  %11 = load ptr, ptr %8, align 8, !tbaa !124
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.42, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, float noundef -1.000000e+02, float noundef 1.000000e+02) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @UV_OT_select_split(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.55, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_select_split_exec, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @UV_OT_select_pinned(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_select_pinned_exec, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !122
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UV_OT_select_border(ptr noundef %0) #0 {
  store ptr @.str.59, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.60, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.9, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_border_select_exec, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !125
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit_space_image, ptr %7, align 8, !tbaa !122
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %8, align 8, !tbaa !126
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !120
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !124
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) #13
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UV_OT_select_lasso(ptr nocapture noundef %0) #0 {
  store ptr @.str.64, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.65, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lasso_invoke, ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lasso_modal, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_lasso_select_exec, ptr %6, align 8, !tbaa !121
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit_space_image, ptr %7, align 8, !tbaa !122
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_lasso_cancel, ptr %8, align 8, !tbaa !126
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %9, align 8, !tbaa !120
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !124
  %12 = tail call ptr @RNA_def_collection_runtime(ptr noundef %11, ptr noundef nonnull @.str.66, ptr noundef nonnull @RNA_OperatorMousePath, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68) #13
  %13 = load ptr, ptr %10, align 8, !tbaa !124
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #13
  %15 = load ptr, ptr %10, align 8, !tbaa !124
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.71) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UV_OT_circle_select(ptr nocapture noundef %0) #0 {
  store ptr @.str.72, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.73, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_circle_invoke, ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_circle_modal, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_circle_select_exec, ptr %6, align 8, !tbaa !121
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit_space_image, ptr %7, align 8, !tbaa !122
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_circle_cancel, ptr %8, align 8, !tbaa !126
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !120
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !124
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.74, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.68, i32 noundef -2147483648, i32 noundef 2147483647) #13
  %13 = load ptr, ptr %10, align 8, !tbaa !124
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.76, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.68, i32 noundef -2147483648, i32 noundef 2147483647) #13
  %15 = load ptr, ptr %10, align 8, !tbaa !124
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.78, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.68, i32 noundef 1, i32 noundef 2147483647) #13
  %17 = load ptr, ptr %10, align 8, !tbaa !124
  %18 = tail call ptr @RNA_def_int(ptr noundef %17, ptr noundef nonnull @.str.63, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.68, i32 noundef -2147483648, i32 noundef 2147483647) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @UV_OT_select_more(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.81, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.82, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_select_more_exec, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit_space_image, ptr %6, align 8, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @UV_OT_select_less(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.83, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.84, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_select_less_exec, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit_space_image, ptr %6, align 8, !tbaa !122
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UV_OT_snap_cursor(ptr nocapture noundef %0) #0 {
  store ptr @.str.89, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.90, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.91, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_snap_cursor_exec, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit_space_image, ptr %6, align 8, !tbaa !122
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.92, ptr noundef nonnull @UV_OT_snap_cursor.target_items, i32 noundef 0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UV_OT_snap_selected(ptr nocapture noundef %0) #0 {
  store ptr @.str.101, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.102, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.103, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_snap_selection_exec, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit_space_image, ptr %6, align 8, !tbaa !122
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.92, ptr noundef nonnull @UV_OT_snap_selected.target_items, i32 noundef 0, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UV_OT_align(ptr nocapture noundef %0) #0 {
  store ptr @.str.122, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.123, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.124, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_align_exec, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !122
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.125, ptr noundef nonnull @UV_OT_align.axis_items, i32 noundef 97, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127) #13
  ret void
}

; Function Attrs: optsize
declare void @UV_OT_stitch(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UV_OT_seams_from_islands(ptr nocapture noundef %0) #0 {
  store ptr @.str.129, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.130, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.131, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_seams_from_islands_exec, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !122
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.132, i32 noundef 1, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134) #13
  %10 = load ptr, ptr %7, align 8, !tbaa !124
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.135, i32 noundef 0, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @UV_OT_mark_seam(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.133, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.138, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_mark_seam_exec, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @UV_OT_weld(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.139, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.140, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.141, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_weld_exec, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !122
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UV_OT_remove_doubles(ptr nocapture noundef %0) #0 {
  store ptr @.str.142, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.143, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.144, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_remove_doubles_exec, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !122
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.145, float noundef 0x3F947AE140000000, float noundef 0.000000e+00, float noundef 1.000000e+01, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.147, float noundef 0.000000e+00, float noundef 1.000000e+00) #13
  %10 = load ptr, ptr %7, align 8, !tbaa !124
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.148, i32 noundef 0, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UV_OT_pin(ptr nocapture noundef %0) #0 {
  store ptr @.str.154, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.155, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_pin_exec, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !122
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.157) #13
  ret void
}

; Function Attrs: optsize
declare void @UV_OT_average_islands_scale(ptr noundef) #2

; Function Attrs: optsize
declare void @UV_OT_cube_project(ptr noundef) #2

; Function Attrs: optsize
declare void @UV_OT_cylinder_project(ptr noundef) #2

; Function Attrs: optsize
declare void @UV_OT_project_from_view(ptr noundef) #2

; Function Attrs: optsize
declare void @UV_OT_minimize_stretch(ptr noundef) #2

; Function Attrs: optsize
declare void @UV_OT_pack_islands(ptr noundef) #2

; Function Attrs: optsize
declare void @UV_OT_reset(ptr noundef) #2

; Function Attrs: optsize
declare void @UV_OT_sphere_project(ptr noundef) #2

; Function Attrs: optsize
declare void @UV_OT_unwrap(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @UV_OT_reveal(ptr nocapture noundef writeonly %0) #5 {
  store ptr @.str.158, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.159, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_reveal_exec, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !122
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UV_OT_hide(ptr nocapture noundef %0) #0 {
  store ptr @.str.160, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.161, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %4, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_hide_exec, ptr %5, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_uvedit, ptr %6, align 8, !tbaa !122
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.162) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UV_OT_cursor_set(ptr nocapture noundef %0) #0 {
  store ptr @.str.163, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.164, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @uv_set_2d_cursor_exec, ptr %4, align 8, !tbaa !121
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @uv_set_2d_cursor_invoke, ptr %5, align 8, !tbaa !123
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @uv_set_2d_cursor_poll, ptr %6, align 8, !tbaa !122
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !120
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.42, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.165, float noundef -1.000000e+01, float noundef 1.000000e+01) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UV_OT_tile_set(ptr nocapture noundef %0) #0 {
  store ptr @.str.166, ptr %0, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.167, ptr %2, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.33, ptr %3, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_tile_exec, ptr %4, align 8, !tbaa !121
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @set_tile_invoke, ptr %5, align 8, !tbaa !123
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_image_active, ptr %6, align 8, !tbaa !122
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !120
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  %10 = tail call ptr @RNA_def_int_vector(ptr noundef %9, ptr noundef nonnull @.str.168, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, i32 noundef 0, i32 noundef 10) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_keymap_uvedit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #13
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 9
  store ptr @ED_operator_uvedit_can_uv_sculpt, ptr %3, align 8, !tbaa !127
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %5 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  tail call void @RNA_string_set(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #13
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 101, i32 noundef 1, i32 noundef 2, i32 noundef 0) #13
  %8 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %9 = getelementptr inbounds %struct.wmKeyMapItem, ptr %8, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  tail call void @RNA_boolean_set(ptr noundef %10, ptr noundef nonnull @.str.6, i32 noundef 0) #13
  %11 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 0) #13
  %12 = getelementptr inbounds %struct.wmKeyMapItem, ptr %11, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !129
  tail call void @RNA_boolean_set(ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef 1) #13
  %14 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 6, i32 noundef 1, i32 noundef 4, i32 noundef 0) #13
  %15 = getelementptr inbounds %struct.wmKeyMapItem, ptr %14, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !129
  tail call void @RNA_boolean_set(ptr noundef %16, ptr noundef nonnull @.str.6, i32 noundef 0) #13
  %17 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 6, i32 noundef 1, i32 noundef 5, i32 noundef 0) #13
  %18 = getelementptr inbounds %struct.wmKeyMapItem, ptr %17, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !129
  tail call void @RNA_boolean_set(ptr noundef %19, ptr noundef nonnull @.str.6, i32 noundef 1) #13
  %20 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 121, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %22 = getelementptr inbounds %struct.wmKeyMapItem, ptr %21, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !129
  tail call void @RNA_boolean_set(ptr noundef %23, ptr noundef nonnull @.str.10, i32 noundef 0) #13
  %24 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef 98, i32 noundef 1, i32 noundef 1, i32 noundef 0) #13
  %25 = getelementptr inbounds %struct.wmKeyMapItem, ptr %24, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !129
  tail call void @RNA_boolean_set(ptr noundef %26, ptr noundef nonnull @.str.10, i32 noundef 1) #13
  %27 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 99, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 20486, i32 noundef -1, i32 noundef 2, i32 noundef 0) #13
  %29 = getelementptr inbounds %struct.wmKeyMapItem, ptr %28, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !129
  tail call void @RNA_boolean_set(ptr noundef %30, ptr noundef nonnull @.str.13, i32 noundef 0) #13
  %31 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 20486, i32 noundef -1, i32 noundef 3, i32 noundef 0) #13
  %32 = getelementptr inbounds %struct.wmKeyMapItem, ptr %31, i64 0, i32 17
  %33 = load ptr, ptr %32, align 8, !tbaa !129
  tail call void @RNA_boolean_set(ptr noundef %33, ptr noundef nonnull @.str.13, i32 noundef 1) #13
  %34 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 1, i32 noundef 2, i32 noundef 0) #13
  %35 = getelementptr inbounds %struct.wmKeyMapItem, ptr %34, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !129
  tail call void @RNA_boolean_set(ptr noundef %36, ptr noundef nonnull @.str.6, i32 noundef 0) #13
  %37 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %38 = getelementptr inbounds %struct.wmKeyMapItem, ptr %37, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !129
  tail call void @RNA_boolean_set(ptr noundef %39, ptr noundef nonnull @.str.6, i32 noundef 0) #13
  %40 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 1, i32 noundef 3, i32 noundef 0) #13
  %41 = getelementptr inbounds %struct.wmKeyMapItem, ptr %40, i64 0, i32 17
  %42 = load ptr, ptr %41, align 8, !tbaa !129
  tail call void @RNA_boolean_set(ptr noundef %42, ptr noundef nonnull @.str.6, i32 noundef 1) #13
  %43 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 1, i32 noundef 1, i32 noundef 0) #13
  %44 = getelementptr inbounds %struct.wmKeyMapItem, ptr %43, i64 0, i32 17
  %45 = load ptr, ptr %44, align 8, !tbaa !129
  tail call void @RNA_boolean_set(ptr noundef %45, ptr noundef nonnull @.str.6, i32 noundef 1) #13
  %46 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 164, i32 noundef 1, i32 noundef 2, i32 noundef 0) #13
  %47 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 162, i32 noundef 1, i32 noundef 2, i32 noundef 0) #13
  %48 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %49 = getelementptr inbounds %struct.wmKeyMapItem, ptr %48, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !129
  tail call void @RNA_enum_set(ptr noundef %50, ptr noundef nonnull @.str.19, i32 noundef 0) #13
  %51 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #13
  %52 = getelementptr inbounds %struct.wmKeyMapItem, ptr %51, i64 0, i32 17
  %53 = load ptr, ptr %52, align 8, !tbaa !129
  tail call void @RNA_enum_set(ptr noundef %53, ptr noundef nonnull @.str.19, i32 noundef 3) #13
  %54 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef 112, i32 noundef 1, i32 noundef 1, i32 noundef 0) #13
  %55 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 119, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %56 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef 118, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %57 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 112, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %58 = getelementptr inbounds %struct.wmKeyMapItem, ptr %57, i64 0, i32 17
  %59 = load ptr, ptr %58, align 8, !tbaa !129
  tail call void @RNA_boolean_set(ptr noundef %59, ptr noundef nonnull @.str.24, i32 noundef 0) #13
  %60 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 112, i32 noundef 1, i32 noundef 4, i32 noundef 0) #13
  %61 = getelementptr inbounds %struct.wmKeyMapItem, ptr %60, i64 0, i32 17
  %62 = load ptr, ptr %61, align 8, !tbaa !129
  tail call void @RNA_boolean_set(ptr noundef %62, ptr noundef nonnull @.str.24, i32 noundef 1) #13
  %63 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef 118, i32 noundef 1, i32 noundef 2, i32 noundef 0) #13
  %65 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef 112, i32 noundef 1, i32 noundef 2, i32 noundef 0) #13
  %66 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef 97, i32 noundef 1, i32 noundef 2, i32 noundef 0) #13
  %67 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %68 = getelementptr inbounds %struct.wmKeyMapItem, ptr %67, i64 0, i32 17
  %69 = load ptr, ptr %68, align 8, !tbaa !129
  tail call void @RNA_boolean_set(ptr noundef %69, ptr noundef nonnull @.str.30, i32 noundef 0) #13
  %70 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef 104, i32 noundef 1, i32 noundef 1, i32 noundef 0) #13
  %71 = getelementptr inbounds %struct.wmKeyMapItem, ptr %70, i64 0, i32 17
  %72 = load ptr, ptr %71, align 8, !tbaa !129
  tail call void @RNA_boolean_set(ptr noundef %72, ptr noundef nonnull @.str.30, i32 noundef 1) #13
  %73 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.31, i32 noundef 104, i32 noundef 1, i32 noundef 4, i32 noundef 0) #13
  %74 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %75 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.33, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 0) #13
  %76 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.34, i32 noundef 115, i32 noundef 1, i32 noundef 1, i32 noundef 0) #13
  %77 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.35, i32 noundef 219, i32 noundef 1, i32 noundef 2, i32 noundef 0) #13
  tail call void @ED_keymap_proportional_cycle(ptr noundef %0, ptr noundef %2) #13
  tail call void @ED_keymap_proportional_editmode(ptr noundef %0, ptr noundef %2, i8 noundef zeroext 0) #13
  tail call void @transform_keymap_for_space(ptr noundef %0, ptr noundef %2, i32 noundef 6) #13
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ED_operator_uvedit_can_uv_sculpt(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #13
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %5 = tail call zeroext i8 @ED_space_image_show_uvedit(ptr noundef %2, ptr noundef %4) #13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 64
  %9 = load i32, ptr %8, align 8, !tbaa !131
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_add_menu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_keymap_proportional_cycle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_keymap_proportional_editmode(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @transform_keymap_for_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !132
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %25 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
    i8 7, label %20
    i8 8, label %21
    i8 9, label %22
    i8 10, label %23
    i8 11, label %24
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !134
  br label %26

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !75
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !135
  br label %26

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !75
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !136
  br label %26

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !75
  br label %26

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !75
  br label %26

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !75
  br label %26

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !75
  br label %26

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !75
  br label %26

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !75
  br label %26

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !75
  br label %26

24:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !133
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !75
  br label %26

25:                                               ; preds = %4
  unreachable

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %27 = phi ptr [ %3, %24 ], [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %28 = phi ptr [ @bmiter__loop_of_face_begin, %24 ], [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %27, ptr %0, align 8, !tbaa !137
  tail call void %28(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = load float, ptr %1, align 4, !tbaa !97
  %5 = load float, ptr %2, align 4, !tbaa !97
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !97
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !97
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !97
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @line_point_side_v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = load float, ptr %0, align 4, !tbaa !97
  %5 = load float, ptr %2, align 4, !tbaa !97
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !97
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !97
  %11 = fsub float %8, %10
  %12 = load float, ptr %1, align 4, !tbaa !97
  %13 = fsub float %12, %5
  %14 = getelementptr inbounds float, ptr %0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !97
  %16 = fsub float %15, %10
  %17 = fneg float %13
  %18 = fmul float %16, %17
  %19 = tail call float @llvm.fmuladd.f32(float %6, float %11, float %18)
  ret float %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %5 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #13
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #13
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !138
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.19) #13
  tail call fastcc void @uv_select_all_perform(ptr noundef %3, ptr noundef %5, ptr noundef %6, i32 noundef %9) #14
  %10 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %11) #13
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_uvedit(ptr noundef) #2

; Function Attrs: optsize
declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_select_all_perform(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  %9 = load ptr, ptr %2, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 26
  %11 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %10, i32 noundef 16) #13
  %12 = load ptr, ptr %2, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 27
  %14 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %13, i32 noundef 15) #13
  %15 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 11
  %16 = load i8, ptr %15, align 2, !tbaa !46
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  switch i32 %3, label %97 [
    i32 0, label %20
    i32 1, label %21
    i32 2, label %22
    i32 3, label %23
  ]

20:                                               ; preds = %19
  tail call void @EDBM_select_toggle_all(ptr noundef nonnull %2) #13
  br label %97

21:                                               ; preds = %19
  tail call void @EDBM_flag_enable_all(ptr noundef nonnull %2, i8 noundef zeroext 1) #13
  br label %97

22:                                               ; preds = %19
  tail call void @EDBM_flag_disable_all(ptr noundef nonnull %2, i8 noundef zeroext 1) #13
  br label %97

23:                                               ; preds = %19
  tail call void @EDBM_select_swap(ptr noundef nonnull %2) #13
  tail call void @EDBM_selectmode_flush(ptr noundef nonnull %2) #13
  br label %97

24:                                               ; preds = %4
  %25 = icmp eq i32 %3, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %24
  %27 = load ptr, ptr %2, align 8, !tbaa !55
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %27, i8 noundef zeroext 3, ptr noundef null) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %58, label %30

30:                                               ; preds = %26
  %31 = sext i32 %14 to i64
  %32 = sext i32 %11 to i64
  br label %33

33:                                               ; preds = %30, %54
  %34 = phi i32 [ 1, %30 ], [ %55, %54 ]
  %35 = phi ptr [ %28, %30 ], [ %56, %54 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !61
  %37 = getelementptr inbounds i8, ptr %36, i64 %31
  %38 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %35, ptr noundef %37) #14, !range !22
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %33
  %41 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %35) #14
  %42 = icmp eq ptr %41, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %40, %51
  %44 = phi ptr [ %52, %51 ], [ %41, %40 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !70
  %46 = getelementptr inbounds i8, ptr %45, i64 %32
  %47 = getelementptr inbounds %struct.MLoopUV, ptr %46, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !72
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %43, !llvm.loop !140

54:                                               ; preds = %51, %43, %40, %33
  %55 = phi i32 [ %34, %33 ], [ %34, %40 ], [ %34, %51 ], [ 2, %43 ]
  %56 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %33, !llvm.loop !141

58:                                               ; preds = %54, %26, %24
  %59 = phi i32 [ %3, %24 ], [ 1, %26 ], [ %55, %54 ]
  %60 = load ptr, ptr %2, align 8, !tbaa !55
  %61 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %60, i8 noundef zeroext 3, ptr noundef null) #14
  %62 = icmp eq ptr %61, null
  br i1 %62, label %97, label %63

63:                                               ; preds = %58
  %64 = sext i32 %14 to i64
  %65 = sext i32 %11 to i64
  br label %66

66:                                               ; preds = %63, %94
  %67 = phi ptr [ %61, %63 ], [ %95, %94 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !61
  %69 = getelementptr inbounds i8, ptr %68, i64 %64
  %70 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %67, ptr noundef %69) #14, !range !22
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %94, label %72

72:                                               ; preds = %66
  %73 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %67) #14
  %74 = icmp eq ptr %73, null
  br i1 %74, label %94, label %75

75:                                               ; preds = %72, %91
  %76 = phi ptr [ %92, %91 ], [ %73, %72 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !70
  %78 = getelementptr inbounds i8, ptr %77, i64 %65
  switch i32 %59, label %91 [
    i32 1, label %79
    i32 2, label %83
    i32 3, label %87
  ]

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.MLoopUV, ptr %78, i64 0, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !72
  %82 = or i32 %81, 2
  store i32 %82, ptr %80, align 4, !tbaa !72
  br label %91

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.MLoopUV, ptr %78, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !72
  %86 = and i32 %85, -3
  store i32 %86, ptr %84, align 4, !tbaa !72
  br label %91

87:                                               ; preds = %75
  %88 = getelementptr inbounds %struct.MLoopUV, ptr %78, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !72
  %90 = xor i32 %89, 2
  store i32 %90, ptr %88, align 4, !tbaa !72
  br label %91

91:                                               ; preds = %79, %83, %87, %75
  %92 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %75, !llvm.loop !142

94:                                               ; preds = %91, %72, %66
  %95 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %66, !llvm.loop !143

97:                                               ; preds = %94, %58, %20, %21, %22, %23, %19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_select_toggle_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_flag_enable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_flag_disable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_select_swap(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_selectmode_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !138
  call void @RNA_float_get_array(ptr noundef %5, ptr noundef nonnull @.str.42, ptr noundef nonnull %3) #13
  %6 = load ptr, ptr %4, align 8, !tbaa !138
  %7 = call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.6) #13
  %8 = trunc i32 %7 to i8
  %9 = call fastcc i32 @uv_mouse_select(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %8, i8 noundef zeroext 0) #14, !range !144
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_select_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !145
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !145
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %6, float noundef %9, float noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %13) #13
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !138
  call void @RNA_float_set_array(ptr noundef %15, ptr noundef nonnull @.str.42, ptr noundef nonnull %4) #13
  %16 = call i32 @uv_select_exec(ptr noundef %0, ptr noundef %1) #14, !range !144
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret i32 %16
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @uv_mouse_select(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.NearestHit, align 8
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %12 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !28
  %14 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %15 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #13
  %16 = tail call ptr @BKE_editmesh_from_object(ptr noundef %14) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  %18 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 26
  %19 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %18, i32 noundef 16) #13
  %20 = load ptr, ptr %16, align 8, !tbaa !55
  %21 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 27
  %22 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %21, i32 noundef 15) #13
  call fastcc void @uvedit_pixel_to_float(ptr noundef %10, ptr noundef nonnull %8, float noundef 0x3FA99999A0000000) #14
  %23 = icmp eq ptr %10, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.SpaceImage, ptr %10, i64 0, i32 14
  %26 = load float, ptr %25, align 8, !tbaa !146
  br label %27

27:                                               ; preds = %4, %24
  %28 = phi float [ %26, %24 ], [ 1.000000e+00, %4 ]
  %29 = fdiv float 5.000000e+00, %28
  call fastcc void @uvedit_pixel_to_float(ptr noundef %10, ptr noundef nonnull %9, float noundef %29) #14
  %30 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 11
  %31 = load i8, ptr %30, align 2, !tbaa !46
  %32 = and i8 %31, 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 8
  %36 = load i16, ptr %35, align 2, !tbaa !80
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  %40 = and i32 %37, 2
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 1, i32 2
  %43 = select i1 %39, i32 %42, i32 4
  br label %52

44:                                               ; preds = %27
  %45 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 12
  %46 = load i8, ptr %45, align 1, !tbaa !147
  %47 = zext i8 %46 to i32
  br i1 %23, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.SpaceImage, ptr %10, i64 0, i32 23
  %50 = load i8, ptr %49, align 1, !tbaa !148
  %51 = zext i8 %50 to i32
  br label %52

52:                                               ; preds = %48, %44, %34
  %53 = phi i32 [ %43, %34 ], [ %47, %44 ], [ %47, %48 ]
  %54 = phi i32 [ 1, %34 ], [ 1, %44 ], [ %51, %48 ]
  %55 = icmp eq i8 %3, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  call void @uv_find_nearest_edge(ptr noundef nonnull %11, ptr noundef %15, ptr noundef nonnull %16, ptr noundef %1, ptr noundef nonnull %7) #14
  %57 = load ptr, ptr %7, align 8, !tbaa !103
  %58 = icmp eq ptr %57, null
  br i1 %58, label %285, label %275

59:                                               ; preds = %52
  switch i32 %53, label %285 [
    i32 1, label %60
    i32 2, label %84
    i32 4, label %123
    i32 8, label %152
  ]

60:                                               ; preds = %59
  call void @uv_find_nearest_vert(ptr noundef nonnull %11, ptr noundef %15, ptr noundef nonnull %16, ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %7) #14
  %61 = load ptr, ptr %7, align 8, !tbaa !103
  %62 = icmp eq ptr %61, null
  br i1 %62, label %285, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.BMFace, ptr %61, i64 0, i32 3
  %65 = load i32, ptr %64, align 8, !tbaa !96
  %66 = sext i32 %65 to i64
  %67 = shl nsw i64 %66, 2
  %68 = alloca i8, i64 %67, align 16
  %69 = shl nsw i64 %66, 3
  %70 = alloca i8, i64 %69, align 16
  call void @fill_vn_i(ptr noundef nonnull %68, i32 noundef %65, i32 noundef -1) #13
  %71 = getelementptr inbounds %struct.NearestHit, ptr %7, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !104
  %73 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !83
  %75 = call fastcc i32 @_bm_elem_index_get(ptr noundef %74) #14
  %76 = getelementptr inbounds %struct.NearestHit, ptr %7, i64 0, i32 5
  %77 = load i32, ptr %76, align 8, !tbaa !107
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, ptr %68, i64 %78
  store i32 %75, ptr %79, align 4, !tbaa !145
  %80 = getelementptr inbounds %struct.NearestHit, ptr %7, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !105
  %82 = getelementptr inbounds ptr, ptr %70, i64 %78
  store ptr %81, ptr %82, align 8, !tbaa !26
  %83 = load i32, ptr %64, align 8, !tbaa !96
  br label %158

84:                                               ; preds = %59
  call void @uv_find_nearest_edge(ptr noundef nonnull %11, ptr noundef %15, ptr noundef nonnull %16, ptr noundef %1, ptr noundef nonnull %7) #14
  %85 = load ptr, ptr %7, align 8, !tbaa !103
  %86 = icmp eq ptr %85, null
  br i1 %86, label %285, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.BMFace, ptr %85, i64 0, i32 3
  %89 = load i32, ptr %88, align 8, !tbaa !96
  %90 = sext i32 %89 to i64
  %91 = shl nsw i64 %90, 2
  %92 = alloca i8, i64 %91, align 16
  %93 = shl nsw i64 %90, 3
  %94 = alloca i8, i64 %93, align 16
  call void @fill_vn_i(ptr noundef nonnull %92, i32 noundef %89, i32 noundef -1) #13
  %95 = getelementptr inbounds %struct.NearestHit, ptr %7, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !104
  %97 = getelementptr inbounds %struct.BMLoop, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !83
  %99 = call fastcc i32 @_bm_elem_index_get(ptr noundef %98) #14
  %100 = getelementptr inbounds %struct.NearestHit, ptr %7, i64 0, i32 5
  %101 = load i32, ptr %100, align 8, !tbaa !107
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, ptr %92, i64 %102
  store i32 %99, ptr %103, align 4, !tbaa !145
  %104 = getelementptr inbounds %struct.BMLoop, ptr %96, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !84
  %106 = getelementptr inbounds %struct.BMLoop, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !83
  %108 = call fastcc i32 @_bm_elem_index_get(ptr noundef %107) #14
  %109 = add nsw i32 %101, 1
  %110 = load i32, ptr %88, align 8, !tbaa !96
  %111 = srem i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, ptr %92, i64 %112
  store i32 %108, ptr %113, align 4, !tbaa !145
  %114 = getelementptr inbounds %struct.NearestHit, ptr %7, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !105
  %116 = getelementptr inbounds ptr, ptr %94, i64 %102
  store ptr %115, ptr %116, align 8, !tbaa !26
  %117 = getelementptr inbounds %struct.NearestHit, ptr %7, i64 0, i32 4
  %118 = load ptr, ptr %117, align 8, !tbaa !106
  %119 = load i32, ptr %88, align 8, !tbaa !96
  %120 = srem i32 %109, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %94, i64 %121
  store ptr %118, ptr %122, align 8, !tbaa !26
  br label %158

123:                                              ; preds = %59
  call fastcc void @uv_find_nearest_face(ptr noundef nonnull %11, ptr noundef %15, ptr noundef nonnull %16, ptr noundef %1, ptr noundef nonnull %7) #14
  %124 = load ptr, ptr %7, align 8, !tbaa !103
  %125 = icmp eq ptr %124, null
  br i1 %125, label %285, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr %16, align 8, !tbaa !55
  tail call void @BM_mesh_active_face_set(ptr noundef %127, ptr noundef nonnull %124) #13
  %128 = getelementptr inbounds %struct.BMFace, ptr %124, i64 0, i32 3
  %129 = load i32, ptr %128, align 8, !tbaa !96
  %130 = sext i32 %129 to i64
  %131 = shl nsw i64 %130, 2
  %132 = alloca i8, i64 %131, align 16
  %133 = shl nsw i64 %130, 3
  %134 = alloca i8, i64 %133, align 16
  %135 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %124) #14
  %136 = icmp eq ptr %135, null
  br i1 %136, label %155, label %137

137:                                              ; preds = %126
  %138 = sext i32 %19 to i64
  br label %139

139:                                              ; preds = %137, %139
  %140 = phi i64 [ 0, %137 ], [ %150, %139 ]
  %141 = phi ptr [ %135, %137 ], [ %149, %139 ]
  %142 = load ptr, ptr %141, align 8, !tbaa !70
  %143 = getelementptr inbounds i8, ptr %142, i64 %138
  %144 = getelementptr inbounds ptr, ptr %134, i64 %140
  store ptr %143, ptr %144, align 8, !tbaa !26
  %145 = getelementptr inbounds %struct.BMLoop, ptr %141, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !83
  %147 = call fastcc i32 @_bm_elem_index_get(ptr noundef %146) #14
  %148 = getelementptr inbounds i32, ptr %132, i64 %140
  store i32 %147, ptr %148, align 4, !tbaa !145
  %149 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %150 = add nuw i64 %140, 1
  %151 = icmp eq ptr %149, null
  br i1 %151, label %155, label %139, !llvm.loop !149

152:                                              ; preds = %59
  call void @uv_find_nearest_edge(ptr noundef nonnull %11, ptr noundef %15, ptr noundef nonnull %16, ptr noundef %1, ptr noundef nonnull %7) #14
  %153 = load ptr, ptr %7, align 8, !tbaa !103
  %154 = icmp eq ptr %153, null
  br i1 %154, label %285, label %157

155:                                              ; preds = %139, %126
  %156 = load i32, ptr %128, align 8, !tbaa !96
  br label %158

157:                                              ; preds = %152
  call fastcc void @uv_select_linked(ptr noundef nonnull %11, ptr noundef %15, ptr noundef nonnull %16, ptr noundef nonnull %8, ptr noundef nonnull %7, i8 noundef zeroext %2) #14
  br label %281

158:                                              ; preds = %155, %63, %87
  %159 = phi ptr [ %124, %155 ], [ %61, %63 ], [ %85, %87 ]
  %160 = phi ptr [ %132, %155 ], [ %68, %63 ], [ %92, %87 ]
  %161 = phi i32 [ %156, %155 ], [ %83, %63 ], [ %119, %87 ]
  %162 = phi ptr [ %134, %155 ], [ %70, %63 ], [ %94, %87 ]
  %163 = icmp eq i8 %2, 0
  br i1 %163, label %225, label %164

164:                                              ; preds = %158
  switch i32 %53, label %188 [
    i32 1, label %165
    i32 2, label %170
    i32 4, label %176
  ]

165:                                              ; preds = %164
  %166 = getelementptr inbounds %struct.NearestHit, ptr %7, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !104
  %168 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %11, ptr noundef %167, i32 noundef %19) #14, !range !22
  %169 = xor i8 %168, 1
  call void @uvedit_uv_select_set(ptr noundef nonnull %16, ptr noundef %11, ptr noundef %167, i8 noundef zeroext %169, i8 noundef zeroext 1, i32 noundef %19) #14
  br label %181

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.NearestHit, ptr %7, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !104
  %173 = call zeroext i8 @uvedit_edge_select_test(ptr noundef %11, ptr noundef %172, i32 noundef %19) #14
  %174 = icmp eq i8 %173, 0
  %175 = zext i1 %174 to i8
  call void @uvedit_edge_select_set(ptr noundef nonnull %16, ptr noundef %11, ptr noundef %172, i8 noundef zeroext %175, i8 noundef zeroext 1, i32 noundef %19) #14
  br label %181

176:                                              ; preds = %164
  %177 = call zeroext i8 @uvedit_face_select_test(ptr noundef %11, ptr noundef nonnull %159, i32 noundef %19) #14, !range !64
  %178 = icmp eq i8 %177, 0
  %179 = zext i1 %178 to i8
  %180 = call zeroext i8 @uvedit_face_select_set(ptr noundef %11, ptr noundef nonnull %16, ptr noundef nonnull %159, i8 noundef zeroext %179, i8 noundef zeroext 1, i32 noundef %19) #14, !range !22
  br label %181

181:                                              ; preds = %170, %176, %165
  %182 = phi i8 [ %169, %165 ], [ %175, %170 ], [ %179, %176 ]
  %183 = phi i32 [ 1, %165 ], [ 1, %170 ], [ -1, %176 ]
  %184 = icmp eq i8 %182, 0
  %185 = and i1 %33, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load ptr, ptr %16, align 8, !tbaa !55
  call void @BM_select_history_validate(ptr noundef %187) #13
  br label %188

188:                                              ; preds = %164, %186, %181
  %189 = phi i32 [ %183, %186 ], [ %183, %181 ], [ 0, %164 ]
  %190 = phi i8 [ 0, %186 ], [ %182, %181 ], [ 1, %164 ]
  %191 = icmp eq i32 %54, 1
  br i1 %191, label %271, label %192

192:                                              ; preds = %188
  %193 = load ptr, ptr %16, align 8, !tbaa !55
  call void @BM_mesh_elem_index_ensure(ptr noundef %193, i8 noundef zeroext 1) #13
  %194 = load ptr, ptr %16, align 8, !tbaa !55
  %195 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %194, i8 noundef zeroext 3, ptr noundef null) #14
  %196 = icmp eq ptr %195, null
  br i1 %196, label %271, label %197

197:                                              ; preds = %192
  %198 = sext i32 %22 to i64
  %199 = sext i32 %19 to i64
  br label %200

200:                                              ; preds = %197, %222
  %201 = phi ptr [ %195, %197 ], [ %223, %222 ]
  %202 = load ptr, ptr %201, align 8, !tbaa !61
  %203 = getelementptr inbounds i8, ptr %202, i64 %198
  %204 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %11, ptr noundef %15, ptr noundef nonnull %201, ptr noundef %203) #14, !range !22
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %222, label %206

206:                                              ; preds = %200
  %207 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %201) #14
  %208 = icmp eq ptr %207, null
  br i1 %208, label %222, label %209

209:                                              ; preds = %206, %219
  %210 = phi ptr [ %220, %219 ], [ %207, %206 ]
  %211 = load ptr, ptr %210, align 8, !tbaa !70
  %212 = getelementptr inbounds i8, ptr %211, i64 %199
  %213 = getelementptr inbounds %struct.BMLoop, ptr %210, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !83
  %215 = call fastcc i32 @_bm_elem_index_get(ptr noundef %214) #14
  %216 = call fastcc zeroext i8 @uv_sticky_select(ptr noundef nonnull %8, ptr noundef nonnull %160, i32 noundef %215, ptr noundef nonnull %162, ptr noundef %212, i32 noundef %54, i32 noundef %161) #14, !range !22
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %209
  call void @uvedit_uv_select_set(ptr noundef nonnull %16, ptr noundef %11, ptr noundef nonnull %210, i8 noundef zeroext %190, i8 noundef zeroext 0, i32 noundef %19) #14
  br label %219

219:                                              ; preds = %209, %218
  %220 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %209, !llvm.loop !150

222:                                              ; preds = %219, %206, %200
  %223 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %224 = icmp eq ptr %223, null
  br i1 %224, label %271, label %200, !llvm.loop !151

225:                                              ; preds = %158
  call fastcc void @uv_select_all_perform(ptr noundef %11, ptr noundef %15, ptr noundef nonnull %16, i32 noundef 2) #14
  switch i32 %53, label %234 [
    i32 1, label %226
    i32 2, label %229
    i32 4, label %232
  ]

226:                                              ; preds = %225
  %227 = getelementptr inbounds %struct.NearestHit, ptr %7, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !104
  call void @uvedit_uv_select_enable(ptr noundef nonnull %16, ptr noundef %11, ptr noundef %228, i8 noundef zeroext 1, i32 noundef %19) #14
  br label %234

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.NearestHit, ptr %7, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !104
  call void @uvedit_edge_select_enable(ptr noundef nonnull %16, ptr noundef %11, ptr noundef %231, i8 noundef zeroext 1, i32 noundef %19) #14
  br label %234

232:                                              ; preds = %225
  %233 = call zeroext i8 @uvedit_face_select_enable(ptr noundef %11, ptr noundef nonnull %16, ptr noundef nonnull %159, i8 noundef zeroext 1, i32 noundef %19) #14, !range !22
  br label %234

234:                                              ; preds = %225, %229, %232, %226
  %235 = phi i32 [ 1, %226 ], [ 1, %229 ], [ 0, %232 ], [ 0, %225 ]
  %236 = icmp eq i32 %54, 1
  br i1 %236, label %271, label %237

237:                                              ; preds = %234
  %238 = load ptr, ptr %16, align 8, !tbaa !55
  %239 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %238, i8 noundef zeroext 3, ptr noundef null) #14
  %240 = icmp eq ptr %239, null
  br i1 %240, label %271, label %241

241:                                              ; preds = %237
  %242 = sext i32 %22 to i64
  %243 = sext i32 %19 to i64
  br label %244

244:                                              ; preds = %241, %267
  %245 = phi ptr [ %239, %241 ], [ %269, %267 ]
  %246 = phi i32 [ %235, %241 ], [ %268, %267 ]
  %247 = load ptr, ptr %245, align 8, !tbaa !61
  %248 = getelementptr inbounds i8, ptr %247, i64 %242
  %249 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %11, ptr noundef %15, ptr noundef nonnull %245, ptr noundef %248) #14, !range !22
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %267, label %251

251:                                              ; preds = %244
  %252 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %245) #14
  %253 = icmp eq ptr %252, null
  br i1 %253, label %267, label %254

254:                                              ; preds = %251, %264
  %255 = phi ptr [ %265, %264 ], [ %252, %251 ]
  %256 = load ptr, ptr %255, align 8, !tbaa !70
  %257 = getelementptr inbounds i8, ptr %256, i64 %243
  %258 = getelementptr inbounds %struct.BMLoop, ptr %255, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !83
  %260 = call fastcc i32 @_bm_elem_index_get(ptr noundef %259) #14
  %261 = call fastcc zeroext i8 @uv_sticky_select(ptr noundef nonnull %8, ptr noundef nonnull %160, i32 noundef %260, ptr noundef nonnull %162, ptr noundef %257, i32 noundef %54, i32 noundef %161) #14, !range !22
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %264, label %263

263:                                              ; preds = %254
  call void @uvedit_uv_select_enable(ptr noundef nonnull %16, ptr noundef %11, ptr noundef nonnull %255, i8 noundef zeroext 0, i32 noundef %19) #14
  br label %264

264:                                              ; preds = %254, %263
  %265 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %254, !llvm.loop !152

267:                                              ; preds = %264, %251, %244
  %268 = phi i32 [ %246, %244 ], [ %246, %251 ], [ 1, %264 ]
  %269 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %244, !llvm.loop !153

271:                                              ; preds = %222, %267, %192, %237, %234, %188
  %272 = phi i32 [ %189, %188 ], [ %235, %234 ], [ %235, %237 ], [ 1, %192 ], [ %268, %267 ], [ 1, %222 ]
  %273 = icmp ne i32 %272, 0
  %274 = select i1 %33, i1 %273, i1 false
  br i1 %274, label %280, label %281

275:                                              ; preds = %56
  %276 = call fastcc i32 @uv_select_edgeloop(ptr noundef nonnull %11, ptr noundef %15, ptr noundef nonnull %16, ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext %2) #14, !range !154
  %277 = icmp ne i32 %276, 0
  %278 = select i1 %33, i1 %277, i1 false
  br i1 %278, label %279, label %281

279:                                              ; preds = %275
  call void @EDBM_select_flush(ptr noundef nonnull %16) #13
  br label %281

280:                                              ; preds = %271
  call void @EDBM_selectmode_flush(ptr noundef nonnull %16) #13
  br label %281

281:                                              ; preds = %275, %157, %279, %280, %271
  %282 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %283 = load ptr, ptr %282, align 8, !tbaa !60
  call void @DAG_id_tag_update(ptr noundef %283, i16 noundef signext 0) #13
  %284 = load ptr, ptr %282, align 8, !tbaa !60
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %284) #13
  br label %285

285:                                              ; preds = %59, %152, %123, %84, %60, %56, %281
  %286 = phi i32 [ 12, %281 ], [ 2, %56 ], [ 2, %60 ], [ 2, %84 ], [ 2, %123 ], [ 2, %152 ], [ 2, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret i32 %286
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uvedit_pixel_to_float(ptr noundef %0, ptr nocapture noundef writeonly %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %6 = icmp eq ptr %0, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  call void @ED_space_image_get_size(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %8 = load i32, ptr %4, align 4, !tbaa !145
  %9 = load i32, ptr %5, align 4, !tbaa !145
  %10 = insertelement <2 x i32> poison, i32 %8, i64 0
  %11 = insertelement <2 x i32> %10, i32 %9, i64 1
  %12 = sitofp <2 x i32> %11 to <2 x float>
  br label %13

13:                                               ; preds = %3, %7
  %14 = phi <2 x float> [ %12, %7 ], [ <float 2.560000e+02, float 2.560000e+02>, %3 ]
  %15 = insertelement <2 x float> poison, float %2, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = fdiv <2 x float> %16, %14
  store <2 x float> %17, ptr %1, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare void @fill_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !155
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_find_nearest_face(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  %8 = load ptr, ptr %2, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 26
  %10 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %9, i32 noundef 16) #13
  %11 = load ptr, ptr %2, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 27
  %13 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %12, i32 noundef 15) #13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  tail call void @uv_find_nearest_edge(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #14
  %14 = getelementptr inbounds %struct.NearestHit, ptr %4, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %15 = load ptr, ptr %2, align 8, !tbaa !55
  %16 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %15, i8 noundef zeroext 3, ptr noundef null) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %5
  %19 = sext i32 %13 to i64
  %20 = getelementptr inbounds %struct.NearestHit, ptr %4, i64 0, i32 1
  br label %21

21:                                               ; preds = %18, %32
  %22 = phi ptr [ %16, %18 ], [ %34, %32 ]
  %23 = phi float [ 1.000000e+10, %18 ], [ %33, %32 ]
  %24 = load ptr, ptr %22, align 8, !tbaa !61
  %25 = getelementptr inbounds i8, ptr %24, i64 %19
  %26 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %22, ptr noundef %25) #14, !range !22
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  call void @uv_poly_center(ptr noundef nonnull %22, ptr noundef nonnull %7, i32 noundef %10) #14
  %29 = call fastcc float @len_manhattan_v2v2(ptr noundef %3, ptr noundef nonnull %7) #14
  %30 = fcmp olt float %29, %23
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store ptr %25, ptr %20, align 8, !tbaa !101
  store ptr %22, ptr %4, align 8, !tbaa !103
  br label %32

32:                                               ; preds = %28, %31, %21
  %33 = phi float [ %29, %31 ], [ %23, %28 ], [ %23, %21 ]
  %34 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %21, !llvm.loop !156

36:                                               ; preds = %32, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_active_face_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @uv_select_edgeloop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  %10 = load ptr, ptr %2, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 26
  %12 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %11, i32 noundef 16) #13
  %13 = load ptr, ptr %2, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 27
  %15 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %14, i32 noundef 15) #13
  %16 = load ptr, ptr %2, align 8, !tbaa !55
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %16, i8 noundef zeroext 8) #13
  %17 = load ptr, ptr %2, align 8, !tbaa !55
  %18 = tail call ptr @BM_uv_vert_map_create(ptr noundef %17, i8 noundef zeroext 0, ptr noundef %4) #13
  %19 = load ptr, ptr %2, align 8, !tbaa !55
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %19, i8 noundef zeroext 9) #13
  %20 = icmp eq i8 %5, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  tail call fastcc void @uv_select_all_perform(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 2) #14
  br label %22

22:                                               ; preds = %21, %6
  %23 = load ptr, ptr %2, align 8, !tbaa !55
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %23, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #13
  %24 = load ptr, ptr %3, align 8, !tbaa !103
  %25 = getelementptr inbounds %struct.NearestHit, ptr %3, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !104
  %27 = tail call fastcc ptr @uv_select_edgeloop_vertex_map_get(ptr noundef %18, ptr noundef %24, ptr noundef %26) #14
  %28 = load ptr, ptr %3, align 8, !tbaa !103
  %29 = load ptr, ptr %25, align 8, !tbaa !104
  %30 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !84
  %32 = tail call fastcc ptr @uv_select_edgeloop_vertex_map_get(ptr noundef %18, ptr noundef %28, ptr noundef %31) #14
  tail call fastcc void @uv_select_edgeloop_vertex_loop_flag(ptr noundef %27) #14
  tail call fastcc void @uv_select_edgeloop_vertex_loop_flag(ptr noundef %32) #14
  store i32 0, ptr %9, align 4, !tbaa !145
  %33 = call fastcc zeroext i8 @uv_select_edgeloop_edge_tag_faces(ptr noundef nonnull %2, ptr noundef %27, ptr noundef %32, ptr noundef nonnull %9) #14, !range !22
  %34 = getelementptr inbounds %struct.UvMapVert, ptr %27, i64 0, i32 4
  %35 = load i8, ptr %34, align 2, !tbaa !157
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.UvMapVert, ptr %32, i64 0, i32 4
  %39 = load i8, ptr %38, align 2, !tbaa !157
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %90, label %41

41:                                               ; preds = %22, %37
  %42 = sext i32 %15 to i64
  br label %45

43:                                               ; preds = %86
  %44 = icmp eq i8 %87, 0
  br i1 %44, label %90, label %45, !llvm.loop !159

45:                                               ; preds = %41, %43
  %46 = load ptr, ptr %2, align 8, !tbaa !55
  %47 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef %46, i8 noundef zeroext 3, ptr noundef null) #14
  %48 = icmp eq ptr %47, null
  br i1 %48, label %90, label %49

49:                                               ; preds = %45, %86
  %50 = phi ptr [ %88, %86 ], [ %47, %45 ]
  %51 = phi i8 [ %87, %86 ], [ 0, %45 ]
  %52 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %50, i8 noundef zeroext 16) #14, !range !64
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %86

54:                                               ; preds = %49
  %55 = load ptr, ptr %50, align 8, !tbaa !61
  %56 = getelementptr inbounds i8, ptr %55, i64 %42
  %57 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %50, ptr noundef %56) #14, !range !22
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %86, label %59

59:                                               ; preds = %54
  %60 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %50) #14
  %61 = icmp eq ptr %60, null
  br i1 %61, label %86, label %62

62:                                               ; preds = %59, %83
  %63 = phi ptr [ %84, %83 ], [ %60, %59 ]
  %64 = call fastcc ptr @uv_select_edgeloop_vertex_map_get(ptr noundef %18, ptr noundef nonnull %50, ptr noundef nonnull %63) #14
  %65 = icmp eq ptr %64, null
  br i1 %65, label %83, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.BMLoop, ptr %63, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !84
  %69 = call fastcc ptr @uv_select_edgeloop_vertex_map_get(ptr noundef %18, ptr noundef nonnull %50, ptr noundef %68) #14
  %70 = icmp eq ptr %69, null
  br i1 %70, label %83, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.UvMapVert, ptr %64, i64 0, i32 4
  %73 = load i8, ptr %72, align 2, !tbaa !157
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.UvMapVert, ptr %69, i64 0, i32 4
  %77 = load i8, ptr %76, align 2, !tbaa !157
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75, %71
  %80 = call fastcc zeroext i8 @uv_select_edgeloop_edge_tag_faces(ptr noundef nonnull %2, ptr noundef nonnull %64, ptr noundef nonnull %69, ptr noundef nonnull %9) #14, !range !22
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %50, i8 noundef zeroext 16) #14
  call fastcc void @uv_select_edgeloop_vertex_loop_flag(ptr noundef nonnull %64) #14
  call fastcc void @uv_select_edgeloop_vertex_loop_flag(ptr noundef nonnull %69) #14
  br label %86

83:                                               ; preds = %75, %79, %66, %62
  %84 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #14
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %62, !llvm.loop !160

86:                                               ; preds = %83, %59, %49, %54, %82
  %87 = phi i8 [ %51, %49 ], [ 1, %82 ], [ %51, %54 ], [ %51, %59 ], [ %51, %83 ]
  %88 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %89 = icmp eq ptr %88, null
  br i1 %89, label %43, label %49, !llvm.loop !161

90:                                               ; preds = %43, %45, %37
  %91 = load ptr, ptr %3, align 8, !tbaa !103
  %92 = load ptr, ptr %25, align 8, !tbaa !104
  %93 = call fastcc ptr @uv_select_edgeloop_vertex_map_get(ptr noundef %18, ptr noundef %91, ptr noundef %92) #14
  %94 = load ptr, ptr %3, align 8, !tbaa !103
  %95 = load ptr, ptr %25, align 8, !tbaa !104
  %96 = getelementptr inbounds %struct.BMLoop, ptr %95, i64 0, i32 6
  %97 = load ptr, ptr %96, align 8, !tbaa !84
  %98 = call fastcc ptr @uv_select_edgeloop_vertex_map_get(ptr noundef %18, ptr noundef %94, ptr noundef %97) #14
  %99 = getelementptr inbounds %struct.UvMapVert, ptr %93, i64 0, i32 4
  store i8 1, ptr %99, align 2, !tbaa !157
  %100 = getelementptr inbounds %struct.UvMapVert, ptr %98, i64 0, i32 4
  store i8 1, ptr %100, align 2, !tbaa !157
  br i1 %20, label %105, label %101

101:                                              ; preds = %90
  %102 = load ptr, ptr %25, align 8, !tbaa !104
  %103 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef %102, i32 noundef %12) #14, !range !22
  %104 = xor i8 %103, 1
  br label %105

105:                                              ; preds = %90, %101
  %106 = phi i8 [ %104, %101 ], [ 1, %90 ]
  %107 = load ptr, ptr %2, align 8, !tbaa !55
  %108 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef %107, i8 noundef zeroext 3, ptr noundef null) #14
  %109 = icmp eq ptr %108, null
  br i1 %109, label %127, label %110

110:                                              ; preds = %105, %124
  %111 = phi ptr [ %125, %124 ], [ %108, %105 ]
  %112 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %111) #14
  %113 = icmp eq ptr %112, null
  br i1 %113, label %124, label %114

114:                                              ; preds = %110, %121
  %115 = phi ptr [ %122, %121 ], [ %112, %110 ]
  %116 = call fastcc ptr @uv_select_edgeloop_vertex_map_get(ptr noundef %18, ptr noundef nonnull %111, ptr noundef nonnull %115) #14
  %117 = getelementptr inbounds %struct.UvMapVert, ptr %116, i64 0, i32 4
  %118 = load i8, ptr %117, align 2, !tbaa !157
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  call void @uvedit_uv_select_set(ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull %115, i8 noundef zeroext %106, i8 noundef zeroext 0, i32 noundef %12) #14
  br label %121

121:                                              ; preds = %114, %120
  %122 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #14
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %114, !llvm.loop !162

124:                                              ; preds = %121, %110
  %125 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %110, !llvm.loop !163

127:                                              ; preds = %124, %105
  call void @BM_uv_vert_map_free(ptr noundef %18) #13
  %128 = icmp eq i8 %106, 0
  %129 = select i1 %128, i32 -1, i32 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  ret i32 %129
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_select_linked(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef readonly %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  %9 = load ptr, ptr %2, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 26
  %11 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %10, i32 noundef 16) #13
  %12 = load ptr, ptr %2, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 27
  %14 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %13, i32 noundef 15) #13
  %15 = load ptr, ptr %2, align 8, !tbaa !55
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %15, i8 noundef zeroext 8) #13
  %16 = load ptr, ptr %2, align 8, !tbaa !55
  %17 = tail call ptr @BM_uv_vert_map_create(ptr noundef %16, i8 noundef zeroext 1, ptr noundef %3) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %276, label %19

19:                                               ; preds = %6
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !26
  %21 = load ptr, ptr %2, align 8, !tbaa !55
  %22 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !57
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 2
  %27 = tail call ptr %20(i64 noundef %26, ptr noundef nonnull @.str.45) #13
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !26
  %29 = load ptr, ptr %2, align 8, !tbaa !55
  %30 = getelementptr inbounds %struct.BMesh, ptr %29, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !57
  %32 = sext i32 %31 to i64
  %33 = tail call ptr %28(i64 noundef %32, ptr noundef nonnull @.str.46) #13
  %34 = icmp eq ptr %4, null
  %35 = load ptr, ptr %2, align 8, !tbaa !55
  %36 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef %35, i8 noundef zeroext 3, ptr noundef null) #14
  %37 = icmp eq ptr %36, null
  br i1 %34, label %38, label %75

38:                                               ; preds = %19
  br i1 %37, label %156, label %39

39:                                               ; preds = %38
  %40 = sext i32 %14 to i64
  %41 = sext i32 %11 to i64
  br label %42

42:                                               ; preds = %39, %70
  %43 = phi ptr [ %36, %39 ], [ %72, %70 ]
  %44 = phi i32 [ 0, %39 ], [ %73, %70 ]
  %45 = phi i32 [ 0, %39 ], [ %71, %70 ]
  %46 = load ptr, ptr %43, align 8, !tbaa !61
  %47 = getelementptr inbounds i8, ptr %46, i64 %40
  %48 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %43, ptr noundef %47) #14, !range !22
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %42
  %51 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %43) #14
  %52 = icmp eq ptr %51, null
  br i1 %52, label %70, label %53

53:                                               ; preds = %50, %67
  %54 = phi ptr [ %68, %67 ], [ %51, %50 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !70
  %56 = getelementptr inbounds i8, ptr %55, i64 %41
  %57 = getelementptr inbounds %struct.MLoopUV, ptr %56, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !72
  %59 = and i32 %58, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %53
  %62 = sext i32 %45 to i64
  %63 = getelementptr inbounds i32, ptr %27, i64 %62
  store i32 %44, ptr %63, align 4, !tbaa !145
  %64 = add nsw i32 %45, 1
  %65 = zext i32 %44 to i64
  %66 = getelementptr inbounds i8, ptr %33, i64 %65
  store i8 1, ptr %66, align 1, !tbaa !137
  br label %70

67:                                               ; preds = %53
  %68 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #14
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %53, !llvm.loop !164

70:                                               ; preds = %67, %50, %42, %61
  %71 = phi i32 [ %64, %61 ], [ %45, %42 ], [ %45, %50 ], [ %45, %67 ]
  %72 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %73 = add i32 %44, 1
  %74 = icmp eq ptr %72, null
  br i1 %74, label %88, label %42, !llvm.loop !165

75:                                               ; preds = %19
  br i1 %37, label %156, label %76

76:                                               ; preds = %75, %84
  %77 = phi ptr [ %85, %84 ], [ %36, %75 ]
  %78 = phi i32 [ %86, %84 ], [ 0, %75 ]
  %79 = load ptr, ptr %4, align 8, !tbaa !103
  %80 = icmp eq ptr %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  store i32 %78, ptr %27, align 4, !tbaa !145
  %82 = zext i32 %78 to i64
  %83 = getelementptr inbounds i8, ptr %33, i64 %82
  store i8 1, ptr %83, align 1, !tbaa !137
  br label %90

84:                                               ; preds = %76
  %85 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %86 = add i32 %78, 1
  %87 = icmp eq ptr %85, null
  br i1 %87, label %156, label %76, !llvm.loop !166

88:                                               ; preds = %70
  %89 = icmp sgt i32 %71, 0
  br i1 %89, label %90, label %156

90:                                               ; preds = %81, %88
  %91 = phi i32 [ %71, %88 ], [ 1, %81 ]
  br label %95

92:                                               ; preds = %152, %95
  %93 = phi i32 [ %97, %95 ], [ %153, %152 ]
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %156, !llvm.loop !167

95:                                               ; preds = %90, %92
  %96 = phi i32 [ %93, %92 ], [ %91, %90 ]
  %97 = add nsw i32 %96, -1
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds i32, ptr %27, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !145
  %101 = load ptr, ptr %2, align 8, !tbaa !55
  %102 = call ptr @BM_face_at_index(ptr noundef %101, i32 noundef %100) #13
  %103 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 11, ptr noundef %102) #14
  %104 = icmp eq ptr %103, null
  br i1 %104, label %92, label %105

105:                                              ; preds = %95, %152
  %106 = phi ptr [ %154, %152 ], [ %103, %95 ]
  %107 = phi i32 [ %153, %152 ], [ %97, %95 ]
  %108 = getelementptr inbounds %struct.BMLoop, ptr %106, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !83
  %110 = call fastcc i32 @_bm_elem_index_get(ptr noundef %109) #14
  %111 = call ptr @BM_uv_vert_map_at_index(ptr noundef nonnull %17, i32 noundef %110) #13
  %112 = icmp eq ptr %111, null
  br i1 %112, label %152, label %113

113:                                              ; preds = %105, %123
  %114 = phi ptr [ %124, %123 ], [ %111, %105 ]
  %115 = phi ptr [ %119, %123 ], [ %111, %105 ]
  %116 = getelementptr inbounds %struct.UvMapVert, ptr %114, i64 0, i32 3
  %117 = load i8, ptr %116, align 1, !tbaa !168
  %118 = icmp eq i8 %117, 0
  %119 = select i1 %118, ptr %115, ptr %114
  %120 = getelementptr inbounds %struct.UvMapVert, ptr %114, i64 0, i32 1
  %121 = load i32, ptr %120, align 8, !tbaa !169
  %122 = icmp eq i32 %121, %100
  br i1 %122, label %126, label %123

123:                                              ; preds = %113
  %124 = load ptr, ptr %114, align 8, !tbaa !170
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %113, !llvm.loop !171

126:                                              ; preds = %123, %113
  %127 = icmp eq ptr %119, null
  br i1 %127, label %152, label %128

128:                                              ; preds = %126, %148
  %129 = phi ptr [ %150, %148 ], [ %119, %126 ]
  %130 = phi i32 [ %149, %148 ], [ %107, %126 ]
  %131 = icmp eq ptr %119, %129
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.UvMapVert, ptr %129, i64 0, i32 3
  %134 = load i8, ptr %133, align 1, !tbaa !168
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %132, %128
  %137 = getelementptr inbounds %struct.UvMapVert, ptr %129, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !169
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i8, ptr %33, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !137
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %136
  store i8 1, ptr %140, align 1, !tbaa !137
  %144 = load i32, ptr %137, align 8, !tbaa !169
  %145 = sext i32 %130 to i64
  %146 = getelementptr inbounds i32, ptr %27, i64 %145
  store i32 %144, ptr %146, align 4, !tbaa !145
  %147 = add nsw i32 %130, 1
  br label %148

148:                                              ; preds = %143, %136
  %149 = phi i32 [ %130, %136 ], [ %147, %143 ]
  %150 = load ptr, ptr %129, align 8, !tbaa !170
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %128, !llvm.loop !172

152:                                              ; preds = %132, %148, %105, %126
  %153 = phi i32 [ %107, %126 ], [ %107, %105 ], [ %149, %148 ], [ %130, %132 ]
  %154 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #14
  %155 = icmp eq ptr %154, null
  br i1 %155, label %92, label %105, !llvm.loop !173

156:                                              ; preds = %84, %92, %75, %38, %88
  %157 = icmp eq i8 %5, 0
  %158 = load ptr, ptr %2, align 8, !tbaa !55
  %159 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef %158, i8 noundef zeroext 3, ptr noundef null) #14
  %160 = icmp eq ptr %159, null
  br i1 %157, label %161, label %189

161:                                              ; preds = %156
  br i1 %160, label %273, label %162

162:                                              ; preds = %161
  %163 = sext i32 %11 to i64
  br label %164

164:                                              ; preds = %162, %185
  %165 = phi ptr [ %159, %162 ], [ %186, %185 ]
  %166 = phi i32 [ 0, %162 ], [ %187, %185 ]
  %167 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %165) #14
  %168 = icmp eq ptr %167, null
  br i1 %168, label %185, label %169

169:                                              ; preds = %164
  %170 = zext i32 %166 to i64
  %171 = getelementptr inbounds i8, ptr %33, i64 %170
  br label %172

172:                                              ; preds = %169, %172
  %173 = phi ptr [ %167, %169 ], [ %183, %172 ]
  %174 = load ptr, ptr %173, align 8, !tbaa !70
  %175 = getelementptr inbounds i8, ptr %174, i64 %163
  %176 = load i8, ptr %171, align 1, !tbaa !137
  %177 = icmp eq i8 %176, 0
  %178 = getelementptr inbounds %struct.MLoopUV, ptr %175, i64 0, i32 1
  %179 = load i32, ptr %178, align 4, !tbaa !72
  %180 = and i32 %179, -3
  %181 = select i1 %177, i32 0, i32 2
  %182 = or disjoint i32 %180, %181
  store i32 %182, ptr %178, align 4, !tbaa !72
  %183 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #14
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %172, !llvm.loop !174

185:                                              ; preds = %172, %164
  %186 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %187 = add i32 %166, 1
  %188 = icmp eq ptr %186, null
  br i1 %188, label %273, label %164, !llvm.loop !175

189:                                              ; preds = %156
  br i1 %160, label %244, label %190

190:                                              ; preds = %189
  %191 = sext i32 %11 to i64
  br label %192

192:                                              ; preds = %190, %213
  %193 = phi ptr [ %159, %190 ], [ %214, %213 ]
  %194 = phi i32 [ 0, %190 ], [ %215, %213 ]
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i8, ptr %33, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !137
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %213, label %199

199:                                              ; preds = %192
  %200 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %193) #14
  %201 = icmp eq ptr %200, null
  br i1 %201, label %213, label %202

202:                                              ; preds = %199, %210
  %203 = phi ptr [ %211, %210 ], [ %200, %199 ]
  %204 = load ptr, ptr %203, align 8, !tbaa !70
  %205 = getelementptr inbounds i8, ptr %204, i64 %191
  %206 = getelementptr inbounds %struct.MLoopUV, ptr %205, i64 0, i32 1
  %207 = load i32, ptr %206, align 4, !tbaa !72
  %208 = and i32 %207, 2
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %202
  %211 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #14
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %202, !llvm.loop !176

213:                                              ; preds = %210, %199, %192
  %214 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %215 = add i32 %194, 1
  %216 = icmp eq ptr %214, null
  br i1 %216, label %244, label %192, !llvm.loop !177

217:                                              ; preds = %202
  %218 = load ptr, ptr %2, align 8, !tbaa !55
  %219 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef %218, i8 noundef zeroext 3, ptr noundef null) #14
  %220 = icmp eq ptr %219, null
  br i1 %220, label %273, label %221

221:                                              ; preds = %217, %240
  %222 = phi ptr [ %241, %240 ], [ %219, %217 ]
  %223 = phi i32 [ %242, %240 ], [ 0, %217 ]
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i8, ptr %33, i64 %224
  %226 = load i8, ptr %225, align 1, !tbaa !137
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %240, label %228

228:                                              ; preds = %221
  %229 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %222) #14
  %230 = icmp eq ptr %229, null
  br i1 %230, label %240, label %231

231:                                              ; preds = %228, %231
  %232 = phi ptr [ %238, %231 ], [ %229, %228 ]
  %233 = load ptr, ptr %232, align 8, !tbaa !70
  %234 = getelementptr inbounds i8, ptr %233, i64 %191
  %235 = getelementptr inbounds %struct.MLoopUV, ptr %234, i64 0, i32 1
  %236 = load i32, ptr %235, align 4, !tbaa !72
  %237 = and i32 %236, -3
  store i32 %237, ptr %235, align 4, !tbaa !72
  %238 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #14
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %231, !llvm.loop !178

240:                                              ; preds = %231, %228, %221
  %241 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %242 = add i32 %223, 1
  %243 = icmp eq ptr %241, null
  br i1 %243, label %273, label %221, !llvm.loop !179

244:                                              ; preds = %213, %189
  %245 = load ptr, ptr %2, align 8, !tbaa !55
  %246 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef %245, i8 noundef zeroext 3, ptr noundef null) #14
  %247 = icmp eq ptr %246, null
  br i1 %247, label %273, label %248

248:                                              ; preds = %244
  %249 = sext i32 %11 to i64
  br label %250

250:                                              ; preds = %248, %269
  %251 = phi ptr [ %246, %248 ], [ %270, %269 ]
  %252 = phi i32 [ 0, %248 ], [ %271, %269 ]
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds i8, ptr %33, i64 %253
  %255 = load i8, ptr %254, align 1, !tbaa !137
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %269, label %257

257:                                              ; preds = %250
  %258 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %251) #14
  %259 = icmp eq ptr %258, null
  br i1 %259, label %269, label %260

260:                                              ; preds = %257, %260
  %261 = phi ptr [ %267, %260 ], [ %258, %257 ]
  %262 = load ptr, ptr %261, align 8, !tbaa !70
  %263 = getelementptr inbounds i8, ptr %262, i64 %249
  %264 = getelementptr inbounds %struct.MLoopUV, ptr %263, i64 0, i32 1
  %265 = load i32, ptr %264, align 4, !tbaa !72
  %266 = or i32 %265, 2
  store i32 %266, ptr %264, align 4, !tbaa !72
  %267 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #14
  %268 = icmp eq ptr %267, null
  br i1 %268, label %269, label %260, !llvm.loop !180

269:                                              ; preds = %260, %257, %250
  %270 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %271 = add i32 %252, 1
  %272 = icmp eq ptr %270, null
  br i1 %272, label %273, label %250, !llvm.loop !181

273:                                              ; preds = %240, %269, %185, %217, %244, %161
  %274 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  call void %274(ptr noundef %27) #13
  %275 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  call void %275(ptr noundef %33) #13
  call void @BM_uv_vert_map_free(ptr noundef nonnull %17) #13
  br label %276

276:                                              ; preds = %6, %273
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  ret void
}

; Function Attrs: optsize
declare void @BM_select_history_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @uv_sticky_select(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) unnamed_addr #10 {
  %8 = icmp ne i32 %5, 1
  %9 = icmp sgt i32 %6, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %7
  %12 = getelementptr inbounds float, ptr %4, i64 1
  %13 = getelementptr inbounds float, ptr %0, i64 1
  %14 = zext nneg i32 %6 to i64
  br label %15

15:                                               ; preds = %11, %38
  %16 = phi i64 [ 0, %11 ], [ %39, %38 ]
  %17 = getelementptr inbounds i32, ptr %1, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !145
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  switch i32 %5, label %38 [
    i32 0, label %21
    i32 2, label %41
  ]

21:                                               ; preds = %20
  %22 = getelementptr inbounds ptr, ptr %3, i64 %16
  %23 = load ptr, ptr %22, align 8, !tbaa !26
  %24 = load float, ptr %23, align 4, !tbaa !97
  %25 = load float, ptr %4, align 4, !tbaa !97
  %26 = fsub float %24, %25
  %27 = tail call float @llvm.fabs.f32(float %26)
  %28 = load float, ptr %0, align 4, !tbaa !97
  %29 = fcmp olt float %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = getelementptr inbounds float, ptr %23, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !97
  %33 = load float, ptr %12, align 4, !tbaa !97
  %34 = fsub float %32, %33
  %35 = tail call float @llvm.fabs.f32(float %34)
  %36 = load float, ptr %13, align 4, !tbaa !97
  %37 = fcmp olt float %35, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %20, %15, %21, %30
  %39 = add nuw nsw i64 %16, 1
  %40 = icmp eq i64 %39, %14
  br i1 %40, label %41, label %15, !llvm.loop !182

41:                                               ; preds = %30, %20, %38, %7
  %42 = phi i8 [ 0, %7 ], [ 1, %30 ], [ 1, %20 ], [ 0, %38 ]
  ret i8 %42
}

; Function Attrs: optsize
declare void @EDBM_select_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_deselect_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_image_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_uv_vert_map_create(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @uv_select_edgeloop_vertex_map_get(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMLoop, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  %6 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %5) #14
  %7 = tail call ptr @BM_uv_vert_map_at_index(ptr noundef %0, i32 noundef %6) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %3
  %10 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %1) #14
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi ptr [ %7, %9 ], [ %17, %21 ]
  %13 = phi ptr [ %7, %9 ], [ %22, %21 ]
  %14 = getelementptr inbounds %struct.UvMapVert, ptr %13, i64 0, i32 3
  %15 = load i8, ptr %14, align 1, !tbaa !168
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, ptr %12, ptr %13
  %18 = getelementptr inbounds %struct.UvMapVert, ptr %13, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !169
  %20 = icmp eq i32 %19, %10
  br i1 %20, label %24, label %21

21:                                               ; preds = %11
  %22 = load ptr, ptr %13, align 8, !tbaa !170
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %11, !llvm.loop !183

24:                                               ; preds = %11, %21, %3
  %25 = phi ptr [ null, %3 ], [ null, %21 ], [ %17, %11 ]
  ret ptr %25
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @uv_select_edgeloop_vertex_loop_flag(ptr noundef %0) unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1, %11
  %4 = phi i32 [ %12, %11 ], [ 0, %1 ]
  %5 = phi ptr [ %13, %11 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.UvMapVert, ptr %5, i64 0, i32 3
  %7 = load i8, ptr %6, align 1, !tbaa !168
  %8 = icmp eq i8 %7, 0
  %9 = icmp eq ptr %5, %0
  %10 = or i1 %9, %8
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = add nuw nsw i32 %4, 1
  %13 = load ptr, ptr %5, align 8, !tbaa !170
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %3, !llvm.loop !184

15:                                               ; preds = %11, %3
  %16 = phi i32 [ %12, %11 ], [ %4, %3 ]
  %17 = icmp ult i32 %16, 5
  br i1 %17, label %18, label %20

18:                                               ; preds = %1, %15
  %19 = getelementptr inbounds %struct.UvMapVert, ptr %0, i64 0, i32 4
  store i8 1, ptr %19, align 2, !tbaa !157
  br label %20

20:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @uv_select_edgeloop_edge_tag_faces(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %4
  %7 = icmp eq ptr %2, null
  br label %8

8:                                                ; preds = %6, %41
  %9 = phi i32 [ 0, %6 ], [ %42, %41 ]
  %10 = phi ptr [ %1, %6 ], [ %43, %41 ]
  %11 = getelementptr inbounds %struct.UvMapVert, ptr %10, i64 0, i32 3
  %12 = load i8, ptr %11, align 1, !tbaa !168
  %13 = icmp eq i8 %12, 0
  %14 = icmp eq ptr %10, %1
  %15 = or i1 %14, %13
  br i1 %15, label %16, label %45

16:                                               ; preds = %8
  br i1 %7, label %41, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.UvMapVert, ptr %10, i64 0, i32 1
  br label %19

19:                                               ; preds = %17, %38
  %20 = phi ptr [ %2, %17 ], [ %39, %38 ]
  %21 = getelementptr inbounds %struct.UvMapVert, ptr %20, i64 0, i32 3
  %22 = load i8, ptr %21, align 1, !tbaa !168
  %23 = icmp eq i8 %22, 0
  %24 = icmp eq ptr %20, %2
  %25 = or i1 %24, %23
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load i32, ptr %18, align 8, !tbaa !169
  %28 = getelementptr inbounds %struct.UvMapVert, ptr %20, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !169
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load ptr, ptr %0, align 8, !tbaa !55
  %33 = tail call ptr @BM_face_at_index(ptr noundef %32, i32 noundef %27) #13
  %34 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %33, i8 noundef zeroext 16) #14, !range !64
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %88

36:                                               ; preds = %31
  %37 = add nsw i32 %9, 1
  br label %41

38:                                               ; preds = %26
  %39 = load ptr, ptr %20, align 8, !tbaa !170
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %19, !llvm.loop !185

41:                                               ; preds = %38, %19, %16, %36
  %42 = phi i32 [ %37, %36 ], [ %9, %16 ], [ %9, %19 ], [ %9, %38 ]
  %43 = load ptr, ptr %10, align 8, !tbaa !170
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %8, !llvm.loop !186

45:                                               ; preds = %41, %8, %4
  %46 = phi i32 [ 0, %4 ], [ %9, %8 ], [ %42, %41 ]
  %47 = load i32, ptr %3, align 4, !tbaa !145
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 %46, ptr %3, align 4, !tbaa !145
  br i1 %5, label %88, label %55

50:                                               ; preds = %45
  %51 = icmp ne i32 %46, %47
  %52 = or i1 %51, %5
  %53 = xor i1 %51, true
  %54 = zext i1 %53 to i8
  br i1 %52, label %88, label %55

55:                                               ; preds = %50, %49
  %56 = icmp eq ptr %2, null
  br label %57

57:                                               ; preds = %55, %85
  %58 = phi ptr [ %1, %55 ], [ %86, %85 ]
  %59 = getelementptr inbounds %struct.UvMapVert, ptr %58, i64 0, i32 3
  %60 = load i8, ptr %59, align 1, !tbaa !168
  %61 = icmp eq i8 %60, 0
  %62 = icmp eq ptr %58, %1
  %63 = or i1 %62, %61
  br i1 %63, label %64, label %88

64:                                               ; preds = %57
  br i1 %56, label %85, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.UvMapVert, ptr %58, i64 0, i32 1
  br label %67

67:                                               ; preds = %65, %82
  %68 = phi ptr [ %2, %65 ], [ %83, %82 ]
  %69 = getelementptr inbounds %struct.UvMapVert, ptr %68, i64 0, i32 3
  %70 = load i8, ptr %69, align 1, !tbaa !168
  %71 = icmp eq i8 %70, 0
  %72 = icmp eq ptr %68, %2
  %73 = or i1 %72, %71
  br i1 %73, label %74, label %85

74:                                               ; preds = %67
  %75 = load i32, ptr %66, align 8, !tbaa !169
  %76 = getelementptr inbounds %struct.UvMapVert, ptr %68, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !169
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load ptr, ptr %0, align 8, !tbaa !55
  %81 = tail call ptr @BM_face_at_index(ptr noundef %80, i32 noundef %75) #13
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %81, i8 noundef zeroext 16) #14
  br label %85

82:                                               ; preds = %74
  %83 = load ptr, ptr %68, align 8, !tbaa !170
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %67, !llvm.loop !187

85:                                               ; preds = %82, %67, %64, %79
  %86 = load ptr, ptr %58, align 8, !tbaa !170
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %57, !llvm.loop !188

88:                                               ; preds = %31, %57, %85, %50, %49
  %89 = phi i8 [ %54, %50 ], [ 1, %49 ], [ 1, %85 ], [ 1, %57 ], [ 0, %31 ]
  ret i8 %89
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !77
  %5 = or i8 %4, %1
  store i8 %5, ptr %3, align 1, !tbaa !77
  ret void
}

; Function Attrs: optsize
declare void @BM_uv_vert_map_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_uv_vert_map_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_select_loop_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !138
  call void @RNA_float_get_array(ptr noundef %5, ptr noundef nonnull @.str.42, ptr noundef nonnull %3) #13
  %6 = load ptr, ptr %4, align 8, !tbaa !138
  %7 = call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.6) #13
  %8 = trunc i32 %7 to i8
  %9 = call fastcc i32 @uv_mouse_select(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %8, i8 noundef zeroext 1) #14, !range !144
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_select_loop_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !145
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !145
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %6, float noundef %9, float noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %13) #13
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !138
  call void @RNA_float_set_array(ptr noundef %15, ptr noundef nonnull @.str.42, ptr noundef nonnull %4) #13
  %16 = call i32 @uv_select_loop_exec(ptr noundef %0, ptr noundef %1) #14, !range !144
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_select_linked_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc i32 @uv_select_linked_internal(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 0) #14, !range !189
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @uv_select_linked_internal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca %struct.NearestHit, align 8
  %7 = alloca [2 x float], align 4
  %8 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  %12 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %13 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #13
  %14 = tail call ptr @BKE_editmesh_from_object(ptr noundef %12) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #15
  %15 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 11
  %16 = load i8, ptr %15, align 2, !tbaa !46
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !190
  tail call void @BKE_report(ptr noundef %21, i32 noundef 32, ptr noundef nonnull @.str.51) #13
  br label %49

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !138
  %25 = tail call i32 @RNA_boolean_get(ptr noundef %24, ptr noundef nonnull @.str.6) #13
  call fastcc void @uvedit_pixel_to_float(ptr noundef %8, ptr noundef nonnull %5, float noundef 0x3FA99999A0000000) #14
  %26 = icmp eq i32 %3, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  %28 = icmp eq ptr %2, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %27
  %30 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %31 = getelementptr inbounds %struct.ARegion, ptr %30, i64 0, i32 2
  %32 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %33 = load i32, ptr %32, align 4, !tbaa !145
  %34 = sitofp i32 %33 to float
  %35 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %36 = load i32, ptr %35, align 4, !tbaa !145
  %37 = sitofp i32 %36 to float
  %38 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %31, float noundef %34, float noundef %37, ptr noundef nonnull %7, ptr noundef nonnull %38) #13
  %39 = load ptr, ptr %23, align 8, !tbaa !138
  call void @RNA_float_set_array(ptr noundef %39, ptr noundef nonnull @.str.42, ptr noundef nonnull %7) #13
  br label %42

40:                                               ; preds = %27
  %41 = load ptr, ptr %23, align 8, !tbaa !138
  call void @RNA_float_get_array(ptr noundef %41, ptr noundef nonnull @.str.42, ptr noundef nonnull %7) #13
  br label %42

42:                                               ; preds = %40, %29
  call void @uv_find_nearest_edge(ptr noundef nonnull %9, ptr noundef %13, ptr noundef %14, ptr noundef nonnull %7, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %43

43:                                               ; preds = %42, %22
  %44 = phi ptr [ %6, %42 ], [ null, %22 ]
  %45 = trunc i32 %25 to i8
  call fastcc void @uv_select_linked(ptr noundef nonnull %9, ptr noundef %13, ptr noundef %14, ptr noundef nonnull %5, ptr noundef %44, i8 noundef zeroext %45) #14
  %46 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %47 = load ptr, ptr %46, align 8, !tbaa !60
  call void @DAG_id_tag_update(ptr noundef %47, i16 noundef signext 0) #13
  %48 = load ptr, ptr %46, align 8, !tbaa !60
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %48) #13
  br label %49

49:                                               ; preds = %43, %19
  %50 = phi i32 [ 2, %19 ], [ 4, %43 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret i32 %50
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_select_linked_pick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @uv_select_linked_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1) #14, !range !189
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_select_linked_pick_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc i32 @uv_select_linked_internal(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 1) #14, !range !189
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_select_split_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !28
  %8 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #13
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %10 = tail call ptr @BKE_editmesh_from_object(ptr noundef %9) #13
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %12 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 26
  %13 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %12, i32 noundef 16) #13
  %14 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 27
  %15 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %14, i32 noundef 15) #13
  %16 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 11
  %17 = load i8, ptr %16, align 2, !tbaa !46
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !190
  tail call void @BKE_report(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.56) #13
  br label %80

23:                                               ; preds = %2
  %24 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %11, i8 noundef zeroext 3, ptr noundef null) #14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %80, label %26

26:                                               ; preds = %23
  %27 = sext i32 %15 to i64
  %28 = sext i32 %13 to i64
  br label %29

29:                                               ; preds = %26, %73
  %30 = phi ptr [ %24, %26 ], [ %75, %73 ]
  %31 = phi i8 [ 0, %26 ], [ %74, %73 ]
  %32 = load ptr, ptr %30, align 8, !tbaa !61
  %33 = getelementptr inbounds i8, ptr %32, i64 %27
  %34 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %5, ptr noundef %8, ptr noundef nonnull %30, ptr noundef %33) #14, !range !22
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %73, label %36

36:                                               ; preds = %29
  %37 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %30) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %73, label %39

39:                                               ; preds = %36, %54
  %40 = phi i8 [ %50, %54 ], [ 0, %36 ]
  %41 = phi i8 [ %49, %54 ], [ 0, %36 ]
  %42 = phi ptr [ %55, %54 ], [ %37, %36 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !70
  %44 = getelementptr inbounds i8, ptr %43, i64 %28
  %45 = getelementptr inbounds %struct.MLoopUV, ptr %44, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !72
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i8 %41, i8 1
  %50 = select i1 %48, i8 1, i8 %40
  %51 = icmp ne i8 %49, 0
  %52 = icmp ne i8 %50, 0
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %57, label %54

54:                                               ; preds = %39
  %55 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %39, !llvm.loop !191

57:                                               ; preds = %54, %39
  %58 = icmp ne i8 %49, 0
  %59 = icmp ne i8 %50, 0
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %30) #14
  %63 = icmp eq ptr %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %61, %64
  %65 = phi ptr [ %71, %64 ], [ %62, %61 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !70
  %67 = getelementptr inbounds i8, ptr %66, i64 %28
  %68 = getelementptr inbounds %struct.MLoopUV, ptr %67, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !72
  %70 = and i32 %69, -3
  store i32 %70, ptr %68, align 4, !tbaa !72
  %71 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %64, !llvm.loop !192

73:                                               ; preds = %64, %36, %61, %57, %29
  %74 = phi i8 [ %31, %29 ], [ %31, %57 ], [ 1, %61 ], [ %31, %36 ], [ 1, %64 ]
  %75 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %29, !llvm.loop !193

77:                                               ; preds = %73
  %78 = icmp eq i8 %74, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %77
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 251920384, ptr noundef null) #13
  br label %80

80:                                               ; preds = %23, %77, %79, %20
  %81 = phi i32 [ 2, %20 ], [ 4, %79 ], [ 2, %77 ], [ 2, %23 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret i32 %81
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_select_pinned_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %7 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #13
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 26
  %11 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %10, i32 noundef 16) #13
  %12 = load ptr, ptr %8, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 27
  %14 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %13, i32 noundef 15) #13
  %15 = load ptr, ptr %8, align 8, !tbaa !55
  %16 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %15, i8 noundef zeroext 3, ptr noundef null) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %45, label %18

18:                                               ; preds = %2
  %19 = sext i32 %14 to i64
  %20 = sext i32 %11 to i64
  br label %21

21:                                               ; preds = %18, %42
  %22 = phi ptr [ %16, %18 ], [ %43, %42 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  %24 = getelementptr inbounds i8, ptr %23, i64 %19
  %25 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %5, ptr noundef %7, ptr noundef nonnull %22, ptr noundef %24) #14, !range !22
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %21
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %22) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %27, %39
  %31 = phi ptr [ %40, %39 ], [ %28, %27 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !70
  %33 = getelementptr inbounds i8, ptr %32, i64 %20
  %34 = getelementptr inbounds %struct.MLoopUV, ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !72
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  call void @uvedit_uv_select_enable(ptr noundef nonnull %8, ptr noundef %5, ptr noundef nonnull %31, i8 noundef zeroext 0, i32 noundef %11) #14
  br label %39

39:                                               ; preds = %30, %38
  %40 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %30, !llvm.loop !194

42:                                               ; preds = %39, %27, %21
  %43 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %21, !llvm.loop !195

45:                                               ; preds = %42, %2
  %46 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %47 = load ptr, ptr %46, align 8, !tbaa !60
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %47) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret i32 4
}

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_border_select_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.rctf, align 4
  %6 = alloca [2 x float], align 4
  %7 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !28
  %11 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %12 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #13
  %13 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %14 = tail call ptr @BKE_editmesh_from_object(ptr noundef %11) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %15 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 11
  %16 = load i8, ptr %15, align 2, !tbaa !46
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 8
  %21 = load i16, ptr %20, align 2, !tbaa !80
  %22 = icmp eq i16 %21, 4
  br label %27

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 12
  %25 = load i8, ptr %24, align 1, !tbaa !147
  %26 = icmp eq i8 %25, 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ %22, %19 ], [ %26, %23 ]
  %29 = load ptr, ptr %14, align 8, !tbaa !55
  %30 = getelementptr inbounds %struct.BMesh, ptr %29, i64 0, i32 26
  %31 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %30, i32 noundef 16) #13
  %32 = load ptr, ptr %14, align 8, !tbaa !55
  %33 = getelementptr inbounds %struct.BMesh, ptr %32, i64 0, i32 27
  %34 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %33, i32 noundef 15) #13
  call void @WM_operator_properties_border_to_rctf(ptr noundef %1, ptr noundef nonnull %5) #13
  %35 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2
  call void @UI_view2d_region_to_view_rctf(ptr noundef nonnull %35, ptr noundef nonnull %5, ptr noundef nonnull %5) #13
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !138
  %38 = call i32 @RNA_int_get(ptr noundef %37, ptr noundef nonnull @.str.63) #13
  %39 = icmp eq i32 %38, 3
  %40 = zext i1 %39 to i8
  %41 = load ptr, ptr %36, align 8, !tbaa !138
  %42 = call i32 @RNA_boolean_get(ptr noundef %41, ptr noundef nonnull @.str.10) #13
  %43 = load ptr, ptr %36, align 8, !tbaa !138
  %44 = call i32 @RNA_boolean_get(ptr noundef %43, ptr noundef nonnull @.str.6) #13
  %45 = and i32 %44, 255
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  call fastcc void @uv_select_all_perform(ptr noundef nonnull %8, ptr noundef %12, ptr noundef nonnull %14, i32 noundef 2) #14
  br label %48

48:                                               ; preds = %47, %27
  %49 = and i32 %42, 255
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %28, i1 %50, i1 false
  br i1 %51, label %52, label %79

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %53 = load ptr, ptr %14, align 8, !tbaa !55
  %54 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %53, i8 noundef zeroext 3, ptr noundef null) #14
  %55 = icmp eq ptr %54, null
  br i1 %55, label %77, label %56

56:                                               ; preds = %52
  %57 = sext i32 %34 to i64
  br label %58

58:                                               ; preds = %73, %56
  %59 = phi ptr [ %74, %73 ], [ %54, %56 ]
  %60 = phi i1 [ false, %73 ], [ true, %56 ]
  br label %61

61:                                               ; preds = %58, %70
  %62 = phi ptr [ %71, %70 ], [ %59, %58 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %62, i8 noundef zeroext 16) #14
  %63 = load ptr, ptr %62, align 8, !tbaa !61
  %64 = getelementptr inbounds i8, ptr %63, i64 %57
  %65 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %8, ptr noundef %12, ptr noundef nonnull %62, ptr noundef %64) #14, !range !22
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  call void @uv_poly_center(ptr noundef nonnull %62, ptr noundef nonnull %6, i32 noundef %31) #14
  %68 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61, %67
  %71 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %61, !llvm.loop !196

73:                                               ; preds = %67
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %62, i8 noundef zeroext 16) #14
  %74 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %58, !llvm.loop !196

76:                                               ; preds = %70
  br i1 %60, label %77, label %78

77:                                               ; preds = %52, %76
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  br label %129

78:                                               ; preds = %73, %76
  call fastcc void @uv_select_flush_from_tag_face(ptr noundef %7, ptr noundef %8, ptr noundef %11, i8 noundef zeroext %40) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  br label %121

79:                                               ; preds = %48
  %80 = load ptr, ptr %14, align 8, !tbaa !55
  %81 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %80, i8 noundef zeroext 3, ptr noundef null) #14
  %82 = icmp eq ptr %81, null
  br i1 %82, label %121, label %83

83:                                               ; preds = %79
  %84 = sext i32 %34 to i64
  %85 = sext i32 %31 to i64
  br label %86

86:                                               ; preds = %83, %118
  %87 = phi ptr [ %81, %83 ], [ %119, %118 ]
  %88 = load ptr, ptr %87, align 8, !tbaa !61
  %89 = getelementptr inbounds i8, ptr %88, i64 %84
  %90 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %8, ptr noundef %12, ptr noundef nonnull %87, ptr noundef %89) #14, !range !22
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %118, label %92

92:                                               ; preds = %86
  %93 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %87) #14
  %94 = icmp eq ptr %93, null
  br i1 %94, label %118, label %95

95:                                               ; preds = %92, %115
  %96 = phi ptr [ %116, %115 ], [ %93, %92 ]
  %97 = load ptr, ptr %96, align 8, !tbaa !70
  %98 = getelementptr inbounds i8, ptr %97, i64 %85
  br i1 %50, label %103, label %99

99:                                               ; preds = %95
  %100 = load i8, ptr %15, align 2, !tbaa !46
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99, %95
  %104 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %5, ptr noundef %98) #13
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %115, label %114

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.MLoopUV, ptr %98, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !72
  %109 = and i32 %108, 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %5, ptr noundef nonnull %98) #13
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111, %103
  call void @uvedit_uv_select_set(ptr noundef nonnull %14, ptr noundef %8, ptr noundef nonnull %96, i8 noundef zeroext %40, i8 noundef zeroext 0, i32 noundef %31) #14
  br label %115

115:                                              ; preds = %114, %103, %106, %111
  %116 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %95, !llvm.loop !197

118:                                              ; preds = %115, %92, %86
  %119 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %86, !llvm.loop !198

121:                                              ; preds = %118, %79, %78
  %122 = zext i1 %39 to i16
  call fastcc void @uv_select_sync_flush(ptr noundef %10, ptr noundef nonnull %14, i16 noundef signext %122) #14
  %123 = load i8, ptr %15, align 2, !tbaa !46
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %128 = load ptr, ptr %127, align 8, !tbaa !60
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %128) #13
  br label %129

129:                                              ; preds = %77, %121, %126
  %130 = phi i32 [ 4, %126 ], [ 4, %121 ], [ 2, %77 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret i32 %130
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @ED_operator_uvedit_space_image(ptr noundef) #2

; Function Attrs: optsize
declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rctf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_to_view_rctf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #6 {
  %3 = xor i8 %1, -1
  %4 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !77
  %6 = and i8 %5, %3
  store i8 %6, ptr %4, align 1, !tbaa !77
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_select_flush_from_tag_face(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca [2 x float], align 4
  %8 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  %10 = tail call ptr @BKE_editmesh_from_object(ptr noundef %2) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 26
  %13 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %12, i32 noundef 16) #13
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 11
  %15 = load i8, ptr %14, align 2, !tbaa !46
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %96

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 23
  %20 = load i8, ptr %19, align 1, !tbaa !148
  switch i8 %20, label %96 [
    i8 2, label %21
    i8 0, label %70
  ]

21:                                               ; preds = %18
  %22 = load ptr, ptr %10, align 8, !tbaa !55
  %23 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %22, i8 noundef zeroext 1, ptr noundef null) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21, %25
  %26 = phi ptr [ %27, %25 ], [ %23, %21 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %26, i8 noundef zeroext 16) #14
  %27 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %25, !llvm.loop !199

29:                                               ; preds = %25, %21
  %30 = load ptr, ptr %10, align 8, !tbaa !55
  %31 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %30, i8 noundef zeroext 3, ptr noundef null) #14
  %32 = icmp eq ptr %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %29, %46
  %34 = phi ptr [ %47, %46 ], [ %31, %29 ]
  %35 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %34, i8 noundef zeroext 16) #14, !range !64
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %34) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %37, %40
  %41 = phi ptr [ %44, %40 ], [ %38, %37 ]
  %42 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !83
  call fastcc void @_bm_elem_flag_enable(ptr noundef %43, i8 noundef zeroext 16) #14
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %40, !llvm.loop !200

46:                                               ; preds = %40, %37, %33
  %47 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %33, !llvm.loop !201

49:                                               ; preds = %46, %29
  %50 = load ptr, ptr %10, align 8, !tbaa !55
  %51 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %50, i8 noundef zeroext 3, ptr noundef null) #14
  %52 = icmp eq ptr %51, null
  br i1 %52, label %110, label %53

53:                                               ; preds = %49, %67
  %54 = phi ptr [ %68, %67 ], [ %51, %49 ]
  %55 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %54) #14
  %56 = icmp eq ptr %55, null
  br i1 %56, label %67, label %57

57:                                               ; preds = %53, %64
  %58 = phi ptr [ %65, %64 ], [ %55, %53 ]
  %59 = getelementptr inbounds %struct.BMLoop, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !83
  %61 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %60, i8 noundef zeroext 16) #14, !range !64
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  call void @uvedit_uv_select_set(ptr noundef nonnull %10, ptr noundef %1, ptr noundef nonnull %58, i8 noundef zeroext %3, i8 noundef zeroext 0, i32 noundef %13) #14
  br label %64

64:                                               ; preds = %57, %63
  %65 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %57, !llvm.loop !202

67:                                               ; preds = %64, %53
  %68 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %69 = icmp eq ptr %68, null
  br i1 %69, label %110, label %53, !llvm.loop !203

70:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call fastcc void @uvedit_pixel_to_float(ptr noundef nonnull %0, ptr noundef nonnull %7, float noundef 0x3FA99999A0000000) #14
  %71 = load ptr, ptr %10, align 8, !tbaa !55
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %71, i8 noundef zeroext 8) #13
  %72 = load ptr, ptr %10, align 8, !tbaa !55
  %73 = call ptr @BM_uv_vert_map_create(ptr noundef %72, i8 noundef zeroext 0, ptr noundef nonnull %7) #13
  %74 = icmp eq ptr %73, null
  br i1 %74, label %109, label %75

75:                                               ; preds = %70
  %76 = load ptr, ptr %10, align 8, !tbaa !55
  %77 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %76, i8 noundef zeroext 3, ptr noundef null) #14
  %78 = icmp eq ptr %77, null
  br i1 %78, label %95, label %79

79:                                               ; preds = %75, %91
  %80 = phi i32 [ %93, %91 ], [ 0, %75 ]
  %81 = phi ptr [ %92, %91 ], [ %77, %75 ]
  %82 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %81, i8 noundef zeroext 16) #14, !range !64
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %81) #14
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %84, %87
  %88 = phi ptr [ %89, %87 ], [ %85, %84 ]
  call fastcc void @uv_select_flush_from_tag_sticky_loc_internal(ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %73, i32 noundef %80, ptr noundef nonnull %88, i8 noundef zeroext %3, i32 noundef %13) #14
  %89 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %87, !llvm.loop !204

91:                                               ; preds = %87, %84, %79
  %92 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %93 = add i32 %80, 1
  %94 = icmp eq ptr %92, null
  br i1 %94, label %95, label %79, !llvm.loop !205

95:                                               ; preds = %91, %75
  call void @BM_uv_vert_map_free(ptr noundef nonnull %73) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %110

96:                                               ; preds = %18, %4
  %97 = load ptr, ptr %10, align 8, !tbaa !55
  %98 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %97, i8 noundef zeroext 3, ptr noundef null) #14
  %99 = icmp eq ptr %98, null
  br i1 %99, label %110, label %100

100:                                              ; preds = %96, %106
  %101 = phi ptr [ %107, %106 ], [ %98, %96 ]
  %102 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %101, i8 noundef zeroext 16) #14, !range !64
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = call zeroext i8 @uvedit_face_select_set(ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %101, i8 noundef zeroext %3, i8 noundef zeroext 0, i32 noundef %13) #14, !range !22
  br label %106

106:                                              ; preds = %100, %104
  %107 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %100, !llvm.loop !206

109:                                              ; preds = %70
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %110

110:                                              ; preds = %67, %106, %96, %49, %95, %109
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_select_sync_flush(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ToolSettings, ptr %0, i64 0, i32 11
  %5 = load i8, ptr %4, align 2, !tbaa !46
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %0, i64 0, i32 8
  %10 = load i16, ptr %9, align 2, !tbaa !80
  %11 = icmp eq i16 %10, 4
  %12 = icmp eq i16 %2, 0
  br i1 %11, label %16, label %13

13:                                               ; preds = %8
  br i1 %12, label %14, label %15

14:                                               ; preds = %13
  tail call void @EDBM_deselect_flush(ptr noundef %1) #13
  br label %17

15:                                               ; preds = %13
  tail call void @EDBM_select_flush(ptr noundef %1) #13
  br label %19

16:                                               ; preds = %8
  br i1 %12, label %17, label %19

17:                                               ; preds = %14, %16
  %18 = load ptr, ptr %1, align 8, !tbaa !55
  tail call void @BM_select_history_validate(ptr noundef %18) #13
  br label %19

19:                                               ; preds = %15, %16, %17, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_select_flush_from_tag_sticky_loc_internal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i8 noundef zeroext %5, i32 noundef %6) unnamed_addr #0 {
  tail call void @uvedit_uv_select_set(ptr noundef %1, ptr noundef %0, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext 0, i32 noundef %6) #14
  %8 = getelementptr inbounds %struct.BMLoop, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %9) #14
  %11 = tail call ptr @BM_uv_vert_map_at_index(ptr noundef %2, i32 noundef %10) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %50, label %13

13:                                               ; preds = %7, %23
  %14 = phi ptr [ %19, %23 ], [ null, %7 ]
  %15 = phi ptr [ %24, %23 ], [ %11, %7 ]
  %16 = getelementptr inbounds %struct.UvMapVert, ptr %15, i64 0, i32 3
  %17 = load i8, ptr %16, align 1, !tbaa !168
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, ptr %14, ptr %15
  %20 = getelementptr inbounds %struct.UvMapVert, ptr %15, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !169
  %22 = icmp eq i32 %21, %3
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = load ptr, ptr %15, align 8, !tbaa !170
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %13, !llvm.loop !207

26:                                               ; preds = %23, %13
  %27 = icmp eq ptr %19, null
  br i1 %27, label %50, label %28

28:                                               ; preds = %26, %47
  %29 = phi ptr [ %48, %47 ], [ %19, %26 ]
  %30 = icmp eq ptr %29, %19
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.UvMapVert, ptr %29, i64 0, i32 3
  %33 = load i8, ptr %32, align 1, !tbaa !168
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %31, %28
  %36 = getelementptr inbounds %struct.UvMapVert, ptr %29, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !169
  %38 = icmp eq i32 %37, %3
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %1, align 8, !tbaa !55
  %41 = tail call ptr @BM_face_at_index(ptr noundef %40, i32 noundef %37) #13
  %42 = load ptr, ptr %1, align 8, !tbaa !55
  %43 = getelementptr inbounds %struct.UvMapVert, ptr %29, i64 0, i32 2
  %44 = load i8, ptr %43, align 4, !tbaa !208
  %45 = zext i8 %44 to i32
  %46 = tail call ptr @BM_iter_at_index(ptr noundef %42, i8 noundef zeroext 11, ptr noundef %41, i32 noundef %45) #13
  tail call void @uvedit_uv_select_set(ptr noundef nonnull %1, ptr noundef %0, ptr noundef %46, i8 noundef zeroext %5, i8 noundef zeroext 0, i32 noundef %6) #14
  br label %47

47:                                               ; preds = %39, %35
  %48 = load ptr, ptr %29, align 8, !tbaa !170
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %28, !llvm.loop !209

50:                                               ; preds = %47, %31, %7, %26
  ret void
}

; Function Attrs: optsize
declare ptr @BM_iter_at_index(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_gesture_lasso_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @WM_gesture_lasso_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @uv_lasso_select_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = call ptr @WM_gesture_lasso_path_to_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !138
  %9 = call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.13) #13
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i8
  %12 = load ptr, ptr %7, align 8, !tbaa !138
  %13 = call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.6) #13
  %14 = trunc i32 %13 to i8
  %15 = load i32, ptr %3, align 4, !tbaa !145
  %16 = trunc i32 %15 to i16
  %17 = call fastcc zeroext i8 @do_lasso_select_mesh_uv(ptr noundef %0, ptr noundef nonnull %4, i16 noundef signext %16, i8 noundef zeroext %11, i8 noundef zeroext %14) #14, !range !22
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  call void %18(ptr noundef nonnull %4) #13
  %19 = icmp eq i8 %17, 0
  %20 = select i1 %19, i32 2, i32 4
  br label %21

21:                                               ; preds = %2, %6
  %22 = phi i32 [ %20, %6 ], [ 8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %22
}

; Function Attrs: optsize
declare void @WM_gesture_lasso_cancel(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_gesture_lasso_path_to_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @do_lasso_select_mesh_uv(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca %struct.rcti, align 4
  %10 = alloca [2 x float], align 4
  %11 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  %12 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #13
  %13 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %14 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %15 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %16 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !28
  %18 = tail call ptr @BKE_editmesh_from_object(ptr noundef %14) #13
  %19 = getelementptr inbounds %struct.ToolSettings, ptr %17, i64 0, i32 11
  %20 = load i8, ptr %19, align 2, !tbaa !46
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.ToolSettings, ptr %17, i64 0, i32 8
  %25 = load i16, ptr %24, align 2, !tbaa !80
  %26 = icmp eq i16 %25, 4
  br label %31

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.ToolSettings, ptr %17, i64 0, i32 12
  %29 = load i8, ptr %28, align 1, !tbaa !147
  %30 = icmp eq i8 %29, 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ %26, %23 ], [ %30, %27 ]
  %33 = load ptr, ptr %18, align 8, !tbaa !55
  %34 = getelementptr inbounds %struct.BMesh, ptr %33, i64 0, i32 26
  %35 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %34, i32 noundef 16) #13
  %36 = load ptr, ptr %18, align 8, !tbaa !55
  %37 = getelementptr inbounds %struct.BMesh, ptr %36, i64 0, i32 27
  %38 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %37, i32 noundef 15) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #15
  %39 = sext i16 %2 to i32
  call void @BLI_lasso_boundbox(ptr noundef nonnull %9, ptr noundef %1, i32 noundef %39) #13
  %40 = icmp eq i8 %4, 0
  %41 = icmp ne i8 %3, 0
  %42 = and i1 %41, %40
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  call fastcc void @uv_select_all_perform(ptr noundef nonnull %15, ptr noundef %12, ptr noundef nonnull %18, i32 noundef 2) #14
  br label %44

44:                                               ; preds = %43, %31
  %45 = load ptr, ptr %18, align 8, !tbaa !55
  %46 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %45, i8 noundef zeroext 3, ptr noundef null) #14
  %47 = icmp eq ptr %46, null
  br i1 %32, label %48, label %81

48:                                               ; preds = %44
  br i1 %47, label %139, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2
  %51 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %52 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  br label %53

53:                                               ; preds = %49, %74
  %54 = phi ptr [ %46, %49 ], [ %76, %74 ]
  %55 = phi i8 [ 0, %49 ], [ %75, %74 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %54, i8 noundef zeroext 16) #14
  %56 = call zeroext i8 @uvedit_face_select_test(ptr noundef %15, ptr noundef nonnull %54, i32 noundef %35) #14, !range !64
  %57 = icmp eq i8 %56, %3
  br i1 %57, label %74, label %58

58:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  call void @uv_poly_center(ptr noundef nonnull %54, ptr noundef nonnull %10, i32 noundef %35) #14
  %59 = load float, ptr %10, align 4, !tbaa !97
  %60 = load float, ptr %51, align 4, !tbaa !97
  %61 = call zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef nonnull %50, float noundef %59, float noundef %60, ptr noundef nonnull %8, ptr noundef nonnull %52) #13
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %58
  %64 = call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %9, ptr noundef nonnull %8) #13
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %8, align 4, !tbaa !145
  %68 = load i32, ptr %52, align 4, !tbaa !145
  %69 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %1, i32 noundef %39, i32 noundef %67, i32 noundef %68, i32 noundef 12000) #13
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %54, i8 noundef zeroext 16) #14
  br label %72

72:                                               ; preds = %71, %66, %63, %58
  %73 = phi i8 [ 1, %71 ], [ %55, %66 ], [ %55, %63 ], [ %55, %58 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  br label %74

74:                                               ; preds = %53, %72
  %75 = phi i8 [ %73, %72 ], [ %55, %53 ]
  %76 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %53, !llvm.loop !210

78:                                               ; preds = %74
  %79 = icmp eq i8 %75, 0
  br i1 %79, label %139, label %80

80:                                               ; preds = %78
  call fastcc void @uv_select_flush_from_tag_face(ptr noundef %11, ptr noundef %15, ptr noundef %14, i8 noundef zeroext %3) #14
  br label %129

81:                                               ; preds = %44
  br i1 %47, label %139, label %82

82:                                               ; preds = %81
  %83 = sext i32 %38 to i64
  %84 = sext i32 %35 to i64
  %85 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2
  %86 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  br label %87

87:                                               ; preds = %82, %123
  %88 = phi ptr [ %46, %82 ], [ %125, %123 ]
  %89 = phi i8 [ 0, %82 ], [ %124, %123 ]
  %90 = load ptr, ptr %88, align 8, !tbaa !61
  %91 = getelementptr inbounds i8, ptr %90, i64 %83
  %92 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %15, ptr noundef %12, ptr noundef nonnull %88, ptr noundef %91) #14, !range !22
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %123, label %94

94:                                               ; preds = %87
  %95 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %88) #14
  %96 = icmp eq ptr %95, null
  br i1 %96, label %123, label %97

97:                                               ; preds = %94, %119
  %98 = phi i8 [ %120, %119 ], [ %89, %94 ]
  %99 = phi ptr [ %121, %119 ], [ %95, %94 ]
  %100 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %15, ptr noundef nonnull %99, i32 noundef %35) #14, !range !22
  %101 = icmp eq i8 %100, %3
  br i1 %101, label %119, label %102

102:                                              ; preds = %97
  %103 = load ptr, ptr %99, align 8, !tbaa !70
  %104 = getelementptr inbounds i8, ptr %103, i64 %84
  %105 = load float, ptr %104, align 4, !tbaa !97
  %106 = getelementptr inbounds [2 x float], ptr %104, i64 0, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !97
  %108 = call zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef nonnull %85, float noundef %105, float noundef %107, ptr noundef nonnull %8, ptr noundef nonnull %86) #13
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %102
  %111 = call zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef nonnull %9, ptr noundef nonnull %8) #13
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %8, align 4, !tbaa !145
  %115 = load i32, ptr %86, align 4, !tbaa !145
  %116 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %1, i32 noundef %39, i32 noundef %114, i32 noundef %115, i32 noundef 12000) #13
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  call void @uvedit_uv_select_set(ptr noundef nonnull %18, ptr noundef %15, ptr noundef nonnull %99, i8 noundef zeroext %3, i8 noundef zeroext 0, i32 noundef %35) #14
  br label %119

119:                                              ; preds = %102, %110, %113, %118, %97
  %120 = phi i8 [ %98, %97 ], [ 1, %118 ], [ %98, %113 ], [ %98, %110 ], [ %98, %102 ]
  %121 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %97, !llvm.loop !211

123:                                              ; preds = %119, %94, %87
  %124 = phi i8 [ %89, %87 ], [ %89, %94 ], [ %120, %119 ]
  %125 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %87, !llvm.loop !212

127:                                              ; preds = %123
  %128 = icmp eq i8 %124, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %80, %127
  %130 = phi i8 [ 1, %80 ], [ %124, %127 ]
  %131 = load ptr, ptr %16, align 8, !tbaa !28
  %132 = zext nneg i8 %3 to i16
  call fastcc void @uv_select_sync_flush(ptr noundef %131, ptr noundef nonnull %18, i16 noundef signext %132) #14
  %133 = load i8, ptr %19, align 2, !tbaa !46
  %134 = and i8 %133, 1
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %138 = load ptr, ptr %137, align 8, !tbaa !60
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %138) #13
  br label %139

139:                                              ; preds = %81, %48, %78, %129, %136, %127
  %140 = phi i8 [ %130, %129 ], [ %130, %136 ], [ 0, %127 ], [ 0, %78 ], [ 0, %48 ], [ 0, %81 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  ret i8 %140
}

; Function Attrs: optsize
declare void @BLI_lasso_boundbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @UI_view2d_view_to_region_clip(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_lasso_is_point_inside(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_gesture_circle_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @WM_gesture_circle_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_circle_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 8
  %11 = alloca [2 x float], align 4
  %12 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  %13 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %14 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !28
  %16 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %17 = tail call ptr @BKE_editmesh_from_object(ptr noundef %16) #13
  %18 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !138
  %21 = tail call i32 @RNA_int_get(ptr noundef %20, ptr noundef nonnull @.str.63) #13
  %22 = icmp eq i32 %21, 3
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.ToolSettings, ptr %15, i64 0, i32 11
  %25 = load i8, ptr %24, align 2, !tbaa !46
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.ToolSettings, ptr %15, i64 0, i32 8
  %30 = load i16, ptr %29, align 2, !tbaa !80
  %31 = icmp eq i16 %30, 4
  br label %36

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.ToolSettings, ptr %15, i64 0, i32 12
  %34 = load i8, ptr %33, align 1, !tbaa !147
  %35 = icmp eq i8 %34, 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i1 [ %31, %28 ], [ %35, %32 ]
  %38 = load ptr, ptr %17, align 8, !tbaa !55
  %39 = getelementptr inbounds %struct.BMesh, ptr %38, i64 0, i32 26
  %40 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %39, i32 noundef 16) #13
  %41 = load ptr, ptr %19, align 8, !tbaa !138
  %42 = tail call i32 @RNA_int_get(ptr noundef %41, ptr noundef nonnull @.str.74) #13
  %43 = load ptr, ptr %19, align 8, !tbaa !138
  %44 = tail call i32 @RNA_int_get(ptr noundef %43, ptr noundef nonnull @.str.76) #13
  %45 = load ptr, ptr %19, align 8, !tbaa !138
  %46 = tail call i32 @RNA_int_get(ptr noundef %45, ptr noundef nonnull @.str.78) #13
  call void @ED_space_image_get_size(ptr noundef %12, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  call void @ED_space_image_get_zoom(ptr noundef %12, ptr noundef %18, ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  %47 = load i32, ptr %5, align 4, !tbaa !145
  %48 = load float, ptr %7, align 4, !tbaa !97
  %49 = sitofp i32 %46 to float
  %50 = load i32, ptr %6, align 4, !tbaa !145
  %51 = load float, ptr %8, align 4, !tbaa !97
  %52 = insertelement <2 x i32> poison, i32 %47, i64 0
  %53 = insertelement <2 x i32> %52, i32 %50, i64 1
  %54 = sitofp <2 x i32> %53 to <2 x float>
  %55 = insertelement <2 x float> poison, float %48, i64 0
  %56 = insertelement <2 x float> %55, float %51, i64 1
  %57 = fmul <2 x float> %56, %54
  %58 = insertelement <2 x float> poison, float %49, i64 0
  %59 = shufflevector <2 x float> %58, <2 x float> poison, <2 x i32> zeroinitializer
  %60 = fdiv <2 x float> %57, %59
  store <2 x float> %60, ptr %10, align 8, !tbaa !97
  %61 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 2
  %62 = sitofp i32 %42 to float
  %63 = sitofp i32 %44 to float
  %64 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %61, float noundef %62, float noundef %63, ptr noundef nonnull %9, ptr noundef nonnull %64) #13
  %65 = load ptr, ptr %17, align 8, !tbaa !55
  %66 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %65, i8 noundef zeroext 3, ptr noundef null) #14
  %67 = icmp eq ptr %66, null
  br i1 %37, label %68, label %87

68:                                               ; preds = %36
  br i1 %67, label %114, label %69

69:                                               ; preds = %68, %80
  %70 = phi ptr [ %82, %80 ], [ %66, %68 ]
  %71 = phi i8 [ %81, %80 ], [ 0, %68 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %70, i8 noundef zeroext 16) #14
  %72 = call zeroext i8 @uvedit_face_select_test(ptr noundef %13, ptr noundef nonnull %70, i32 noundef %40) #14, !range !64
  %73 = icmp eq i8 %72, %23
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  call void @uv_poly_center(ptr noundef nonnull %70, ptr noundef nonnull %11, i32 noundef %40) #14
  %75 = call fastcc i32 @uv_inside_circle(ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %10) #14, !range !213
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %70, i8 noundef zeroext 16) #14
  br label %78

78:                                               ; preds = %77, %74
  %79 = phi i8 [ 1, %77 ], [ %71, %74 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  br label %80

80:                                               ; preds = %69, %78
  %81 = phi i8 [ %79, %78 ], [ %71, %69 ]
  %82 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %69, !llvm.loop !214

84:                                               ; preds = %80
  %85 = icmp eq i8 %81, 0
  br i1 %85, label %114, label %86

86:                                               ; preds = %84
  call fastcc void @uv_select_flush_from_tag_face(ptr noundef %12, ptr noundef %13, ptr noundef %16, i8 noundef zeroext %23) #14
  br label %110

87:                                               ; preds = %36
  br i1 %67, label %114, label %88

88:                                               ; preds = %87
  %89 = sext i32 %40 to i64
  br label %90

90:                                               ; preds = %88, %104
  %91 = phi ptr [ %66, %88 ], [ %106, %104 ]
  %92 = phi i8 [ 0, %88 ], [ %105, %104 ]
  %93 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %91) #14
  %94 = icmp eq ptr %93, null
  br i1 %94, label %104, label %95

95:                                               ; preds = %90, %95
  %96 = phi ptr [ %102, %95 ], [ %93, %90 ]
  %97 = phi i8 [ %101, %95 ], [ %92, %90 ]
  %98 = load ptr, ptr %96, align 8, !tbaa !70
  %99 = getelementptr inbounds i8, ptr %98, i64 %89
  %100 = call fastcc zeroext i8 @uv_select_inside_ellipse(ptr noundef nonnull %17, ptr noundef %13, i8 noundef zeroext %23, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %96, ptr noundef %99, i32 noundef %40) #14, !range !22
  %101 = or i8 %100, %97
  %102 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %95, !llvm.loop !215

104:                                              ; preds = %95, %90
  %105 = phi i8 [ %92, %90 ], [ %101, %95 ]
  %106 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %90, !llvm.loop !216

108:                                              ; preds = %104
  %109 = icmp eq i8 %105, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %86, %108
  %111 = zext i1 %22 to i16
  call fastcc void @uv_select_sync_flush(ptr noundef %15, ptr noundef nonnull %17, i16 noundef signext %111) #14
  %112 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %113 = load ptr, ptr %112, align 8, !tbaa !60
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %113) #13
  br label %114

114:                                              ; preds = %87, %68, %84, %110, %108
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret i32 4
}

; Function Attrs: optsize
declare void @WM_gesture_circle_cancel(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_image_get_zoom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @uv_inside_circle(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = load float, ptr %0, align 4, !tbaa !97
  %5 = load float, ptr %1, align 4, !tbaa !97
  %6 = fsub float %4, %5
  %7 = load float, ptr %2, align 4, !tbaa !97
  %8 = fmul float %6, %7
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !97
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !97
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !97
  %16 = fmul float %13, %15
  %17 = fmul float %16, %16
  %18 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %17)
  %19 = fcmp olt float %18, 1.000000e+00
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @uv_select_inside_ellipse(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, i32 noundef %7) unnamed_addr #0 {
  %9 = tail call fastcc i32 @uv_inside_circle(ptr noundef %6, ptr noundef %3, ptr noundef %4) #14, !range !213
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @uvedit_uv_select_set(ptr noundef %0, ptr noundef %1, ptr noundef %5, i8 noundef zeroext %2, i8 noundef zeroext 0, i32 noundef %7) #14
  br label %12

12:                                               ; preds = %8, %11
  %13 = phi i8 [ 1, %11 ], [ 0, %8 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  tail call fastcc void @uv_select_more_less(ptr noundef %0, i8 noundef zeroext 1) #14
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_select_more_less(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %7 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #13
  %8 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  %9 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %10 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  %12 = load ptr, ptr %9, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 26
  %14 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %13, i32 noundef 16) #13
  %15 = load ptr, ptr %9, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 27
  %17 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %16, i32 noundef 15) #13
  %18 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 11
  %19 = load i8, ptr %18, align 2, !tbaa !46
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = icmp eq i8 %1, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  tail call void @EDBM_select_more(ptr noundef nonnull %9) #13
  br label %26

25:                                               ; preds = %22
  tail call void @EDBM_select_less(ptr noundef nonnull %9) #13
  br label %26

26:                                               ; preds = %25, %24
  %27 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !60
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %28) #13
  br label %130

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 12
  %31 = load i8, ptr %30, align 1, !tbaa !147
  %32 = icmp eq i8 %31, 4
  %33 = load ptr, ptr %9, align 8, !tbaa !55
  %34 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %33, i8 noundef zeroext 3, ptr noundef null) #14
  %35 = icmp eq ptr %34, null
  br i1 %32, label %36, label %77

36:                                               ; preds = %29
  br i1 %35, label %41, label %37

37:                                               ; preds = %36, %37
  %38 = phi ptr [ %39, %37 ], [ %34, %36 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %38, i8 noundef zeroext 16) #14
  %39 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %37, !llvm.loop !217

41:                                               ; preds = %37, %36
  %42 = load ptr, ptr %9, align 8, !tbaa !55
  %43 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %42, i8 noundef zeroext 3, ptr noundef null) #14
  %44 = icmp eq ptr %43, null
  br i1 %44, label %76, label %45

45:                                               ; preds = %41
  %46 = sext i32 %17 to i64
  %47 = sext i32 %14 to i64
  br label %48

48:                                               ; preds = %45, %73
  %49 = phi ptr [ %43, %45 ], [ %74, %73 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !61
  %51 = getelementptr inbounds i8, ptr %50, i64 %46
  %52 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %5, ptr noundef %7, ptr noundef nonnull %49, ptr noundef %51) #14, !range !22
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %73, label %54

54:                                               ; preds = %48
  %55 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %49) #14
  %56 = icmp eq ptr %55, null
  br i1 %56, label %73, label %57

57:                                               ; preds = %54, %70
  %58 = phi ptr [ %71, %70 ], [ %55, %54 ]
  %59 = phi i32 [ %67, %70 ], [ 0, %54 ]
  %60 = load ptr, ptr %58, align 8, !tbaa !70
  %61 = getelementptr inbounds i8, ptr %60, i64 %47
  %62 = getelementptr inbounds %struct.MLoopUV, ptr %61, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !72
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 2, i32 1
  %67 = or i32 %66, %59
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %49, i8 noundef zeroext 16) #14
  br label %73

70:                                               ; preds = %57
  %71 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %57, !llvm.loop !218

73:                                               ; preds = %70, %54, %69, %48
  %74 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %48, !llvm.loop !219

76:                                               ; preds = %73, %41
  call fastcc void @uv_select_flush_from_tag_face(ptr noundef %8, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %1) #14
  br label %127

77:                                               ; preds = %29
  br i1 %35, label %89, label %78

78:                                               ; preds = %77, %86
  %79 = phi ptr [ %87, %86 ], [ %34, %77 ]
  %80 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %79) #14
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %78, %82
  %83 = phi ptr [ %84, %82 ], [ %80, %78 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %83, i8 noundef zeroext 16) #14
  %84 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %82, !llvm.loop !220

86:                                               ; preds = %82, %78
  %87 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %78, !llvm.loop !221

89:                                               ; preds = %86, %77
  %90 = load ptr, ptr %9, align 8, !tbaa !55
  %91 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %90, i8 noundef zeroext 3, ptr noundef null) #14
  %92 = icmp eq ptr %91, null
  br i1 %92, label %126, label %93

93:                                               ; preds = %89
  %94 = sext i32 %17 to i64
  %95 = sext i32 %14 to i64
  %96 = zext nneg i8 %1 to i32
  br label %97

97:                                               ; preds = %93, %123
  %98 = phi ptr [ %91, %93 ], [ %124, %123 ]
  %99 = load ptr, ptr %98, align 8, !tbaa !61
  %100 = getelementptr inbounds i8, ptr %99, i64 %94
  %101 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %5, ptr noundef %7, ptr noundef nonnull %98, ptr noundef %100) #14, !range !22
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %123, label %103

103:                                              ; preds = %97
  %104 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %98) #14
  %105 = icmp eq ptr %104, null
  br i1 %105, label %123, label %106

106:                                              ; preds = %103, %120
  %107 = phi ptr [ %121, %120 ], [ %104, %103 ]
  %108 = load ptr, ptr %107, align 8, !tbaa !70
  %109 = getelementptr inbounds i8, ptr %108, i64 %95
  %110 = getelementptr inbounds %struct.MLoopUV, ptr %109, i64 0, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !72
  %112 = lshr i32 %111, 1
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, %96
  br i1 %114, label %115, label %120

115:                                              ; preds = %106
  %116 = getelementptr inbounds %struct.BMLoop, ptr %107, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !84
  call fastcc void @_bm_elem_flag_enable(ptr noundef %117, i8 noundef zeroext 16) #14
  %118 = getelementptr inbounds %struct.BMLoop, ptr %107, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !112
  call fastcc void @_bm_elem_flag_enable(ptr noundef %119, i8 noundef zeroext 16) #14
  br label %120

120:                                              ; preds = %115, %106
  %121 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %106, !llvm.loop !222

123:                                              ; preds = %120, %103, %97
  %124 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %97, !llvm.loop !223

126:                                              ; preds = %123, %89
  call fastcc void @uv_select_flush_from_tag_loop(ptr noundef %8, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %1) #14
  br label %127

127:                                              ; preds = %126, %76
  %128 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %129 = load ptr, ptr %128, align 8, !tbaa !60
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %129) #13
  br label %130

130:                                              ; preds = %127, %26
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret void
}

; Function Attrs: optsize
declare void @EDBM_select_more(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_select_less(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_select_flush_from_tag_loop(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca [2 x float], align 4
  %8 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  %10 = tail call ptr @BKE_editmesh_from_object(ptr noundef %2) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 26
  %13 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %12, i32 noundef 16) #13
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 11
  %15 = load i8, ptr %14, align 2, !tbaa !46
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %98

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 23
  %20 = load i8, ptr %19, align 1, !tbaa !148
  switch i8 %20, label %98 [
    i8 2, label %21
    i8 0, label %71
  ]

21:                                               ; preds = %18
  %22 = load ptr, ptr %10, align 8, !tbaa !55
  %23 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %22, i8 noundef zeroext 1, ptr noundef null) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21, %25
  %26 = phi ptr [ %27, %25 ], [ %23, %21 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %26, i8 noundef zeroext 16) #14
  %27 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %25, !llvm.loop !224

29:                                               ; preds = %25, %21
  %30 = load ptr, ptr %10, align 8, !tbaa !55
  %31 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %30, i8 noundef zeroext 3, ptr noundef null) #14
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %29, %47
  %34 = phi ptr [ %48, %47 ], [ %31, %29 ]
  %35 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %34) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %33, %44
  %38 = phi ptr [ %45, %44 ], [ %35, %33 ]
  %39 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %38, i8 noundef zeroext 16) #14, !range !64
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.BMLoop, ptr %38, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !83
  call fastcc void @_bm_elem_flag_enable(ptr noundef %43, i8 noundef zeroext 16) #14
  br label %44

44:                                               ; preds = %37, %41
  %45 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %37, !llvm.loop !225

47:                                               ; preds = %44, %33
  %48 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %33, !llvm.loop !226

50:                                               ; preds = %47, %29
  %51 = load ptr, ptr %10, align 8, !tbaa !55
  %52 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %51, i8 noundef zeroext 3, ptr noundef null) #14
  %53 = icmp eq ptr %52, null
  br i1 %53, label %118, label %54

54:                                               ; preds = %50, %68
  %55 = phi ptr [ %69, %68 ], [ %52, %50 ]
  %56 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %55) #14
  %57 = icmp eq ptr %56, null
  br i1 %57, label %68, label %58

58:                                               ; preds = %54, %65
  %59 = phi ptr [ %66, %65 ], [ %56, %54 ]
  %60 = getelementptr inbounds %struct.BMLoop, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !83
  %62 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %61, i8 noundef zeroext 16) #14, !range !64
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  call void @uvedit_uv_select_set(ptr noundef nonnull %10, ptr noundef %1, ptr noundef nonnull %59, i8 noundef zeroext %3, i8 noundef zeroext 0, i32 noundef %13) #14
  br label %65

65:                                               ; preds = %58, %64
  %66 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %58, !llvm.loop !227

68:                                               ; preds = %65, %54
  %69 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %70 = icmp eq ptr %69, null
  br i1 %70, label %118, label %54, !llvm.loop !228

71:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call fastcc void @uvedit_pixel_to_float(ptr noundef nonnull %0, ptr noundef nonnull %7, float noundef 0x3FA99999A0000000) #14
  %72 = load ptr, ptr %10, align 8, !tbaa !55
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %72, i8 noundef zeroext 8) #13
  %73 = load ptr, ptr %10, align 8, !tbaa !55
  %74 = call ptr @BM_uv_vert_map_create(ptr noundef %73, i8 noundef zeroext 0, ptr noundef nonnull %7) #13
  %75 = icmp eq ptr %74, null
  br i1 %75, label %117, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %10, align 8, !tbaa !55
  %78 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %77, i8 noundef zeroext 3, ptr noundef null) #14
  %79 = icmp eq ptr %78, null
  br i1 %79, label %97, label %80

80:                                               ; preds = %76, %93
  %81 = phi i32 [ %95, %93 ], [ 0, %76 ]
  %82 = phi ptr [ %94, %93 ], [ %78, %76 ]
  %83 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %82) #14
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %80, %90
  %86 = phi ptr [ %91, %90 ], [ %83, %80 ]
  %87 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %86, i8 noundef zeroext 16) #14, !range !64
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  call fastcc void @uv_select_flush_from_tag_sticky_loc_internal(ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %74, i32 noundef %81, ptr noundef nonnull %86, i8 noundef zeroext %3, i32 noundef %13) #14
  br label %90

90:                                               ; preds = %85, %89
  %91 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %85, !llvm.loop !229

93:                                               ; preds = %90, %80
  %94 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %95 = add i32 %81, 1
  %96 = icmp eq ptr %94, null
  br i1 %96, label %97, label %80, !llvm.loop !230

97:                                               ; preds = %93, %76
  call void @BM_uv_vert_map_free(ptr noundef nonnull %74) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %118

98:                                               ; preds = %18, %4
  %99 = load ptr, ptr %10, align 8, !tbaa !55
  %100 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %99, i8 noundef zeroext 3, ptr noundef null) #14
  %101 = icmp eq ptr %100, null
  br i1 %101, label %118, label %102

102:                                              ; preds = %98, %114
  %103 = phi ptr [ %115, %114 ], [ %100, %98 ]
  %104 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %103) #14
  %105 = icmp eq ptr %104, null
  br i1 %105, label %114, label %106

106:                                              ; preds = %102, %111
  %107 = phi ptr [ %112, %111 ], [ %104, %102 ]
  %108 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %107, i8 noundef zeroext 16) #14, !range !64
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  call void @uvedit_uv_select_set(ptr noundef nonnull %10, ptr noundef %1, ptr noundef nonnull %107, i8 noundef zeroext %3, i8 noundef zeroext 0, i32 noundef %13) #14
  br label %111

111:                                              ; preds = %106, %110
  %112 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %106, !llvm.loop !231

114:                                              ; preds = %111, %102
  %115 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %102, !llvm.loop !232

117:                                              ; preds = %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %118

118:                                              ; preds = %68, %114, %98, %50, %97, %117
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  tail call fastcc void @uv_select_more_less(ptr noundef %0, i8 noundef zeroext 0) #14
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_snap_cursor_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %6 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #13
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !138
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.92) #13
  switch i32 %9, label %15 [
    i32 0, label %10
    i32 1, label %11
  ]

10:                                               ; preds = %2
  tail call fastcc void @uv_snap_cursor_to_pixels(ptr noundef %3) #14
  br label %14

11:                                               ; preds = %2
  %12 = tail call fastcc zeroext i8 @uv_snap_cursor_to_selection(ptr noundef %4, ptr noundef %6, ptr noundef %5, ptr noundef %3) #14, !range !22
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 251920384, ptr noundef %3) #13
  br label %15

15:                                               ; preds = %2, %11, %14
  %16 = phi i32 [ 4, %14 ], [ 2, %11 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_snap_cursor_to_pixels(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !tbaa !145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !tbaa !145
  call void @ED_space_image_get_size(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  %4 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 11
  %5 = load i32, ptr %2, align 4, !tbaa !145
  %6 = sitofp i32 %5 to float
  %7 = load i32, ptr %3, align 4, !tbaa !145
  %8 = sitofp i32 %7 to float
  call fastcc void @uv_snap_to_pixel(ptr noundef nonnull %4, float noundef %6, float noundef %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @uv_snap_cursor_to_selection(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 11
  %6 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 25
  %7 = load i8, ptr %6, align 1, !tbaa !233
  %8 = tail call fastcc zeroext i8 @uvedit_center(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, i8 noundef zeroext %7) #14, !range !22
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @uv_snap_to_pixel(ptr nocapture noundef %0, float noundef %1, float noundef %2) unnamed_addr #6 {
  %4 = load <2 x float>, ptr %0, align 4, !tbaa !97
  %5 = insertelement <2 x float> poison, float %1, i64 0
  %6 = insertelement <2 x float> %5, float %2, i64 1
  %7 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %4, <2 x float> %6, <2 x float> <float 5.000000e-01, float 5.000000e-01>)
  %8 = fptosi <2 x float> %7 to <2 x i32>
  %9 = sitofp <2 x i32> %8 to <2 x float>
  %10 = fdiv <2 x float> %9, %6
  store <2 x float> %10, ptr %0, align 4, !tbaa !97
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @uvedit_center(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = icmp eq i8 %4, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  %10 = call zeroext i8 @ED_uvedit_minmax(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7) #14, !range !22
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  call void @mid_v2_v2v2(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i8 [ 1, %12 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  br label %17

15:                                               ; preds = %5
  %16 = tail call fastcc zeroext i8 @ED_uvedit_median(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #14, !range !22
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i8 [ %14, %13 ], [ %16, %15 ]
  ret i8 %18
}

; Function Attrs: optsize
declare void @mid_v2_v2v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ED_uvedit_median(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %2) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 26
  %10 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %9, i32 noundef 16) #13
  %11 = load ptr, ptr %7, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 27
  %13 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %12, i32 noundef 15) #13
  tail call fastcc void @zero_v2(ptr noundef %3) #14
  %14 = load ptr, ptr %7, align 8, !tbaa !55
  %15 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %14, i8 noundef zeroext 3, ptr noundef null) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %47, label %17

17:                                               ; preds = %4
  %18 = sext i32 %13 to i64
  %19 = sext i32 %10 to i64
  br label %20

20:                                               ; preds = %17, %43
  %21 = phi ptr [ %15, %17 ], [ %45, %43 ]
  %22 = phi i32 [ 0, %17 ], [ %44, %43 ]
  %23 = load ptr, ptr %21, align 8, !tbaa !61
  %24 = getelementptr inbounds i8, ptr %23, i64 %18
  %25 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %21, ptr noundef %24) #14, !range !22
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %20
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %21) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %27, %39
  %31 = phi ptr [ %41, %39 ], [ %28, %27 ]
  %32 = phi i32 [ %40, %39 ], [ %22, %27 ]
  %33 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef nonnull %31, i32 noundef %10) #14, !range !22
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %31, align 8, !tbaa !70
  %37 = getelementptr inbounds i8, ptr %36, i64 %19
  call fastcc void @add_v2_v2(ptr noundef %3, ptr noundef %37) #14
  %38 = add i32 %32, 1
  br label %39

39:                                               ; preds = %30, %35
  %40 = phi i32 [ %38, %35 ], [ %32, %30 ]
  %41 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %30, !llvm.loop !234

43:                                               ; preds = %39, %27, %20
  %44 = phi i32 [ %22, %20 ], [ %22, %27 ], [ %40, %39 ]
  %45 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %20, !llvm.loop !235

47:                                               ; preds = %43, %4
  %48 = phi i32 [ 0, %4 ], [ %44, %43 ]
  %49 = uitofp i32 %48 to float
  %50 = fdiv float 1.000000e+00, %49
  call fastcc void @mul_v2_fl(ptr noundef %3, float noundef %50) #14
  %51 = icmp ne i32 %48, 0
  %52 = zext i1 %51 to i8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_snap_selection_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %8 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #13
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !138
  %11 = tail call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.92) #13
  switch i32 %11, label %36 [
    i32 0, label %12
    i32 1, label %14
    i32 2, label %17
    i32 3, label %27
  ]

12:                                               ; preds = %2
  %13 = tail call fastcc zeroext i8 @uv_snap_uvs_to_pixels(ptr noundef %5, ptr noundef %6, ptr noundef %7) #14, !range !22
  br label %29

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 11
  %16 = tail call fastcc zeroext i8 @uv_snap_uvs_to_cursor(ptr noundef %6, ptr noundef %8, ptr noundef %7, ptr noundef nonnull %15) #14, !range !22
  br label %29

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %18 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 25
  %19 = load i8, ptr %18, align 1, !tbaa !233
  %20 = call fastcc zeroext i8 @uvedit_center(ptr noundef %6, ptr noundef %8, ptr noundef %7, ptr noundef nonnull %3, i8 noundef zeroext %19) #14, !range !22
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %23 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 11
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %23, ptr noundef nonnull %3) #14
  %24 = call fastcc zeroext i8 @uv_snap_uvs_offset(ptr noundef %6, ptr noundef %8, ptr noundef %7, ptr noundef nonnull %4) #14, !range !22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i8 [ %24, %22 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %29

27:                                               ; preds = %2
  %28 = tail call fastcc zeroext i8 @uv_snap_uvs_to_adjacent_unselected(ptr noundef %6, ptr noundef %8, ptr noundef %7) #14, !range !22
  br label %29

29:                                               ; preds = %27, %25, %14, %12
  %30 = phi i8 [ %28, %27 ], [ %26, %25 ], [ %16, %14 ], [ %13, %12 ]
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  call void @uvedit_live_unwrap_update(ptr noundef %5, ptr noundef %6, ptr noundef %7) #14
  %33 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !60
  call void @DAG_id_tag_update(ptr noundef %34, i16 noundef signext 0) #13
  %35 = load ptr, ptr %33, align 8, !tbaa !60
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %35) #13
  br label %36

36:                                               ; preds = %2, %29, %32
  %37 = phi i32 [ 4, %32 ], [ 2, %29 ], [ 2, %2 ]
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @uv_snap_uvs_to_pixels(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %2) #13
  %9 = getelementptr inbounds %struct.SpaceImage, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !tbaa !145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 0, ptr %7, align 4, !tbaa !145
  %11 = load ptr, ptr %8, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 26
  %13 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %12, i32 noundef 16) #13
  %14 = load ptr, ptr %8, align 8, !tbaa !55
  %15 = getelementptr inbounds %struct.BMesh, ptr %14, i64 0, i32 27
  %16 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %15, i32 noundef 15) #13
  call void @ED_space_image_get_size(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %17 = load i32, ptr %6, align 4, !tbaa !145
  %18 = sitofp i32 %17 to float
  %19 = load i32, ptr %7, align 4, !tbaa !145
  %20 = sitofp i32 %19 to float
  %21 = load ptr, ptr %8, align 8, !tbaa !55
  %22 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %21, i8 noundef zeroext 3, ptr noundef null) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %51, label %24

24:                                               ; preds = %3
  %25 = sext i32 %16 to i64
  %26 = sext i32 %13 to i64
  br label %27

27:                                               ; preds = %24, %47
  %28 = phi ptr [ %22, %24 ], [ %49, %47 ]
  %29 = phi i8 [ 0, %24 ], [ %48, %47 ]
  %30 = load ptr, ptr %28, align 8, !tbaa !61
  %31 = getelementptr inbounds i8, ptr %30, i64 %25
  %32 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %1, ptr noundef %10, ptr noundef nonnull %28, ptr noundef %31) #14, !range !22
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %27
  %35 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %28) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %34, %44
  %38 = phi ptr [ %45, %44 ], [ %35, %34 ]
  %39 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %1, ptr noundef nonnull %38, i32 noundef %13) #14, !range !22
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %38, align 8, !tbaa !70
  %43 = getelementptr inbounds i8, ptr %42, i64 %26
  call fastcc void @uv_snap_to_pixel(ptr noundef %43, float noundef %18, float noundef %20) #14
  br label %44

44:                                               ; preds = %37, %41
  %45 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %37, !llvm.loop !237

47:                                               ; preds = %44, %34, %27
  %48 = phi i8 [ %29, %27 ], [ 1, %34 ], [ 1, %44 ]
  %49 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %27, !llvm.loop !238

51:                                               ; preds = %47, %3
  %52 = phi i8 [ 0, %3 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @uv_snap_uvs_to_cursor(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %2) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 26
  %10 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %9, i32 noundef 16) #13
  %11 = load ptr, ptr %7, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 27
  %13 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %12, i32 noundef 15) #13
  %14 = load ptr, ptr %7, align 8, !tbaa !55
  %15 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %14, i8 noundef zeroext 3, ptr noundef null) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %46, label %17

17:                                               ; preds = %4
  %18 = sext i32 %13 to i64
  %19 = sext i32 %10 to i64
  br label %20

20:                                               ; preds = %17, %42
  %21 = phi ptr [ %15, %17 ], [ %44, %42 ]
  %22 = phi i8 [ 0, %17 ], [ %43, %42 ]
  %23 = load ptr, ptr %21, align 8, !tbaa !61
  %24 = getelementptr inbounds i8, ptr %23, i64 %18
  %25 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %21, ptr noundef %24) #14, !range !22
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %20
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %21) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %27, %38
  %31 = phi ptr [ %40, %38 ], [ %28, %27 ]
  %32 = phi i8 [ %39, %38 ], [ %22, %27 ]
  %33 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef nonnull %31, i32 noundef %10) #14, !range !22
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %31, align 8, !tbaa !70
  %37 = getelementptr inbounds i8, ptr %36, i64 %19
  call fastcc void @copy_v2_v2(ptr noundef %37, ptr noundef %3) #14
  br label %38

38:                                               ; preds = %30, %35
  %39 = phi i8 [ 1, %35 ], [ %32, %30 ]
  %40 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %30, !llvm.loop !239

42:                                               ; preds = %38, %27, %20
  %43 = phi i8 [ %22, %20 ], [ %22, %27 ], [ %39, %38 ]
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %20, !llvm.loop !240

46:                                               ; preds = %42, %4
  %47 = phi i8 [ 0, %4 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret i8 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @uv_snap_uvs_offset(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %2) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 26
  %10 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %9, i32 noundef 16) #13
  %11 = load ptr, ptr %7, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 27
  %13 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %12, i32 noundef 15) #13
  %14 = load ptr, ptr %7, align 8, !tbaa !55
  %15 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %14, i8 noundef zeroext 3, ptr noundef null) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %46, label %17

17:                                               ; preds = %4
  %18 = sext i32 %13 to i64
  %19 = sext i32 %10 to i64
  br label %20

20:                                               ; preds = %17, %42
  %21 = phi ptr [ %15, %17 ], [ %44, %42 ]
  %22 = phi i8 [ 0, %17 ], [ %43, %42 ]
  %23 = load ptr, ptr %21, align 8, !tbaa !61
  %24 = getelementptr inbounds i8, ptr %23, i64 %18
  %25 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %21, ptr noundef %24) #14, !range !22
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %20
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %21) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %27, %38
  %31 = phi ptr [ %40, %38 ], [ %28, %27 ]
  %32 = phi i8 [ %39, %38 ], [ %22, %27 ]
  %33 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef nonnull %31, i32 noundef %10) #14, !range !22
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %31, align 8, !tbaa !70
  %37 = getelementptr inbounds i8, ptr %36, i64 %19
  call fastcc void @add_v2_v2(ptr noundef %37, ptr noundef %3) #14
  br label %38

38:                                               ; preds = %30, %35
  %39 = phi i8 [ 1, %35 ], [ %32, %30 ]
  %40 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %30, !llvm.loop !241

42:                                               ; preds = %38, %27, %20
  %43 = phi i8 [ %22, %20 ], [ %22, %27 ], [ %39, %38 ]
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %20, !llvm.loop !242

46:                                               ; preds = %42, %4
  %47 = phi i8 [ 0, %4 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret i8 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @uv_snap_uvs_to_adjacent_unselected(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca [2 x float], align 8
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %2) #13
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 26
  %11 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %10, i32 noundef 16) #13
  %12 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 27
  %13 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %12, i32 noundef 15) #13
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %9, i8 noundef zeroext 3, ptr noundef null) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %3
  %17 = sext i32 %13 to i64
  br label %18

18:                                               ; preds = %16, %34
  %19 = phi ptr [ %14, %16 ], [ %35, %34 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  %21 = getelementptr inbounds i8, ptr %20, i64 %17
  %22 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %19, ptr noundef %21) #14, !range !22
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %19, i8 noundef zeroext 16) #14
  %25 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %19) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24, %27
  %28 = phi ptr [ %31, %27 ], [ %25, %24 ]
  %29 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef nonnull %28, i32 noundef %11) #14, !range !22
  %30 = zext nneg i8 %29 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %28, i32 noundef %30) #14
  %31 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %27, !llvm.loop !243

33:                                               ; preds = %18
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %19, i8 noundef zeroext 16) #14
  br label %34

34:                                               ; preds = %27, %24, %33
  %35 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %18, !llvm.loop !244

37:                                               ; preds = %34, %3
  %38 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %9, i8 noundef zeroext 3, ptr noundef null) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %95, label %40

40:                                               ; preds = %37
  %41 = sext i32 %11 to i64
  br label %42

42:                                               ; preds = %40, %91
  %43 = phi ptr [ %38, %40 ], [ %93, %91 ]
  %44 = phi i8 [ 0, %40 ], [ %92, %91 ]
  %45 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %43, i8 noundef zeroext 16) #14, !range !64
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %91, label %47

47:                                               ; preds = %42
  %48 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %43) #14
  %49 = icmp eq ptr %48, null
  br i1 %49, label %91, label %50

50:                                               ; preds = %47, %87
  %51 = phi ptr [ %89, %87 ], [ %48, %47 ]
  %52 = phi i8 [ %88, %87 ], [ %44, %47 ]
  %53 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %51, i8 noundef zeroext 16) #14, !range !64
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %87, label %55

55:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  store i64 0, ptr %7, align 8
  %56 = getelementptr inbounds %struct.BMLoop, ptr %51, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !83
  %58 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 6, ptr noundef %57) #14
  %59 = icmp eq ptr %58, null
  br i1 %59, label %85, label %60

60:                                               ; preds = %55, %74
  %61 = phi i32 [ %75, %74 ], [ 0, %55 ]
  %62 = phi ptr [ %76, %74 ], [ %58, %55 ]
  %63 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !81
  %65 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %64, i8 noundef zeroext 16) #14, !range !64
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %62, i8 noundef zeroext 16) #14, !range !64
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load ptr, ptr %62, align 8, !tbaa !70
  %72 = getelementptr inbounds i8, ptr %71, i64 %41
  call fastcc void @add_v2_v2(ptr noundef nonnull %7, ptr noundef %72) #14
  %73 = add nsw i32 %61, 1
  br label %74

74:                                               ; preds = %60, %67, %70
  %75 = phi i32 [ %61, %67 ], [ %73, %70 ], [ %61, %60 ]
  %76 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %60, !llvm.loop !245

78:                                               ; preds = %74
  %79 = icmp eq i32 %75, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %78
  %81 = load ptr, ptr %51, align 8, !tbaa !70
  %82 = getelementptr inbounds i8, ptr %81, i64 %41
  %83 = sitofp i32 %75 to float
  %84 = fdiv float 1.000000e+00, %83
  call fastcc void @mul_v2_v2fl(ptr noundef %82, ptr noundef nonnull %7, float noundef %84) #14
  br label %85

85:                                               ; preds = %55, %80, %78
  %86 = phi i8 [ 1, %80 ], [ %52, %78 ], [ %52, %55 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %87

87:                                               ; preds = %50, %85
  %88 = phi i8 [ %86, %85 ], [ %52, %50 ]
  %89 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %50, !llvm.loop !246

91:                                               ; preds = %87, %47, %42
  %92 = phi i8 [ %44, %42 ], [ %44, %47 ], [ %88, %87 ]
  %93 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %42, !llvm.loop !247

95:                                               ; preds = %91, %37
  %96 = phi i8 [ 0, %37 ], [ %92, %91 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  ret i8 %96
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_set(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %0, i8 noundef zeroext 16) #14
  br label %6

5:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %0, i8 noundef zeroext 16) #14
  br label %6

6:                                                ; preds = %5, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 {
  %4 = load float, ptr %1, align 4, !tbaa !97
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !97
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !97
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !97
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_align_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !138
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.125) #13
  tail call fastcc void @uv_weld_align(ptr noundef %0, i32 noundef %5) #14
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_weld_align(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 8
  %5 = alloca [2 x float], align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca %struct.BMIter, align 8
  %12 = alloca %struct.BMIter, align 8
  %13 = alloca %struct.BMIter, align 8
  %14 = alloca %struct.BMIter, align 8
  %15 = alloca ptr, align 8
  %16 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %17 = tail call ptr @BKE_editmesh_from_object(ptr noundef %16) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 26
  %20 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %19, i32 noundef 16) #13
  %21 = load ptr, ptr %17, align 8, !tbaa !55
  %22 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 27
  %23 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %22, i32 noundef 15) #13
  %24 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %25 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #13
  %26 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %4, align 8, !tbaa !97
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %5, align 8, !tbaa !97
  %27 = icmp eq i32 %1, 97
  br i1 %27, label %28, label %65

28:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  %29 = load ptr, ptr %17, align 8, !tbaa !55
  %30 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %29, i8 noundef zeroext 3, ptr noundef null) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %57, label %32

32:                                               ; preds = %28
  %33 = sext i32 %23 to i64
  %34 = sext i32 %20 to i64
  br label %35

35:                                               ; preds = %32, %54
  %36 = phi ptr [ %30, %32 ], [ %55, %54 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !61
  %38 = getelementptr inbounds i8, ptr %37, i64 %33
  %39 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %24, ptr noundef %25, ptr noundef nonnull %36, ptr noundef %38) #14, !range !22
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %35
  %42 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %36) #14
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %41, %51
  %45 = phi ptr [ %52, %51 ], [ %42, %41 ]
  %46 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %24, ptr noundef nonnull %45, i32 noundef %20) #14, !range !22
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %45, align 8, !tbaa !70
  %50 = getelementptr inbounds i8, ptr %49, i64 %34
  call void @minmax_v2v2_v2(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %50) #13
  br label %51

51:                                               ; preds = %44, %48
  %52 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %44, !llvm.loop !248

54:                                               ; preds = %51, %41, %35
  %55 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %35, !llvm.loop !249

57:                                               ; preds = %54, %28
  %58 = load <2 x float>, ptr %5, align 8, !tbaa !97
  %59 = load <2 x float>, ptr %4, align 8, !tbaa !97
  %60 = fsub <2 x float> %58, %59
  %61 = extractelement <2 x float> %60, i64 0
  %62 = extractelement <2 x float> %60, i64 1
  %63 = fcmp oge float %61, %62
  %64 = select i1 %63, i32 121, i32 120
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  br label %65

65:                                               ; preds = %57, %2
  %66 = phi i32 [ %64, %57 ], [ %1, %2 ]
  %67 = call fastcc zeroext i8 @uvedit_center(ptr noundef %24, ptr noundef %25, ptr noundef %16, ptr noundef nonnull %3, i8 noundef zeroext 0) #14, !range !22
  %68 = add i32 %66, -119
  %69 = icmp ult i32 %68, 2
  br i1 %69, label %70, label %101

70:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #15
  %71 = load ptr, ptr %17, align 8, !tbaa !55
  %72 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %71, i8 noundef zeroext 3, ptr noundef null) #14
  %73 = icmp eq ptr %72, null
  br i1 %73, label %100, label %74

74:                                               ; preds = %70
  %75 = sext i32 %23 to i64
  %76 = sext i32 %20 to i64
  br label %77

77:                                               ; preds = %74, %97
  %78 = phi ptr [ %72, %74 ], [ %98, %97 ]
  %79 = load ptr, ptr %78, align 8, !tbaa !61
  %80 = getelementptr inbounds i8, ptr %79, i64 %75
  %81 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %24, ptr noundef %25, ptr noundef nonnull %78, ptr noundef %80) #14, !range !22
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %77
  %84 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %78) #14
  %85 = icmp eq ptr %84, null
  br i1 %85, label %97, label %86

86:                                               ; preds = %83, %94
  %87 = phi ptr [ %95, %94 ], [ %84, %83 ]
  %88 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %24, ptr noundef nonnull %87, i32 noundef %20) #14, !range !22
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %87, align 8, !tbaa !70
  %92 = getelementptr inbounds i8, ptr %91, i64 %76
  %93 = load float, ptr %3, align 4, !tbaa !97
  store float %93, ptr %92, align 4, !tbaa !97
  br label %94

94:                                               ; preds = %86, %90
  %95 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #14
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %86, !llvm.loop !250

97:                                               ; preds = %94, %83, %77
  %98 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #14
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %77, !llvm.loop !251

100:                                              ; preds = %97, %70
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #15
  br label %101

101:                                              ; preds = %65, %100
  switch i32 %66, label %135 [
    i32 121, label %102
    i32 119, label %102
  ]

102:                                              ; preds = %101, %101
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #15
  %103 = load ptr, ptr %17, align 8, !tbaa !55
  %104 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %10, ptr noundef %103, i8 noundef zeroext 3, ptr noundef null) #14
  %105 = icmp eq ptr %104, null
  br i1 %105, label %134, label %106

106:                                              ; preds = %102
  %107 = sext i32 %23 to i64
  %108 = sext i32 %20 to i64
  %109 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  br label %110

110:                                              ; preds = %106, %131
  %111 = phi ptr [ %104, %106 ], [ %132, %131 ]
  %112 = load ptr, ptr %111, align 8, !tbaa !61
  %113 = getelementptr inbounds i8, ptr %112, i64 %107
  %114 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %24, ptr noundef %25, ptr noundef nonnull %111, ptr noundef %113) #14, !range !22
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %131, label %116

116:                                              ; preds = %110
  %117 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %11, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %111) #14
  %118 = icmp eq ptr %117, null
  br i1 %118, label %131, label %119

119:                                              ; preds = %116, %128
  %120 = phi ptr [ %129, %128 ], [ %117, %116 ]
  %121 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %24, ptr noundef nonnull %120, i32 noundef %20) #14, !range !22
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr %120, align 8, !tbaa !70
  %125 = getelementptr inbounds i8, ptr %124, i64 %108
  %126 = load float, ptr %109, align 4, !tbaa !97
  %127 = getelementptr inbounds [2 x float], ptr %125, i64 0, i64 1
  store float %126, ptr %127, align 4, !tbaa !97
  br label %128

128:                                              ; preds = %119, %123
  %129 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %11) #14
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %119, !llvm.loop !252

131:                                              ; preds = %128, %116, %110
  %132 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %10) #14
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %110, !llvm.loop !253

134:                                              ; preds = %131, %102
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #15
  br label %135

135:                                              ; preds = %101, %134
  %136 = add i32 %66, -115
  %137 = icmp ult i32 %136, 3
  br i1 %137, label %138, label %346

138:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #15
  %139 = load ptr, ptr %17, align 8, !tbaa !55
  %140 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %12, ptr noundef %139, i8 noundef zeroext 1, ptr noundef null) #14
  %141 = icmp eq ptr %140, null
  br i1 %141, label %146, label %142

142:                                              ; preds = %138, %142
  %143 = phi ptr [ %144, %142 ], [ %140, %138 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %143, i8 noundef zeroext 16) #14
  %144 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %12) #14
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %142, !llvm.loop !254

146:                                              ; preds = %142, %138
  %147 = load ptr, ptr %17, align 8, !tbaa !55
  %148 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %12, ptr noundef %147, i8 noundef zeroext 1, ptr noundef null) #14
  %149 = icmp eq ptr %148, null
  br i1 %149, label %174, label %150

150:                                              ; preds = %146
  %151 = sext i32 %23 to i64
  br label %152

152:                                              ; preds = %150, %171
  %153 = phi ptr [ %148, %150 ], [ %172, %171 ]
  %154 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %13, ptr noundef null, i8 noundef zeroext 6, ptr noundef nonnull %153) #14
  %155 = icmp eq ptr %154, null
  br i1 %155, label %171, label %156

156:                                              ; preds = %152, %168
  %157 = phi ptr [ %169, %168 ], [ %154, %152 ]
  %158 = getelementptr inbounds %struct.BMLoop, ptr %157, i64 0, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !81
  %160 = load ptr, ptr %159, align 8, !tbaa !61
  %161 = getelementptr inbounds i8, ptr %160, i64 %151
  %162 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %24, ptr noundef %25, ptr noundef nonnull %159, ptr noundef %161) #14, !range !22
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %156
  %165 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %24, ptr noundef nonnull %157, i32 noundef %20) #14, !range !22
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %164
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %153, i8 noundef zeroext 16) #14
  br label %171

168:                                              ; preds = %164, %156
  %169 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %13) #14
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %156, !llvm.loop !255

171:                                              ; preds = %168, %152, %167
  %172 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %12) #14
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %152, !llvm.loop !256

174:                                              ; preds = %171, %146
  %175 = load ptr, ptr %17, align 8, !tbaa !55
  %176 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %12, ptr noundef %175, i8 noundef zeroext 2, ptr noundef null) #14
  %177 = icmp eq ptr %176, null
  br i1 %177, label %194, label %178

178:                                              ; preds = %174, %189
  %179 = phi ptr [ %192, %189 ], [ %176, %174 ]
  %180 = getelementptr inbounds %struct.BMEdge, ptr %179, i64 0, i32 2
  %181 = load ptr, ptr %180, align 8, !tbaa !85
  %182 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %181, i8 noundef zeroext 16) #14, !range !64
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.BMEdge, ptr %179, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !88
  %187 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %186, i8 noundef zeroext 16) #14, !range !64
  %188 = icmp ne i8 %187, 0
  br label %189

189:                                              ; preds = %184, %178
  %190 = phi i1 [ false, %178 ], [ %188, %184 ]
  %191 = zext i1 %190 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %179, i32 noundef %191) #14
  %192 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %12) #14
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %178, !llvm.loop !257

194:                                              ; preds = %189, %174
  %195 = load ptr, ptr %17, align 8, !tbaa !55
  %196 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %12, ptr noundef %195, i8 noundef zeroext 1, ptr noundef null) #14
  %197 = icmp eq ptr %196, null
  br i1 %197, label %345, label %198

198:                                              ; preds = %194, %213
  %199 = phi ptr [ %214, %213 ], [ %196, %194 ]
  %200 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %14, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %199) #14
  %201 = icmp eq ptr %200, null
  br i1 %201, label %213, label %202

202:                                              ; preds = %198, %202
  %203 = phi i32 [ %208, %202 ], [ 0, %198 ]
  %204 = phi ptr [ %209, %202 ], [ %200, %198 ]
  %205 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %204, i8 noundef zeroext 16) #14, !range !64
  %206 = icmp ne i8 %205, 0
  %207 = zext i1 %206 to i32
  %208 = add nuw nsw i32 %203, %207
  %209 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %14) #14
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %202, !llvm.loop !258

211:                                              ; preds = %202
  %212 = icmp eq i32 %208, 1
  br i1 %212, label %216, label %213

213:                                              ; preds = %198, %211
  %214 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %12) #14
  %215 = icmp eq ptr %214, null
  br i1 %215, label %345, label %198, !llvm.loop !259

216:                                              ; preds = %211
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #15
  store ptr null, ptr %15, align 8, !tbaa !26
  br label %219

217:                                              ; preds = %253
  %218 = load ptr, ptr %15, align 8
  br label %219

219:                                              ; preds = %217, %216
  %220 = phi ptr [ %218, %217 ], [ null, %216 ]
  %221 = phi i32 [ %236, %217 ], [ 0, %216 ]
  %222 = phi ptr [ %247, %217 ], [ %199, %216 ]
  %223 = icmp eq ptr %220, null
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = add nuw nsw i32 %221, 1
  br label %233

226:                                              ; preds = %219
  %227 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !26
  %228 = call i64 %227(ptr noundef nonnull %220) #13
  %229 = lshr i64 %228, 3
  %230 = add nuw nsw i32 %221, 1
  %231 = zext nneg i32 %230 to i64
  %232 = icmp ult i64 %229, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %224, %226
  %234 = phi i32 [ %225, %224 ], [ %230, %226 ]
  call void @_bli_array_grow_func(ptr noundef nonnull %15, ptr noundef null, i32 noundef 8, i32 noundef %221, i32 noundef 1, ptr noundef nonnull @.str.128) #13
  br label %235

235:                                              ; preds = %233, %226
  %236 = phi i32 [ %234, %233 ], [ %230, %226 ]
  %237 = load ptr, ptr %15, align 8, !tbaa !26
  %238 = zext nneg i32 %221 to i64
  %239 = getelementptr inbounds ptr, ptr %237, i64 %238
  store ptr %222, ptr %239, align 8, !tbaa !26
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %222, i8 noundef zeroext 16) #14
  %240 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %14, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %222) #14
  %241 = icmp eq ptr %240, null
  br i1 %241, label %255, label %242

242:                                              ; preds = %235, %250
  %243 = phi ptr [ %251, %250 ], [ %240, %235 ]
  %244 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %243, i8 noundef zeroext 16) #14, !range !64
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %250, label %246

246:                                              ; preds = %242
  %247 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %243, ptr noundef nonnull %222) #14
  %248 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %247, i8 noundef zeroext 16) #14, !range !64
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %246, %242
  %251 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %14) #14
  %252 = icmp eq ptr %251, null
  br i1 %252, label %255, label %242, !llvm.loop !260

253:                                              ; preds = %246
  %254 = icmp eq ptr %247, null
  br i1 %254, label %255, label %217, !llvm.loop !261

255:                                              ; preds = %235, %253, %250
  %256 = icmp ugt i32 %236, 2
  br i1 %256, label %257, label %339

257:                                              ; preds = %255
  %258 = load ptr, ptr %15, align 8, !tbaa !26
  %259 = load ptr, ptr %258, align 8, !tbaa !26
  %260 = call fastcc ptr @uv_sel_co_from_eve(ptr noundef %24, ptr noundef %25, ptr noundef nonnull %17, ptr noundef %259) #14
  %261 = load ptr, ptr %15, align 8, !tbaa !26
  %262 = zext i32 %236 to i64
  %263 = getelementptr ptr, ptr %261, i64 %262
  %264 = getelementptr ptr, ptr %263, i64 -1
  %265 = load ptr, ptr %264, align 8, !tbaa !26
  %266 = call fastcc ptr @uv_sel_co_from_eve(ptr noundef %24, ptr noundef %25, ptr noundef nonnull %17, ptr noundef %265) #14
  switch i32 %66, label %291 [
    i32 116, label %267
    i32 117, label %279
  ]

267:                                              ; preds = %257
  %268 = getelementptr inbounds float, ptr %260, i64 1
  %269 = load float, ptr %268, align 4, !tbaa !97
  %270 = getelementptr inbounds float, ptr %266, i64 1
  %271 = load float, ptr %270, align 4, !tbaa !97
  %272 = fcmp oeq float %269, %271
  br i1 %272, label %291, label %273

273:                                              ; preds = %267
  %274 = load float, ptr %266, align 4, !tbaa !97
  %275 = load float, ptr %260, align 4, !tbaa !97
  %276 = fsub float %274, %275
  %277 = fsub float %271, %269
  %278 = fdiv float %276, %277
  br label %291

279:                                              ; preds = %257
  %280 = load float, ptr %260, align 4, !tbaa !97
  %281 = load float, ptr %266, align 4, !tbaa !97
  %282 = fcmp oeq float %280, %281
  br i1 %282, label %291, label %283

283:                                              ; preds = %279
  %284 = getelementptr inbounds float, ptr %266, i64 1
  %285 = load float, ptr %284, align 4, !tbaa !97
  %286 = getelementptr inbounds float, ptr %260, i64 1
  %287 = load float, ptr %286, align 4, !tbaa !97
  %288 = fsub float %285, %287
  %289 = fsub float %281, %280
  %290 = fdiv float %288, %289
  br label %291

291:                                              ; preds = %279, %257, %267, %283, %273
  %292 = phi float [ %278, %273 ], [ %290, %283 ], [ 0.000000e+00, %267 ], [ 0.000000e+00, %257 ], [ 0.000000e+00, %279 ]
  %293 = phi i32 [ 116, %273 ], [ 117, %283 ], [ 115, %267 ], [ %66, %257 ], [ 115, %279 ]
  %294 = sext i32 %23 to i64
  %295 = sext i32 %20 to i64
  %296 = getelementptr inbounds float, ptr %260, i64 1
  br label %297

297:                                              ; preds = %291, %336
  %298 = phi i64 [ 0, %291 ], [ %337, %336 ]
  %299 = load ptr, ptr %15, align 8, !tbaa !26
  %300 = getelementptr inbounds ptr, ptr %299, i64 %298
  %301 = load ptr, ptr %300, align 8, !tbaa !26
  %302 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %13, ptr noundef null, i8 noundef zeroext 6, ptr noundef %301) #14
  %303 = icmp eq ptr %302, null
  br i1 %303, label %336, label %304

304:                                              ; preds = %297, %333
  %305 = phi ptr [ %334, %333 ], [ %302, %297 ]
  %306 = getelementptr inbounds %struct.BMLoop, ptr %305, i64 0, i32 3
  %307 = load ptr, ptr %306, align 8, !tbaa !81
  %308 = load ptr, ptr %307, align 8, !tbaa !61
  %309 = getelementptr inbounds i8, ptr %308, i64 %294
  %310 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %24, ptr noundef %25, ptr noundef nonnull %307, ptr noundef %309) #14, !range !22
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %333, label %312

312:                                              ; preds = %304
  %313 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %24, ptr noundef nonnull %305, i32 noundef %20) #14, !range !22
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %333, label %315

315:                                              ; preds = %312
  %316 = load ptr, ptr %305, align 8, !tbaa !70
  %317 = getelementptr inbounds i8, ptr %316, i64 %295
  switch i32 %293, label %332 [
    i32 116, label %318
    i32 117, label %325
  ]

318:                                              ; preds = %315
  %319 = getelementptr inbounds [2 x float], ptr %317, i64 0, i64 1
  %320 = load float, ptr %319, align 4, !tbaa !97
  %321 = load float, ptr %296, align 4, !tbaa !97
  %322 = fsub float %320, %321
  %323 = load float, ptr %260, align 4, !tbaa !97
  %324 = call float @llvm.fmuladd.f32(float %292, float %322, float %323)
  store float %324, ptr %317, align 4, !tbaa !97
  br label %333

325:                                              ; preds = %315
  %326 = load float, ptr %317, align 4, !tbaa !97
  %327 = load float, ptr %260, align 4, !tbaa !97
  %328 = fsub float %326, %327
  %329 = load float, ptr %296, align 4, !tbaa !97
  %330 = call float @llvm.fmuladd.f32(float %292, float %328, float %329)
  %331 = getelementptr inbounds [2 x float], ptr %317, i64 0, i64 1
  store float %330, ptr %331, align 4, !tbaa !97
  br label %333

332:                                              ; preds = %315
  call void @closest_to_line_segment_v2(ptr noundef %317, ptr noundef %317, ptr noundef %260, ptr noundef %266) #13
  br label %333

333:                                              ; preds = %318, %332, %325, %312, %304
  %334 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %13) #14
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %304, !llvm.loop !262

336:                                              ; preds = %333, %297
  %337 = add nuw nsw i64 %298, 1
  %338 = icmp eq i64 %337, %262
  br i1 %338, label %339, label %297, !llvm.loop !263

339:                                              ; preds = %336, %255
  %340 = load ptr, ptr %15, align 8, !tbaa !26
  %341 = icmp eq ptr %340, null
  br i1 %341, label %344, label %342

342:                                              ; preds = %339
  %343 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  call void %343(ptr noundef nonnull %340) #13
  br label %344

344:                                              ; preds = %342, %339
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #15
  br label %345

345:                                              ; preds = %213, %194, %344
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #15
  br label %346

346:                                              ; preds = %135, %345
  call void @uvedit_live_unwrap_update(ptr noundef %26, ptr noundef %24, ptr noundef %16) #14
  %347 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %348 = load ptr, ptr %347, align 8, !tbaa !60
  call void @DAG_id_tag_update(ptr noundef %348, i16 noundef signext 0) #13
  %349 = load ptr, ptr %347, align 8, !tbaa !60
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %349) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

; Function Attrs: optsize
declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @uv_sel_co_from_eve(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  %6 = load ptr, ptr %2, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 26
  %8 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %7, i32 noundef 16) #13
  %9 = load ptr, ptr %2, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 27
  %11 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %10, i32 noundef 15) #13
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 6, ptr noundef %3) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %4
  %15 = sext i32 %11 to i64
  br label %16

16:                                               ; preds = %14, %31
  %17 = phi ptr [ %12, %14 ], [ %32, %31 ]
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  %21 = getelementptr inbounds i8, ptr %20, i64 %15
  %22 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %19, ptr noundef %21) #14, !range !22
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %16
  %25 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %0, ptr noundef nonnull %17, i32 noundef %8) #14, !range !22
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %17, align 8, !tbaa !70
  %29 = sext i32 %8 to i64
  %30 = getelementptr inbounds i8, ptr %28, i64 %29
  br label %34

31:                                               ; preds = %16, %24
  %32 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %16, !llvm.loop !264

34:                                               ; preds = %31, %4, %27
  %35 = phi ptr [ %30, %27 ], [ null, %4 ], [ null, %31 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  ret ptr %35
}

; Function Attrs: optsize
declare void @closest_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_seams_from_islands_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store i64 4094254846621890327, ptr %3, align 8
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.132) #13
  %11 = load ptr, ptr %8, align 8, !tbaa !138
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.135) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %13 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !265
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = tail call zeroext i8 @EDBM_mtexpoly_check(ptr noundef nonnull %14) #13
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %121, label %18

18:                                               ; preds = %2
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %15, i8 noundef zeroext 8) #13
  %19 = call ptr @BM_uv_vert_map_create(ptr noundef %15, i8 noundef zeroext 0, ptr noundef nonnull %3) #13
  %20 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %15, i8 noundef zeroext 2, ptr noundef null) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %117, label %22

22:                                               ; preds = %18
  %23 = and i32 %10, 255
  %24 = icmp eq i32 %23, 0
  %25 = and i32 %12, 255
  %26 = icmp eq i32 %25, 0
  br label %27

27:                                               ; preds = %22, %114
  %28 = phi ptr [ %20, %22 ], [ %115, %114 ]
  %29 = load ptr, ptr %19, align 8, !tbaa !267
  %30 = getelementptr inbounds %struct.BMEdge, ptr %28, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !85
  %32 = call fastcc i32 @_bm_elem_index_get(ptr noundef %31) #14
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %29, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !26
  br i1 %24, label %37, label %36

36:                                               ; preds = %27
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %28, i8 noundef zeroext 4) #14
  br label %37

37:                                               ; preds = %36, %27
  %38 = icmp eq ptr %35, null
  br i1 %38, label %114, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.BMEdge, ptr %28, i64 0, i32 3
  br label %41

41:                                               ; preds = %39, %104
  %42 = phi ptr [ null, %39 ], [ %107, %104 ]
  %43 = phi ptr [ null, %39 ], [ %106, %104 ]
  %44 = phi ptr [ %35, %39 ], [ %108, %104 ]
  %45 = phi i32 [ 0, %39 ], [ %105, %104 ]
  %46 = phi i8 [ 1, %39 ], [ %52, %104 ]
  %47 = getelementptr inbounds %struct.UvMapVert, ptr %44, i64 0, i32 3
  %48 = load i8, ptr %47, align 1, !tbaa !168
  %49 = icmp ne i8 %48, 0
  %50 = icmp ne i32 %45, 0
  %51 = select i1 %49, i1 %50, i1 false
  %52 = select i1 %51, i8 0, i8 %46
  %53 = getelementptr inbounds %struct.UvMapVert, ptr %44, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !169
  %55 = call ptr @BM_face_at_index(ptr noundef %15, i32 noundef %54) #13
  %56 = load ptr, ptr %19, align 8, !tbaa !267
  %57 = load ptr, ptr %40, align 8, !tbaa !88
  %58 = call fastcc i32 @_bm_elem_index_get(ptr noundef %57) #14
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %56, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !26
  %62 = icmp eq ptr %61, null
  br i1 %62, label %104, label %63

63:                                               ; preds = %41
  %64 = icmp eq i8 %52, 0
  br label %65

65:                                               ; preds = %63, %99
  %66 = phi ptr [ %61, %63 ], [ %102, %99 ]
  %67 = phi ptr [ %42, %63 ], [ %73, %99 ]
  %68 = phi ptr [ %43, %63 ], [ %101, %99 ]
  %69 = phi i32 [ %45, %63 ], [ %100, %99 ]
  %70 = getelementptr inbounds %struct.UvMapVert, ptr %66, i64 0, i32 3
  %71 = load i8, ptr %70, align 1, !tbaa !168
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %72, ptr %67, ptr %66
  %74 = getelementptr inbounds %struct.UvMapVert, ptr %66, i64 0, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa !169
  %76 = call ptr @BM_face_at_index(ptr noundef %15, i32 noundef %75) #13
  %77 = icmp eq ptr %55, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %65
  br i1 %64, label %110, label %79

79:                                               ; preds = %78
  %80 = icmp eq ptr %68, null
  br i1 %80, label %94, label %81

81:                                               ; preds = %79, %89
  %82 = phi ptr [ %92, %89 ], [ %68, %79 ]
  %83 = phi i8 [ %91, %89 ], [ 1, %79 ]
  %84 = getelementptr inbounds %struct.UvMapVert, ptr %82, i64 0, i32 3
  %85 = load i8, ptr %84, align 1, !tbaa !168
  %86 = icmp eq i8 %85, 0
  %87 = icmp eq ptr %82, %68
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = icmp eq ptr %82, %66
  %91 = select i1 %90, i8 0, i8 %83
  %92 = load ptr, ptr %82, align 8, !tbaa !170
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %81, !llvm.loop !269

94:                                               ; preds = %81, %89, %79
  %95 = phi i8 [ 0, %79 ], [ %91, %89 ], [ %83, %81 ]
  %96 = phi i32 [ 1, %79 ], [ %69, %89 ], [ %69, %81 ]
  %97 = phi ptr [ %73, %79 ], [ %68, %89 ], [ %68, %81 ]
  %98 = icmp eq i8 %95, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %65, %94
  %100 = phi i32 [ %96, %94 ], [ %69, %65 ]
  %101 = phi ptr [ %97, %94 ], [ %68, %65 ]
  %102 = load ptr, ptr %66, align 8, !tbaa !26
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %65, !llvm.loop !270

104:                                              ; preds = %99, %41
  %105 = phi i32 [ %45, %41 ], [ %100, %99 ]
  %106 = phi ptr [ %43, %41 ], [ %101, %99 ]
  %107 = phi ptr [ %42, %41 ], [ %73, %99 ]
  %108 = load ptr, ptr %44, align 8, !tbaa !170
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %41, !llvm.loop !271

110:                                              ; preds = %94, %78
  br i1 %24, label %112, label %111

111:                                              ; preds = %110
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %28, i8 noundef zeroext 4) #14
  br label %112

112:                                              ; preds = %111, %110
  br i1 %26, label %114, label %113

113:                                              ; preds = %112
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %28, i8 noundef zeroext 8) #14
  br label %114

114:                                              ; preds = %104, %37, %112, %113
  %115 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %27, !llvm.loop !272

117:                                              ; preds = %114, %18
  %118 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 36
  %119 = load i32, ptr %118, align 8, !tbaa !273
  %120 = or i32 %119, 128
  store i32 %120, ptr %118, align 8, !tbaa !273
  call void @BM_uv_vert_map_free(ptr noundef %19) #13
  call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 0) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %7) #13
  br label %121

121:                                              ; preds = %2, %117
  %122 = phi i32 [ 4, %117 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i32 %122
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_mark_seam_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %7 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !265
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %12 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 26
  %13 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %12, i32 noundef 16) #13
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %11, i8 noundef zeroext 3, ptr noundef null) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %2, %30
  %17 = phi ptr [ %31, %30 ], [ %14, %2 ]
  %18 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %17) #14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %16, %27
  %21 = phi ptr [ %28, %27 ], [ %18, %16 ]
  %22 = call zeroext i8 @uvedit_edge_select_test(ptr noundef %6, ptr noundef nonnull %21, i32 noundef %13) #14
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !82
  call fastcc void @_bm_elem_flag_enable(ptr noundef %26, i8 noundef zeroext 4) #14
  br label %27

27:                                               ; preds = %20, %24
  %28 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %20, !llvm.loop !274

30:                                               ; preds = %27, %16
  %31 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %16, !llvm.loop !275

33:                                               ; preds = %30, %2
  %34 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 36
  %35 = load i32, ptr %34, align 8, !tbaa !273
  %36 = or i32 %35, 128
  store i32 %36, ptr %34, align 8, !tbaa !273
  %37 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %38 = load ptr, ptr %37, align 8, !tbaa !28
  %39 = getelementptr inbounds %struct.ToolSettings, ptr %38, i64 0, i32 50
  %40 = load i8, ptr %39, align 2, !tbaa !276
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  call void @ED_unwrap_lscm(ptr noundef nonnull %6, ptr noundef %5, i16 noundef signext 0) #13
  br label %43

43:                                               ; preds = %42, %33
  call void @DAG_id_tag_update(ptr noundef nonnull %8, i16 noundef signext 0) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret i32 4
}

; Function Attrs: optsize
declare void @ED_unwrap_lscm(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_weld_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  tail call fastcc void @uv_weld_align(ptr noundef %0, i32 noundef 119) #14
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %13 = load ptr, ptr %12, align 8, !tbaa !138
  %14 = tail call float @RNA_float_get(ptr noundef %13, ptr noundef nonnull @.str.145) #13
  %15 = load ptr, ptr %12, align 8, !tbaa !138
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.148) #13
  %17 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %18 = tail call ptr @BKE_editmesh_from_object(ptr noundef %17) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 26
  %21 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %20, i32 noundef 16) #13
  %22 = load ptr, ptr %18, align 8, !tbaa !55
  %23 = getelementptr inbounds %struct.BMesh, ptr %22, i64 0, i32 27
  %24 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %23, i32 noundef 15) #13
  %25 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  %26 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %27 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #13
  %28 = and i32 %16, 255
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %183

30:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store ptr null, ptr %5, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  store ptr null, ptr %6, align 8, !tbaa !26
  %31 = load ptr, ptr %18, align 8, !tbaa !55
  %32 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %31, i8 noundef zeroext 3, ptr noundef null) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %172, label %34

34:                                               ; preds = %30
  %35 = sext i32 %24 to i64
  %36 = sext i32 %21 to i64
  br label %42

37:                                               ; preds = %81
  %38 = icmp sgt i32 %82, 0
  br i1 %38, label %39, label %172

39:                                               ; preds = %37
  %40 = zext nneg i32 %82 to i64
  %41 = zext nneg i32 %82 to i64
  br label %85

42:                                               ; preds = %34, %81
  %43 = phi ptr [ %32, %34 ], [ %83, %81 ]
  %44 = phi i32 [ 0, %34 ], [ %82, %81 ]
  %45 = load ptr, ptr %43, align 8, !tbaa !61
  %46 = getelementptr inbounds i8, ptr %45, i64 %35
  %47 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %26, ptr noundef %27, ptr noundef nonnull %43, ptr noundef %46) #14, !range !22
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %81, label %49

49:                                               ; preds = %42
  %50 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %43) #14
  %51 = icmp eq ptr %50, null
  br i1 %51, label %81, label %52

52:                                               ; preds = %49, %77
  %53 = phi ptr [ %79, %77 ], [ %50, %49 ]
  %54 = phi i32 [ %78, %77 ], [ %44, %49 ]
  %55 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %26, ptr noundef nonnull %53, i32 noundef %21) #14, !range !22
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %53, align 8, !tbaa !70
  %59 = getelementptr inbounds i8, ptr %58, i64 %36
  %60 = load ptr, ptr %5, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !26
  %64 = call i64 %63(ptr noundef nonnull %60) #13
  %65 = lshr i64 %64, 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = phi i64 [ 0, %57 ], [ %65, %62 ]
  %68 = add nsw i32 %54, 1
  %69 = sext i32 %68 to i64
  %70 = icmp ult i64 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef null, i32 noundef 16, i32 noundef %54, i32 noundef 1, ptr noundef nonnull @.str.151) #13
  br label %72

72:                                               ; preds = %71, %66
  %73 = load ptr, ptr %5, align 8, !tbaa !26
  %74 = sext i32 %54 to i64
  %75 = getelementptr inbounds %struct.UVvert, ptr %73, i64 %74
  store ptr %59, ptr %75, align 8, !tbaa.struct !277
  %76 = getelementptr inbounds i8, ptr %75, i64 8
  store i8 0, ptr %76, align 8, !tbaa.struct !278
  br label %77

77:                                               ; preds = %52, %72
  %78 = phi i32 [ %68, %72 ], [ %54, %52 ]
  %79 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %52, !llvm.loop !279

81:                                               ; preds = %77, %49, %42
  %82 = phi i32 [ %44, %42 ], [ %44, %49 ], [ %78, %77 ]
  %83 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %84 = icmp eq ptr %83, null
  br i1 %84, label %37, label %42, !llvm.loop !280

85:                                               ; preds = %39, %168
  %86 = phi i64 [ 0, %39 ], [ %169, %168 ]
  %87 = phi i64 [ 1, %39 ], [ %170, %168 ]
  %88 = load ptr, ptr %5, align 8, !tbaa !26
  %89 = getelementptr inbounds %struct.UVvert, ptr %88, i64 %86, i32 1
  %90 = load i8, ptr %89, align 8, !tbaa !281
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %85
  %93 = add nuw nsw i64 %86, 1
  br label %168

94:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  %95 = load ptr, ptr %6, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !26
  %99 = call i64 %98(ptr noundef nonnull %95) #13
  %100 = icmp ult i64 %99, 8
  br i1 %100, label %101, label %102

101:                                              ; preds = %94, %97
  call void @_bli_array_grow_func(ptr noundef nonnull %6, ptr noundef null, i32 noundef 8, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.152) #13
  br label %102

102:                                              ; preds = %101, %97
  %103 = load ptr, ptr %5, align 8, !tbaa !26
  %104 = getelementptr inbounds %struct.UVvert, ptr %103, i64 %86
  %105 = load ptr, ptr %104, align 8, !tbaa !283
  %106 = load ptr, ptr %6, align 8, !tbaa !26
  store ptr %105, ptr %106, align 8, !tbaa !26
  %107 = load ptr, ptr %5, align 8, !tbaa !26
  %108 = getelementptr inbounds %struct.UVvert, ptr %107, i64 %86
  %109 = load ptr, ptr %108, align 8, !tbaa !283
  call fastcc void @copy_v2_v2(ptr noundef nonnull %8, ptr noundef %109) #14
  call fastcc void @copy_v2_v2(ptr noundef nonnull %7, ptr noundef %109) #14
  %110 = getelementptr inbounds %struct.UVvert, ptr %107, i64 %86, i32 1
  store i8 1, ptr %110, align 8, !tbaa !281
  %111 = add nuw nsw i64 %86, 1
  %112 = icmp slt i64 %111, %40
  br i1 %112, label %114, label %113

113:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  call void @mid_v2_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  br label %156

114:                                              ; preds = %102, %148
  %115 = phi i64 [ %150, %148 ], [ %87, %102 ]
  %116 = phi i32 [ %149, %148 ], [ 1, %102 ]
  %117 = load ptr, ptr %5, align 8, !tbaa !26
  %118 = getelementptr inbounds %struct.UVvert, ptr %117, i64 %115
  %119 = load ptr, ptr %118, align 8, !tbaa !283
  %120 = getelementptr inbounds %struct.UVvert, ptr %117, i64 %115, i32 1
  %121 = load i8, ptr %120, align 8, !tbaa !281
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %148

123:                                              ; preds = %114
  %124 = call fastcc float @len_manhattan_v2v2(ptr noundef %109, ptr noundef %119) #14
  %125 = fcmp olt float %124, %14
  br i1 %125, label %126, label %148

126:                                              ; preds = %123
  call void @minmax_v2v2_v2(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef %119) #13
  %127 = load ptr, ptr %6, align 8
  %128 = icmp eq ptr %127, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !26
  %131 = call i64 %130(ptr noundef nonnull %127) #13
  %132 = lshr i64 %131, 3
  br label %133

133:                                              ; preds = %129, %126
  %134 = phi i64 [ %132, %129 ], [ 0, %126 ]
  %135 = add nsw i32 %116, 1
  %136 = sext i32 %135 to i64
  %137 = icmp ult i64 %134, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  call void @_bli_array_grow_func(ptr noundef nonnull %6, ptr noundef null, i32 noundef 8, i32 noundef %116, i32 noundef 1, ptr noundef nonnull @.str.152) #13
  br label %139

139:                                              ; preds = %138, %133
  %140 = load ptr, ptr %5, align 8, !tbaa !26
  %141 = getelementptr inbounds %struct.UVvert, ptr %140, i64 %115
  %142 = load ptr, ptr %141, align 8, !tbaa !283
  %143 = load ptr, ptr %6, align 8, !tbaa !26
  %144 = sext i32 %116 to i64
  %145 = getelementptr inbounds ptr, ptr %143, i64 %144
  store ptr %142, ptr %145, align 8, !tbaa !26
  %146 = load ptr, ptr %5, align 8, !tbaa !26
  %147 = getelementptr inbounds %struct.UVvert, ptr %146, i64 %115, i32 1
  store i8 1, ptr %147, align 8, !tbaa !281
  br label %148

148:                                              ; preds = %114, %123, %139
  %149 = phi i32 [ %135, %139 ], [ %116, %123 ], [ %116, %114 ]
  %150 = add nuw nsw i64 %115, 1
  %151 = icmp eq i64 %150, %41
  br i1 %151, label %152, label %114, !llvm.loop !284

152:                                              ; preds = %148
  %153 = icmp eq i32 %149, 0
  br i1 %153, label %167, label %154

154:                                              ; preds = %152
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  call void @mid_v2_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  %155 = icmp sgt i32 %149, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %113, %154
  %157 = phi i32 [ 1, %113 ], [ %149, %154 ]
  %158 = zext nneg i32 %157 to i64
  br label %159

159:                                              ; preds = %156, %159
  %160 = phi i64 [ 0, %156 ], [ %164, %159 ]
  %161 = load ptr, ptr %6, align 8, !tbaa !26
  %162 = getelementptr inbounds ptr, ptr %161, i64 %160
  %163 = load ptr, ptr %162, align 8, !tbaa !26
  call fastcc void @copy_v2_v2(ptr noundef %163, ptr noundef nonnull %9) #14
  %164 = add nuw nsw i64 %160, 1
  %165 = icmp eq i64 %164, %158
  br i1 %165, label %166, label %159, !llvm.loop !285

166:                                              ; preds = %159, %154
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  br label %167

167:                                              ; preds = %166, %152
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %168

168:                                              ; preds = %92, %167
  %169 = phi i64 [ %93, %92 ], [ %111, %167 ]
  %170 = add nuw nsw i64 %87, 1
  %171 = icmp eq i64 %169, %41
  br i1 %171, label %172, label %85, !llvm.loop !286

172:                                              ; preds = %168, %30, %37
  %173 = load ptr, ptr %5, align 8, !tbaa !26
  %174 = icmp eq ptr %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %172
  %176 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  call void %176(ptr noundef nonnull %173) #13
  br label %177

177:                                              ; preds = %175, %172
  %178 = load ptr, ptr %6, align 8, !tbaa !26
  %179 = icmp eq ptr %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %177
  %181 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  call void %181(ptr noundef nonnull %178) #13
  br label %182

182:                                              ; preds = %180, %177
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %294

183:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  store ptr null, ptr %10, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  store ptr null, ptr %11, align 8, !tbaa !26
  %184 = load ptr, ptr %18, align 8, !tbaa !55
  %185 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %184, i8 noundef zeroext 3, ptr noundef null) #14
  %186 = icmp eq ptr %185, null
  br i1 %186, label %283, label %187

187:                                              ; preds = %183
  %188 = sext i32 %24 to i64
  %189 = sext i32 %21 to i64
  br label %196

190:                                              ; preds = %251
  %191 = icmp sgt i32 %252, 0
  br i1 %191, label %192, label %283

192:                                              ; preds = %190
  %193 = icmp sgt i32 %253, 0
  %194 = zext nneg i32 %252 to i64
  %195 = zext nneg i32 %253 to i64
  br label %256

196:                                              ; preds = %187, %251
  %197 = phi i32 [ 0, %187 ], [ %253, %251 ]
  %198 = phi i32 [ 0, %187 ], [ %252, %251 ]
  %199 = phi ptr [ %185, %187 ], [ %254, %251 ]
  %200 = load ptr, ptr %199, align 8, !tbaa !61
  %201 = getelementptr inbounds i8, ptr %200, i64 %188
  %202 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %26, ptr noundef %27, ptr noundef nonnull %199, ptr noundef %201) #14, !range !22
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %251, label %204

204:                                              ; preds = %196
  %205 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %199) #14
  %206 = icmp eq ptr %205, null
  br i1 %206, label %251, label %207

207:                                              ; preds = %204, %241
  %208 = phi i32 [ %245, %241 ], [ %197, %204 ]
  %209 = phi i32 [ %244, %241 ], [ %198, %204 ]
  %210 = phi ptr [ %249, %241 ], [ %205, %204 ]
  %211 = load ptr, ptr %210, align 8, !tbaa !70
  %212 = getelementptr inbounds i8, ptr %211, i64 %189
  %213 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %26, ptr noundef nonnull %210, i32 noundef %21) #14, !range !22
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %228, label %215

215:                                              ; preds = %207
  %216 = load ptr, ptr %10, align 8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %222, label %218

218:                                              ; preds = %215
  %219 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !26
  %220 = call i64 %219(ptr noundef nonnull %216) #13
  %221 = lshr i64 %220, 3
  br label %222

222:                                              ; preds = %218, %215
  %223 = phi i64 [ %221, %218 ], [ 0, %215 ]
  %224 = add nsw i32 %209, 1
  %225 = sext i32 %224 to i64
  %226 = icmp ult i64 %223, %225
  br i1 %226, label %227, label %241

227:                                              ; preds = %222
  call void @_bli_array_grow_func(ptr noundef nonnull %10, ptr noundef null, i32 noundef 8, i32 noundef %209, i32 noundef 1, ptr noundef nonnull @.str.152) #13
  br label %241

228:                                              ; preds = %207
  %229 = load ptr, ptr %11, align 8
  %230 = icmp eq ptr %229, null
  br i1 %230, label %235, label %231

231:                                              ; preds = %228
  %232 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !26
  %233 = call i64 %232(ptr noundef nonnull %229) #13
  %234 = lshr i64 %233, 3
  br label %235

235:                                              ; preds = %231, %228
  %236 = phi i64 [ %234, %231 ], [ 0, %228 ]
  %237 = add nsw i32 %208, 1
  %238 = sext i32 %237 to i64
  %239 = icmp ult i64 %236, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  call void @_bli_array_grow_func(ptr noundef nonnull %11, ptr noundef null, i32 noundef 8, i32 noundef %208, i32 noundef 1, ptr noundef nonnull @.str.153) #13
  br label %241

241:                                              ; preds = %235, %240, %222, %227
  %242 = phi i32 [ %209, %227 ], [ %209, %222 ], [ %208, %240 ], [ %208, %235 ]
  %243 = phi ptr [ %10, %227 ], [ %10, %222 ], [ %11, %240 ], [ %11, %235 ]
  %244 = phi i32 [ %224, %227 ], [ %224, %222 ], [ %209, %240 ], [ %209, %235 ]
  %245 = phi i32 [ %208, %227 ], [ %208, %222 ], [ %237, %240 ], [ %237, %235 ]
  %246 = load ptr, ptr %243, align 8, !tbaa !26
  %247 = sext i32 %242 to i64
  %248 = getelementptr inbounds ptr, ptr %246, i64 %247
  store ptr %212, ptr %248, align 8, !tbaa !26
  %249 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %207, !llvm.loop !287

251:                                              ; preds = %241, %204, %196
  %252 = phi i32 [ %198, %196 ], [ %198, %204 ], [ %244, %241 ]
  %253 = phi i32 [ %197, %196 ], [ %197, %204 ], [ %245, %241 ]
  %254 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %255 = icmp eq ptr %254, null
  br i1 %255, label %190, label %196, !llvm.loop !288

256:                                              ; preds = %192, %280
  %257 = phi i64 [ 0, %192 ], [ %281, %280 ]
  %258 = load ptr, ptr %10, align 8, !tbaa !26
  %259 = getelementptr inbounds ptr, ptr %258, i64 %257
  %260 = load ptr, ptr %259, align 8, !tbaa !26
  br i1 %193, label %261, label %280

261:                                              ; preds = %256
  %262 = load ptr, ptr %11, align 8, !tbaa !26
  br label %263

263:                                              ; preds = %261, %263
  %264 = phi i64 [ 0, %261 ], [ %275, %263 ]
  %265 = phi ptr [ null, %261 ], [ %274, %263 ]
  %266 = phi float [ 0x47EFFFFFE0000000, %261 ], [ %273, %263 ]
  %267 = getelementptr inbounds ptr, ptr %262, i64 %264
  %268 = load ptr, ptr %267, align 8, !tbaa !26
  %269 = call fastcc float @len_manhattan_v2v2(ptr noundef %260, ptr noundef %268) #14
  %270 = fcmp olt float %269, %14
  %271 = fcmp olt float %269, %266
  %272 = select i1 %270, i1 %271, i1 false
  %273 = select i1 %272, float %269, float %266
  %274 = select i1 %272, ptr %268, ptr %265
  %275 = add nuw nsw i64 %264, 1
  %276 = icmp eq i64 %275, %195
  br i1 %276, label %277, label %263, !llvm.loop !289

277:                                              ; preds = %263
  %278 = icmp eq ptr %274, null
  br i1 %278, label %280, label %279

279:                                              ; preds = %277
  call fastcc void @copy_v2_v2(ptr noundef %260, ptr noundef nonnull %274) #14
  br label %280

280:                                              ; preds = %256, %279, %277
  %281 = add nuw nsw i64 %257, 1
  %282 = icmp eq i64 %281, %194
  br i1 %282, label %283, label %256, !llvm.loop !290

283:                                              ; preds = %280, %183, %190
  %284 = load ptr, ptr %10, align 8, !tbaa !26
  %285 = icmp eq ptr %284, null
  br i1 %285, label %288, label %286

286:                                              ; preds = %283
  %287 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  call void %287(ptr noundef nonnull %284) #13
  br label %288

288:                                              ; preds = %286, %283
  %289 = load ptr, ptr %11, align 8, !tbaa !26
  %290 = icmp eq ptr %289, null
  br i1 %290, label %293, label %291

291:                                              ; preds = %288
  %292 = load ptr, ptr @MEM_freeN, align 8, !tbaa !26
  call void %292(ptr noundef nonnull %289) #13
  br label %293

293:                                              ; preds = %291, %288
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  br label %294

294:                                              ; preds = %293, %182
  call void @uvedit_live_unwrap_update(ptr noundef %25, ptr noundef %26, ptr noundef %17) #14
  %295 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 19
  %296 = load ptr, ptr %295, align 8, !tbaa !60
  call void @DAG_id_tag_update(ptr noundef %296, i16 noundef signext 0) #13
  %297 = load ptr, ptr %295, align 8, !tbaa !60
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %297) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_pin_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %7 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #13
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !138
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.24) #13
  %12 = load ptr, ptr %8, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 26
  %14 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %13, i32 noundef 16) #13
  %15 = load ptr, ptr %8, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 27
  %17 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %16, i32 noundef 15) #13
  %18 = load ptr, ptr %8, align 8, !tbaa !55
  %19 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %18, i8 noundef zeroext 3, ptr noundef null) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %57, label %21

21:                                               ; preds = %2
  %22 = sext i32 %17 to i64
  %23 = sext i32 %14 to i64
  %24 = and i32 %11, 255
  %25 = icmp eq i32 %24, 0
  br label %26

26:                                               ; preds = %21, %54
  %27 = phi ptr [ %19, %21 ], [ %55, %54 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !61
  %29 = getelementptr inbounds i8, ptr %28, i64 %22
  %30 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %5, ptr noundef %7, ptr noundef nonnull %27, ptr noundef %29) #14, !range !22
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %26
  %33 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %27) #14
  %34 = icmp eq ptr %33, null
  br i1 %34, label %54, label %35

35:                                               ; preds = %32, %51
  %36 = phi ptr [ %52, %51 ], [ %33, %32 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !70
  %38 = getelementptr inbounds i8, ptr %37, i64 %23
  %39 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %5, ptr noundef nonnull %36, i32 noundef %14) #14, !range !22
  %40 = icmp eq i8 %39, 0
  br i1 %25, label %41, label %46

41:                                               ; preds = %35
  br i1 %40, label %51, label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.MLoopUV, ptr %38, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !72
  %45 = or i32 %44, 4
  store i32 %45, ptr %43, align 4, !tbaa !72
  br label %51

46:                                               ; preds = %35
  br i1 %40, label %51, label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.MLoopUV, ptr %38, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !72
  %50 = and i32 %49, -5
  store i32 %50, ptr %48, align 4, !tbaa !72
  br label %51

51:                                               ; preds = %42, %41, %47, %46
  %52 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %35, !llvm.loop !291

54:                                               ; preds = %51, %32, %26
  %55 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %26, !llvm.loop !292

57:                                               ; preds = %54, %2
  %58 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %59 = load ptr, ptr %58, align 8, !tbaa !60
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %59) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_reveal_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  %10 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 12
  %12 = load i8, ptr %11, align 1, !tbaa !147
  %13 = icmp eq i8 %12, 4
  %14 = icmp eq ptr %5, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 23
  %17 = load i8, ptr %16, align 1, !tbaa !148
  %18 = icmp eq i8 %17, 1
  br label %19

19:                                               ; preds = %2, %15
  %20 = phi i1 [ %18, %15 ], [ false, %2 ]
  %21 = load ptr, ptr %10, align 8, !tbaa !55
  %22 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 26
  %23 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %22, i32 noundef 16) #13
  %24 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 11
  %25 = load i8, ptr %24, align 2, !tbaa !46
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  tail call void @EDBM_mesh_reveal(ptr noundef nonnull %10) #13
  %29 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %30) #13
  br label %202

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.BMEditMesh, ptr %10, i64 0, i32 12
  %33 = load i16, ptr %32, align 4, !tbaa !293
  %34 = icmp eq i16 %33, 4
  %35 = load ptr, ptr %10, align 8, !tbaa !55
  %36 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %35, i8 noundef zeroext 3, ptr noundef null) #14
  %37 = icmp eq ptr %36, null
  br i1 %13, label %38, label %139

38:                                               ; preds = %31
  br i1 %34, label %39, label %65

39:                                               ; preds = %38
  br i1 %37, label %198, label %40

40:                                               ; preds = %39
  %41 = sext i32 %23 to i64
  br label %42

42:                                               ; preds = %40, %62
  %43 = phi ptr [ %36, %40 ], [ %63, %62 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %43, i8 noundef zeroext 16) #14
  %44 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %43, i8 noundef zeroext 2) #14, !range !64
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %43, i8 noundef zeroext 1) #14, !range !64
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %43) #14
  %51 = icmp eq ptr %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %49, %52
  %53 = phi ptr [ %59, %52 ], [ %50, %49 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !70
  %55 = getelementptr inbounds i8, ptr %54, i64 %41
  %56 = getelementptr inbounds %struct.MLoopUV, ptr %55, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !72
  %58 = or i32 %57, 2
  store i32 %58, ptr %56, align 4, !tbaa !72
  %59 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %52, !llvm.loop !294

61:                                               ; preds = %52, %49
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %43, i8 noundef zeroext 16) #14
  br label %62

62:                                               ; preds = %42, %46, %61
  %63 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %64 = icmp eq ptr %63, null
  br i1 %64, label %198, label %42, !llvm.loop !295

65:                                               ; preds = %38
  br i1 %20, label %66, label %107

66:                                               ; preds = %65
  br i1 %37, label %198, label %67

67:                                               ; preds = %66
  %68 = sext i32 %23 to i64
  br label %69

69:                                               ; preds = %67, %104
  %70 = phi ptr [ %36, %67 ], [ %105, %104 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %70, i8 noundef zeroext 16) #14
  %71 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %70, i8 noundef zeroext 2) #14, !range !64
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %104

73:                                               ; preds = %69
  %74 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %70, i8 noundef zeroext 1) #14, !range !64
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %104

76:                                               ; preds = %73
  %77 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %70) #14
  %78 = icmp eq ptr %77, null
  br i1 %78, label %91, label %79

79:                                               ; preds = %76, %79
  %80 = phi i32 [ %86, %79 ], [ 0, %76 ]
  %81 = phi ptr [ %87, %79 ], [ %77, %76 ]
  %82 = getelementptr inbounds %struct.BMLoop, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !83
  %84 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %83, i8 noundef zeroext 1) #14, !range !64
  %85 = zext nneg i8 %84 to i32
  %86 = add nuw nsw i32 %80, %85
  %87 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %79, !llvm.loop !296

89:                                               ; preds = %79
  %90 = icmp eq i32 %86, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %76, %89
  %92 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %70) #14
  %93 = icmp eq ptr %92, null
  br i1 %93, label %103, label %94

94:                                               ; preds = %91, %94
  %95 = phi ptr [ %101, %94 ], [ %92, %91 ]
  %96 = load ptr, ptr %95, align 8, !tbaa !70
  %97 = getelementptr inbounds i8, ptr %96, i64 %68
  %98 = getelementptr inbounds %struct.MLoopUV, ptr %97, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !72
  %100 = or i32 %99, 2
  store i32 %100, ptr %98, align 4, !tbaa !72
  %101 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %94, !llvm.loop !297

103:                                              ; preds = %94, %91
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %70, i8 noundef zeroext 16) #14
  br label %104

104:                                              ; preds = %89, %103, %69, %73
  %105 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %106 = icmp eq ptr %105, null
  br i1 %106, label %198, label %69, !llvm.loop !298

107:                                              ; preds = %65
  br i1 %37, label %198, label %108

108:                                              ; preds = %107
  %109 = sext i32 %23 to i64
  br label %110

110:                                              ; preds = %108, %136
  %111 = phi ptr [ %36, %108 ], [ %137, %136 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %111, i8 noundef zeroext 16) #14
  %112 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %111, i8 noundef zeroext 2) #14, !range !64
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %136

114:                                              ; preds = %110
  %115 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %111, i8 noundef zeroext 1) #14, !range !64
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %136

117:                                              ; preds = %114
  %118 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %111) #14
  %119 = icmp eq ptr %118, null
  br i1 %119, label %135, label %120

120:                                              ; preds = %117, %132
  %121 = phi ptr [ %133, %132 ], [ %118, %117 ]
  %122 = getelementptr inbounds %struct.BMLoop, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !83
  %124 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %123, i8 noundef zeroext 1) #14, !range !64
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load ptr, ptr %121, align 8, !tbaa !70
  %128 = getelementptr inbounds i8, ptr %127, i64 %109
  %129 = getelementptr inbounds %struct.MLoopUV, ptr %128, i64 0, i32 1
  %130 = load i32, ptr %129, align 4, !tbaa !72
  %131 = or i32 %130, 2
  store i32 %131, ptr %129, align 4, !tbaa !72
  br label %132

132:                                              ; preds = %120, %126
  %133 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %120, !llvm.loop !299

135:                                              ; preds = %132, %117
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %111, i8 noundef zeroext 16) #14
  br label %136

136:                                              ; preds = %110, %114, %135
  %137 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %138 = icmp eq ptr %137, null
  br i1 %138, label %198, label %110, !llvm.loop !300

139:                                              ; preds = %31
  br i1 %34, label %140, label %166

140:                                              ; preds = %139
  br i1 %37, label %198, label %141

141:                                              ; preds = %140
  %142 = sext i32 %23 to i64
  br label %143

143:                                              ; preds = %141, %163
  %144 = phi ptr [ %36, %141 ], [ %164, %163 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %144, i8 noundef zeroext 16) #14
  %145 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %144, i8 noundef zeroext 2) #14, !range !64
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %143
  %148 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %144, i8 noundef zeroext 1) #14, !range !64
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %144) #14
  %152 = icmp eq ptr %151, null
  br i1 %152, label %162, label %153

153:                                              ; preds = %150, %153
  %154 = phi ptr [ %160, %153 ], [ %151, %150 ]
  %155 = load ptr, ptr %154, align 8, !tbaa !70
  %156 = getelementptr inbounds i8, ptr %155, i64 %142
  %157 = getelementptr inbounds %struct.MLoopUV, ptr %156, i64 0, i32 1
  %158 = load i32, ptr %157, align 4, !tbaa !72
  %159 = or i32 %158, 2
  store i32 %159, ptr %157, align 4, !tbaa !72
  %160 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %153, !llvm.loop !301

162:                                              ; preds = %153, %150
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %144, i8 noundef zeroext 16) #14
  br label %163

163:                                              ; preds = %143, %147, %162
  %164 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %165 = icmp eq ptr %164, null
  br i1 %165, label %198, label %143, !llvm.loop !302

166:                                              ; preds = %139
  br i1 %37, label %198, label %167

167:                                              ; preds = %166
  %168 = sext i32 %23 to i64
  br label %169

169:                                              ; preds = %167, %195
  %170 = phi ptr [ %36, %167 ], [ %196, %195 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %170, i8 noundef zeroext 16) #14
  %171 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %170, i8 noundef zeroext 2) #14, !range !64
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %195

173:                                              ; preds = %169
  %174 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %170, i8 noundef zeroext 1) #14, !range !64
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %173
  %177 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %170) #14
  %178 = icmp eq ptr %177, null
  br i1 %178, label %194, label %179

179:                                              ; preds = %176, %191
  %180 = phi ptr [ %192, %191 ], [ %177, %176 ]
  %181 = getelementptr inbounds %struct.BMLoop, ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !83
  %183 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %182, i8 noundef zeroext 1) #14, !range !64
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %179
  %186 = load ptr, ptr %180, align 8, !tbaa !70
  %187 = getelementptr inbounds i8, ptr %186, i64 %168
  %188 = getelementptr inbounds %struct.MLoopUV, ptr %187, i64 0, i32 1
  %189 = load i32, ptr %188, align 4, !tbaa !72
  %190 = or i32 %189, 2
  store i32 %190, ptr %188, align 4, !tbaa !72
  br label %191

191:                                              ; preds = %179, %185
  %192 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %179, !llvm.loop !303

194:                                              ; preds = %191, %176
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %170, i8 noundef zeroext 16) #14
  br label %195

195:                                              ; preds = %169, %173, %194
  %196 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %169, !llvm.loop !304

198:                                              ; preds = %195, %163, %136, %104, %62, %166, %140, %107, %66, %39
  %199 = load ptr, ptr %10, align 8, !tbaa !55
  call void @BM_mesh_elem_hflag_enable_test(ptr noundef %199, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 16) #13
  %200 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %201 = load ptr, ptr %200, align 8, !tbaa !60
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %201) #13
  br label %202

202:                                              ; preds = %198, %28
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret i32 4
}

; Function Attrs: optsize
declare void @EDBM_mesh_reveal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_enable_test(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_hide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  %10 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !138
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.30) #13
  %14 = trunc i32 %13 to i8
  %15 = icmp eq ptr %5, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !236
  br label %19

19:                                               ; preds = %2, %16
  %20 = phi ptr [ %18, %16 ], [ null, %2 ]
  %21 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 12
  %22 = load i8, ptr %21, align 1, !tbaa !147
  %23 = icmp eq i8 %22, 4
  %24 = load ptr, ptr %10, align 8, !tbaa !55
  %25 = getelementptr inbounds %struct.BMesh, ptr %24, i64 0, i32 26
  %26 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %25, i32 noundef 16) #13
  %27 = load ptr, ptr %10, align 8, !tbaa !55
  %28 = getelementptr inbounds %struct.BMesh, ptr %27, i64 0, i32 27
  %29 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %28, i32 noundef 15) #13
  %30 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 11
  %31 = load i8, ptr %30, align 2, !tbaa !46
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %19
  tail call void @EDBM_mesh_hide(ptr noundef nonnull %10, i8 noundef zeroext %14) #13
  %35 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %36 = load ptr, ptr %35, align 8, !tbaa !60
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %36) #13
  br label %138

37:                                               ; preds = %19
  %38 = load ptr, ptr %10, align 8, !tbaa !55
  %39 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %38, i8 noundef zeroext 3, ptr noundef null) #14
  %40 = icmp eq ptr %39, null
  br i1 %40, label %129, label %41

41:                                               ; preds = %37
  %42 = sext i32 %29 to i64
  %43 = sext i32 %26 to i64
  %44 = icmp eq i8 %14, 0
  %45 = getelementptr inbounds %struct.BMEditMesh, ptr %10, i64 0, i32 12
  %46 = zext i1 %44 to i8
  br label %47

47:                                               ; preds = %41, %126
  %48 = phi ptr [ %39, %41 ], [ %127, %126 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !61
  %50 = getelementptr inbounds i8, ptr %49, i64 %42
  %51 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %7, ptr noundef %20, ptr noundef nonnull %48, ptr noundef %50) #14, !range !22
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %126, label %53

53:                                               ; preds = %47
  %54 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %48) #14
  %55 = icmp eq ptr %54, null
  br i1 %55, label %126, label %56

56:                                               ; preds = %53, %65
  %57 = phi ptr [ %66, %65 ], [ %54, %53 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !70
  %59 = getelementptr inbounds i8, ptr %58, i64 %43
  %60 = getelementptr inbounds %struct.MLoopUV, ptr %59, i64 0, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !72
  %62 = and i32 %61, 2
  %63 = icmp eq i32 %62, 0
  %64 = xor i1 %44, %63
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  %66 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %67 = icmp eq ptr %66, null
  br i1 %67, label %126, label %56, !llvm.loop !305

68:                                               ; preds = %56
  %69 = load i16, ptr %45, align 4, !tbaa !293
  %70 = icmp eq i16 %69, 4
  br i1 %23, label %71, label %96

71:                                               ; preds = %68
  %72 = call fastcc zeroext i8 @bm_face_is_all_uv_sel(ptr noundef nonnull %48, i8 noundef zeroext 1, i32 noundef %26) #14
  %73 = icmp eq i8 %72, %46
  br i1 %70, label %74, label %75

74:                                               ; preds = %71
  br i1 %73, label %122, label %124

75:                                               ; preds = %71
  br i1 %73, label %76, label %95

76:                                               ; preds = %75
  %77 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %48) #14
  %78 = icmp eq ptr %77, null
  br i1 %78, label %95, label %79

79:                                               ; preds = %76, %92
  %80 = phi ptr [ %93, %92 ], [ %77, %76 ]
  %81 = load ptr, ptr %80, align 8, !tbaa !70
  %82 = getelementptr inbounds i8, ptr %81, i64 %43
  %83 = getelementptr inbounds %struct.MLoopUV, ptr %82, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !72
  %85 = and i32 %84, 2
  %86 = icmp eq i32 %85, 0
  %87 = xor i1 %44, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load ptr, ptr %10, align 8, !tbaa !55
  %90 = getelementptr inbounds %struct.BMLoop, ptr %80, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !83
  call void @BM_vert_select_set(ptr noundef %89, ptr noundef %91, i8 noundef zeroext 0) #13
  br label %92

92:                                               ; preds = %79, %88
  %93 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %79, !llvm.loop !306

95:                                               ; preds = %92, %76, %75
  br i1 %44, label %124, label %126

96:                                               ; preds = %68
  br i1 %70, label %97, label %100

97:                                               ; preds = %96
  %98 = call fastcc zeroext i8 @bm_face_is_all_uv_sel(ptr noundef nonnull %48, i8 noundef zeroext 0, i32 noundef %26) #14
  %99 = icmp eq i8 %98, %46
  br i1 %99, label %126, label %122

100:                                              ; preds = %96
  %101 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %48) #14
  %102 = icmp eq ptr %101, null
  br i1 %102, label %126, label %103

103:                                              ; preds = %100, %119
  %104 = phi ptr [ %120, %119 ], [ %101, %100 ]
  %105 = load ptr, ptr %104, align 8, !tbaa !70
  %106 = getelementptr inbounds i8, ptr %105, i64 %43
  %107 = getelementptr inbounds %struct.MLoopUV, ptr %106, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !72
  %109 = and i32 %108, 2
  %110 = icmp eq i32 %109, 0
  %111 = xor i1 %44, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %103
  %113 = load ptr, ptr %10, align 8, !tbaa !55
  %114 = getelementptr inbounds %struct.BMLoop, ptr %104, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !83
  call void @BM_vert_select_set(ptr noundef %113, ptr noundef %115, i8 noundef zeroext 0) #13
  br i1 %44, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, ptr %107, align 4, !tbaa !72
  %118 = and i32 %117, -3
  store i32 %118, ptr %107, align 4, !tbaa !72
  br label %119

119:                                              ; preds = %103, %116, %112
  %120 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %121 = icmp eq ptr %120, null
  br i1 %121, label %126, label %103, !llvm.loop !307

122:                                              ; preds = %97, %74
  %123 = load ptr, ptr %10, align 8, !tbaa !55
  call void @BM_face_select_set(ptr noundef %123, ptr noundef nonnull %48, i8 noundef zeroext 0) #13
  br label %124

124:                                              ; preds = %122, %95, %74
  %125 = call zeroext i8 @uvedit_face_select_disable(ptr noundef %7, ptr noundef nonnull %10, ptr noundef nonnull %48, i32 noundef %26) #14, !range !22
  br label %126

126:                                              ; preds = %65, %119, %124, %53, %100, %97, %95, %47
  %127 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %47, !llvm.loop !308

129:                                              ; preds = %126, %37
  %130 = getelementptr inbounds %struct.BMEditMesh, ptr %10, i64 0, i32 12
  %131 = load i16, ptr %130, align 4, !tbaa !293
  %132 = icmp eq i16 %131, 4
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  call void @EDBM_selectmode_flush_ex(ptr noundef nonnull %10, i16 noundef signext 3) #13
  br label %134

134:                                              ; preds = %133, %129
  %135 = load ptr, ptr %10, align 8, !tbaa !55
  call void @BM_select_history_validate(ptr noundef %135) #13
  %136 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %137 = load ptr, ptr %136, align 8, !tbaa !60
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %137) #13
  br label %138

138:                                              ; preds = %134, %34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret i32 4
}

; Function Attrs: optsize
declare void @EDBM_mesh_hide(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bm_face_is_all_uv_sel(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !309
  %6 = sext i32 %2 to i64
  %7 = zext nneg i8 %1 to i32
  br label %8

8:                                                ; preds = %17, %3
  %9 = phi ptr [ %5, %3 ], [ %19, %17 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = getelementptr inbounds i8, ptr %10, i64 %6
  %12 = getelementptr inbounds %struct.MLoopUV, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !72
  %14 = lshr i32 %13, 1
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, %7
  br i1 %16, label %17, label %21

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  %20 = icmp eq ptr %19, %5
  br i1 %20, label %21, label %8, !llvm.loop !310

21:                                               ; preds = %17, %8
  %22 = phi i8 [ 0, %8 ], [ 1, %17 ]
  ret i8 %22
}

; Function Attrs: optsize
declare void @EDBM_selectmode_flush_ex(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_set_2d_cursor_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !138
  %8 = getelementptr inbounds %struct.SpaceImage, ptr %3, i64 0, i32 11
  tail call void @RNA_float_get_array(ptr noundef %7, ptr noundef nonnull @.str.42, ptr noundef nonnull %8) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 251920384, ptr noundef null) #13
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi i32 [ 4, %5 ], [ 2, %2 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @uv_set_2d_cursor_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !145
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !145
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %6, float noundef %9, float noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %13) #13
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !138
  call void @RNA_float_set_array(ptr noundef %15, ptr noundef nonnull @.str.42, ptr noundef nonnull %4) #13
  %16 = call i32 @uv_set_2d_cursor_exec(ptr noundef %0, ptr noundef %1) #14, !range !189
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @uv_set_2d_cursor_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_uvedit_space_image(ptr noundef %0) #13
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call i32 @ED_space_image_maskedit_poll(ptr noundef %0) #13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @ED_space_image_paint_curve(ptr noundef %0) #13
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %7, %4, %1
  %12 = phi i32 [ 1, %4 ], [ 1, %1 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: optsize
declare i32 @ED_space_image_maskedit_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_space_image_paint_curve(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_tile_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x i32], align 4
  %4 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !138
  call void @RNA_int_get_array(ptr noundef %7, ptr noundef nonnull @.str.168, ptr noundef nonnull %3) #13
  %8 = load i32, ptr %3, align 4, !tbaa !145
  %9 = getelementptr inbounds %struct.Image, ptr %4, i64 0, i32 16
  %10 = load i16, ptr %9, align 4, !tbaa !311
  %11 = sext i16 %10 to i32
  %12 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !145
  %14 = mul nsw i32 %13, %11
  %15 = add nsw i32 %14, %8
  %16 = call fastcc zeroext i8 @uvedit_set_tile(ptr noundef %5, ptr noundef %4, i32 noundef %15) #14, !range !22
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %20) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 251920384, ptr noundef null) #13
  br label %21

21:                                               ; preds = %2, %18
  %22 = phi i32 [ 4, %18 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_tile_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [2 x i32], align 8
  %7 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #13
  %8 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #13
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %10 = icmp eq ptr %8, null
  br i1 %10, label %55, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 14
  %13 = load i16, ptr %12, align 8, !tbaa !312
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %55, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !145
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %22 = load i32, ptr %21, align 4, !tbaa !145
  %23 = sitofp i32 %22 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %17, float noundef %20, float noundef %23, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %24 = load float, ptr %4, align 4
  %25 = fcmp oge float %24, 0.000000e+00
  %26 = load float, ptr %5, align 4
  %27 = fcmp oge float %26, 0.000000e+00
  %28 = select i1 %25, i1 %27, i1 false
  %29 = fcmp olt float %24, 1.000000e+00
  %30 = and i1 %29, %28
  %31 = fcmp olt float %26, 1.000000e+00
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %53

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 16
  %35 = load <2 x i16>, ptr %34, align 4, !tbaa !313
  %36 = sitofp <2 x i16> %35 to <2 x float>
  %37 = insertelement <2 x float> poison, float %24, i64 0
  %38 = insertelement <2 x float> %37, float %26, i64 1
  %39 = fmul <2 x float> %38, %36
  %40 = extractelement <2 x float> %39, i64 0
  store float %40, ptr %4, align 4, !tbaa !97
  %41 = extractelement <2 x float> %39, i64 1
  store float %41, ptr %5, align 4, !tbaa !97
  %42 = fptosi <2 x float> %39 to <2 x i32>
  store <2 x i32> %42, ptr %6, align 8, !tbaa !145
  %43 = extractelement <2 x i16> %35, i64 0
  %44 = zext i16 %43 to i32
  %45 = extractelement <2 x i32> %42, i64 1
  %46 = mul i32 %45, %44
  %47 = extractelement <2 x i32> %42, i64 0
  %48 = add i32 %46, %47
  %49 = trunc i32 %48 to i16
  %50 = getelementptr inbounds %struct.SpaceImage, ptr %7, i64 0, i32 20
  store i16 %49, ptr %50, align 8, !tbaa !314
  %51 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !138
  call void @RNA_int_set_array(ptr noundef %52, ptr noundef nonnull @.str.168, ptr noundef nonnull %6) #13
  br label %53

53:                                               ; preds = %33, %16
  %54 = call i32 @set_tile_exec(ptr noundef %0, ptr noundef %1) #14, !range !189
  br label %55

55:                                               ; preds = %3, %11, %53
  %56 = phi i32 [ %54, %53 ], [ 2, %11 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %56
}

; Function Attrs: optsize
declare i32 @ED_operator_image_active(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_int_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_int_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @uvedit_set_tile(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %5 = icmp eq ptr %1, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %3
  %7 = tail call zeroext i8 @ED_uvedit_test(ptr noundef %0) #14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %44, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 14
  %11 = load i16, ptr %10, align 8, !tbaa !312
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 12
  %16 = load i16, ptr %15, align 2, !tbaa !53
  %17 = and i16 %16, -2
  %18 = icmp eq i16 %17, 4
  br i1 %18, label %44, label %19

19:                                               ; preds = %14
  %20 = tail call ptr @BKE_editmesh_from_object(ptr noundef %0) #13
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  %22 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 27
  %23 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %22, i32 noundef 15) #13
  %24 = load ptr, ptr %20, align 8, !tbaa !55
  %25 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %24, i8 noundef zeroext 3, ptr noundef null) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %19
  %28 = sext i32 %23 to i64
  %29 = trunc i32 %2 to i16
  br label %30

30:                                               ; preds = %27, %38
  %31 = phi ptr [ %25, %27 ], [ %39, %38 ]
  %32 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %31, i8 noundef zeroext 1) #14, !range !64
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %31, align 8, !tbaa !61
  %36 = getelementptr inbounds i8, ptr %35, i64 %28
  %37 = getelementptr inbounds %struct.MTexPoly, ptr %36, i64 0, i32 4
  store i16 %29, ptr %37, align 4, !tbaa !315
  br label %38

38:                                               ; preds = %30, %34
  %39 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %30, !llvm.loop !316

41:                                               ; preds = %38, %19
  %42 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %43 = load ptr, ptr %42, align 8, !tbaa !60
  call void @DAG_id_tag_update(ptr noundef %43, i16 noundef signext 0) #13
  br label %44

44:                                               ; preds = %14, %9, %3, %6, %41
  %45 = phi i8 [ 1, %41 ], [ 0, %6 ], [ 0, %3 ], [ 0, %9 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  ret i8 %45
}

; Function Attrs: optsize
declare void @RNA_int_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_space_image_show_uvedit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !11, i64 136}
!6 = !{!"Object", !7, i64 0, !8, i64 120, !8, i64 128, !11, i64 136, !11, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !9, i64 152, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !13, i64 312, !8, i64 360, !14, i64 368, !14, i64 384, !14, i64 400, !14, i64 416, !12, i64 432, !12, i64 436, !8, i64 440, !8, i64 448, !12, i64 456, !12, i64 460, !9, i64 464, !9, i64 476, !9, i64 488, !9, i64 500, !9, i64 512, !9, i64 524, !9, i64 536, !9, i64 548, !9, i64 560, !9, i64 576, !9, i64 592, !9, i64 604, !15, i64 616, !15, i64 620, !9, i64 624, !9, i64 688, !9, i64 752, !9, i64 816, !9, i64 880, !12, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !9, i64 966, !9, i64 967, !12, i64 968, !12, i64 972, !12, i64 976, !12, i64 980, !12, i64 984, !15, i64 988, !15, i64 992, !15, i64 996, !15, i64 1000, !15, i64 1004, !15, i64 1008, !15, i64 1012, !15, i64 1016, !15, i64 1020, !15, i64 1024, !15, i64 1028, !15, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !9, i64 1042, !9, i64 1043, !11, i64 1044, !9, i64 1046, !9, i64 1047, !15, i64 1048, !15, i64 1052, !14, i64 1056, !14, i64 1072, !14, i64 1088, !14, i64 1104, !15, i64 1120, !11, i64 1124, !11, i64 1126, !9, i64 1128, !12, i64 1144, !12, i64 1148, !8, i64 1152, !9, i64 1160, !9, i64 1161, !11, i64 1162, !9, i64 1164, !14, i64 1176, !14, i64 1192, !14, i64 1208, !14, i64 1224, !8, i64 1240, !8, i64 1248, !8, i64 1256, !9, i64 1264, !9, i64 1265, !11, i64 1266, !15, i64 1268, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !16, i64 1304, !16, i64 1312, !12, i64 1320, !12, i64 1324, !14, i64 1328, !14, i64 1344, !8, i64 1360, !8, i64 1368, !8, i64 1376, !9, i64 1384, !8, i64 1392, !14, i64 1400, !8, i64 1416}
!7 = !{!"ID", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !8, i64 112}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"short", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"bAnimVizSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!14 = !{!"ListBase", !8, i64 0, !8, i64 8}
!15 = !{!"float", !9, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!18, !9, i64 543}
!18 = !{!"Material", !7, i64 0, !8, i64 120, !11, i64 128, !11, i64 130, !15, i64 132, !15, i64 136, !15, i64 140, !15, i64 144, !15, i64 148, !15, i64 152, !15, i64 156, !15, i64 160, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180, !15, i64 184, !15, i64 188, !15, i64 192, !15, i64 196, !15, i64 200, !15, i64 204, !15, i64 208, !15, i64 212, !15, i64 216, !15, i64 220, !19, i64 224, !20, i64 312, !15, i64 328, !15, i64 332, !15, i64 336, !15, i64 340, !15, i64 344, !15, i64 348, !15, i64 352, !11, i64 356, !11, i64 358, !11, i64 360, !9, i64 362, !9, i64 363, !15, i64 364, !15, i64 368, !11, i64 372, !11, i64 374, !15, i64 376, !15, i64 380, !15, i64 384, !15, i64 388, !11, i64 392, !11, i64 394, !12, i64 396, !12, i64 400, !12, i64 404, !12, i64 408, !11, i64 412, !11, i64 414, !11, i64 416, !11, i64 418, !15, i64 420, !15, i64 424, !15, i64 428, !15, i64 432, !15, i64 436, !15, i64 440, !15, i64 444, !15, i64 448, !15, i64 452, !15, i64 456, !9, i64 460, !15, i64 524, !15, i64 528, !15, i64 532, !12, i64 536, !9, i64 540, !9, i64 541, !9, i64 542, !9, i64 543, !11, i64 544, !11, i64 546, !11, i64 548, !9, i64 550, !9, i64 551, !11, i64 552, !11, i64 554, !15, i64 556, !15, i64 560, !9, i64 564, !15, i64 580, !15, i64 584, !11, i64 588, !11, i64 590, !8, i64 592, !8, i64 600, !9, i64 608, !9, i64 609, !9, i64 610, !9, i64 611, !11, i64 612, !11, i64 614, !15, i64 616, !15, i64 620, !9, i64 624, !8, i64 768, !8, i64 776, !8, i64 784, !8, i64 792, !15, i64 800, !15, i64 804, !15, i64 808, !15, i64 812, !15, i64 816, !11, i64 820, !11, i64 822, !9, i64 824, !9, i64 836, !15, i64 848, !15, i64 852, !15, i64 856, !15, i64 860, !15, i64 864, !15, i64 868, !15, i64 872, !11, i64 876, !11, i64 878, !12, i64 880, !11, i64 884, !11, i64 886, !9, i64 888, !11, i64 904, !11, i64 906, !11, i64 908, !11, i64 910, !11, i64 912, !9, i64 914, !8, i64 920, !14, i64 928}
!19 = !{!"VolumeSettings", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !9, i64 16, !9, i64 28, !9, i64 40, !15, i64 52, !15, i64 56, !15, i64 60, !11, i64 64, !11, i64 66, !11, i64 68, !11, i64 70, !15, i64 72, !15, i64 76, !15, i64 80, !15, i64 84}
!20 = !{!"GameSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!21 = !{!18, !8, i64 768}
!22 = !{i8 0, i8 2}
!23 = !{!24, !8, i64 240}
!24 = !{!"bNode", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !9, i64 40, !9, i64 104, !12, i64 168, !11, i64 172, !11, i64 174, !11, i64 176, !11, i64 178, !11, i64 180, !11, i64 182, !11, i64 184, !11, i64 186, !9, i64 188, !14, i64 200, !14, i64 216, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !14, i64 264, !15, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !15, i64 296, !15, i64 300, !15, i64 304, !12, i64 308, !9, i64 312, !11, i64 376, !11, i64 378, !15, i64 380, !15, i64 384, !11, i64 388, !11, i64 390, !8, i64 392, !25, i64 400, !25, i64 416, !25, i64 432, !11, i64 448, !11, i64 450, !12, i64 452, !8, i64 456}
!25 = !{!"rctf", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!26 = !{!8, !8, i64 0}
!27 = !{!24, !11, i64 172}
!28 = !{!29, !8, i64 264}
!29 = !{!"Scene", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !14, i64 152, !8, i64 168, !8, i64 176, !9, i64 184, !9, i64 196, !9, i64 208, !9, i64 220, !12, i64 232, !12, i64 236, !12, i64 240, !11, i64 244, !9, i64 246, !9, i64 247, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !30, i64 280, !38, i64 4264, !14, i64 4296, !14, i64 4312, !8, i64 4328, !8, i64 4336, !8, i64 4344, !8, i64 4352, !8, i64 4360, !8, i64 4368, !11, i64 4376, !11, i64 4378, !12, i64 4380, !14, i64 4384, !39, i64 4400, !40, i64 4416, !43, i64 4600, !8, i64 4608, !44, i64 4616, !8, i64 4640, !16, i64 4648, !16, i64 4656, !32, i64 4664, !33, i64 4824, !45, i64 4888, !8, i64 4952}
!30 = !{!"RenderData", !31, i64 0, !8, i64 248, !8, i64 256, !34, i64 264, !35, i64 328, !12, i64 400, !12, i64 404, !12, i64 408, !15, i64 412, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !11, i64 432, !11, i64 434, !15, i64 436, !15, i64 440, !15, i64 444, !15, i64 448, !15, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !12, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !12, i64 484, !12, i64 488, !11, i64 492, !11, i64 494, !12, i64 496, !12, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !9, i64 514, !9, i64 515, !12, i64 516, !12, i64 520, !12, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !25, i64 544, !25, i64 560, !36, i64 576, !14, i64 592, !11, i64 608, !11, i64 610, !15, i64 612, !15, i64 616, !15, i64 620, !15, i64 624, !12, i64 628, !15, i64 632, !15, i64 636, !15, i64 640, !15, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !15, i64 660, !15, i64 664, !11, i64 668, !11, i64 670, !15, i64 672, !15, i64 676, !9, i64 680, !12, i64 1704, !11, i64 1708, !11, i64 1710, !9, i64 1712, !9, i64 2480, !9, i64 2496, !9, i64 2512, !9, i64 2513, !9, i64 2514, !9, i64 2515, !12, i64 2520, !11, i64 2524, !11, i64 2526, !15, i64 2528, !15, i64 2532, !11, i64 2536, !11, i64 2538, !15, i64 2540, !11, i64 2544, !11, i64 2546, !12, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !15, i64 2560, !15, i64 2564, !8, i64 2568, !12, i64 2576, !15, i64 2580, !9, i64 2584, !37, i64 2616, !12, i64 3976, !12, i64 3980}
!31 = !{!"ImageFormatData", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !11, i64 8, !11, i64 10, !15, i64 12, !9, i64 16, !9, i64 17, !9, i64 18, !32, i64 24, !33, i64 184}
!32 = !{!"ColorManagedViewSettings", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 72, !15, i64 136, !15, i64 140, !8, i64 144, !8, i64 152}
!33 = !{!"ColorManagedDisplaySettings", !9, i64 0}
!34 = !{!"QuicktimeCodecSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !11, i64 48, !11, i64 50, !12, i64 52, !12, i64 56, !12, i64 60}
!35 = !{!"FFMpegCodecData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !15, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !8, i64 64}
!36 = !{!"rcti", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!37 = !{!"BakeData", !31, i64 0, !9, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !15, i64 1280, !15, i64 1284, !9, i64 1288, !9, i64 1291, !9, i64 1292, !9, i64 1293, !9, i64 1296}
!38 = !{!"AudioData", !12, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !12, i64 16, !11, i64 20, !11, i64 22, !15, i64 24, !15, i64 28}
!39 = !{!"GameFraming", !9, i64 0, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15}
!40 = !{!"GameData", !39, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !9, i64 34, !41, i64 40, !11, i64 64, !11, i64 66, !15, i64 68, !42, i64 72, !15, i64 128, !15, i64 132, !12, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180}
!41 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !15, i64 8, !15, i64 12, !8, i64 16}
!42 = !{!"RecastData", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !12, i64 40, !15, i64 44, !15, i64 48, !11, i64 52, !11, i64 54}
!43 = !{!"UnitSettings", !15, i64 0, !9, i64 4, !9, i64 5, !11, i64 6}
!44 = !{!"PhysicsSettings", !9, i64 0, !12, i64 12, !12, i64 16, !12, i64 20}
!45 = !{!"ColorManagedColorspaceSettings", !9, i64 0}
!46 = !{!47, !9, i64 50}
!47 = !{!"ToolSettings", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !15, i64 32, !15, i64 36, !15, i64 40, !11, i64 44, !11, i64 46, !9, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !15, i64 52, !11, i64 56, !9, i64 58, !9, i64 59, !48, i64 64, !50, i64 168, !15, i64 336, !15, i64 340, !11, i64 344, !11, i64 346, !9, i64 348, !9, i64 349, !11, i64 350, !15, i64 352, !15, i64 356, !15, i64 360, !15, i64 364, !15, i64 368, !15, i64 372, !15, i64 376, !15, i64 380, !15, i64 384, !15, i64 388, !11, i64 392, !9, i64 394, !9, i64 395, !9, i64 396, !9, i64 399, !8, i64 400, !9, i64 408, !9, i64 409, !9, i64 410, !9, i64 411, !9, i64 412, !9, i64 413, !9, i64 421, !9, i64 429, !9, i64 430, !9, i64 431, !9, i64 432, !9, i64 433, !11, i64 434, !11, i64 436, !11, i64 438, !11, i64 440, !9, i64 442, !9, i64 443, !9, i64 444, !9, i64 445, !9, i64 446, !9, i64 447, !12, i64 448, !12, i64 452, !12, i64 456, !12, i64 460, !11, i64 464, !11, i64 466, !12, i64 468, !15, i64 472, !15, i64 476, !51, i64 480, !52, i64 608}
!48 = !{!"ImagePaintSettings", !49, i64 0, !11, i64 40, !11, i64 42, !11, i64 44, !11, i64 46, !9, i64 48, !12, i64 52, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !9, i64 88, !15, i64 100}
!49 = !{!"Paint", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !12, i64 28, !12, i64 32, !12, i64 36}
!50 = !{!"ParticleEditSettings", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !9, i64 8, !8, i64 120, !15, i64 128, !15, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !8, i64 152, !8, i64 160}
!51 = !{!"UnifiedPaintSettings", !12, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !9, i64 16, !9, i64 28, !12, i64 40, !9, i64 44, !15, i64 52, !12, i64 56, !12, i64 60, !9, i64 64, !9, i64 65, !15, i64 72, !9, i64 76, !12, i64 84, !15, i64 88, !9, i64 92, !9, i64 100, !12, i64 108, !8, i64 112, !15, i64 120, !12, i64 124}
!52 = !{!"MeshStatVis", !9, i64 0, !9, i64 1, !9, i64 3, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !9, i64 20, !9, i64 21, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36}
!53 = !{!54, !11, i64 1250}
!54 = !{!"Image", !7, i64 0, !9, i64 120, !8, i64 1144, !8, i64 1152, !8, i64 1160, !8, i64 1168, !9, i64 1176, !11, i64 1240, !11, i64 1242, !11, i64 1244, !11, i64 1246, !11, i64 1248, !11, i64 1250, !12, i64 1252, !11, i64 1256, !11, i64 1258, !11, i64 1260, !11, i64 1262, !11, i64 1264, !11, i64 1266, !12, i64 1268, !8, i64 1272, !8, i64 1280, !8, i64 1288, !15, i64 1296, !12, i64 1300, !11, i64 1304, !11, i64 1306, !12, i64 1308, !12, i64 1312, !9, i64 1316, !9, i64 1317, !11, i64 1318, !9, i64 1320, !15, i64 1336, !15, i64 1340, !45, i64 1344, !9, i64 1408, !9, i64 1409, !9, i64 1416}
!55 = !{!56, !8, i64 0}
!56 = !{!"BMEditMesh", !8, i64 0, !8, i64 8, !12, i64 16, !8, i64 24, !12, i64 32, !8, i64 40, !8, i64 48, !16, i64 56, !8, i64 64, !12, i64 72, !8, i64 80, !12, i64 88, !11, i64 92, !11, i64 94, !8, i64 96, !12, i64 104}
!57 = !{!58, !12, i64 12}
!58 = !{!"BMesh", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !9, i64 28, !9, i64 29, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !12, i64 88, !12, i64 92, !12, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !12, i64 128, !8, i64 136, !59, i64 144, !59, i64 344, !59, i64 544, !59, i64 744, !11, i64 944, !12, i64 948, !12, i64 952, !12, i64 956, !14, i64 960, !8, i64 976, !14, i64 984, !8, i64 1000}
!59 = !{!"CustomData", !8, i64 0, !9, i64 8, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 192}
!60 = !{!6, !8, i64 296}
!61 = !{!62, !8, i64 0}
!62 = !{!"BMFace", !63, i64 0, !8, i64 16, !8, i64 24, !12, i64 32, !9, i64 36, !11, i64 48}
!63 = !{!"BMHeader", !8, i64 0, !12, i64 8, !9, i64 12, !9, i64 13, !9, i64 14}
!64 = !{i8 0, i8 17}
!65 = !{!66, !8, i64 0}
!66 = !{!"MTexPoly", !8, i64 0, !9, i64 8, !9, i64 9, !11, i64 10, !11, i64 12, !11, i64 14}
!67 = !{!54, !12, i64 100}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!71, !8, i64 0}
!71 = !{!"BMLoop", !63, i64 0, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64}
!72 = !{!73, !12, i64 8}
!73 = !{!"MLoopUV", !9, i64 0, !12, i64 8}
!74 = distinct !{!74, !69}
!75 = !{!76, !8, i64 48}
!76 = !{!"BMIter", !9, i64 0, !8, i64 40, !8, i64 48, !12, i64 56, !9, i64 60}
!77 = !{!63, !9, i64 13}
!78 = distinct !{!78, !69}
!79 = distinct !{!79, !69}
!80 = !{!47, !11, i64 46}
!81 = !{!71, !8, i64 32}
!82 = !{!71, !8, i64 24}
!83 = !{!71, !8, i64 16}
!84 = !{!71, !8, i64 56}
!85 = !{!86, !8, i64 24}
!86 = !{!"BMEdge", !63, i64 0, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !87, i64 48, !87, i64 64}
!87 = !{!"BMDiskLink", !8, i64 0, !8, i64 8}
!88 = !{!86, !8, i64 32}
!89 = !{!90, !12, i64 36}
!90 = !{!"SpaceImage", !8, i64 0, !8, i64 8, !14, i64 16, !12, i64 32, !12, i64 36, !8, i64 40, !91, i64 48, !8, i64 88, !92, i64 96, !93, i64 5360, !8, i64 10520, !9, i64 10528, !15, i64 10536, !15, i64 10540, !15, i64 10544, !15, i64 10548, !15, i64 10552, !9, i64 10556, !9, i64 10557, !11, i64 10558, !11, i64 10560, !11, i64 10562, !9, i64 10564, !9, i64 10565, !9, i64 10566, !9, i64 10567, !94, i64 10568}
!91 = !{!"ImageUser", !8, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !11, i64 28, !11, i64 30, !11, i64 32, !11, i64 34, !12, i64 36}
!92 = !{!"Scopes", !12, i64 0, !12, i64 4, !12, i64 8, !15, i64 12, !12, i64 16, !15, i64 20, !15, i64 24, !12, i64 28, !15, i64 32, !12, i64 36, !9, i64 40, !93, i64 64, !8, i64 5224, !8, i64 5232, !8, i64 5240, !8, i64 5248, !12, i64 5256, !12, i64 5260}
!93 = !{!"Histogram", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 1032, !9, i64 2056, !9, i64 3080, !9, i64 4104, !15, i64 5128, !15, i64 5132, !11, i64 5136, !11, i64 5138, !12, i64 5140, !9, i64 5144}
!94 = !{!"MaskSpaceInfo", !8, i64 0, !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11}
!95 = distinct !{!95, !69}
!96 = !{!62, !12, i64 32}
!97 = !{!15, !15, i64 0}
!98 = distinct !{!98, !69}
!99 = distinct !{!99, !69}
!100 = distinct !{!100, !69}
!101 = !{!102, !8, i64 8}
!102 = !{!"NearestHit", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !12, i64 40}
!103 = !{!102, !8, i64 0}
!104 = !{!102, !8, i64 16}
!105 = !{!102, !8, i64 24}
!106 = !{!102, !8, i64 32}
!107 = !{!102, !12, i64 40}
!108 = distinct !{!108, !69}
!109 = distinct !{!109, !69}
!110 = distinct !{!110, !69}
!111 = distinct !{!111, !69}
!112 = !{!71, !8, i64 64}
!113 = distinct !{!113, !69}
!114 = distinct !{!114, !69}
!115 = !{!116, !8, i64 0}
!116 = !{!"wmOperatorType", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !14, i64 112, !8, i64 128, !8, i64 136, !8, i64 144, !117, i64 152, !11, i64 184}
!117 = !{!"ExtensionRNA", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!118 = !{!116, !8, i64 24}
!119 = !{!116, !8, i64 8}
!120 = !{!116, !11, i64 184}
!121 = !{!116, !8, i64 32}
!122 = !{!116, !8, i64 72}
!123 = !{!116, !8, i64 48}
!124 = !{!116, !8, i64 88}
!125 = !{!116, !8, i64 64}
!126 = !{!116, !8, i64 56}
!127 = !{!128, !8, i64 120}
!128 = !{!"wmKeyMap", !8, i64 0, !8, i64 8, !14, i64 16, !14, i64 32, !9, i64 48, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !8, i64 120, !8, i64 128}
!129 = !{!130, !8, i64 176}
!130 = !{!"wmKeyMapItem", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 80, !9, i64 88, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !11, i64 164, !11, i64 166, !11, i64 168, !11, i64 170, !11, i64 172, !11, i64 174, !8, i64 176}
!131 = !{!47, !12, i64 448}
!132 = !{!76, !9, i64 60}
!133 = !{!76, !8, i64 40}
!134 = !{!58, !8, i64 32}
!135 = !{!58, !8, i64 40}
!136 = !{!58, !8, i64 56}
!137 = !{!9, !9, i64 0}
!138 = !{!139, !8, i64 112}
!139 = !{!"wmOperator", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !14, i64 128, !8, i64 144, !8, i64 152, !11, i64 160, !9, i64 162}
!140 = distinct !{!140, !69}
!141 = distinct !{!141, !69}
!142 = distinct !{!142, !69}
!143 = distinct !{!143, !69}
!144 = !{i32 2, i32 13}
!145 = !{!12, !12, i64 0}
!146 = !{!90, !15, i64 10544}
!147 = !{!47, !9, i64 51}
!148 = !{!90, !9, i64 10565}
!149 = distinct !{!149, !69}
!150 = distinct !{!150, !69}
!151 = distinct !{!151, !69}
!152 = distinct !{!152, !69}
!153 = distinct !{!153, !69}
!154 = !{i32 -1, i32 2}
!155 = !{!63, !12, i64 8}
!156 = distinct !{!156, !69}
!157 = !{!158, !9, i64 14}
!158 = !{!"UvMapVert", !8, i64 0, !12, i64 8, !9, i64 12, !9, i64 13, !9, i64 14}
!159 = distinct !{!159, !69}
!160 = distinct !{!160, !69}
!161 = distinct !{!161, !69}
!162 = distinct !{!162, !69}
!163 = distinct !{!163, !69}
!164 = distinct !{!164, !69}
!165 = distinct !{!165, !69}
!166 = distinct !{!166, !69}
!167 = distinct !{!167, !69}
!168 = !{!158, !9, i64 13}
!169 = !{!158, !12, i64 8}
!170 = !{!158, !8, i64 0}
!171 = distinct !{!171, !69}
!172 = distinct !{!172, !69}
!173 = distinct !{!173, !69}
!174 = distinct !{!174, !69}
!175 = distinct !{!175, !69}
!176 = distinct !{!176, !69}
!177 = distinct !{!177, !69}
!178 = distinct !{!178, !69}
!179 = distinct !{!179, !69}
!180 = distinct !{!180, !69}
!181 = distinct !{!181, !69}
!182 = distinct !{!182, !69}
!183 = distinct !{!183, !69}
!184 = distinct !{!184, !69}
!185 = distinct !{!185, !69}
!186 = distinct !{!186, !69}
!187 = distinct !{!187, !69}
!188 = distinct !{!188, !69}
!189 = !{i32 2, i32 5}
!190 = !{!139, !8, i64 120}
!191 = distinct !{!191, !69}
!192 = distinct !{!192, !69}
!193 = distinct !{!193, !69}
!194 = distinct !{!194, !69}
!195 = distinct !{!195, !69}
!196 = distinct !{!196, !69}
!197 = distinct !{!197, !69}
!198 = distinct !{!198, !69}
!199 = distinct !{!199, !69}
!200 = distinct !{!200, !69}
!201 = distinct !{!201, !69}
!202 = distinct !{!202, !69}
!203 = distinct !{!203, !69}
!204 = distinct !{!204, !69}
!205 = distinct !{!205, !69}
!206 = distinct !{!206, !69}
!207 = distinct !{!207, !69}
!208 = !{!158, !9, i64 12}
!209 = distinct !{!209, !69}
!210 = distinct !{!210, !69}
!211 = distinct !{!211, !69}
!212 = distinct !{!212, !69}
!213 = !{i32 0, i32 2}
!214 = distinct !{!214, !69}
!215 = distinct !{!215, !69}
!216 = distinct !{!216, !69}
!217 = distinct !{!217, !69}
!218 = distinct !{!218, !69}
!219 = distinct !{!219, !69}
!220 = distinct !{!220, !69}
!221 = distinct !{!221, !69}
!222 = distinct !{!222, !69}
!223 = distinct !{!223, !69}
!224 = distinct !{!224, !69}
!225 = distinct !{!225, !69}
!226 = distinct !{!226, !69}
!227 = distinct !{!227, !69}
!228 = distinct !{!228, !69}
!229 = distinct !{!229, !69}
!230 = distinct !{!230, !69}
!231 = distinct !{!231, !69}
!232 = distinct !{!232, !69}
!233 = !{!90, !9, i64 10567}
!234 = distinct !{!234, !69}
!235 = distinct !{!235, !69}
!236 = !{!90, !8, i64 40}
!237 = distinct !{!237, !69}
!238 = distinct !{!238, !69}
!239 = distinct !{!239, !69}
!240 = distinct !{!240, !69}
!241 = distinct !{!241, !69}
!242 = distinct !{!242, !69}
!243 = distinct !{!243, !69}
!244 = distinct !{!244, !69}
!245 = distinct !{!245, !69}
!246 = distinct !{!246, !69}
!247 = distinct !{!247, !69}
!248 = distinct !{!248, !69}
!249 = distinct !{!249, !69}
!250 = distinct !{!250, !69}
!251 = distinct !{!251, !69}
!252 = distinct !{!252, !69}
!253 = distinct !{!253, !69}
!254 = distinct !{!254, !69}
!255 = distinct !{!255, !69}
!256 = distinct !{!256, !69}
!257 = distinct !{!257, !69}
!258 = distinct !{!258, !69}
!259 = distinct !{!259, !69}
!260 = distinct !{!260, !69}
!261 = distinct !{!261, !69}
!262 = distinct !{!262, !69}
!263 = distinct !{!263, !69}
!264 = distinct !{!264, !69}
!265 = !{!266, !8, i64 272}
!266 = !{!"Mesh", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !59, i64 280, !59, i64 480, !59, i64 680, !59, i64 880, !59, i64 1080, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !12, i64 1304, !9, i64 1308, !9, i64 1320, !9, i64 1332, !12, i64 1344, !11, i64 1348, !11, i64 1350, !15, i64 1352, !12, i64 1356, !9, i64 1360, !9, i64 1361, !9, i64 1362, !9, i64 1363, !9, i64 1364, !9, i64 1365, !11, i64 1366, !8, i64 1368}
!267 = !{!268, !8, i64 0}
!268 = !{!"UvVertMap", !8, i64 0, !8, i64 8}
!269 = distinct !{!269, !69}
!270 = distinct !{!270, !69}
!271 = distinct !{!271, !69}
!272 = distinct !{!272, !69}
!273 = !{!266, !12, i64 1344}
!274 = distinct !{!274, !69}
!275 = distinct !{!275, !69}
!276 = !{!47, !9, i64 430}
!277 = !{i64 0, i64 8, !26, i64 8, i64 1, !137}
!278 = !{i64 0, i64 1, !137}
!279 = distinct !{!279, !69}
!280 = distinct !{!280, !69}
!281 = !{!282, !9, i64 8}
!282 = !{!"UVvert", !8, i64 0, !9, i64 8}
!283 = !{!282, !8, i64 0}
!284 = distinct !{!284, !69}
!285 = distinct !{!285, !69}
!286 = distinct !{!286, !69}
!287 = distinct !{!287, !69}
!288 = distinct !{!288, !69}
!289 = distinct !{!289, !69}
!290 = distinct !{!290, !69}
!291 = distinct !{!291, !69}
!292 = distinct !{!292, !69}
!293 = !{!56, !11, i64 92}
!294 = distinct !{!294, !69}
!295 = distinct !{!295, !69}
!296 = distinct !{!296, !69}
!297 = distinct !{!297, !69}
!298 = distinct !{!298, !69}
!299 = distinct !{!299, !69}
!300 = distinct !{!300, !69}
!301 = distinct !{!301, !69}
!302 = distinct !{!302, !69}
!303 = distinct !{!303, !69}
!304 = distinct !{!304, !69}
!305 = distinct !{!305, !69}
!306 = distinct !{!306, !69}
!307 = distinct !{!307, !69}
!308 = distinct !{!308, !69}
!309 = !{!62, !8, i64 24}
!310 = distinct !{!310, !69}
!311 = !{!54, !11, i64 1260}
!312 = !{!54, !11, i64 1256}
!313 = !{!11, !11, i64 0}
!314 = !{!90, !11, i64 10560}
!315 = !{!66, !11, i64 12}
!316 = distinct !{!316, !69}
