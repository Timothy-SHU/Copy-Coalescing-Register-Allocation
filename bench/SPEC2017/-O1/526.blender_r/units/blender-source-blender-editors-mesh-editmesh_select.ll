; ModuleID = 'blender/source/blender/editors/mesh/editmesh_select.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
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
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.LassoMaskData = type { ptr, i32 }
%struct.anon = type { [2 x float], float, float, float, float, float, float, ptr }
%struct.anon.3 = type { [2 x float], float, float, float, float, float, float, ptr }
%struct.anon.0 = type { %struct.ViewContext, [2 x float], float, ptr }
%struct.anon.4 = type { %struct.ViewContext, [2 x float], float, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.anon.1 = type { [2 x float], float, ptr }
%struct.anon.2 = type { [2 x float], float, float, float, float, ptr }
%struct.anon.5 = type { [2 x float], float, ptr }
%struct.anon.6 = type { [2 x float], float, float, float, float, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon.7 }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon.7 = type { ptr, [8 x i8] }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.BMWalker = type { i8, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %struct.ListBase, i16, i16, i16, i32, ptr, ptr, i32 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.BMFlagLayer = type { i16 }
%struct.BMElemF = type { %struct.BMHeader, ptr }

@.str = private unnamed_addr constant [28 x i8] c"automerge verts=%hv dist=%f\00", align 1
@bm_solidoffs = dso_local local_unnamed_addr global i32 0, align 4
@bm_wireoffs = dso_local local_unnamed_addr global i32 0, align 4
@bm_vertoffs = dso_local local_unnamed_addr global i32 0, align 4
@selbuf = internal unnamed_addr global ptr null, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.EDBM_backbuf_border_mask_init = private unnamed_addr constant [30 x i8] c"EDBM_backbuf_border_mask_init\00", align 1
@EDBM_vert_find_nearest.lastSelectedIndex = internal unnamed_addr global i32 0, align 4
@EDBM_vert_find_nearest.lastSelected = internal unnamed_addr global ptr null, align 8
@EDBM_face_find_nearest.lastSelectedIndex = internal unnamed_addr global i32 0, align 4
@EDBM_face_find_nearest.lastSelected = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Select Similar\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MESH_OT_select_similar\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Select similar vertices, edges or faces by property types\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@prop_similar_types = internal global [20 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.183, i32 0, ptr @.str.184, ptr @.str.6 }, %struct.EnumPropertyItem { i32 1, ptr @.str.18, i32 0, ptr @.str.185, ptr @.str.6 }, %struct.EnumPropertyItem { i32 2, ptr @.str.186, i32 0, ptr @.str.187, ptr @.str.6 }, %struct.EnumPropertyItem { i32 3, ptr @.str.16, i32 0, ptr @.str.188, ptr @.str.6 }, %struct.EnumPropertyItem { i32 101, ptr @.str.189, i32 0, ptr @.str.190, ptr @.str.6 }, %struct.EnumPropertyItem { i32 102, ptr @.str.191, i32 0, ptr @.str.192, ptr @.str.6 }, %struct.EnumPropertyItem { i32 103, ptr @.str.18, i32 0, ptr @.str.193, ptr @.str.6 }, %struct.EnumPropertyItem { i32 104, ptr @.str.194, i32 0, ptr @.str.195, ptr @.str.6 }, %struct.EnumPropertyItem { i32 105, ptr @.str.196, i32 0, ptr @.str.197, ptr @.str.6 }, %struct.EnumPropertyItem { i32 106, ptr @.str.198, i32 0, ptr @.str.199, ptr @.str.6 }, %struct.EnumPropertyItem { i32 107, ptr @.str.200, i32 0, ptr @.str.201, ptr @.str.6 }, %struct.EnumPropertyItem { i32 108, ptr @.str.202, i32 0, ptr @.str.113, ptr @.str.6 }, %struct.EnumPropertyItem { i32 201, ptr @.str.203, i32 0, ptr @.str.204, ptr @.str.6 }, %struct.EnumPropertyItem { i32 202, ptr @.str.205, i32 0, ptr @.str.206, ptr @.str.6 }, %struct.EnumPropertyItem { i32 203, ptr @.str.207, i32 0, ptr @.str.208, ptr @.str.6 }, %struct.EnumPropertyItem { i32 204, ptr @.str.209, i32 0, ptr @.str.210, ptr @.str.6 }, %struct.EnumPropertyItem { i32 205, ptr @.str.211, i32 0, ptr @.str.212, ptr @.str.6 }, %struct.EnumPropertyItem { i32 206, ptr @.str.183, i32 0, ptr @.str.184, ptr @.str.6 }, %struct.EnumPropertyItem { i32 207, ptr @.str.213, i32 0, ptr @.str.214, ptr @.str.6 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"compare\00", align 1
@prop_similar_compare_types = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.77, i32 0, ptr @.str.215, ptr @.str.6 }, %struct.EnumPropertyItem { i32 1, ptr @.str.79, i32 0, ptr @.str.216, ptr @.str.6 }, %struct.EnumPropertyItem { i32 2, ptr @.str.75, i32 0, ptr @.str.217, ptr @.str.6 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [8 x i8] c"Compare\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Select Similar Regions\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"MESH_OT_select_similar_region\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"Select similar face regions to the current selection\00", align 1
@MESH_OT_select_mode.elem_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.14, i32 546, ptr @.str.15, ptr @.str.6 }, %struct.EnumPropertyItem { i32 2, ptr @.str.16, i32 547, ptr @.str.17, ptr @.str.6 }, %struct.EnumPropertyItem { i32 4, ptr @.str.18, i32 548, ptr @.str.19, ptr @.str.6 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [5 x i8] c"VERT\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Vertices\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"EDGE\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Edges\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"FACE\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Faces\00", align 1
@MESH_OT_select_mode.actions_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.20, i32 0, ptr @.str.21, ptr @.str.22 }, %struct.EnumPropertyItem { i32 1, ptr @.str.23, i32 0, ptr @.str.24, ptr @.str.25 }, %struct.EnumPropertyItem { i32 2, ptr @.str.26, i32 0, ptr @.str.27, ptr @.str.28 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.20 = private unnamed_addr constant [8 x i8] c"DISABLE\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"Disable selected markers\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"ENABLE\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"Enable selected markers\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"TOGGLE\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"Toggle\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"Toggle disabled flag for selected markers\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"Select Mode\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"MESH_OT_select_mode\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"Change selection mode\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"use_extend\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"use_expand\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Expand\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"Selection action to execute\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"Multi Select Loops\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"MESH_OT_loop_multi_select\00", align 1
@.str.41 = private unnamed_addr constant [52 x i8] c"Select a loop of connected edges by connection type\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"ring\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"Ring\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"Loop Select\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"MESH_OT_loop_select\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"Select a loop of connected edges\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"Extend Select\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"Extend the selection\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"Deselect\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"Remove from the selection\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"Toggle Select\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"Toggle the selection\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"Select Ring\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"Select ring\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"Edge Ring Select\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"MESH_OT_edgering_select\00", align 1
@.str.60 = private unnamed_addr constant [20 x i8] c"Select an edge ring\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"(De)select All\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"MESH_OT_select_all\00", align 1
@.str.63 = private unnamed_addr constant [40 x i8] c"(De)select all vertices, edges or faces\00", align 1
@.str.64 = private unnamed_addr constant [22 x i8] c"Select Interior Faces\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"MESH_OT_select_interior_faces\00", align 1
@.str.66 = private unnamed_addr constant [57 x i8] c"Select faces where all edges have more than 2 face users\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"Select Linked All\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"MESH_OT_select_linked\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"Select all vertices linked to the active mesh\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"Limit by Seams\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"Select Linked\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"MESH_OT_select_linked_pick\00", align 1
@.str.74 = private unnamed_addr constant [66 x i8] c"(De)select all vertices linked to the edge under the mouse cursor\00", align 1
@MESH_OT_select_face_by_sides.type_items = internal constant [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.75, i32 0, ptr @.str.76, ptr @.str.6 }, %struct.EnumPropertyItem { i32 1, ptr @.str.77, i32 0, ptr @.str.78, ptr @.str.6 }, %struct.EnumPropertyItem { i32 2, ptr @.str.79, i32 0, ptr @.str.80, ptr @.str.6 }, %struct.EnumPropertyItem { i32 3, ptr @.str.81, i32 0, ptr @.str.82, ptr @.str.6 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.75 = private unnamed_addr constant [5 x i8] c"LESS\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"Less Than\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"EQUAL\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"Equal To\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"GREATER\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"Greater Than\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"NOTEQUAL\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"Not Equal To\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"Select Faces by Sides\00", align 1
@.str.84 = private unnamed_addr constant [56 x i8] c"Select vertices or faces by the number of polygon sides\00", align 1
@.str.85 = private unnamed_addr constant [29 x i8] c"MESH_OT_select_face_by_sides\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"Number of Vertices\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"Type of comparison to make\00", align 1
@.str.89 = private unnamed_addr constant [22 x i8] c"Select Loose Geometry\00", align 1
@.str.90 = private unnamed_addr constant [50 x i8] c"Select loose geometry based on the selection mode\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"MESH_OT_select_loose\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"Select Mirror\00", align 1
@.str.93 = private unnamed_addr constant [40 x i8] c"Select mesh items at mirrored locations\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"MESH_OT_select_mirror\00", align 1
@.str.95 = private unnamed_addr constant [30 x i8] c"Extend the existing selection\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"Select More\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"MESH_OT_select_more\00", align 1
@.str.98 = private unnamed_addr constant [68 x i8] c"Select more vertices, edges or faces connected to initial selection\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"Select Less\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"MESH_OT_select_less\00", align 1
@.str.101 = private unnamed_addr constant [75 x i8] c"Deselect vertices, edges or faces at the boundary of each selection region\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"Checker Deselect\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"MESH_OT_select_nth\00", align 1
@.str.104 = private unnamed_addr constant [73 x i8] c"Deselect every Nth element starting from the active vertex, edge or face\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"nth\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"Nth Selection\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"Select Sharp Edges\00", align 1
@.str.110 = private unnamed_addr constant [30 x i8] c"Select all sharp-enough edges\00", align 1
@.str.111 = private unnamed_addr constant [27 x i8] c"MESH_OT_edges_select_sharp\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"sharpness\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"Sharpness\00", align 1
@.str.114 = private unnamed_addr constant [25 x i8] c"Select Linked Flat Faces\00", align 1
@.str.115 = private unnamed_addr constant [29 x i8] c"Select linked faces by angle\00", align 1
@.str.116 = private unnamed_addr constant [33 x i8] c"MESH_OT_faces_select_linked_flat\00", align 1
@.str.117 = private unnamed_addr constant [20 x i8] c"Select Non Manifold\00", align 1
@.str.118 = private unnamed_addr constant [42 x i8] c"Select all non-manifold vertices or edges\00", align 1
@.str.119 = private unnamed_addr constant [28 x i8] c"MESH_OT_select_non_manifold\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"use_wire\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"Wire\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"Wire edges\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"use_boundary\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"Boundaries\00", align 1
@.str.125 = private unnamed_addr constant [15 x i8] c"Boundary edges\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"use_multi_face\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"Multiple Faces\00", align 1
@.str.128 = private unnamed_addr constant [25 x i8] c"Edges shared by 3+ faces\00", align 1
@.str.129 = private unnamed_addr constant [19 x i8] c"use_non_contiguous\00", align 1
@.str.130 = private unnamed_addr constant [15 x i8] c"Non Contiguous\00", align 1
@.str.131 = private unnamed_addr constant [53 x i8] c"Edges between faces pointing in alternate directions\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"use_verts\00", align 1
@.str.133 = private unnamed_addr constant [42 x i8] c"Vertices connecting multiple face regions\00", align 1
@.str.134 = private unnamed_addr constant [14 x i8] c"Select Random\00", align 1
@.str.135 = private unnamed_addr constant [25 x i8] c"Randomly select vertices\00", align 1
@.str.136 = private unnamed_addr constant [22 x i8] c"MESH_OT_select_random\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"Percent\00", align 1
@.str.139 = private unnamed_addr constant [42 x i8] c"Percentage of elements to select randomly\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"Select Ungrouped\00", align 1
@.str.141 = private unnamed_addr constant [25 x i8] c"MESH_OT_select_ungrouped\00", align 1
@.str.142 = private unnamed_addr constant [32 x i8] c"Select vertices without a group\00", align 1
@MESH_OT_select_axis.axis_mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.143, i32 0, ptr @.str.144, ptr @.str.6 }, %struct.EnumPropertyItem { i32 1, ptr @.str.145, i32 0, ptr @.str.146, ptr @.str.6 }, %struct.EnumPropertyItem { i32 -1, ptr @.str.147, i32 0, ptr @.str.148, ptr @.str.6 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.143 = private unnamed_addr constant [9 x i8] c"POSITIVE\00", align 1
@.str.144 = private unnamed_addr constant [14 x i8] c"Positive Axis\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"NEGATIVE\00", align 1
@.str.146 = private unnamed_addr constant [14 x i8] c"Negative Axis\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"ALIGNED\00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"Aligned Axis\00", align 1
@MESH_OT_select_axis.axis_items_xyz = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.149, i32 0, ptr @.str.150, ptr @.str.6 }, %struct.EnumPropertyItem { i32 1, ptr @.str.151, i32 0, ptr @.str.152, ptr @.str.6 }, %struct.EnumPropertyItem { i32 2, ptr @.str.153, i32 0, ptr @.str.154, ptr @.str.6 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.149 = private unnamed_addr constant [7 x i8] c"X_AXIS\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"X Axis\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"Y_AXIS\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"Y Axis\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"Z_AXIS\00", align 1
@.str.154 = private unnamed_addr constant [7 x i8] c"Z Axis\00", align 1
@.str.155 = private unnamed_addr constant [12 x i8] c"Select Axis\00", align 1
@.str.156 = private unnamed_addr constant [45 x i8] c"Select all data in the mesh on a single axis\00", align 1
@.str.157 = private unnamed_addr constant [20 x i8] c"MESH_OT_select_axis\00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"Axis Mode\00", align 1
@.str.160 = private unnamed_addr constant [32 x i8] c"Axis side to use when selecting\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c"Axis\00", align 1
@.str.163 = private unnamed_addr constant [42 x i8] c"Select the axis to compare each vertex on\00", align 1
@.str.164 = private unnamed_addr constant [17 x i8] c"Select Next Loop\00", align 1
@.str.165 = private unnamed_addr constant [25 x i8] c"MESH_OT_select_next_loop\00", align 1
@.str.166 = private unnamed_addr constant [50 x i8] c"Select next edge loop adjacent to a selected loop\00", align 1
@.str.167 = private unnamed_addr constant [21 x i8] c"Select Boundary Loop\00", align 1
@.str.168 = private unnamed_addr constant [23 x i8] c"MESH_OT_region_to_loop\00", align 1
@.str.169 = private unnamed_addr constant [48 x i8] c"Select boundary edges around the selected faces\00", align 1
@.str.170 = private unnamed_addr constant [25 x i8] c"Select Loop Inner-Region\00", align 1
@.str.171 = private unnamed_addr constant [23 x i8] c"MESH_OT_loop_to_region\00", align 1
@.str.172 = private unnamed_addr constant [58 x i8] c"Select region of faces inside of a selected loop of edges\00", align 1
@.str.173 = private unnamed_addr constant [14 x i8] c"select_bigger\00", align 1
@.str.174 = private unnamed_addr constant [14 x i8] c"Select Bigger\00", align 1
@.str.175 = private unnamed_addr constant [46 x i8] c"Select bigger regions instead of smaller ones\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"selbuf\00", align 1
@.str.177 = private unnamed_addr constant [53 x i8] c"similar_verts verts=%hv type=%i thresh=%f compare=%i\00", align 1
@.str.178 = private unnamed_addr constant [10 x i8] c"verts.out\00", align 1
@.str.179 = private unnamed_addr constant [53 x i8] c"similar_edges edges=%he type=%i thresh=%f compare=%i\00", align 1
@.str.180 = private unnamed_addr constant [10 x i8] c"edges.out\00", align 1
@.str.181 = private unnamed_addr constant [53 x i8] c"similar_faces faces=%hf type=%i thresh=%f compare=%i\00", align 1
@.str.182 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.185 = private unnamed_addr constant [25 x i8] c"Amount of Adjacent Faces\00", align 1
@.str.186 = private unnamed_addr constant [7 x i8] c"VGROUP\00", align 1
@.str.187 = private unnamed_addr constant [14 x i8] c"Vertex Groups\00", align 1
@.str.188 = private unnamed_addr constant [27 x i8] c"Amount of connecting edges\00", align 1
@.str.189 = private unnamed_addr constant [7 x i8] c"LENGTH\00", align 1
@.str.190 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.191 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@.str.192 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.193 = private unnamed_addr constant [31 x i8] c"Amount of Faces Around an Edge\00", align 1
@.str.194 = private unnamed_addr constant [11 x i8] c"FACE_ANGLE\00", align 1
@.str.195 = private unnamed_addr constant [12 x i8] c"Face Angles\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"CREASE\00", align 1
@.str.197 = private unnamed_addr constant [7 x i8] c"Crease\00", align 1
@.str.198 = private unnamed_addr constant [6 x i8] c"BEVEL\00", align 1
@.str.199 = private unnamed_addr constant [6 x i8] c"Bevel\00", align 1
@.str.200 = private unnamed_addr constant [5 x i8] c"SEAM\00", align 1
@.str.201 = private unnamed_addr constant [5 x i8] c"Seam\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"SHARP\00", align 1
@.str.203 = private unnamed_addr constant [9 x i8] c"MATERIAL\00", align 1
@.str.204 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.205 = private unnamed_addr constant [6 x i8] c"IMAGE\00", align 1
@.str.206 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.207 = private unnamed_addr constant [5 x i8] c"AREA\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"Area\00", align 1
@.str.209 = private unnamed_addr constant [6 x i8] c"SIDES\00", align 1
@.str.210 = private unnamed_addr constant [14 x i8] c"Polygon Sides\00", align 1
@.str.211 = private unnamed_addr constant [10 x i8] c"PERIMETER\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"Perimeter\00", align 1
@.str.213 = private unnamed_addr constant [9 x i8] c"COPLANAR\00", align 1
@.str.214 = private unnamed_addr constant [10 x i8] c"Co-planar\00", align 1
@.str.215 = private unnamed_addr constant [6 x i8] c"Equal\00", align 1
@.str.216 = private unnamed_addr constant [8 x i8] c"Greater\00", align 1
@.str.217 = private unnamed_addr constant [5 x i8] c"Less\00", align 1
@.str.218 = private unnamed_addr constant [25 x i8] c"No face regions selected\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.edbm_select_similar_region_exec = private unnamed_addr constant [32 x i8] c"edbm_select_similar_region_exec\00", align 1
@.str.219 = private unnamed_addr constant [31 x i8] c"No matching face regions found\00", align 1
@.str.220 = private unnamed_addr constant [11 x i8] c"edge array\00", align 1
@.str.221 = private unnamed_addr constant [34 x i8] c"Mesh has no active vert/edge/face\00", align 1
@.str.222 = private unnamed_addr constant [37 x i8] c"Does not work in face selection mode\00", align 1
@.str.223 = private unnamed_addr constant [33 x i8] c"Must be in vertex selection mode\00", align 1
@.str.224 = private unnamed_addr constant [35 x i8] c"No weights/vertex groups on object\00", align 1
@.str.225 = private unnamed_addr constant [56 x i8] c"This operator requires an active vertex (last selected)\00", align 1
@__func__.loop_find_regions = private unnamed_addr constant [18 x i8] c"loop_find_regions\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.226 = private unnamed_addr constant [16 x i8] c"BLI_array.stack\00", align 1
@.str.227 = private unnamed_addr constant [17 x i8] c"BLI_array.region\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_select_mirrored(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = load ptr, ptr %0, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  %11 = icmp eq ptr %9, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 46
  %14 = load i8, ptr %13, align 1, !tbaa !49
  %15 = lshr i8 %14, 4
  %16 = and i8 %15, 1
  br label %17

17:                                               ; preds = %12, %4
  %18 = phi i8 [ 0, %4 ], [ %16, %12 ]
  store i32 0, ptr %3, align 4, !tbaa !52
  store i32 0, ptr %2, align 4, !tbaa !52
  %19 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 28
  %20 = load i16, ptr %19, align 8, !tbaa !53
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 1, ptr %24, align 4, !tbaa !55
  %25 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %25, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %26, align 8, !tbaa !58
  %27 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  store ptr %28, ptr %5, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #10
  %29 = load ptr, ptr %26, align 8, !tbaa !58
  %30 = call ptr %29(ptr noundef nonnull %5) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %88, label %32

32:                                               ; preds = %23, %32
  %33 = phi ptr [ %42, %32 ], [ %30, %23 ]
  %34 = getelementptr inbounds %struct.BMHeader, ptr %33, i64 0, i32 3
  %35 = load i8, ptr %34, align 1, !tbaa !61
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  %38 = or i8 %35, 16
  %39 = and i8 %35, -18
  %40 = select i1 %37, i8 %39, i8 %38
  store i8 %40, ptr %34, align 1, !tbaa !61
  %41 = load ptr, ptr %26, align 8, !tbaa !58
  %42 = call ptr %41(ptr noundef nonnull %5) #10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %88, label %32, !llvm.loop !63

44:                                               ; preds = %17
  %45 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %46 = load i16, ptr %45, align 4, !tbaa !66
  %47 = and i16 %46, 2
  %48 = icmp eq i16 %47, 0
  %49 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %50 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %51 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  br i1 %48, label %70, label %52

52:                                               ; preds = %44
  store i8 2, ptr %49, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %50, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %51, align 8, !tbaa !58
  %53 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 10
  %54 = load ptr, ptr %53, align 8, !tbaa !67
  store ptr %54, ptr %5, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #10
  %55 = load ptr, ptr %51, align 8, !tbaa !58
  %56 = call ptr %55(ptr noundef nonnull %5) #10
  %57 = icmp eq ptr %56, null
  br i1 %57, label %88, label %58

58:                                               ; preds = %52, %58
  %59 = phi ptr [ %68, %58 ], [ %56, %52 ]
  %60 = getelementptr inbounds %struct.BMHeader, ptr %59, i64 0, i32 3
  %61 = load i8, ptr %60, align 1, !tbaa !61
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  %64 = or i8 %61, 16
  %65 = and i8 %61, -18
  %66 = select i1 %63, i8 %65, i8 %64
  store i8 %66, ptr %60, align 1, !tbaa !61
  %67 = load ptr, ptr %51, align 8, !tbaa !58
  %68 = call ptr %67(ptr noundef nonnull %5) #10
  %69 = icmp eq ptr %68, null
  br i1 %69, label %88, label %58, !llvm.loop !68

70:                                               ; preds = %44
  store i8 3, ptr %49, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %50, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %51, align 8, !tbaa !58
  %71 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 12
  %72 = load ptr, ptr %71, align 8, !tbaa !69
  store ptr %72, ptr %5, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #10
  %73 = load ptr, ptr %51, align 8, !tbaa !58
  %74 = call ptr %73(ptr noundef nonnull %5) #10
  %75 = icmp eq ptr %74, null
  br i1 %75, label %88, label %76

76:                                               ; preds = %70, %76
  %77 = phi ptr [ %86, %76 ], [ %74, %70 ]
  %78 = getelementptr inbounds %struct.BMHeader, ptr %77, i64 0, i32 3
  %79 = load i8, ptr %78, align 1, !tbaa !61
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  %82 = or i8 %79, 16
  %83 = and i8 %79, -18
  %84 = select i1 %81, i8 %83, i8 %82
  store i8 %84, ptr %78, align 1, !tbaa !61
  %85 = load ptr, ptr %51, align 8, !tbaa !58
  %86 = call ptr %85(ptr noundef nonnull %5) #10
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %76, !llvm.loop !70

88:                                               ; preds = %32, %58, %76, %23, %52, %70
  call void @EDBM_verts_mirror_cache_begin(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext %18) #10
  %89 = icmp eq i8 %1, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %88
  call void @EDBM_flag_disable_all(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  br label %91

91:                                               ; preds = %90, %88
  %92 = load i16, ptr %19, align 8, !tbaa !53
  %93 = and i16 %92, 1
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %130, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 1, ptr %96, align 4, !tbaa !55
  %97 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %97, align 8, !tbaa !57
  %98 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %98, align 8, !tbaa !58
  %99 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 9
  %100 = load ptr, ptr %99, align 8, !tbaa !59
  store ptr %100, ptr %5, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #10
  %101 = load ptr, ptr %98, align 8, !tbaa !58
  %102 = call ptr %101(ptr noundef nonnull %5) #10
  %103 = icmp eq ptr %102, null
  br i1 %103, label %202, label %104

104:                                              ; preds = %95, %124
  %105 = phi i32 [ %126, %124 ], [ 0, %95 ]
  %106 = phi i32 [ %125, %124 ], [ 0, %95 ]
  %107 = phi ptr [ %128, %124 ], [ %102, %95 ]
  %108 = getelementptr inbounds %struct.BMHeader, ptr %107, i64 0, i32 3
  %109 = load i8, ptr %108, align 1, !tbaa !61
  %110 = and i8 %109, 18
  %111 = icmp eq i8 %110, 16
  br i1 %111, label %112, label %124

112:                                              ; preds = %104
  %113 = call ptr @EDBM_verts_mirror_get(ptr noundef nonnull %0, ptr noundef nonnull %107) #10
  %114 = icmp eq ptr %113, null
  br i1 %114, label %122, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.BMHeader, ptr %113, i64 0, i32 3
  %117 = load i8, ptr %116, align 1, !tbaa !61
  %118 = and i8 %117, 2
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  call void @BM_vert_select_set(ptr noundef %10, ptr noundef nonnull %113, i8 noundef zeroext 1) #10
  %121 = add nsw i32 %105, 1
  br label %124

122:                                              ; preds = %115, %112
  %123 = add nsw i32 %106, 1
  br label %124

124:                                              ; preds = %120, %122, %104
  %125 = phi i32 [ %106, %104 ], [ %123, %122 ], [ %106, %120 ]
  %126 = phi i32 [ %105, %104 ], [ %105, %122 ], [ %121, %120 ]
  %127 = load ptr, ptr %98, align 8, !tbaa !58
  %128 = call ptr %127(ptr noundef nonnull %5) #10
  %129 = icmp eq ptr %128, null
  br i1 %129, label %202, label %104, !llvm.loop !71

130:                                              ; preds = %91
  %131 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %132 = load i16, ptr %131, align 4, !tbaa !66
  %133 = and i16 %132, 2
  %134 = icmp eq i16 %133, 0
  %135 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %136 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %137 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  br i1 %134, label %170, label %138

138:                                              ; preds = %130
  store i8 2, ptr %135, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %136, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %137, align 8, !tbaa !58
  %139 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 10
  %140 = load ptr, ptr %139, align 8, !tbaa !67
  store ptr %140, ptr %5, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #10
  %141 = load ptr, ptr %137, align 8, !tbaa !58
  %142 = call ptr %141(ptr noundef nonnull %5) #10
  %143 = icmp eq ptr %142, null
  br i1 %143, label %202, label %144

144:                                              ; preds = %138, %164
  %145 = phi i32 [ %166, %164 ], [ 0, %138 ]
  %146 = phi i32 [ %165, %164 ], [ 0, %138 ]
  %147 = phi ptr [ %168, %164 ], [ %142, %138 ]
  %148 = getelementptr inbounds %struct.BMHeader, ptr %147, i64 0, i32 3
  %149 = load i8, ptr %148, align 1, !tbaa !61
  %150 = and i8 %149, 18
  %151 = icmp eq i8 %150, 16
  br i1 %151, label %152, label %164

152:                                              ; preds = %144
  %153 = call ptr @EDBM_verts_mirror_get_edge(ptr noundef nonnull %0, ptr noundef nonnull %147) #10
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.BMHeader, ptr %153, i64 0, i32 3
  %157 = load i8, ptr %156, align 1, !tbaa !61
  %158 = and i8 %157, 2
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  call void @BM_edge_select_set(ptr noundef %10, ptr noundef nonnull %153, i8 noundef zeroext 1) #10
  %161 = add nsw i32 %145, 1
  br label %164

162:                                              ; preds = %155, %152
  %163 = add nsw i32 %146, 1
  br label %164

164:                                              ; preds = %160, %162, %144
  %165 = phi i32 [ %146, %144 ], [ %163, %162 ], [ %146, %160 ]
  %166 = phi i32 [ %145, %144 ], [ %145, %162 ], [ %161, %160 ]
  %167 = load ptr, ptr %137, align 8, !tbaa !58
  %168 = call ptr %167(ptr noundef nonnull %5) #10
  %169 = icmp eq ptr %168, null
  br i1 %169, label %202, label %144, !llvm.loop !72

170:                                              ; preds = %130
  store i8 3, ptr %135, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %136, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %137, align 8, !tbaa !58
  %171 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 12
  %172 = load ptr, ptr %171, align 8, !tbaa !69
  store ptr %172, ptr %5, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #10
  %173 = load ptr, ptr %137, align 8, !tbaa !58
  %174 = call ptr %173(ptr noundef nonnull %5) #10
  %175 = icmp eq ptr %174, null
  br i1 %175, label %202, label %176

176:                                              ; preds = %170, %196
  %177 = phi i32 [ %198, %196 ], [ 0, %170 ]
  %178 = phi ptr [ %200, %196 ], [ %174, %170 ]
  %179 = phi i32 [ %197, %196 ], [ 0, %170 ]
  %180 = getelementptr inbounds %struct.BMHeader, ptr %178, i64 0, i32 3
  %181 = load i8, ptr %180, align 1, !tbaa !61
  %182 = and i8 %181, 18
  %183 = icmp eq i8 %182, 16
  br i1 %183, label %184, label %196

184:                                              ; preds = %176
  %185 = call ptr @EDBM_verts_mirror_get_face(ptr noundef nonnull %0, ptr noundef nonnull %178) #10
  %186 = icmp eq ptr %185, null
  br i1 %186, label %194, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.BMHeader, ptr %185, i64 0, i32 3
  %189 = load i8, ptr %188, align 1, !tbaa !61
  %190 = and i8 %189, 2
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  call void @BM_face_select_set(ptr noundef %10, ptr noundef nonnull %185, i8 noundef zeroext 1) #10
  %193 = add nsw i32 %177, 1
  br label %196

194:                                              ; preds = %187, %184
  %195 = add nsw i32 %179, 1
  br label %196

196:                                              ; preds = %192, %194, %176
  %197 = phi i32 [ %179, %176 ], [ %195, %194 ], [ %179, %192 ]
  %198 = phi i32 [ %177, %176 ], [ %177, %194 ], [ %193, %192 ]
  %199 = load ptr, ptr %137, align 8, !tbaa !58
  %200 = call ptr %199(ptr noundef nonnull %5) #10
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %176, !llvm.loop !73

202:                                              ; preds = %124, %164, %196, %95, %138, %170
  %203 = phi i32 [ 0, %170 ], [ 0, %138 ], [ 0, %95 ], [ %197, %196 ], [ %165, %164 ], [ %125, %124 ]
  %204 = phi i32 [ 0, %170 ], [ 0, %138 ], [ 0, %95 ], [ %198, %196 ], [ %166, %164 ], [ %126, %124 ]
  call void @EDBM_verts_mirror_cache_end(ptr noundef nonnull %0) #10
  store i32 %204, ptr %2, align 4, !tbaa !52
  store i32 %203, ptr %3, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @EDBM_verts_mirror_cache_begin(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @EDBM_flag_disable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @EDBM_verts_mirror_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @EDBM_verts_mirror_get_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @EDBM_verts_mirror_get_face(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_face_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @EDBM_verts_mirror_cache_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_automerge(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %1) #10
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = zext i8 %3 to i32
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 5
  %11 = load float, ptr %10, align 4, !tbaa !93
  %12 = fpext float %11 to double
  %13 = tail call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %7, double noundef %12) #10
  %14 = icmp ne i8 %13, 0
  %15 = icmp ne i8 %2, 0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  tail call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  br label %18

18:                                               ; preds = %17, %4
  ret void
}

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @EDBM_backbuf_border_init(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = icmp eq ptr %7, null
  br i1 %8, label %67, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !102
  %12 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 24
  %13 = load i16, ptr %12, align 8, !tbaa !103
  %14 = icmp slt i16 %13, 3
  br i1 %14, label %67, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 28
  %17 = load i16, ptr %16, align 8, !tbaa !105
  %18 = and i16 %17, 4096
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %67, label %20

20:                                               ; preds = %15
  %21 = tail call ptr @view3d_read_backbuf(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %67, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr @bm_vertoffs, align 4, !tbaa !52
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %67, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !106
  %29 = add i32 %24, 1
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !109
  %31 = ashr i32 %29, 5
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 2
  %35 = tail call ptr %30(i64 noundef %34, ptr noundef nonnull @.str.176) #10
  store ptr %35, ptr @selbuf, align 8, !tbaa !109
  %36 = sext i16 %3 to i32
  %37 = sext i16 %1 to i32
  %38 = sub nsw i32 %36, %37
  %39 = add nsw i32 %38, 1
  %40 = sext i16 %4 to i32
  %41 = sext i16 %2 to i32
  %42 = sub nsw i32 %40, %41
  %43 = add nsw i32 %42, 1
  %44 = mul nsw i32 %43, %39
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %26, %63
  %47 = phi i32 [ %49, %63 ], [ %44, %26 ]
  %48 = phi ptr [ %64, %63 ], [ %28, %26 ]
  %49 = add nsw i32 %47, -1
  %50 = load i32, ptr %48, align 4, !tbaa !52
  %51 = load i32, ptr @bm_vertoffs, align 4
  %52 = freeze i32 %51
  %53 = add i32 %50, -1
  %54 = icmp ult i32 %53, %52
  br i1 %54, label %55, label %63

55:                                               ; preds = %46
  %56 = and i32 %50, 31
  %57 = shl nuw i32 1, %56
  %58 = lshr i32 %50, 5
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %35, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !52
  %62 = or i32 %61, %57
  store i32 %62, ptr %60, align 4, !tbaa !52
  br label %63

63:                                               ; preds = %55, %46
  %64 = getelementptr inbounds i32, ptr %48, i64 1
  %65 = icmp eq i32 %49, 0
  br i1 %65, label %66, label %46, !llvm.loop !110

66:                                               ; preds = %63, %26
  tail call void @IMB_freeImBuf(ptr noundef nonnull %21) #10
  br label %67

67:                                               ; preds = %23, %20, %5, %9, %15, %66
  %68 = phi i8 [ 1, %66 ], [ 0, %15 ], [ 0, %9 ], [ 0, %5 ], [ 0, %20 ], [ 0, %23 ]
  ret i8 %68
}

declare ptr @view3d_read_backbuf(ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @EDBM_backbuf_check(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @selbuf, align 8, !tbaa !109
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @bm_vertoffs, align 4
  %6 = freeze i32 %5
  %7 = add i32 %0, -1
  %8 = icmp ult i32 %7, %6
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  %10 = lshr i32 %0, 5
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %2, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !52
  %14 = and i32 %0, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %4, %1, %9
  %20 = phi i8 [ %18, %9 ], [ 1, %1 ], [ 0, %4 ]
  ret i8 %20
}

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_backbuf_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @selbuf, align 8, !tbaa !109
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !109
  tail call void %4(ptr noundef nonnull %1) #10
  br label %5

5:                                                ; preds = %3, %0
  store ptr null, ptr @selbuf, align 8, !tbaa !109
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @EDBM_backbuf_border_mask_init(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, i16 noundef signext %6) local_unnamed_addr #0 {
  %8 = alloca %struct.LassoMaskData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  %9 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !100
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !111
  %15 = tail call zeroext i8 @BKE_paint_select_elem_test(ptr noundef %14) #10
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %96, label %28

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.View3D, ptr %19, i64 0, i32 24
  %21 = load i16, ptr %20, align 8, !tbaa !103
  %22 = icmp slt i16 %21, 3
  br i1 %22, label %96, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.View3D, ptr %19, i64 0, i32 28
  %25 = load i16, ptr %24, align 8, !tbaa !105
  %26 = and i16 %25, 4096
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %96, label %28

28:                                               ; preds = %23, %12
  %29 = tail call ptr @view3d_read_backbuf(ptr noundef %0, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, i16 noundef signext %6) #10
  %30 = icmp eq ptr %29, null
  %31 = load i32, ptr @bm_vertoffs, align 4
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %96, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ImBuf, ptr %29, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !106
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !109
  %38 = getelementptr inbounds %struct.ImBuf, ptr %29, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !112
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %40, 2
  %42 = getelementptr inbounds %struct.ImBuf, ptr %29, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !113
  %44 = sext i32 %43 to i64
  %45 = mul i64 %41, %44
  %46 = tail call ptr %37(i64 noundef %45, ptr noundef nonnull @__func__.EDBM_backbuf_border_mask_init) #10
  store ptr %46, ptr %8, align 8, !tbaa !114
  %47 = sext i16 %5 to i32
  %48 = sext i16 %3 to i32
  %49 = sub nsw i32 %47, %48
  %50 = add nsw i32 %49, 1
  %51 = getelementptr inbounds %struct.LassoMaskData, ptr %8, i64 0, i32 1
  store i32 %50, ptr %51, align 8, !tbaa !116
  %52 = sext i16 %4 to i32
  %53 = add nsw i32 %47, 1
  %54 = sext i16 %6 to i32
  %55 = add nsw i32 %54, 1
  %56 = sext i16 %2 to i32
  call void @fill_poly_v2i_n(i32 noundef %48, i32 noundef %52, i32 noundef %53, i32 noundef %55, ptr noundef %1, i32 noundef %56, ptr noundef nonnull @edbm_mask_lasso_px_cb, ptr noundef nonnull %8) #10
  %57 = load i32, ptr @bm_vertoffs, align 4, !tbaa !52
  %58 = add i32 %57, 1
  %59 = load ptr, ptr @MEM_callocN, align 8, !tbaa !109
  %60 = ashr i32 %58, 5
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = shl nsw i64 %62, 2
  %64 = call ptr %59(i64 noundef %63, ptr noundef nonnull @.str.176) #10
  store ptr %64, ptr @selbuf, align 8, !tbaa !109
  %65 = sub nsw i32 %54, %52
  %66 = add nsw i32 %65, 1
  %67 = mul nsw i32 %50, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %94, label %69

69:                                               ; preds = %34, %90
  %70 = phi i32 [ %73, %90 ], [ %67, %34 ]
  %71 = phi ptr [ %91, %90 ], [ %36, %34 ]
  %72 = phi ptr [ %92, %90 ], [ %46, %34 ]
  %73 = add nsw i32 %70, -1
  %74 = load i32, ptr %71, align 4, !tbaa !52
  %75 = load i32, ptr @bm_vertoffs, align 4
  %76 = freeze i32 %75
  %77 = add i32 %74, -1
  %78 = icmp ult i32 %77, %76
  br i1 %78, label %79, label %90

79:                                               ; preds = %69
  %80 = load i32, ptr %72, align 4, !tbaa !52
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = and i32 %74, 31
  %84 = shl nuw i32 1, %83
  %85 = lshr i32 %74, 5
  %86 = zext nneg i32 %85 to i64
  %87 = getelementptr inbounds i32, ptr %64, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !52
  %89 = or i32 %88, %84
  store i32 %89, ptr %87, align 4, !tbaa !52
  br label %90

90:                                               ; preds = %82, %79, %69
  %91 = getelementptr inbounds i32, ptr %71, i64 1
  %92 = getelementptr inbounds i32, ptr %72, i64 1
  %93 = icmp eq i32 %73, 0
  br i1 %93, label %94, label %69, !llvm.loop !117

94:                                               ; preds = %90, %34
  call void @IMB_freeImBuf(ptr noundef nonnull %29) #10
  %95 = load ptr, ptr @MEM_freeN, align 8, !tbaa !109
  call void %95(ptr noundef %46) #10
  br label %96

96:                                               ; preds = %28, %17, %23, %12, %94
  %97 = phi i8 [ 1, %94 ], [ 0, %12 ], [ 0, %23 ], [ 0, %17 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  ret i8 %97
}

declare zeroext i8 @BKE_paint_select_elem_test(ptr noundef) local_unnamed_addr #2

declare void @fill_poly_v2i_n(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @edbm_mask_lasso_px_cb(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #4 {
  %4 = load ptr, ptr %2, align 8, !tbaa !114
  %5 = getelementptr inbounds %struct.LassoMaskData, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !116
  %7 = mul nsw i32 %6, %1
  %8 = add nsw i32 %7, %0
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %4, i64 %9
  store i32 1, ptr %10, align 4, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @EDBM_backbuf_circle_init(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !111
  %11 = tail call zeroext i8 @BKE_paint_select_elem_test(ptr noundef %10) #10
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %82, label %24

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = getelementptr inbounds %struct.View3D, ptr %15, i64 0, i32 24
  %17 = load i16, ptr %16, align 8, !tbaa !103
  %18 = icmp slt i16 %17, 3
  br i1 %18, label %82, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.View3D, ptr %15, i64 0, i32 28
  %21 = load i16, ptr %20, align 8, !tbaa !105
  %22 = and i16 %21, 4096
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %82, label %24

24:                                               ; preds = %19, %8
  %25 = sub i16 %1, %3
  %26 = add i16 %3, %1
  %27 = sub i16 %2, %3
  %28 = add i16 %3, %2
  %29 = tail call ptr @view3d_read_backbuf(ptr noundef %0, i16 noundef signext %25, i16 noundef signext %27, i16 noundef signext %26, i16 noundef signext %28) #10
  %30 = load i32, ptr @bm_vertoffs, align 4, !tbaa !52
  %31 = icmp eq i32 %30, 0
  %32 = icmp eq ptr %29, null
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %82, label %34

34:                                               ; preds = %24
  %35 = sext i16 %3 to i32
  %36 = getelementptr inbounds %struct.ImBuf, ptr %29, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !106
  %38 = add i32 %30, 1
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !109
  %40 = ashr i32 %38, 5
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 2
  %44 = tail call ptr %39(i64 noundef %43, ptr noundef nonnull @.str.176) #10
  store ptr %44, ptr @selbuf, align 8, !tbaa !109
  %45 = mul nsw i32 %35, %35
  %46 = sub i16 0, %3
  %47 = icmp sgt i16 %46, %3
  br i1 %47, label %81, label %48

48:                                               ; preds = %34, %78
  %49 = phi i16 [ %79, %78 ], [ %46, %34 ]
  %50 = phi ptr [ %76, %78 ], [ %37, %34 ]
  %51 = sext i16 %49 to i32
  %52 = mul nsw i32 %51, %51
  br label %53

53:                                               ; preds = %48, %74
  %54 = phi i16 [ %46, %48 ], [ %75, %74 ]
  %55 = phi ptr [ %50, %48 ], [ %76, %74 ]
  %56 = sext i16 %54 to i32
  %57 = mul nsw i32 %56, %56
  %58 = add nuw nsw i32 %57, %52
  %59 = icmp ult i32 %58, %45
  br i1 %59, label %60, label %74

60:                                               ; preds = %53
  %61 = load i32, ptr %55, align 4, !tbaa !52
  %62 = load i32, ptr @bm_vertoffs, align 4
  %63 = freeze i32 %62
  %64 = add i32 %61, -1
  %65 = icmp ult i32 %64, %63
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = and i32 %61, 31
  %68 = shl nuw i32 1, %67
  %69 = lshr i32 %61, 5
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds i32, ptr %44, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !52
  %73 = or i32 %72, %68
  store i32 %73, ptr %71, align 4, !tbaa !52
  br label %74

74:                                               ; preds = %53, %66, %60
  %75 = add i16 %54, 1
  %76 = getelementptr inbounds i32, ptr %55, i64 1
  %77 = icmp sgt i16 %75, %3
  br i1 %77, label %78, label %53, !llvm.loop !118

78:                                               ; preds = %74
  %79 = add i16 %49, 1
  %80 = icmp sgt i16 %79, %3
  br i1 %80, label %81, label %48, !llvm.loop !119

81:                                               ; preds = %78, %34
  tail call void @IMB_freeImBuf(ptr noundef nonnull %29) #10
  br label %82

82:                                               ; preds = %24, %13, %19, %8, %81
  %83 = phi i8 [ 1, %81 ], [ 0, %8 ], [ 0, %19 ], [ 0, %13 ], [ 0, %24 ]
  ret i8 %83
}

; Function Attrs: nounwind uwtable
define dso_local ptr @EDBM_vert_find_nearest(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = alloca %struct.anon, align 8
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 24
  %10 = load i16, ptr %9, align 8, !tbaa !103
  %11 = icmp sgt i16 %10, 2
  br i1 %11, label %12, label %47

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 28
  %14 = load i16, ptr %13, align 8, !tbaa !105
  %15 = and i16 %14, 4096
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %47, label %17

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %18 = icmp eq i8 %3, 0
  %19 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 7
  %20 = load i32, ptr @bm_wireoffs, align 4, !tbaa !52
  br i1 %18, label %26, label %21

21:                                               ; preds = %17
  %22 = zext i8 %3 to i16
  %23 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !120
  %25 = call i32 @view3d_sample_backbuf_rect(ptr noundef %0, ptr noundef nonnull %19, i32 noundef 50, i32 noundef %20, i32 noundef 16777215, ptr noundef nonnull %5, i16 noundef signext %22, ptr noundef %24, ptr noundef nonnull @findnearestvert__backbufIndextest) #10
  br label %28

26:                                               ; preds = %17
  %27 = call i32 @view3d_sample_backbuf_rect(ptr noundef %0, ptr noundef nonnull %19, i32 noundef 50, i32 noundef %20, i32 noundef 16777215, ptr noundef nonnull %5, i16 noundef signext 0, ptr noundef null, ptr noundef null) #10
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi i32 [ %25, %21 ], [ %27, %26 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !120
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = add i32 %29, -1
  %36 = call ptr @BM_vert_at_index_find(ptr noundef %34, i32 noundef %35) #10
  br label %37

37:                                               ; preds = %28, %31
  %38 = phi ptr [ %36, %31 ], [ null, %28 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load float, ptr %5, align 4, !tbaa !121
  %42 = load float, ptr %1, align 4, !tbaa !121
  %43 = fcmp olt float %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store float %41, ptr %1, align 4, !tbaa !121
  br label %45

45:                                               ; preds = %37, %40, %44
  %46 = phi ptr [ %38, %44 ], [ null, %40 ], [ null, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %92

47:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #10
  %48 = load ptr, ptr @EDBM_vert_find_nearest.lastSelected, align 8, !tbaa !109
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !120
  %53 = load ptr, ptr %52, align 8, !tbaa !48
  %54 = load i32, ptr @EDBM_vert_find_nearest.lastSelectedIndex, align 4, !tbaa !52
  %55 = tail call ptr @BM_vert_at_index_find(ptr noundef %53, i32 noundef %54) #10
  %56 = load ptr, ptr @EDBM_vert_find_nearest.lastSelected, align 8, !tbaa !109
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  store i32 0, ptr @EDBM_vert_find_nearest.lastSelectedIndex, align 4, !tbaa !52
  store ptr null, ptr @EDBM_vert_find_nearest.lastSelected, align 8, !tbaa !109
  br label %59

59:                                               ; preds = %58, %50, %47
  %60 = load i32, ptr @EDBM_vert_find_nearest.lastSelectedIndex, align 4, !tbaa !52
  %61 = sitofp i32 %60 to float
  %62 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 5
  store float %61, ptr %62, align 8, !tbaa !122
  %63 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 7
  %64 = load i32, ptr %63, align 8, !tbaa !52
  %65 = sitofp i32 %64 to float
  store float %65, ptr %6, align 8, !tbaa !121
  %66 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 7, i64 1
  %67 = load i32, ptr %66, align 4, !tbaa !52
  %68 = sitofp i32 %67 to float
  %69 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store float %68, ptr %69, align 4, !tbaa !121
  %70 = icmp ne i8 %2, 0
  %71 = uitofp i1 %70 to float
  %72 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 2
  store float %71, ptr %72, align 4, !tbaa !124
  %73 = load float, ptr %1, align 4, !tbaa !121
  %74 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 4
  store float %73, ptr %74, align 4, !tbaa !125
  %75 = uitofp i8 %3 to float
  %76 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 3
  store float %75, ptr %76, align 8, !tbaa !126
  %77 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 7
  store ptr null, ptr %77, align 8, !tbaa !127
  %78 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 6
  store float 0.000000e+00, ptr %78, align 4, !tbaa !128
  %79 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 1
  store float 0.000000e+00, ptr %79, align 8, !tbaa !129
  %80 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !100
  %82 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !130
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %81, ptr noundef %83) #10
  call void @mesh_foreachScreenVert(ptr noundef %0, ptr noundef nonnull @findnearestvert__doClosest, ptr noundef nonnull %6, i32 noundef 7) #10
  %84 = load float, ptr %74, align 4, !tbaa !125
  %85 = fcmp ogt float %84, 3.000000e+00
  br i1 %85, label %86, label %87

86:                                               ; preds = %59
  store float 1.000000e+00, ptr %79, align 8, !tbaa !129
  call void @mesh_foreachScreenVert(ptr noundef %0, ptr noundef nonnull @findnearestvert__doClosest, ptr noundef nonnull %6, i32 noundef 7) #10
  br label %87

87:                                               ; preds = %86, %59
  %88 = load float, ptr %74, align 4, !tbaa !125
  store float %88, ptr %1, align 4, !tbaa !121
  %89 = load ptr, ptr %77, align 8, !tbaa !127
  store ptr %89, ptr @EDBM_vert_find_nearest.lastSelected, align 8, !tbaa !109
  %90 = load float, ptr %78, align 4, !tbaa !128
  %91 = fptosi float %90 to i32
  store i32 %91, ptr @EDBM_vert_find_nearest.lastSelectedIndex, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  br label %92

92:                                               ; preds = %87, %45
  %93 = phi ptr [ %46, %45 ], [ %89, %87 ]
  ret ptr %93
}

declare i32 @view3d_sample_backbuf_rect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @findnearestvert__backbufIndextest(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !48
  %4 = add i32 %1, -1
  %5 = tail call ptr @BM_vert_at_index_find(ptr noundef %3, i32 noundef %4) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMHeader, ptr %5, i64 0, i32 3
  %9 = load i8, ptr %8, align 1, !tbaa !61
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i8 [ 1, %2 ], [ %11, %7 ]
  ret i8 %13
}

declare ptr @BM_vert_at_index_find(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mesh_foreachScreenVert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @findnearestvert__doClosest(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #5 {
  %5 = getelementptr inbounds %struct.anon.3, ptr %0, i64 0, i32 1
  %6 = load float, ptr %5, align 8, !tbaa !129
  %7 = fcmp oeq float %6, 0.000000e+00
  %8 = sitofp i32 %3 to float
  %9 = getelementptr inbounds %struct.anon.3, ptr %0, i64 0, i32 5
  %10 = load float, ptr %9, align 8, !tbaa !122
  br i1 %7, label %11, label %13

11:                                               ; preds = %4
  %12 = fcmp ult float %10, %8
  br i1 %12, label %15, label %51

13:                                               ; preds = %4
  %14 = fcmp olt float %10, %8
  br i1 %14, label %51, label %15

15:                                               ; preds = %13, %11
  %16 = getelementptr inbounds %struct.anon.3, ptr %0, i64 0, i32 4
  %17 = load float, ptr %16, align 4, !tbaa !125
  %18 = fcmp ogt float %17, 3.000000e+00
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = load float, ptr %2, align 4, !tbaa !121
  %21 = load float, ptr %0, align 4, !tbaa !121
  %22 = fsub float %20, %21
  %23 = getelementptr inbounds float, ptr %2, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !121
  %25 = getelementptr inbounds float, ptr %0, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !121
  %27 = fsub float %24, %26
  %28 = tail call float @llvm.fabs.f32(float %22)
  %29 = tail call float @llvm.fabs.f32(float %27)
  %30 = fadd float %28, %29
  %31 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %32 = load i8, ptr %31, align 1, !tbaa !61
  %33 = and i8 %32, 1
  %34 = uitofp i8 %33 to float
  %35 = getelementptr inbounds %struct.anon.3, ptr %0, i64 0, i32 2
  %36 = load float, ptr %35, align 4, !tbaa !124
  %37 = fcmp oeq float %36, %34
  br i1 %37, label %38, label %44

38:                                               ; preds = %19
  %39 = getelementptr inbounds %struct.anon.3, ptr %0, i64 0, i32 3
  %40 = load float, ptr %39, align 8, !tbaa !126
  %41 = fcmp oeq float %40, 1.000000e+00
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = fadd float %30, 5.000000e+00
  br label %44

44:                                               ; preds = %42, %19
  %45 = phi float [ %43, %42 ], [ %30, %19 ]
  %46 = fcmp olt float %45, %17
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  store float %45, ptr %16, align 4, !tbaa !125
  %48 = getelementptr inbounds %struct.anon.3, ptr %0, i64 0, i32 7
  store ptr %1, ptr %48, align 8, !tbaa !127
  %49 = sitofp i32 %3 to float
  %50 = getelementptr inbounds %struct.anon.3, ptr %0, i64 0, i32 6
  store float %49, ptr %50, align 4, !tbaa !128
  br label %51

51:                                               ; preds = %38, %15, %44, %47, %13, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @EDBM_edge_find_nearest(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = alloca %struct.anon.0, align 8
  %5 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 24
  %8 = load i16, ptr %7, align 8, !tbaa !103
  %9 = icmp sgt i16 %8, 2
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 28
  %12 = load i16, ptr %11, align 8, !tbaa !105
  %13 = and i16 %12, 4096
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  tail call void @view3d_validate_backbuf(ptr noundef %0) #10
  %16 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 7
  %17 = load i32, ptr @bm_solidoffs, align 4, !tbaa !52
  %18 = load i32, ptr @bm_wireoffs, align 4, !tbaa !52
  %19 = call i32 @view3d_sample_backbuf_rect(ptr noundef %0, ptr noundef nonnull %16, i32 noundef 50, i32 noundef %17, i32 noundef %18, ptr noundef nonnull %3, i16 noundef signext 0, ptr noundef null, ptr noundef null) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !120
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = add i32 %19, -1
  %26 = call ptr @BM_edge_at_index_find(ptr noundef %24, i32 noundef %25) #10
  br label %27

27:                                               ; preds = %15, %21
  %28 = phi ptr [ %26, %21 ], [ null, %15 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load float, ptr %3, align 4, !tbaa !121
  %32 = load float, ptr %1, align 4, !tbaa !121
  %33 = fcmp olt float %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store float %31, ptr %1, align 4, !tbaa !121
  br label %35

35:                                               ; preds = %27, %30, %34
  %36 = phi ptr [ %28, %34 ], [ null, %30 ], [ null, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %55

37:                                               ; preds = %10, %2
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !131
  %38 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !52
  %40 = sitofp i32 %39 to float
  %41 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 1
  store float %40, ptr %41, align 8, !tbaa !121
  %42 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 7, i64 1
  %43 = load i32, ptr %42, align 4, !tbaa !52
  %44 = sitofp i32 %43 to float
  %45 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 1, i64 1
  store float %44, ptr %45, align 4, !tbaa !121
  %46 = load float, ptr %1, align 4, !tbaa !121
  %47 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 2
  store float %46, ptr %47, align 8, !tbaa !132
  %48 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 3
  store ptr null, ptr %48, align 8, !tbaa !134
  %49 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !100
  %51 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !130
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %50, ptr noundef %52) #10
  call void @mesh_foreachScreenEdge(ptr noundef %0, ptr noundef nonnull @findnearestedge__doClosest, ptr noundef nonnull %4, i32 noundef 2) #10
  %53 = load float, ptr %47, align 8, !tbaa !132
  store float %53, ptr %1, align 4, !tbaa !121
  %54 = load ptr, ptr %48, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #10
  br label %55

55:                                               ; preds = %37, %35
  %56 = phi ptr [ %36, %35 ], [ %54, %37 ]
  ret ptr %56
}

declare void @view3d_validate_backbuf(ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_at_index_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @mesh_foreachScreenEdge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @findnearestedge__doClosest(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 %4) #0 {
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 1
  %8 = tail call float @dist_to_line_segment_v2(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3) #10
  %9 = fptosi float %8 to i32
  %10 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %11 = load i8, ptr %10, align 1, !tbaa !61
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  %14 = add nsw i32 %9, 5
  %15 = select i1 %13, i32 %9, i32 %14
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 2
  %18 = load float, ptr %17, align 8, !tbaa !132
  %19 = fcmp ogt float %18, %16
  br i1 %19, label %20, label %61

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !135
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %22, i64 0, i32 32
  %24 = load i16, ptr %23, align 2, !tbaa !136
  %25 = and i16 %24, 4
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %59, label %27

27:                                               ; preds = %20
  %28 = tail call float @line_point_factor_v2(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %29 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !138
  %31 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2
  %32 = load float, ptr %31, align 8, !tbaa !121
  %33 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !141
  %35 = getelementptr inbounds %struct.BMVert, ptr %34, i64 0, i32 2
  %36 = load float, ptr %35, align 8, !tbaa !121
  %37 = fsub float %36, %32
  %38 = tail call float @llvm.fmuladd.f32(float %28, float %37, float %32)
  store float %38, ptr %6, align 4, !tbaa !121
  %39 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !121
  %41 = getelementptr inbounds %struct.BMVert, ptr %34, i64 0, i32 2, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !121
  %43 = fsub float %42, %40
  %44 = tail call float @llvm.fmuladd.f32(float %28, float %43, float %40)
  %45 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float %44, ptr %45, align 4, !tbaa !121
  %46 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2, i64 2
  %47 = load float, ptr %46, align 8, !tbaa !121
  %48 = getelementptr inbounds %struct.BMVert, ptr %34, i64 0, i32 2, i64 2
  %49 = load float, ptr %48, align 8, !tbaa !121
  %50 = fsub float %49, %47
  %51 = tail call float @llvm.fmuladd.f32(float %28, float %50, float %47)
  %52 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %51, ptr %52, align 4, !tbaa !121
  %53 = load ptr, ptr %21, align 8, !tbaa !135
  %54 = call zeroext i8 @ED_view3d_clipping_test(ptr noundef %53, ptr noundef nonnull %6, i8 noundef zeroext 1) #10
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %27
  store float %16, ptr %17, align 8, !tbaa !132
  %57 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 3
  store ptr %1, ptr %57, align 8, !tbaa !134
  br label %58

58:                                               ; preds = %56, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  br label %61

59:                                               ; preds = %20
  store float %16, ptr %17, align 8, !tbaa !132
  %60 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 3
  store ptr %1, ptr %60, align 8, !tbaa !134
  br label %61

61:                                               ; preds = %58, %59, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @EDBM_face_find_nearest(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.anon.1, align 8
  %4 = alloca %struct.anon.2, align 8
  %5 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 24
  %8 = load i16, ptr %7, align 8, !tbaa !103
  %9 = icmp sgt i16 %8, 2
  br i1 %9, label %10, label %55

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 28
  %12 = load i16, ptr %11, align 8, !tbaa !105
  %13 = and i16 %12, 4096
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %55, label %15

15:                                               ; preds = %10
  tail call void @view3d_validate_backbuf(ptr noundef %0) #10
  %16 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 7, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !52
  %20 = tail call i32 @view3d_sample_backbuf(ptr noundef %0, i32 noundef %17, i32 noundef %19) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !120
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = add i32 %20, -1
  %27 = tail call ptr @BM_face_at_index_find(ptr noundef %25, i32 noundef %26) #10
  br label %28

28:                                               ; preds = %15, %22
  %29 = phi ptr [ %27, %22 ], [ null, %15 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %95, label %31

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %32 = load i32, ptr %16, align 8, !tbaa !52
  %33 = sitofp i32 %32 to float
  store float %33, ptr %3, align 8, !tbaa !121
  %34 = load i32, ptr %18, align 4, !tbaa !52
  %35 = sitofp i32 %34 to float
  %36 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  store float %35, ptr %36, align 4, !tbaa !121
  %37 = getelementptr inbounds %struct.anon.1, ptr %3, i64 0, i32 1
  store float 0x47EFFFFFE0000000, ptr %37, align 8, !tbaa !142
  %38 = getelementptr inbounds %struct.anon.1, ptr %3, i64 0, i32 2
  store ptr %29, ptr %38, align 8, !tbaa !144
  %39 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !100
  %41 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !130
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %40, ptr noundef %42) #10
  call void @mesh_foreachScreenFace(ptr noundef %0, ptr noundef nonnull @findnearestface__getDistance, ptr noundef nonnull %3, i32 noundef 7) #10
  %43 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !120
  %45 = getelementptr inbounds %struct.BMEditMesh, ptr %44, i64 0, i32 12
  %46 = load i16, ptr %45, align 4, !tbaa !66
  %47 = icmp eq i16 %46, 4
  br i1 %47, label %52, label %48

48:                                               ; preds = %31
  %49 = load float, ptr %37, align 8, !tbaa !142
  %50 = load float, ptr %1, align 4, !tbaa !121
  %51 = fcmp olt float %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %31
  %53 = load float, ptr %37, align 8, !tbaa !142
  store float %53, ptr %1, align 4, !tbaa !121
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  br label %95

54:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  br label %95

55:                                               ; preds = %10, %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  %56 = load ptr, ptr @EDBM_face_find_nearest.lastSelected, align 8, !tbaa !109
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !120
  %61 = load ptr, ptr %60, align 8, !tbaa !48
  %62 = load i32, ptr @EDBM_face_find_nearest.lastSelectedIndex, align 4, !tbaa !52
  %63 = tail call ptr @BM_face_at_index_find(ptr noundef %61, i32 noundef %62) #10
  %64 = load ptr, ptr @EDBM_face_find_nearest.lastSelected, align 8, !tbaa !109
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store i32 0, ptr @EDBM_face_find_nearest.lastSelectedIndex, align 4, !tbaa !52
  store ptr null, ptr @EDBM_face_find_nearest.lastSelected, align 8, !tbaa !109
  br label %67

67:                                               ; preds = %66, %58, %55
  %68 = load i32, ptr @EDBM_face_find_nearest.lastSelectedIndex, align 4, !tbaa !52
  %69 = sitofp i32 %68 to float
  %70 = getelementptr inbounds %struct.anon.2, ptr %4, i64 0, i32 3
  store float %69, ptr %70, align 8, !tbaa !145
  %71 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 7
  %72 = load i32, ptr %71, align 8, !tbaa !52
  %73 = sitofp i32 %72 to float
  store float %73, ptr %4, align 8, !tbaa !121
  %74 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 7, i64 1
  %75 = load i32, ptr %74, align 4, !tbaa !52
  %76 = sitofp i32 %75 to float
  %77 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  store float %76, ptr %77, align 4, !tbaa !121
  %78 = load float, ptr %1, align 4, !tbaa !121
  %79 = getelementptr inbounds %struct.anon.2, ptr %4, i64 0, i32 2
  store float %78, ptr %79, align 4, !tbaa !147
  %80 = getelementptr inbounds %struct.anon.2, ptr %4, i64 0, i32 5
  store ptr null, ptr %80, align 8, !tbaa !148
  %81 = getelementptr inbounds %struct.anon.2, ptr %4, i64 0, i32 4
  store float 0.000000e+00, ptr %81, align 4, !tbaa !149
  %82 = getelementptr inbounds %struct.anon.2, ptr %4, i64 0, i32 1
  store float 0.000000e+00, ptr %82, align 8, !tbaa !150
  %83 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !100
  %85 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !130
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %84, ptr noundef %86) #10
  call void @mesh_foreachScreenFace(ptr noundef %0, ptr noundef nonnull @findnearestface__doClosest, ptr noundef nonnull %4, i32 noundef 7) #10
  %87 = load float, ptr %79, align 4, !tbaa !147
  %88 = fcmp ogt float %87, 3.000000e+00
  br i1 %88, label %89, label %90

89:                                               ; preds = %67
  store float 1.000000e+00, ptr %82, align 8, !tbaa !150
  call void @mesh_foreachScreenFace(ptr noundef %0, ptr noundef nonnull @findnearestface__doClosest, ptr noundef nonnull %4, i32 noundef 7) #10
  br label %90

90:                                               ; preds = %89, %67
  %91 = load float, ptr %79, align 4, !tbaa !147
  store float %91, ptr %1, align 4, !tbaa !121
  %92 = load ptr, ptr %80, align 8, !tbaa !148
  store ptr %92, ptr @EDBM_face_find_nearest.lastSelected, align 8, !tbaa !109
  %93 = load float, ptr %81, align 4, !tbaa !149
  %94 = fptosi float %93 to i32
  store i32 %94, ptr @EDBM_face_find_nearest.lastSelectedIndex, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  br label %95

95:                                               ; preds = %52, %54, %28, %90
  %96 = phi ptr [ %92, %90 ], [ %29, %52 ], [ null, %54 ], [ null, %28 ]
  ret ptr %96
}

declare i32 @view3d_sample_backbuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_face_at_index_find(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @mesh_foreachScreenFace(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @findnearestface__getDistance(ptr nocapture noundef %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, i32 %3) #5 {
  %5 = getelementptr inbounds %struct.anon.5, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = load float, ptr %2, align 4, !tbaa !121
  %10 = load float, ptr %0, align 4, !tbaa !121
  %11 = fsub float %9, %10
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !121
  %14 = getelementptr inbounds float, ptr %0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !121
  %16 = fsub float %13, %15
  %17 = tail call float @llvm.fabs.f32(float %11)
  %18 = tail call float @llvm.fabs.f32(float %16)
  %19 = fadd float %17, %18
  %20 = getelementptr inbounds %struct.anon.5, ptr %0, i64 0, i32 1
  %21 = load float, ptr %20, align 8, !tbaa !142
  %22 = fcmp olt float %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %8
  store float %19, ptr %20, align 8, !tbaa !142
  br label %24

24:                                               ; preds = %8, %23, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @findnearestface__doClosest(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #5 {
  %5 = getelementptr inbounds %struct.anon.6, ptr %0, i64 0, i32 1
  %6 = load float, ptr %5, align 8, !tbaa !150
  %7 = fcmp oeq float %6, 0.000000e+00
  %8 = sitofp i32 %3 to float
  %9 = getelementptr inbounds %struct.anon.6, ptr %0, i64 0, i32 3
  %10 = load float, ptr %9, align 8, !tbaa !145
  br i1 %7, label %11, label %13

11:                                               ; preds = %4
  %12 = fcmp ult float %10, %8
  br i1 %12, label %15, label %36

13:                                               ; preds = %4
  %14 = fcmp olt float %10, %8
  br i1 %14, label %36, label %15

15:                                               ; preds = %13, %11
  %16 = getelementptr inbounds %struct.anon.6, ptr %0, i64 0, i32 2
  %17 = load float, ptr %16, align 4, !tbaa !147
  %18 = fcmp ogt float %17, 3.000000e+00
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load float, ptr %2, align 4, !tbaa !121
  %21 = load float, ptr %0, align 4, !tbaa !121
  %22 = fsub float %20, %21
  %23 = getelementptr inbounds float, ptr %2, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !121
  %25 = getelementptr inbounds float, ptr %0, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !121
  %27 = fsub float %24, %26
  %28 = tail call float @llvm.fabs.f32(float %22)
  %29 = tail call float @llvm.fabs.f32(float %27)
  %30 = fadd float %28, %29
  %31 = fcmp olt float %30, %17
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  store float %30, ptr %16, align 4, !tbaa !147
  %33 = getelementptr inbounds %struct.anon.6, ptr %0, i64 0, i32 5
  store ptr %1, ptr %33, align 8, !tbaa !148
  %34 = sitofp i32 %3 to float
  %35 = getelementptr inbounds %struct.anon.6, ptr %0, i64 0, i32 4
  store float %34, ptr %35, align 4, !tbaa !149
  br label %36

36:                                               ; preds = %15, %32, %19, %13, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_select_similar(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %2, align 8, !tbaa !154
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.3, ptr %3, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !156
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_similar_exec, ptr %5, align 8, !tbaa !157
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %6, align 8, !tbaa !158
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !159
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !160
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef nonnull @prop_similar_types, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #10
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !161
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @select_similar_type_itemf) #10
  %12 = load ptr, ptr %8, align 8, !tbaa !160
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.7, ptr noundef nonnull @prop_similar_compare_types, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6) #10
  %14 = load ptr, ptr %8, align 8, !tbaa !160
  %15 = tail call ptr @RNA_def_float(ptr noundef %14, ptr noundef nonnull @.str.9, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6, float noundef 0.000000e+00, float noundef 1.000000e+00) #10
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_similar_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca %struct.BMOperator, align 8
  %6 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #10
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !162
  %9 = tail call ptr @RNA_struct_find_property(ptr noundef %8, ptr noundef nonnull @.str.9) #10
  %10 = load ptr, ptr %7, align 8, !tbaa !162
  %11 = tail call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.4) #10
  %12 = load ptr, ptr %7, align 8, !tbaa !162
  %13 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %12, ptr noundef %9) #10
  %14 = icmp eq i8 %13, 0
  %15 = load ptr, ptr %7, align 8, !tbaa !162
  br i1 %14, label %16, label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 20
  %18 = load float, ptr %17, align 4, !tbaa !164
  tail call void @RNA_property_float_set(ptr noundef %15, ptr noundef %9, float noundef %18) #10
  br label %22

19:                                               ; preds = %2
  %20 = tail call float @RNA_property_float_get(ptr noundef %15, ptr noundef %9) #10
  %21 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 20
  store float %20, ptr %21, align 4, !tbaa !164
  br label %22

22:                                               ; preds = %19, %16
  %23 = icmp slt i32 %11, 100
  br i1 %23, label %24, label %43

24:                                               ; preds = %22
  %25 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %26 = tail call ptr @BKE_editmesh_from_object(ptr noundef %25) #10
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %5) #10
  %27 = load ptr, ptr %7, align 8, !tbaa !162
  %28 = tail call i32 @RNA_enum_get(ptr noundef %27, ptr noundef nonnull @.str.4) #10
  %29 = load ptr, ptr %7, align 8, !tbaa !162
  %30 = tail call float @RNA_float_get(ptr noundef %29, ptr noundef nonnull @.str.9) #10
  %31 = load ptr, ptr %7, align 8, !tbaa !162
  %32 = tail call i32 @RNA_enum_get(ptr noundef %31, ptr noundef nonnull @.str.7) #10
  %33 = fpext float %30 to double
  %34 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %26, ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.177, i32 noundef 1, i32 noundef %28, double noundef %33, i32 noundef %32) #10
  %35 = load ptr, ptr %26, align 8, !tbaa !48
  call void @BMO_op_exec(ptr noundef %35, ptr noundef nonnull %5) #10
  call void @EDBM_flag_disable_all(ptr noundef nonnull %26, i8 noundef zeroext 1) #10
  %36 = load ptr, ptr %26, align 8, !tbaa !48
  %37 = getelementptr inbounds %struct.BMOperator, ptr %5, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %36, ptr noundef nonnull %37, ptr noundef nonnull @.str.178, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %38 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %26, ptr noundef nonnull %5, ptr noundef %1, i8 noundef zeroext 1) #10
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %24
  call void @EDBM_selectmode_flush(ptr noundef nonnull %26) #10
  call void @EDBM_update_generic(ptr noundef nonnull %26, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %41

41:                                               ; preds = %24, %40
  %42 = phi i32 [ 4, %40 ], [ 2, %24 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %5) #10
  br label %81

43:                                               ; preds = %22
  %44 = icmp slt i32 %11, 200
  %45 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %46 = tail call ptr @BKE_editmesh_from_object(ptr noundef %45) #10
  br i1 %44, label %47, label %64

47:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #10
  %48 = load ptr, ptr %7, align 8, !tbaa !162
  %49 = tail call i32 @RNA_enum_get(ptr noundef %48, ptr noundef nonnull @.str.4) #10
  %50 = load ptr, ptr %7, align 8, !tbaa !162
  %51 = tail call float @RNA_float_get(ptr noundef %50, ptr noundef nonnull @.str.9) #10
  %52 = load ptr, ptr %7, align 8, !tbaa !162
  %53 = tail call i32 @RNA_enum_get(ptr noundef %52, ptr noundef nonnull @.str.7) #10
  %54 = fpext float %51 to double
  %55 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %46, ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.179, i32 noundef 1, i32 noundef %49, double noundef %54, i32 noundef %53) #10
  %56 = load ptr, ptr %46, align 8, !tbaa !48
  call void @BMO_op_exec(ptr noundef %56, ptr noundef nonnull %4) #10
  call void @EDBM_flag_disable_all(ptr noundef nonnull %46, i8 noundef zeroext 1) #10
  %57 = load ptr, ptr %46, align 8, !tbaa !48
  %58 = getelementptr inbounds %struct.BMOperator, ptr %4, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %57, ptr noundef nonnull %58, ptr noundef nonnull @.str.180, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  call void @EDBM_selectmode_flush(ptr noundef nonnull %46) #10
  %59 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %46, ptr noundef nonnull %4, ptr noundef %1, i8 noundef zeroext 1) #10
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %47
  call void @EDBM_update_generic(ptr noundef nonnull %46, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %62

62:                                               ; preds = %47, %61
  %63 = phi i32 [ 4, %61 ], [ 2, %47 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #10
  br label %81

64:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #10
  %65 = load ptr, ptr %7, align 8, !tbaa !162
  %66 = tail call i32 @RNA_enum_get(ptr noundef %65, ptr noundef nonnull @.str.4) #10
  %67 = load ptr, ptr %7, align 8, !tbaa !162
  %68 = tail call float @RNA_float_get(ptr noundef %67, ptr noundef nonnull @.str.9) #10
  %69 = load ptr, ptr %7, align 8, !tbaa !162
  %70 = tail call i32 @RNA_enum_get(ptr noundef %69, ptr noundef nonnull @.str.7) #10
  %71 = fpext float %68 to double
  %72 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %46, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.181, i32 noundef 1, i32 noundef %66, double noundef %71, i32 noundef %70) #10
  %73 = load ptr, ptr %46, align 8, !tbaa !48
  call void @BMO_op_exec(ptr noundef %73, ptr noundef nonnull %3) #10
  call void @EDBM_flag_disable_all(ptr noundef nonnull %46, i8 noundef zeroext 1) #10
  %74 = load ptr, ptr %46, align 8, !tbaa !48
  %75 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %74, ptr noundef nonnull %75, ptr noundef nonnull @.str.182, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %76 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %46, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #10
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %64
  call void @EDBM_update_generic(ptr noundef nonnull %46, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %79

79:                                               ; preds = %64, %78
  %80 = phi i32 [ 4, %78 ], [ 2, %64 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #10
  br label %81

81:                                               ; preds = %79, %62, %41
  %82 = phi i32 [ %42, %41 ], [ %63, %62 ], [ %80, %79 ]
  ret i32 %82
}

declare i32 @ED_operator_editmesh(ptr noundef) #2

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @select_similar_type_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %42, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef nonnull %0) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !165
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store ptr null, ptr %5, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !tbaa !52
  %16 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %9) #10
  %17 = getelementptr inbounds %struct.BMEditMesh, ptr %16, i64 0, i32 12
  %18 = load i16, ptr %17, align 4, !tbaa !66
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15, %22
  %23 = phi i32 [ %24, %22 ], [ 0, %15 ]
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @prop_similar_types, i32 noundef %23) #10
  %24 = add nuw nsw i32 %23, 1
  %25 = icmp eq i32 %24, 101
  br i1 %25, label %40, label %22, !llvm.loop !166

26:                                               ; preds = %15
  %27 = and i32 %19, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26, %29
  %30 = phi i32 [ %31, %29 ], [ 101, %26 ]
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @prop_similar_types, i32 noundef %30) #10
  %31 = add nuw nsw i32 %30, 1
  %32 = icmp eq i32 %31, 201
  br i1 %32, label %40, label %29, !llvm.loop !167

33:                                               ; preds = %26
  %34 = and i32 %19, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33, %36
  %37 = phi i32 [ %38, %36 ], [ 201, %33 ]
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @prop_similar_types, i32 noundef %37) #10
  %38 = add nuw nsw i32 %37, 1
  %39 = icmp eq i32 %38, 208
  br i1 %39, label %40, label %36, !llvm.loop !168

40:                                               ; preds = %22, %29, %36, %33
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  store i8 1, ptr %3, align 1, !tbaa !60
  %41 = load ptr, ptr %5, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %42

42:                                               ; preds = %8, %11, %4, %40
  %43 = phi ptr [ %41, %40 ], [ @prop_similar_types, %4 ], [ null, %11 ], [ null, %8 ]
  ret ptr %43
}

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_select_similar_region(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %2, align 8, !tbaa !154
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %3, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_similar_region_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_similar_region_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #10
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !169
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !170
  tail call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.218) #10
  br label %87

14:                                               ; preds = %2
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !109
  %16 = zext nneg i32 %9 to i64
  %17 = shl nuw nsw i64 %16, 2
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @__func__.edbm_select_similar_region_exec) #10
  %19 = call i32 @BM_mesh_calc_face_groups(ptr noundef %7, ptr noundef %18, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  call void @BM_mesh_elem_table_ensure(ptr noundef %7, i8 noundef zeroext 8) #10
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %82

21:                                               ; preds = %14
  %22 = zext nneg i32 %19 to i64
  br label %23

23:                                               ; preds = %21, %74
  %24 = phi i64 [ 0, %21 ], [ %76, %74 ]
  %25 = phi i8 [ 0, %21 ], [ %75, %74 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %26 = load ptr, ptr %3, align 8, !tbaa !109
  %27 = getelementptr inbounds [2 x i32], ptr %26, i64 %24
  %28 = load i32, ptr %27, align 4, !tbaa !52
  %29 = getelementptr inbounds [2 x i32], ptr %26, i64 %24, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !52
  %31 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !109
  %32 = sext i32 %30 to i64
  %33 = shl nsw i64 %32, 3
  %34 = call ptr %31(i64 noundef %33, ptr noundef nonnull @__func__.edbm_select_similar_region_exec) #10
  %35 = icmp sgt i32 %30, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %23
  %37 = sext i32 %28 to i64
  %38 = zext nneg i32 %30 to i64
  %39 = getelementptr i32, ptr %18, i64 %37
  br label %40

40:                                               ; preds = %36, %40
  %41 = phi i64 [ 0, %36 ], [ %46, %40 ]
  %42 = getelementptr i32, ptr %39, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !52
  %44 = call ptr @BM_face_at_index(ptr noundef %7, i32 noundef %43) #10
  %45 = getelementptr inbounds ptr, ptr %34, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !109
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %38
  br i1 %47, label %48, label %40, !llvm.loop !171

48:                                               ; preds = %40, %23
  %49 = call i32 @BM_mesh_region_match(ptr noundef %7, ptr noundef %34, i32 noundef %30, ptr noundef nonnull %4) #10
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !109
  call void %50(ptr noundef %34) #10
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %48
  %53 = call ptr @BLI_pophead(ptr noundef nonnull %4) #10
  %54 = icmp eq ptr %53, null
  br i1 %54, label %74, label %55

55:                                               ; preds = %52, %69
  %56 = phi ptr [ %72, %69 ], [ %53, %52 ]
  %57 = getelementptr inbounds %struct.LinkData, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !172
  %59 = load ptr, ptr %58, align 8, !tbaa !109
  %60 = icmp eq ptr %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %55, %61
  %62 = phi ptr [ %67, %61 ], [ %59, %55 ]
  %63 = phi i32 [ %64, %61 ], [ 0, %55 ]
  %64 = add i32 %63, 1
  call void @BM_face_select_set(ptr noundef %7, ptr noundef nonnull %62, i8 noundef zeroext 1) #10
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %58, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !109
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %61, !llvm.loop !174

69:                                               ; preds = %61, %55
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !109
  call void %70(ptr noundef nonnull %58) #10
  %71 = load ptr, ptr @MEM_freeN, align 8, !tbaa !109
  call void %71(ptr noundef nonnull %56) #10
  %72 = call ptr @BLI_pophead(ptr noundef nonnull %4) #10
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %55, !llvm.loop !175

74:                                               ; preds = %69, %52, %48
  %75 = phi i8 [ %25, %48 ], [ %25, %52 ], [ 1, %69 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  %76 = add nuw nsw i64 %24, 1
  %77 = icmp eq i64 %76, %22
  br i1 %77, label %78, label %23, !llvm.loop !176

78:                                               ; preds = %74
  %79 = icmp eq i8 %75, 0
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !109
  call void %80(ptr noundef %18) #10
  br i1 %79, label %84, label %81

81:                                               ; preds = %78
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %5) #10
  br label %87

82:                                               ; preds = %14
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !109
  call void %83(ptr noundef %18) #10
  br label %84

84:                                               ; preds = %82, %78
  %85 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %86 = load ptr, ptr %85, align 8, !tbaa !170
  call void @BKE_report(ptr noundef %86, i32 noundef 16, ptr noundef nonnull @.str.219) #10
  br label %87

87:                                               ; preds = %81, %84, %11
  %88 = phi i32 [ 2, %11 ], [ 4, %84 ], [ 4, %81 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 %88
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_select_mode(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.30, ptr %2, align 8, !tbaa !154
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %3, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_select_mode_invoke, ptr %4, align 8, !tbaa !156
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_mode_exec, ptr %5, align 8, !tbaa !157
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %6, align 8, !tbaa !158
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !159
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !160
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.32, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.6) #10
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268435456) #10
  %11 = load ptr, ptr %8, align 8, !tbaa !160
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.34, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.6) #10
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #10
  %13 = load ptr, ptr %8, align 8, !tbaa !160
  %14 = tail call ptr @RNA_def_enum(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @MESH_OT_select_mode.elem_items, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #10
  %15 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %14, ptr %15, align 8, !tbaa !161
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 268435456) #10
  %16 = load ptr, ptr %8, align 8, !tbaa !160
  %17 = tail call ptr @RNA_def_enum(ptr noundef %16, ptr noundef nonnull @.str.36, ptr noundef nonnull @MESH_OT_select_mode.actions_items, i32 noundef 2, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_mode_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !162
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.32) #10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !162
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %11 = load i16, ptr %10, align 8, !tbaa !177
  %12 = sext i16 %11 to i32
  tail call void @RNA_boolean_set(ptr noundef %9, ptr noundef nonnull @.str.32, i32 noundef %12) #10
  br label %13

13:                                               ; preds = %8, %3
  %14 = load ptr, ptr %4, align 8, !tbaa !162
  %15 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %14, ptr noundef nonnull @.str.34) #10
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load ptr, ptr %4, align 8, !tbaa !162
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %20 = load i16, ptr %19, align 2, !tbaa !180
  %21 = sext i16 %20 to i32
  tail call void @RNA_boolean_set(ptr noundef %18, ptr noundef nonnull @.str.34, i32 noundef %21) #10
  br label %22

22:                                               ; preds = %17, %13
  %23 = load ptr, ptr %4, align 8, !tbaa !162
  %24 = tail call i32 @RNA_enum_get(ptr noundef %23, ptr noundef nonnull @.str.4) #10
  %25 = load ptr, ptr %4, align 8, !tbaa !162
  %26 = tail call i32 @RNA_enum_get(ptr noundef %25, ptr noundef nonnull @.str.36) #10
  %27 = load ptr, ptr %4, align 8, !tbaa !162
  %28 = tail call i32 @RNA_boolean_get(ptr noundef %27, ptr noundef nonnull @.str.32) #10
  %29 = trunc i32 %28 to i8
  %30 = load ptr, ptr %4, align 8, !tbaa !162
  %31 = tail call i32 @RNA_boolean_get(ptr noundef %30, ptr noundef nonnull @.str.34) #10
  %32 = trunc i32 %31 to i8
  %33 = trunc i32 %24 to i16
  %34 = tail call zeroext i8 @EDBM_selectmode_toggle(ptr noundef %0, i16 noundef signext %33, i32 noundef %26, i8 noundef zeroext %29, i8 noundef zeroext %32), !range !181
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i32 2, i32 4
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_mode_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !162
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.4) #10
  %6 = load ptr, ptr %3, align 8, !tbaa !162
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.36) #10
  %8 = load ptr, ptr %3, align 8, !tbaa !162
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.32) #10
  %10 = trunc i32 %9 to i8
  %11 = load ptr, ptr %3, align 8, !tbaa !162
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.34) #10
  %13 = trunc i32 %12 to i8
  %14 = trunc i32 %5 to i16
  %15 = tail call zeroext i8 @EDBM_selectmode_toggle(ptr noundef %0, i16 noundef signext %14, i32 noundef %7, i8 noundef zeroext %10, i8 noundef zeroext %13), !range !181
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i32 2, i32 4
  ret i32 %17
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_loop_multi_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %2, align 8, !tbaa !154
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %3, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_loop_multiselect_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.6) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_loop_multiselect_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMWalker, align 8
  %4 = alloca %struct.BMWalker, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #10
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !162
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.42) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  %11 = load ptr, ptr %7, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 2, ptr %12, align 4, !tbaa !55
  %13 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  store ptr %16, ptr %5, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #10
  %17 = load ptr, ptr %14, align 8, !tbaa !58
  %18 = call ptr %17(ptr noundef nonnull %5) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %2, %20
  %21 = phi i32 [ %27, %20 ], [ 0, %2 ]
  %22 = phi ptr [ %29, %20 ], [ %18, %2 ]
  %23 = getelementptr inbounds %struct.BMHeader, ptr %22, i64 0, i32 3
  %24 = load i8, ptr %23, align 1, !tbaa !61
  %25 = and i8 %24, 1
  %26 = zext nneg i8 %25 to i32
  %27 = add i32 %21, %26
  %28 = load ptr, ptr %14, align 8, !tbaa !58
  %29 = call ptr %28(ptr noundef nonnull %5) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %20, !llvm.loop !182

31:                                               ; preds = %20, %2
  %32 = phi i32 [ 0, %2 ], [ %27, %20 ]
  %33 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !109
  %34 = sext i32 %32 to i64
  %35 = shl nsw i64 %34, 3
  %36 = call ptr %33(i64 noundef %35, ptr noundef nonnull @.str.220) #10
  %37 = load ptr, ptr %7, align 8, !tbaa !48
  store i8 2, ptr %12, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !58
  %38 = getelementptr inbounds %struct.BMesh, ptr %37, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !67
  store ptr %39, ptr %5, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #10
  %40 = load ptr, ptr %14, align 8, !tbaa !58
  %41 = call ptr %40(ptr noundef nonnull %5) #10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %59, label %43

43:                                               ; preds = %31, %54
  %44 = phi ptr [ %57, %54 ], [ %41, %31 ]
  %45 = phi i32 [ %55, %54 ], [ 0, %31 ]
  %46 = getelementptr inbounds %struct.BMHeader, ptr %44, i64 0, i32 3
  %47 = load i8, ptr %46, align 1, !tbaa !61
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %43
  %51 = sext i32 %45 to i64
  %52 = getelementptr inbounds ptr, ptr %36, i64 %51
  store ptr %44, ptr %52, align 8, !tbaa !109
  %53 = add nsw i32 %45, 1
  br label %54

54:                                               ; preds = %43, %50
  %55 = phi i32 [ %53, %50 ], [ %45, %43 ]
  %56 = load ptr, ptr %14, align 8, !tbaa !58
  %57 = call ptr %56(ptr noundef nonnull %5) #10
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %43, !llvm.loop !183

59:                                               ; preds = %54, %31
  %60 = and i32 %10, 255
  %61 = icmp eq i32 %60, 0
  %62 = icmp sgt i32 %32, 0
  br i1 %61, label %66, label %63

63:                                               ; preds = %59
  br i1 %62, label %64, label %97

64:                                               ; preds = %63
  %65 = zext nneg i32 %32 to i64
  br label %69

66:                                               ; preds = %59
  br i1 %62, label %67, label %97

67:                                               ; preds = %66
  %68 = zext nneg i32 %32 to i64
  br label %83

69:                                               ; preds = %64, %80
  %70 = phi i64 [ 0, %64 ], [ %81, %80 ]
  %71 = getelementptr inbounds ptr, ptr %36, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !109
  %73 = load ptr, ptr %7, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #10
  call void @BMW_init(ptr noundef nonnull %4, ptr noundef %73, i32 noundef 4, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i32 noundef 1, i32 noundef 0) #10
  %74 = call ptr @BMW_begin(ptr noundef nonnull %4, ptr noundef %72) #10
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %69, %76
  %77 = phi ptr [ %78, %76 ], [ %74, %69 ]
  call void @BM_elem_select_set(ptr noundef %73, ptr noundef nonnull %77, i8 noundef zeroext 1) #10
  %78 = call ptr @BMW_step(ptr noundef nonnull %4) #10
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %76, !llvm.loop !184

80:                                               ; preds = %76, %69
  call void @BMW_end(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #10
  %81 = add nuw nsw i64 %70, 1
  %82 = icmp eq i64 %81, %65
  br i1 %82, label %97, label %69, !llvm.loop !185

83:                                               ; preds = %67, %94
  %84 = phi i64 [ 0, %67 ], [ %95, %94 ]
  %85 = getelementptr inbounds ptr, ptr %36, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !109
  %87 = load ptr, ptr %7, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #10
  call void @BMW_init(ptr noundef nonnull %3, ptr noundef %87, i32 noundef 2, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i32 noundef 1, i32 noundef 0) #10
  %88 = call ptr @BMW_begin(ptr noundef nonnull %3, ptr noundef %86) #10
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %83, %90
  %91 = phi ptr [ %92, %90 ], [ %88, %83 ]
  call void @BM_elem_select_set(ptr noundef %87, ptr noundef nonnull %91, i8 noundef zeroext 1) #10
  %92 = call ptr @BMW_step(ptr noundef nonnull %3) #10
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %90, !llvm.loop !184

94:                                               ; preds = %90, %83
  call void @BMW_end(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #10
  %95 = add nuw nsw i64 %84, 1
  %96 = icmp eq i64 %95, %68
  br i1 %96, label %97, label %83, !llvm.loop !186

97:                                               ; preds = %80, %94, %66, %63
  call void @EDBM_selectmode_flush(ptr noundef nonnull %7) #10
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !109
  call void %98(ptr noundef %36) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %6) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_loop_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.44, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.45, ptr %2, align 8, !tbaa !154
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.46, ptr %3, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_select_loop_invoke, ptr %4, align 8, !tbaa !156
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh_region_view3d, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #10
  %10 = load ptr, ptr %7, align 8, !tbaa !160
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.50, i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #10
  %12 = load ptr, ptr %7, align 8, !tbaa !160
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.53, i32 noundef 0, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) #10
  %14 = load ptr, ptr %7, align 8, !tbaa !160
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_loop_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x i32], align 4
  %5 = alloca %struct.ViewContext, align 8
  %6 = alloca float, align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca [2 x float], align 4
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #10
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !162
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.47) #10
  %16 = trunc i32 %15 to i8
  %17 = load ptr, ptr %13, align 8, !tbaa !162
  %18 = tail call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.50) #10
  %19 = trunc i32 %18 to i8
  %20 = load ptr, ptr %13, align 8, !tbaa !162
  %21 = tail call i32 @RNA_boolean_get(ptr noundef %20, ptr noundef nonnull @.str.53) #10
  %22 = trunc i32 %21 to i8
  %23 = load ptr, ptr %13, align 8, !tbaa !162
  %24 = tail call i32 @RNA_boolean_get(ptr noundef %23, ptr noundef nonnull @.str.42) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %25 = tail call float @ED_view3d_select_dist_px() #10
  %26 = fmul float %25, 0x3FE554C980000000
  store float %26, ptr %6, align 4, !tbaa !121
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %5) #10
  %27 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !100
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = call ptr @BKE_editmesh_from_object(ptr noundef nonnull %28) #10
  %32 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 6
  store ptr %31, ptr %32, align 8, !tbaa !120
  br label %33

33:                                               ; preds = %30, %3
  %34 = load i32, ptr %12, align 4, !tbaa !52
  %35 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 7
  store i32 %34, ptr %35, align 8, !tbaa !52
  %36 = sitofp i32 %34 to float
  %37 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %38 = load i32, ptr %37, align 4, !tbaa !52
  %39 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 7, i64 1
  store i32 %38, ptr %39, align 4, !tbaa !52
  %40 = sitofp i32 %38 to float
  %41 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !120
  call void @view3d_validate_backbuf(ptr noundef nonnull %5) #10
  %43 = call ptr @EDBM_edge_find_nearest(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %44 = icmp eq ptr %43, null
  br i1 %44, label %210, label %45

45:                                               ; preds = %33
  %46 = or i8 %19, %16
  %47 = or i8 %46, %22
  %48 = icmp eq i8 %47, 0
  %49 = icmp eq i8 %16, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = icmp ne i8 %19, 0
  %52 = or i1 %51, %48
  %53 = xor i1 %51, true
  %54 = zext i1 %53 to i8
  br i1 %52, label %63, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.BMHeader, ptr %43, i64 0, i32 3
  %57 = load i8, ptr %56, align 1, !tbaa !61
  %58 = and i8 %57, 1
  %59 = icmp eq i8 %58, 0
  %60 = icmp eq i8 %22, 0
  %61 = or i1 %60, %59
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %55, %50, %45
  %64 = phi i1 [ true, %62 ], [ false, %45 ], [ %51, %50 ], [ false, %55 ]
  %65 = phi i8 [ 0, %62 ], [ 1, %45 ], [ %54, %50 ], [ 1, %55 ]
  %66 = phi i1 [ true, %62 ], [ false, %45 ], [ false, %50 ], [ false, %55 ]
  %67 = getelementptr inbounds %struct.BMEditMesh, ptr %42, i64 0, i32 12
  %68 = load i16, ptr %67, align 4, !tbaa !66
  %69 = and i16 %68, 4
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %63
  br i1 %48, label %72, label %102

72:                                               ; preds = %71
  call void @EDBM_flag_disable_all(ptr noundef %42, i8 noundef zeroext 1) #10
  br label %102

73:                                               ; preds = %63
  %74 = and i32 %24, 255
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  br i1 %48, label %77, label %102

77:                                               ; preds = %76
  call void @EDBM_flag_disable_all(ptr noundef %42, i8 noundef zeroext 1) #10
  br label %102

78:                                               ; preds = %73
  br i1 %66, label %99, label %79

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.BMEdge, ptr %43, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !187
  %82 = icmp eq ptr %81, null
  br i1 %82, label %99, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.BMLoop, ptr %81, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !188
  %86 = icmp eq ptr %85, %81
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %88 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  call fastcc void @walker_select_count(ptr noundef %42, i32 noundef 2, ptr noundef nonnull %43, i8 noundef zeroext %65, ptr noundef nonnull %4, ptr noundef nonnull %88)
  %89 = zext nneg i8 %65 to i64
  %90 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !52
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  call fastcc void @walker_select_count(ptr noundef %42, i32 noundef 5, ptr noundef nonnull %43, i8 noundef zeroext %65, ptr noundef nonnull %4, ptr noundef nonnull %88)
  %94 = load i32, ptr %90, align 4, !tbaa !52
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 2, i32 5
  br label %97

97:                                               ; preds = %93, %87
  %98 = phi i32 [ 2, %87 ], [ %96, %93 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %99

99:                                               ; preds = %97, %83, %79, %78
  %100 = phi i32 [ %98, %97 ], [ 2, %83 ], [ 2, %78 ], [ 2, %79 ]
  br i1 %48, label %101, label %102

101:                                              ; preds = %99
  call void @EDBM_flag_disable_all(ptr noundef %42, i8 noundef zeroext 1) #10
  br label %102

102:                                              ; preds = %99, %101, %76, %77, %71, %72
  %103 = phi i32 [ 3, %72 ], [ 3, %71 ], [ 4, %77 ], [ 4, %76 ], [ %100, %101 ], [ %100, %99 ]
  call fastcc void @walker_select(ptr noundef %42, i32 noundef %103, ptr noundef nonnull %43, i8 noundef zeroext %65)
  call void @EDBM_selectmode_flush(ptr noundef %42) #10
  br i1 %64, label %208, label %104

104:                                              ; preds = %102
  %105 = load i16, ptr %67, align 4, !tbaa !66
  %106 = zext i16 %105 to i32
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %150, label %109

109:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  %110 = load ptr, ptr %27, align 8, !tbaa !100
  %111 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 5
  %112 = load ptr, ptr %111, align 8, !tbaa !130
  call void @ED_view3d_init_mats_rv3d(ptr noundef %110, ptr noundef %112) #10
  %113 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !190
  %115 = getelementptr inbounds %struct.BMEdge, ptr %43, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !138
  %117 = getelementptr inbounds %struct.BMVert, ptr %116, i64 0, i32 2
  %118 = call i32 @ED_view3d_project_float_object(ptr noundef %114, ptr noundef nonnull %117, ptr noundef nonnull %7, i32 noundef 4) #10
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %109
  %121 = load float, ptr %7, align 4, !tbaa !121
  %122 = fsub float %121, %36
  %123 = getelementptr inbounds float, ptr %7, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !121
  %125 = fsub float %124, %40
  %126 = fmul float %125, %125
  %127 = call float @llvm.fmuladd.f32(float %122, float %122, float %126)
  br label %128

128:                                              ; preds = %120, %109
  %129 = phi float [ %127, %120 ], [ 0x47EFFFFFE0000000, %109 ]
  %130 = load ptr, ptr %113, align 8, !tbaa !190
  %131 = getelementptr inbounds %struct.BMEdge, ptr %43, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !141
  %133 = getelementptr inbounds %struct.BMVert, ptr %132, i64 0, i32 2
  %134 = call i32 @ED_view3d_project_float_object(ptr noundef %130, ptr noundef nonnull %133, ptr noundef nonnull %8, i32 noundef 4) #10
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %128
  %137 = load float, ptr %8, align 4, !tbaa !121
  %138 = fsub float %137, %36
  %139 = getelementptr inbounds float, ptr %8, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !121
  %141 = fsub float %140, %40
  %142 = fmul float %141, %141
  %143 = call float @llvm.fmuladd.f32(float %138, float %138, float %142)
  br label %144

144:                                              ; preds = %136, %128
  %145 = phi float [ %143, %136 ], [ 0x47EFFFFFE0000000, %128 ]
  %146 = load ptr, ptr %42, align 8, !tbaa !48
  %147 = fcmp olt float %129, %145
  %148 = select i1 %147, ptr %115, ptr %131
  %149 = load ptr, ptr %148, align 8, !tbaa !109
  call void @_bm_select_history_store(ptr noundef %146, ptr noundef %149) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  br label %208

150:                                              ; preds = %104
  %151 = and i32 %106, 2
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr %42, align 8, !tbaa !48
  call void @_bm_select_history_store(ptr noundef %154, ptr noundef nonnull %43) #10
  br label %208

155:                                              ; preds = %150
  %156 = and i32 %106, 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %208, label %158

158:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #10
  %159 = load ptr, ptr %27, align 8, !tbaa !100
  %160 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 5
  %161 = load ptr, ptr %160, align 8, !tbaa !130
  call void @ED_view3d_init_mats_rv3d(ptr noundef %159, ptr noundef %161) #10
  %162 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  store i8 8, ptr %162, align 4, !tbaa !55
  %163 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  store ptr @bmiter__face_of_edge_begin, ptr %163, align 8, !tbaa !57
  %164 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  store ptr @bmiter__face_of_edge_step, ptr %164, align 8, !tbaa !58
  store ptr %43, ptr %9, align 8, !tbaa !60
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %9) #10
  %165 = load ptr, ptr %164, align 8, !tbaa !58
  %166 = call ptr %165(ptr noundef nonnull %9) #10
  %167 = icmp eq ptr %166, null
  br i1 %167, label %201, label %168

168:                                              ; preds = %158
  %169 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 3
  %170 = getelementptr inbounds float, ptr %11, i64 1
  br label %171

171:                                              ; preds = %168, %195
  %172 = phi float [ 0x47EFFFFFE0000000, %168 ], [ %197, %195 ]
  %173 = phi ptr [ null, %168 ], [ %196, %195 ]
  %174 = phi ptr [ %166, %168 ], [ %199, %195 ]
  %175 = getelementptr inbounds %struct.BMHeader, ptr %174, i64 0, i32 3
  %176 = load i8, ptr %175, align 1, !tbaa !61
  %177 = and i8 %176, 1
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %195, label %179

179:                                              ; preds = %171
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #10
  call void @BM_face_calc_center_mean(ptr noundef nonnull %174, ptr noundef nonnull %10) #10
  %180 = load ptr, ptr %169, align 8, !tbaa !190
  %181 = call i32 @ED_view3d_project_float_object(ptr noundef %180, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef 4) #10
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %179
  %184 = load float, ptr %11, align 4, !tbaa !121
  %185 = fsub float %184, %36
  %186 = load float, ptr %170, align 4, !tbaa !121
  %187 = fsub float %186, %40
  %188 = fmul float %187, %187
  %189 = call float @llvm.fmuladd.f32(float %185, float %185, float %188)
  %190 = fcmp olt float %189, %172
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  br label %192

192:                                              ; preds = %191, %183, %179
  %193 = phi ptr [ %174, %191 ], [ %173, %183 ], [ %173, %179 ]
  %194 = phi float [ %189, %191 ], [ %172, %183 ], [ %172, %179 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  br label %195

195:                                              ; preds = %192, %171
  %196 = phi ptr [ %193, %192 ], [ %173, %171 ]
  %197 = phi float [ %194, %192 ], [ %172, %171 ]
  %198 = load ptr, ptr %164, align 8, !tbaa !58
  %199 = call ptr %198(ptr noundef nonnull %9) #10
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %171, !llvm.loop !191

201:                                              ; preds = %195, %158
  %202 = phi ptr [ null, %158 ], [ %196, %195 ]
  %203 = icmp eq ptr %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %201
  %205 = load ptr, ptr %42, align 8, !tbaa !48
  call void @BM_mesh_active_face_set(ptr noundef %205, ptr noundef nonnull %202) #10
  %206 = load ptr, ptr %42, align 8, !tbaa !48
  call void @_bm_select_history_store(ptr noundef %206, ptr noundef nonnull %202) #10
  br label %207

207:                                              ; preds = %204, %201
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #10
  br label %208

208:                                              ; preds = %207, %155, %153, %144, %102
  %209 = load ptr, ptr %27, align 8, !tbaa !100
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %209) #10
  br label %210

210:                                              ; preds = %33, %208
  %211 = phi i32 [ 4, %208 ], [ 2, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  ret i32 %211
}

declare i32 @ED_operator_editmesh_region_view3d(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_edgering_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.58, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %2, align 8, !tbaa !154
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.60, ptr %3, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_select_loop_invoke, ptr %4, align 8, !tbaa !156
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh_region_view3d, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.49) #10
  %10 = load ptr, ptr %7, align 8, !tbaa !160
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.50, i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #10
  %12 = load ptr, ptr %7, align 8, !tbaa !160
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.53, i32 noundef 0, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) #10
  %14 = load ptr, ptr %7, align 8, !tbaa !160
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.42, i32 noundef 1, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_select_all(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.61, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.62, ptr %2, align 8, !tbaa !154
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.63, ptr %3, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_all_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.36) #10
  switch i32 %7, label %26 [
    i32 0, label %8
    i32 1, label %23
    i32 2, label %24
    i32 3, label %25
  ]

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !192
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !193
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !169
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %13, %8
  tail call void @EDBM_flag_disable_all(ptr noundef nonnull %4, i8 noundef zeroext 1) #10
  br label %26

22:                                               ; preds = %17
  tail call void @EDBM_flag_enable_all(ptr noundef nonnull %4, i8 noundef zeroext 1) #10
  br label %26

23:                                               ; preds = %2
  tail call void @EDBM_flag_enable_all(ptr noundef %4, i8 noundef zeroext 1) #10
  br label %26

24:                                               ; preds = %2
  tail call void @EDBM_flag_disable_all(ptr noundef %4, i8 noundef zeroext 1) #10
  br label %26

25:                                               ; preds = %2
  tail call void @EDBM_select_swap(ptr noundef %4)
  tail call void @EDBM_selectmode_flush(ptr noundef %4) #10
  br label %26

26:                                               ; preds = %22, %21, %2, %25, %24, %23
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %3) #10
  ret i32 4
}

declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_select_interior_faces(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.64, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.65, ptr %2, align 8, !tbaa !154
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.66, ptr %3, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_faces_select_interior_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_faces_select_interior_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #10
  %5 = tail call zeroext i8 @EDBM_select_interior_faces(ptr noundef %4), !range !181
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %3) #10
  br label %8

8:                                                ; preds = %2, %7
  %9 = phi i32 [ 4, %7 ], [ 2, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @EDBM_select_pick(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ViewContext, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  store ptr null, ptr %7, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store ptr null, ptr %8, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  store ptr null, ptr %9, align 8, !tbaa !109
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %6) #10
  %10 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = call ptr @BKE_editmesh_from_object(ptr noundef nonnull %11) #10
  %15 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  store ptr %14, ptr %15, align 8, !tbaa !120
  br label %16

16:                                               ; preds = %5, %13
  %17 = load i32, ptr %1, align 4, !tbaa !52
  %18 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 7
  store i32 %17, ptr %18, align 8, !tbaa !52
  %19 = getelementptr inbounds i32, ptr %1, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !52
  %21 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 7, i64 1
  store i32 %20, ptr %21, align 4, !tbaa !52
  %22 = call fastcc i32 @unified_findnearest(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9), !range !194
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %184, label %24

24:                                               ; preds = %16
  %25 = or i8 %3, %2
  %26 = or i8 %25, %4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !120
  call void @EDBM_flag_disable_all(ptr noundef %30, i8 noundef zeroext 1) #10
  br label %31

31:                                               ; preds = %28, %24
  %32 = load ptr, ptr %9, align 8, !tbaa !109
  %33 = icmp eq ptr %32, null
  br i1 %33, label %76, label %34

34:                                               ; preds = %31
  %35 = icmp eq i8 %2, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !120
  %39 = load ptr, ptr %38, align 8, !tbaa !48
  call void @BM_mesh_active_face_set(ptr noundef %39, ptr noundef nonnull %32) #10
  %40 = load ptr, ptr %37, align 8, !tbaa !120
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  %42 = call zeroext i8 @_bm_select_history_remove(ptr noundef %41, ptr noundef nonnull %32) #10
  %43 = load ptr, ptr %37, align 8, !tbaa !120
  %44 = load ptr, ptr %43, align 8, !tbaa !48
  call void @BM_face_select_set(ptr noundef %44, ptr noundef nonnull %32, i8 noundef zeroext 0) #10
  %45 = load ptr, ptr %37, align 8, !tbaa !120
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  call void @_bm_select_history_store(ptr noundef %46, ptr noundef nonnull %32) #10
  %47 = load ptr, ptr %37, align 8, !tbaa !120
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  call void @BM_face_select_set(ptr noundef %48, ptr noundef nonnull %32, i8 noundef zeroext 1) #10
  br label %166

49:                                               ; preds = %34
  %50 = icmp eq i8 %3, 0
  %51 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !120
  %53 = load ptr, ptr %52, align 8, !tbaa !48
  br i1 %50, label %58, label %54

54:                                               ; preds = %49
  %55 = call zeroext i8 @_bm_select_history_remove(ptr noundef %53, ptr noundef nonnull %32) #10
  %56 = load ptr, ptr %51, align 8, !tbaa !120
  %57 = load ptr, ptr %56, align 8, !tbaa !48
  call void @BM_face_select_set(ptr noundef %57, ptr noundef nonnull %32, i8 noundef zeroext 0) #10
  br label %166

58:                                               ; preds = %49
  call void @BM_mesh_active_face_set(ptr noundef %53, ptr noundef nonnull %32) #10
  %59 = getelementptr inbounds %struct.BMHeader, ptr %32, i64 0, i32 3
  %60 = load i8, ptr %59, align 1, !tbaa !61
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load ptr, ptr %51, align 8, !tbaa !120
  %65 = load ptr, ptr %64, align 8, !tbaa !48
  call void @_bm_select_history_store(ptr noundef %65, ptr noundef nonnull %32) #10
  %66 = load ptr, ptr %51, align 8, !tbaa !120
  %67 = load ptr, ptr %66, align 8, !tbaa !48
  call void @BM_face_select_set(ptr noundef %67, ptr noundef nonnull %32, i8 noundef zeroext 1) #10
  br label %166

68:                                               ; preds = %58
  %69 = icmp eq i8 %4, 0
  br i1 %69, label %166, label %70

70:                                               ; preds = %68
  %71 = load ptr, ptr %51, align 8, !tbaa !120
  %72 = load ptr, ptr %71, align 8, !tbaa !48
  %73 = call zeroext i8 @_bm_select_history_remove(ptr noundef %72, ptr noundef nonnull %32) #10
  %74 = load ptr, ptr %51, align 8, !tbaa !120
  %75 = load ptr, ptr %74, align 8, !tbaa !48
  call void @BM_face_select_set(ptr noundef %75, ptr noundef nonnull %32, i8 noundef zeroext 0) #10
  br label %166

76:                                               ; preds = %31
  %77 = load ptr, ptr %8, align 8, !tbaa !109
  %78 = icmp eq ptr %77, null
  br i1 %78, label %121, label %79

79:                                               ; preds = %76
  %80 = icmp eq i8 %2, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !120
  %84 = load ptr, ptr %83, align 8, !tbaa !48
  %85 = call zeroext i8 @_bm_select_history_remove(ptr noundef %84, ptr noundef nonnull %77) #10
  %86 = load ptr, ptr %82, align 8, !tbaa !120
  %87 = load ptr, ptr %86, align 8, !tbaa !48
  call void @BM_edge_select_set(ptr noundef %87, ptr noundef nonnull %77, i8 noundef zeroext 0) #10
  %88 = load ptr, ptr %82, align 8, !tbaa !120
  %89 = load ptr, ptr %88, align 8, !tbaa !48
  call void @_bm_select_history_store(ptr noundef %89, ptr noundef nonnull %77) #10
  %90 = load ptr, ptr %82, align 8, !tbaa !120
  %91 = load ptr, ptr %90, align 8, !tbaa !48
  call void @BM_edge_select_set(ptr noundef %91, ptr noundef nonnull %77, i8 noundef zeroext 1) #10
  br label %166

92:                                               ; preds = %79
  %93 = icmp eq i8 %3, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !120
  %97 = load ptr, ptr %96, align 8, !tbaa !48
  %98 = call zeroext i8 @_bm_select_history_remove(ptr noundef %97, ptr noundef nonnull %77) #10
  %99 = load ptr, ptr %95, align 8, !tbaa !120
  %100 = load ptr, ptr %99, align 8, !tbaa !48
  call void @BM_edge_select_set(ptr noundef %100, ptr noundef nonnull %77, i8 noundef zeroext 0) #10
  br label %166

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.BMHeader, ptr %77, i64 0, i32 3
  %103 = load i8, ptr %102, align 1, !tbaa !61
  %104 = and i8 %103, 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %108 = load ptr, ptr %107, align 8, !tbaa !120
  %109 = load ptr, ptr %108, align 8, !tbaa !48
  call void @_bm_select_history_store(ptr noundef %109, ptr noundef nonnull %77) #10
  %110 = load ptr, ptr %107, align 8, !tbaa !120
  %111 = load ptr, ptr %110, align 8, !tbaa !48
  call void @BM_edge_select_set(ptr noundef %111, ptr noundef nonnull %77, i8 noundef zeroext 1) #10
  br label %166

112:                                              ; preds = %101
  %113 = icmp eq i8 %4, 0
  br i1 %113, label %166, label %114

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %116 = load ptr, ptr %115, align 8, !tbaa !120
  %117 = load ptr, ptr %116, align 8, !tbaa !48
  %118 = call zeroext i8 @_bm_select_history_remove(ptr noundef %117, ptr noundef nonnull %77) #10
  %119 = load ptr, ptr %115, align 8, !tbaa !120
  %120 = load ptr, ptr %119, align 8, !tbaa !48
  call void @BM_edge_select_set(ptr noundef %120, ptr noundef nonnull %77, i8 noundef zeroext 0) #10
  br label %166

121:                                              ; preds = %76
  %122 = load ptr, ptr %7, align 8, !tbaa !109
  %123 = icmp eq ptr %122, null
  br i1 %123, label %166, label %124

124:                                              ; preds = %121
  %125 = icmp eq i8 %2, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %128 = load ptr, ptr %127, align 8, !tbaa !120
  %129 = load ptr, ptr %128, align 8, !tbaa !48
  %130 = call zeroext i8 @_bm_select_history_remove(ptr noundef %129, ptr noundef nonnull %122) #10
  %131 = load ptr, ptr %127, align 8, !tbaa !120
  %132 = load ptr, ptr %131, align 8, !tbaa !48
  call void @BM_vert_select_set(ptr noundef %132, ptr noundef nonnull %122, i8 noundef zeroext 0) #10
  %133 = load ptr, ptr %127, align 8, !tbaa !120
  %134 = load ptr, ptr %133, align 8, !tbaa !48
  call void @_bm_select_history_store(ptr noundef %134, ptr noundef nonnull %122) #10
  %135 = load ptr, ptr %127, align 8, !tbaa !120
  %136 = load ptr, ptr %135, align 8, !tbaa !48
  call void @BM_vert_select_set(ptr noundef %136, ptr noundef nonnull %122, i8 noundef zeroext 1) #10
  br label %166

137:                                              ; preds = %124
  %138 = icmp eq i8 %3, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %141 = load ptr, ptr %140, align 8, !tbaa !120
  %142 = load ptr, ptr %141, align 8, !tbaa !48
  %143 = call zeroext i8 @_bm_select_history_remove(ptr noundef %142, ptr noundef nonnull %122) #10
  %144 = load ptr, ptr %140, align 8, !tbaa !120
  %145 = load ptr, ptr %144, align 8, !tbaa !48
  call void @BM_vert_select_set(ptr noundef %145, ptr noundef nonnull %122, i8 noundef zeroext 0) #10
  br label %166

146:                                              ; preds = %137
  %147 = getelementptr inbounds %struct.BMHeader, ptr %122, i64 0, i32 3
  %148 = load i8, ptr %147, align 1, !tbaa !61
  %149 = and i8 %148, 1
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %153 = load ptr, ptr %152, align 8, !tbaa !120
  %154 = load ptr, ptr %153, align 8, !tbaa !48
  call void @_bm_select_history_store(ptr noundef %154, ptr noundef nonnull %122) #10
  %155 = load ptr, ptr %152, align 8, !tbaa !120
  %156 = load ptr, ptr %155, align 8, !tbaa !48
  call void @BM_vert_select_set(ptr noundef %156, ptr noundef nonnull %122, i8 noundef zeroext 1) #10
  br label %166

157:                                              ; preds = %146
  %158 = icmp eq i8 %4, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %161 = load ptr, ptr %160, align 8, !tbaa !120
  %162 = load ptr, ptr %161, align 8, !tbaa !48
  %163 = call zeroext i8 @_bm_select_history_remove(ptr noundef %162, ptr noundef nonnull %122) #10
  %164 = load ptr, ptr %160, align 8, !tbaa !120
  %165 = load ptr, ptr %164, align 8, !tbaa !48
  call void @BM_vert_select_set(ptr noundef %165, ptr noundef nonnull %122, i8 noundef zeroext 0) #10
  br label %166

166:                                              ; preds = %94, %112, %114, %106, %81, %126, %151, %159, %157, %139, %121, %36, %63, %70, %68, %54
  %167 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %168 = load ptr, ptr %167, align 8, !tbaa !120
  call void @EDBM_selectmode_flush(ptr noundef %168) #10
  br i1 %33, label %182, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.BMFace, ptr %32, i64 0, i32 5
  %171 = load i16, ptr %170, align 8, !tbaa !195
  %172 = sext i16 %171 to i32
  %173 = load ptr, ptr %10, align 8, !tbaa !100
  %174 = getelementptr inbounds %struct.Object, ptr %173, i64 0, i32 32
  %175 = load i32, ptr %174, align 4, !tbaa !197
  %176 = add nsw i32 %175, -1
  %177 = icmp eq i32 %176, %172
  br i1 %177, label %182, label %178

178:                                              ; preds = %169
  %179 = add nsw i32 %172, 1
  store i32 %179, ptr %174, align 4, !tbaa !197
  %180 = load ptr, ptr %167, align 8, !tbaa !120
  %181 = getelementptr inbounds %struct.BMEditMesh, ptr %180, i64 0, i32 13
  store i16 %171, ptr %181, align 2, !tbaa !198
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 102760448, ptr noundef null) #10
  br label %182

182:                                              ; preds = %178, %169, %166
  %183 = load ptr, ptr %10, align 8, !tbaa !100
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %183) #10
  br label %184

184:                                              ; preds = %16, %182
  %185 = phi i8 [ 1, %182 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  ret i8 %185
}

; Function Attrs: nounwind uwtable
define dso_local void @em_setup_viewcontext(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef %1) #10
  %3 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %4) #10
  %8 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 6
  store ptr %7, ptr %8, align 8, !tbaa !120
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @unified_findnearest(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %8 = tail call float @ED_view3d_select_dist_px() #10
  store float %8, ptr %5, align 4, !tbaa !121
  store ptr null, ptr %1, align 8, !tbaa !109
  store ptr null, ptr %2, align 8, !tbaa !109
  store ptr null, ptr %3, align 8, !tbaa !109
  tail call void @view3d_validate_backbuf(ptr noundef %0) #10
  %9 = getelementptr inbounds %struct.BMEditMesh, ptr %7, i64 0, i32 12
  %10 = load i16, ptr %9, align 4, !tbaa !66
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = call ptr @EDBM_vert_find_nearest(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 0)
  store ptr %14, ptr %1, align 8, !tbaa !109
  br label %15

15:                                               ; preds = %13, %4
  %16 = load i16, ptr %9, align 4, !tbaa !66
  %17 = and i16 %16, 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = call ptr @EDBM_face_find_nearest(ptr noundef %0, ptr noundef nonnull %5)
  store ptr %20, ptr %3, align 8, !tbaa !109
  br label %21

21:                                               ; preds = %19, %15
  %22 = load float, ptr %5, align 4, !tbaa !121
  %23 = fadd float %22, -2.000000e+01
  store float %23, ptr %5, align 4, !tbaa !121
  %24 = load i16, ptr %9, align 4, !tbaa !66
  %25 = and i16 %24, 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = call ptr @EDBM_edge_find_nearest(ptr noundef %0, ptr noundef nonnull %5)
  store ptr %28, ptr %2, align 8, !tbaa !109
  br label %29

29:                                               ; preds = %27, %21
  %30 = load ptr, ptr %2, align 8, !tbaa !109
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store ptr null, ptr %3, align 8, !tbaa !109
  br label %36

33:                                               ; preds = %29
  %34 = load ptr, ptr %3, align 8, !tbaa !109
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33, %32
  store ptr null, ptr %1, align 8, !tbaa !109
  br label %37

37:                                               ; preds = %36, %33
  %38 = load ptr, ptr %1, align 8, !tbaa !109
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load ptr, ptr %2, align 8, !tbaa !109
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load ptr, ptr %3, align 8, !tbaa !109
  %45 = icmp ne ptr %44, null
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %43, %40, %37
  %48 = phi i32 [ 1, %40 ], [ 1, %37 ], [ %46, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %48
}

declare void @BM_mesh_active_face_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @_bm_select_history_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_bm_select_history_store(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EDBM_selectmode_flush(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_selectmode_set(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #10
  %3 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %4 = load i16, ptr %3, align 4, !tbaa !66
  %5 = load ptr, ptr %0, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 28
  store i16 %4, ptr %6, align 8, !tbaa !53
  %7 = and i16 %4, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 32
  %11 = load ptr, ptr %10, align 8, !tbaa !199
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %9, %22
  %14 = phi ptr [ %15, %22 ], [ %11, %9 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !200
  %16 = getelementptr inbounds %struct.BMEditSelection, ptr %14, i64 0, i32 3
  %17 = load i8, ptr %16, align 8, !tbaa !202
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load ptr, ptr %0, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 32
  tail call void @BLI_freelinkN(ptr noundef nonnull %21, ptr noundef nonnull %14) #10
  br label %22

22:                                               ; preds = %19, %13
  %23 = icmp eq ptr %15, null
  br i1 %23, label %24, label %13, !llvm.loop !203

24:                                               ; preds = %22, %9, %1
  %25 = load i16, ptr %3, align 4, !tbaa !66
  %26 = and i16 %25, 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = load ptr, ptr %0, align 8, !tbaa !48
  %30 = getelementptr inbounds %struct.BMesh, ptr %29, i64 0, i32 32
  %31 = load ptr, ptr %30, align 8, !tbaa !199
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %28, %42
  %34 = phi ptr [ %35, %42 ], [ %31, %28 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !200
  %36 = getelementptr inbounds %struct.BMEditSelection, ptr %34, i64 0, i32 3
  %37 = load i8, ptr %36, align 8, !tbaa !202
  %38 = icmp eq i8 %37, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load ptr, ptr %0, align 8, !tbaa !48
  %41 = getelementptr inbounds %struct.BMesh, ptr %40, i64 0, i32 32
  tail call void @BLI_freelinkN(ptr noundef nonnull %41, ptr noundef nonnull %34) #10
  br label %42

42:                                               ; preds = %39, %33
  %43 = icmp eq ptr %35, null
  br i1 %43, label %44, label %33, !llvm.loop !204

44:                                               ; preds = %42, %28, %24
  %45 = load i16, ptr %3, align 4, !tbaa !66
  %46 = and i16 %45, 4
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load ptr, ptr %0, align 8, !tbaa !48
  %50 = getelementptr inbounds %struct.BMesh, ptr %49, i64 0, i32 32
  %51 = load ptr, ptr %50, align 8, !tbaa !199
  %52 = icmp eq ptr %51, null
  br i1 %52, label %64, label %53

53:                                               ; preds = %48, %62
  %54 = phi ptr [ %55, %62 ], [ %51, %48 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !200
  %56 = getelementptr inbounds %struct.BMEditSelection, ptr %54, i64 0, i32 3
  %57 = load i8, ptr %56, align 8, !tbaa !202
  %58 = icmp eq i8 %57, 8
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load ptr, ptr %0, align 8, !tbaa !48
  %61 = getelementptr inbounds %struct.BMesh, ptr %60, i64 0, i32 32
  tail call void @BLI_freelinkN(ptr noundef nonnull %61, ptr noundef nonnull %54) #10
  br label %62

62:                                               ; preds = %59, %53
  %63 = icmp eq ptr %55, null
  br i1 %63, label %64, label %53, !llvm.loop !205

64:                                               ; preds = %62, %48, %44
  %65 = load ptr, ptr %0, align 8, !tbaa !48
  %66 = getelementptr inbounds %struct.BMesh, ptr %65, i64 0, i32 4
  %67 = load i32, ptr %66, align 8, !tbaa !192
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.BMesh, ptr %65, i64 0, i32 5
  %71 = load i32, ptr %70, align 4, !tbaa !193
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.BMesh, ptr %65, i64 0, i32 6
  %75 = load i32, ptr %74, align 8, !tbaa !169
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %167, label %77

77:                                               ; preds = %73, %69, %64
  %78 = load i16, ptr %3, align 4, !tbaa !66
  %79 = zext i16 %78 to i32
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  br i1 %68, label %167, label %83

83:                                               ; preds = %82
  tail call void @EDBM_select_flush(ptr noundef nonnull %0) #10
  br label %167

84:                                               ; preds = %77
  %85 = and i32 %79, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %126, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 1, ptr %88, align 4, !tbaa !55
  %89 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %89, align 8, !tbaa !57
  %90 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %90, align 8, !tbaa !58
  %91 = getelementptr inbounds %struct.BMesh, ptr %65, i64 0, i32 9
  %92 = load ptr, ptr %91, align 8, !tbaa !59
  store ptr %92, ptr %2, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #10
  %93 = load ptr, ptr %90, align 8, !tbaa !58
  %94 = call ptr %93(ptr noundef nonnull %2) #10
  %95 = icmp eq ptr %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %87, %96
  %97 = phi ptr [ %100, %96 ], [ %94, %87 ]
  %98 = load ptr, ptr %0, align 8, !tbaa !48
  call void @BM_vert_select_set(ptr noundef %98, ptr noundef nonnull %97, i8 noundef zeroext 0) #10
  %99 = load ptr, ptr %90, align 8, !tbaa !58
  %100 = call ptr %99(ptr noundef nonnull %2) #10
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %96, !llvm.loop !206

102:                                              ; preds = %96, %87
  %103 = load ptr, ptr %0, align 8, !tbaa !48
  %104 = getelementptr inbounds %struct.BMesh, ptr %103, i64 0, i32 5
  %105 = load i32, ptr %104, align 4, !tbaa !193
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %167, label %107

107:                                              ; preds = %102
  store i8 2, ptr %88, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %89, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %90, align 8, !tbaa !58
  %108 = getelementptr inbounds %struct.BMesh, ptr %103, i64 0, i32 10
  %109 = load ptr, ptr %108, align 8, !tbaa !67
  store ptr %109, ptr %2, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #10
  %110 = load ptr, ptr %90, align 8, !tbaa !58
  %111 = call ptr %110(ptr noundef nonnull %2) #10
  %112 = icmp eq ptr %111, null
  br i1 %112, label %125, label %113

113:                                              ; preds = %107, %121
  %114 = phi ptr [ %123, %121 ], [ %111, %107 ]
  %115 = getelementptr inbounds %struct.BMHeader, ptr %114, i64 0, i32 3
  %116 = load i8, ptr %115, align 1, !tbaa !61
  %117 = and i8 %116, 1
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %113
  %120 = load ptr, ptr %0, align 8, !tbaa !48
  call void @BM_edge_select_set(ptr noundef %120, ptr noundef nonnull %114, i8 noundef zeroext 1) #10
  br label %121

121:                                              ; preds = %113, %119
  %122 = load ptr, ptr %90, align 8, !tbaa !58
  %123 = call ptr %122(ptr noundef nonnull %2) #10
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %113, !llvm.loop !207

125:                                              ; preds = %121, %107
  call void @EDBM_selectmode_flush(ptr noundef nonnull %0) #10
  br label %167

126:                                              ; preds = %84
  %127 = and i32 %79, 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %167, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 2, ptr %130, align 4, !tbaa !55
  %131 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %131, align 8, !tbaa !57
  %132 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %132, align 8, !tbaa !58
  %133 = getelementptr inbounds %struct.BMesh, ptr %65, i64 0, i32 10
  %134 = load ptr, ptr %133, align 8, !tbaa !67
  store ptr %134, ptr %2, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #10
  %135 = load ptr, ptr %132, align 8, !tbaa !58
  %136 = call ptr %135(ptr noundef nonnull %2) #10
  %137 = icmp eq ptr %136, null
  br i1 %137, label %144, label %138

138:                                              ; preds = %129, %138
  %139 = phi ptr [ %142, %138 ], [ %136, %129 ]
  %140 = load ptr, ptr %0, align 8, !tbaa !48
  call void @BM_edge_select_set(ptr noundef %140, ptr noundef nonnull %139, i8 noundef zeroext 0) #10
  %141 = load ptr, ptr %132, align 8, !tbaa !58
  %142 = call ptr %141(ptr noundef nonnull %2) #10
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %138, !llvm.loop !208

144:                                              ; preds = %138, %129
  %145 = load ptr, ptr %0, align 8, !tbaa !48
  %146 = getelementptr inbounds %struct.BMesh, ptr %145, i64 0, i32 6
  %147 = load i32, ptr %146, align 8, !tbaa !169
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %167, label %149

149:                                              ; preds = %144
  store i8 3, ptr %130, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %131, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %132, align 8, !tbaa !58
  %150 = getelementptr inbounds %struct.BMesh, ptr %145, i64 0, i32 12
  %151 = load ptr, ptr %150, align 8, !tbaa !69
  store ptr %151, ptr %2, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #10
  %152 = load ptr, ptr %132, align 8, !tbaa !58
  %153 = call ptr %152(ptr noundef nonnull %2) #10
  %154 = icmp eq ptr %153, null
  br i1 %154, label %167, label %155

155:                                              ; preds = %149, %163
  %156 = phi ptr [ %165, %163 ], [ %153, %149 ]
  %157 = getelementptr inbounds %struct.BMHeader, ptr %156, i64 0, i32 3
  %158 = load i8, ptr %157, align 1, !tbaa !61
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %155
  %162 = load ptr, ptr %0, align 8, !tbaa !48
  call void @BM_face_select_set(ptr noundef %162, ptr noundef nonnull %156, i8 noundef zeroext 1) #10
  br label %163

163:                                              ; preds = %155, %161
  %164 = load ptr, ptr %132, align 8, !tbaa !58
  %165 = call ptr %164(ptr noundef nonnull %2) #10
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %155, !llvm.loop !209

167:                                              ; preds = %163, %149, %83, %82, %126, %144, %102, %125, %73
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #10
  ret void
}

declare void @EDBM_select_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_selectmode_convert(ptr nocapture noundef readonly %0, i16 noundef signext %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  switch i16 %1, label %187 [
    i16 1, label %6
    i16 2, label %85
    i16 4, label %145
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !192
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %187, label %10

10:                                               ; preds = %6
  switch i16 %2, label %187 [
    i16 2, label %11
    i16 4, label %48
  ]

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 2, ptr %12, align 4, !tbaa !55
  %13 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  store ptr %16, ptr %4, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #10
  %17 = load ptr, ptr %14, align 8, !tbaa !58
  %18 = call ptr %17(ptr noundef nonnull %4) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %11, %20
  %21 = phi ptr [ %30, %20 ], [ %18, %11 ]
  %22 = call zeroext i8 @BM_edge_is_any_vert_flag_test(ptr noundef nonnull %21, i8 noundef zeroext 1) #10
  %23 = icmp eq i8 %22, 0
  %24 = getelementptr inbounds %struct.BMHeader, ptr %21, i64 0, i32 3
  %25 = load i8, ptr %24, align 1, !tbaa !61
  %26 = and i8 %25, -17
  %27 = select i1 %23, i8 0, i8 16
  %28 = or disjoint i8 %26, %27
  store i8 %28, ptr %24, align 1, !tbaa !61
  %29 = load ptr, ptr %14, align 8, !tbaa !58
  %30 = call ptr %29(ptr noundef nonnull %4) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %20, !llvm.loop !210

32:                                               ; preds = %20, %11
  store i8 2, ptr %12, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !58
  %33 = load ptr, ptr %15, align 8, !tbaa !67
  store ptr %33, ptr %4, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #10
  %34 = load ptr, ptr %14, align 8, !tbaa !58
  %35 = call ptr %34(ptr noundef nonnull %4) #10
  %36 = icmp eq ptr %35, null
  br i1 %36, label %187, label %37

37:                                               ; preds = %32, %44
  %38 = phi ptr [ %46, %44 ], [ %35, %32 ]
  %39 = getelementptr inbounds %struct.BMHeader, ptr %38, i64 0, i32 3
  %40 = load i8, ptr %39, align 1, !tbaa !61
  %41 = and i8 %40, 16
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  call void @BM_edge_select_set(ptr noundef %5, ptr noundef nonnull %38, i8 noundef zeroext 1) #10
  br label %44

44:                                               ; preds = %37, %43
  %45 = load ptr, ptr %14, align 8, !tbaa !58
  %46 = call ptr %45(ptr noundef nonnull %4) #10
  %47 = icmp eq ptr %46, null
  br i1 %47, label %187, label %37, !llvm.loop !211

48:                                               ; preds = %10
  %49 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %49, align 4, !tbaa !55
  %50 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %50, align 8, !tbaa !57
  %51 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %51, align 8, !tbaa !58
  %52 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 12
  %53 = load ptr, ptr %52, align 8, !tbaa !69
  store ptr %53, ptr %4, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #10
  %54 = load ptr, ptr %51, align 8, !tbaa !58
  %55 = call ptr %54(ptr noundef nonnull %4) #10
  %56 = icmp eq ptr %55, null
  br i1 %56, label %69, label %57

57:                                               ; preds = %48, %57
  %58 = phi ptr [ %67, %57 ], [ %55, %48 ]
  %59 = call zeroext i8 @BM_face_is_any_vert_flag_test(ptr noundef nonnull %58, i8 noundef zeroext 1) #10
  %60 = icmp eq i8 %59, 0
  %61 = getelementptr inbounds %struct.BMHeader, ptr %58, i64 0, i32 3
  %62 = load i8, ptr %61, align 1, !tbaa !61
  %63 = and i8 %62, -17
  %64 = select i1 %60, i8 0, i8 16
  %65 = or disjoint i8 %63, %64
  store i8 %65, ptr %61, align 1, !tbaa !61
  %66 = load ptr, ptr %51, align 8, !tbaa !58
  %67 = call ptr %66(ptr noundef nonnull %4) #10
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %57, !llvm.loop !212

69:                                               ; preds = %57, %48
  store i8 3, ptr %49, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %50, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %51, align 8, !tbaa !58
  %70 = load ptr, ptr %52, align 8, !tbaa !69
  store ptr %70, ptr %4, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #10
  %71 = load ptr, ptr %51, align 8, !tbaa !58
  %72 = call ptr %71(ptr noundef nonnull %4) #10
  %73 = icmp eq ptr %72, null
  br i1 %73, label %187, label %74

74:                                               ; preds = %69, %81
  %75 = phi ptr [ %83, %81 ], [ %72, %69 ]
  %76 = getelementptr inbounds %struct.BMHeader, ptr %75, i64 0, i32 3
  %77 = load i8, ptr %76, align 1, !tbaa !61
  %78 = and i8 %77, 16
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  call void @BM_face_select_set(ptr noundef %5, ptr noundef nonnull %75, i8 noundef zeroext 1) #10
  br label %81

81:                                               ; preds = %74, %80
  %82 = load ptr, ptr %51, align 8, !tbaa !58
  %83 = call ptr %82(ptr noundef nonnull %4) #10
  %84 = icmp eq ptr %83, null
  br i1 %84, label %187, label %74, !llvm.loop !213

85:                                               ; preds = %3
  %86 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 5
  %87 = load i32, ptr %86, align 4, !tbaa !193
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %187, label %89

89:                                               ; preds = %85
  switch i16 %2, label %187 [
    i16 4, label %90
    i16 1, label %127
  ]

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %91, align 4, !tbaa !55
  %92 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %92, align 8, !tbaa !57
  %93 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %93, align 8, !tbaa !58
  %94 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 12
  %95 = load ptr, ptr %94, align 8, !tbaa !69
  store ptr %95, ptr %4, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #10
  %96 = load ptr, ptr %93, align 8, !tbaa !58
  %97 = call ptr %96(ptr noundef nonnull %4) #10
  %98 = icmp eq ptr %97, null
  br i1 %98, label %111, label %99

99:                                               ; preds = %90, %99
  %100 = phi ptr [ %109, %99 ], [ %97, %90 ]
  %101 = call zeroext i8 @BM_face_is_any_edge_flag_test(ptr noundef nonnull %100, i8 noundef zeroext 1) #10
  %102 = icmp eq i8 %101, 0
  %103 = getelementptr inbounds %struct.BMHeader, ptr %100, i64 0, i32 3
  %104 = load i8, ptr %103, align 1, !tbaa !61
  %105 = and i8 %104, -17
  %106 = select i1 %102, i8 0, i8 16
  %107 = or disjoint i8 %105, %106
  store i8 %107, ptr %103, align 1, !tbaa !61
  %108 = load ptr, ptr %93, align 8, !tbaa !58
  %109 = call ptr %108(ptr noundef nonnull %4) #10
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %99, !llvm.loop !214

111:                                              ; preds = %99, %90
  store i8 3, ptr %91, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %92, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %93, align 8, !tbaa !58
  %112 = load ptr, ptr %94, align 8, !tbaa !69
  store ptr %112, ptr %4, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #10
  %113 = load ptr, ptr %93, align 8, !tbaa !58
  %114 = call ptr %113(ptr noundef nonnull %4) #10
  %115 = icmp eq ptr %114, null
  br i1 %115, label %187, label %116

116:                                              ; preds = %111, %123
  %117 = phi ptr [ %125, %123 ], [ %114, %111 ]
  %118 = getelementptr inbounds %struct.BMHeader, ptr %117, i64 0, i32 3
  %119 = load i8, ptr %118, align 1, !tbaa !61
  %120 = and i8 %119, 16
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  call void @BM_face_select_set(ptr noundef %5, ptr noundef nonnull %117, i8 noundef zeroext 1) #10
  br label %123

123:                                              ; preds = %116, %122
  %124 = load ptr, ptr %93, align 8, !tbaa !58
  %125 = call ptr %124(ptr noundef nonnull %4) #10
  %126 = icmp eq ptr %125, null
  br i1 %126, label %187, label %116, !llvm.loop !215

127:                                              ; preds = %89
  %128 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %128, align 4, !tbaa !55
  %129 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %129, align 8, !tbaa !57
  %130 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %130, align 8, !tbaa !58
  %131 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 9
  %132 = load ptr, ptr %131, align 8, !tbaa !59
  store ptr %132, ptr %4, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #10
  %133 = load ptr, ptr %130, align 8, !tbaa !58
  %134 = call ptr %133(ptr noundef nonnull %4) #10
  %135 = icmp eq ptr %134, null
  br i1 %135, label %186, label %136

136:                                              ; preds = %127, %141
  %137 = phi ptr [ %143, %141 ], [ %134, %127 ]
  %138 = call zeroext i8 @BM_vert_is_all_edge_flag_test(ptr noundef nonnull %137, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  call void @BM_vert_select_set(ptr noundef %5, ptr noundef nonnull %137, i8 noundef zeroext 0) #10
  br label %141

141:                                              ; preds = %136, %140
  %142 = load ptr, ptr %130, align 8, !tbaa !58
  %143 = call ptr %142(ptr noundef nonnull %4) #10
  %144 = icmp eq ptr %143, null
  br i1 %144, label %186, label %136, !llvm.loop !216

145:                                              ; preds = %3
  %146 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 6
  %147 = load i32, ptr %146, align 8, !tbaa !169
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %187, label %149

149:                                              ; preds = %145
  switch i16 %2, label %187 [
    i16 2, label %150
    i16 1, label %168
  ]

150:                                              ; preds = %149
  %151 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 2, ptr %151, align 4, !tbaa !55
  %152 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %152, align 8, !tbaa !57
  %153 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %153, align 8, !tbaa !58
  %154 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 10
  %155 = load ptr, ptr %154, align 8, !tbaa !67
  store ptr %155, ptr %4, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #10
  %156 = load ptr, ptr %153, align 8, !tbaa !58
  %157 = call ptr %156(ptr noundef nonnull %4) #10
  %158 = icmp eq ptr %157, null
  br i1 %158, label %187, label %159

159:                                              ; preds = %150, %164
  %160 = phi ptr [ %166, %164 ], [ %157, %150 ]
  %161 = call zeroext i8 @BM_edge_is_all_face_flag_test(ptr noundef nonnull %160, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  call void @BM_edge_select_set(ptr noundef %5, ptr noundef nonnull %160, i8 noundef zeroext 0) #10
  br label %164

164:                                              ; preds = %159, %163
  %165 = load ptr, ptr %153, align 8, !tbaa !58
  %166 = call ptr %165(ptr noundef nonnull %4) #10
  %167 = icmp eq ptr %166, null
  br i1 %167, label %187, label %159, !llvm.loop !217

168:                                              ; preds = %149
  %169 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %169, align 4, !tbaa !55
  %170 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %170, align 8, !tbaa !57
  %171 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %171, align 8, !tbaa !58
  %172 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 9
  %173 = load ptr, ptr %172, align 8, !tbaa !59
  store ptr %173, ptr %4, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #10
  %174 = load ptr, ptr %171, align 8, !tbaa !58
  %175 = call ptr %174(ptr noundef nonnull %4) #10
  %176 = icmp eq ptr %175, null
  br i1 %176, label %186, label %177

177:                                              ; preds = %168, %182
  %178 = phi ptr [ %184, %182 ], [ %175, %168 ]
  %179 = call zeroext i8 @BM_vert_is_all_face_flag_test(ptr noundef nonnull %178, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  call void @BM_vert_select_set(ptr noundef %5, ptr noundef nonnull %178, i8 noundef zeroext 0) #10
  br label %182

182:                                              ; preds = %177, %181
  %183 = load ptr, ptr %171, align 8, !tbaa !58
  %184 = call ptr %183(ptr noundef nonnull %4) #10
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %177, !llvm.loop !218

186:                                              ; preds = %182, %141, %168, %127
  call void @BM_mesh_deselect_flush(ptr noundef %5) #10
  br label %187

187:                                              ; preds = %164, %123, %81, %44, %186, %150, %111, %69, %32, %149, %3, %89, %10, %85, %145, %6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  ret void
}

declare zeroext i8 @BM_edge_is_any_vert_flag_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @BM_face_is_any_vert_flag_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @BM_face_is_any_edge_flag_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @BM_vert_is_all_edge_flag_test(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_mesh_deselect_flush(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_edge_is_all_face_flag_test(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @BM_vert_is_all_face_flag_test(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @EDBM_selectmode_toggle(ptr noundef %0, i16 noundef signext %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #10
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !165
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %7) #10
  br label %15

15:                                               ; preds = %13, %9, %5
  %16 = phi ptr [ %14, %13 ], [ null, %9 ], [ null, %5 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %91, label %18

18:                                               ; preds = %15
  switch i32 %2, label %40 [
    i32 2, label %34
    i32 0, label %19
    i32 1, label %27
  ]

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.BMEditMesh, ptr %16, i64 0, i32 12
  %21 = load i16, ptr %20, align 4, !tbaa !66
  %22 = and i16 %21, %1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %91, label %24

24:                                               ; preds = %19
  %25 = xor i16 %1, -1
  %26 = and i16 %21, %25
  store i16 %26, ptr %20, align 4, !tbaa !66
  br label %40

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.BMEditMesh, ptr %16, i64 0, i32 12
  %29 = load i16, ptr %28, align 4, !tbaa !66
  %30 = and i16 %29, %1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %91

32:                                               ; preds = %27
  %33 = or i16 %29, %1
  store i16 %33, ptr %28, align 4, !tbaa !66
  br label %40

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.BMEditMesh, ptr %16, i64 0, i32 12
  %36 = load i16, ptr %35, align 4, !tbaa !66
  %37 = icmp eq i16 %36, %1
  br i1 %37, label %91, label %38

38:                                               ; preds = %34
  %39 = xor i16 %36, %1
  store i16 %39, ptr %35, align 4, !tbaa !66
  br label %40

40:                                               ; preds = %18, %38, %32, %24
  %41 = icmp eq i8 %3, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.BMEditMesh, ptr %16, i64 0, i32 12
  %44 = load i16, ptr %43, align 4, !tbaa !66
  %45 = icmp eq i16 %44, 0
  %46 = icmp ne i8 %4, 0
  %47 = and i1 %46, %45
  br i1 %47, label %50, label %63

48:                                               ; preds = %40
  %49 = icmp eq i8 %4, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %42, %48
  %51 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 8
  %52 = load i16, ptr %51, align 2, !tbaa !219
  %53 = lshr i16 %52, 1
  %54 = or i16 %53, %52
  %55 = lshr i16 %54, 2
  %56 = or i16 %55, %54
  %57 = lshr i16 %56, 4
  %58 = or i16 %57, %56
  %59 = lshr i16 %58, 8
  %60 = or i16 %59, %58
  %61 = lshr i16 %60, 1
  %62 = sub i16 %60, %61
  tail call void @EDBM_selectmode_convert(ptr noundef nonnull %16, i16 noundef signext %62, i16 noundef signext %1)
  br label %63

63:                                               ; preds = %48, %50, %42
  switch i16 %1, label %85 [
    i16 1, label %64
    i16 2, label %69
    i16 4, label %74
  ]

64:                                               ; preds = %63
  br i1 %41, label %79, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.BMEditMesh, ptr %16, i64 0, i32 12
  %67 = load i16, ptr %66, align 4, !tbaa !66
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %79, label %81

69:                                               ; preds = %63
  br i1 %41, label %79, label %70

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.BMEditMesh, ptr %16, i64 0, i32 12
  %72 = load i16, ptr %71, align 4, !tbaa !66
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %79, label %81

74:                                               ; preds = %63
  br i1 %41, label %79, label %75

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.BMEditMesh, ptr %16, i64 0, i32 12
  %77 = load i16, ptr %76, align 4, !tbaa !66
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74, %75, %69, %70, %64, %65
  %80 = getelementptr inbounds %struct.BMEditMesh, ptr %16, i64 0, i32 12
  store i16 %1, ptr %80, align 4, !tbaa !66
  br label %81

81:                                               ; preds = %79, %75, %70, %65
  %82 = getelementptr inbounds %struct.BMEditMesh, ptr %16, i64 0, i32 12
  %83 = load i16, ptr %82, align 4, !tbaa !66
  %84 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 8
  store i16 %83, ptr %84, align 2, !tbaa !219
  tail call void @EDBM_selectmode_set(ptr noundef nonnull %16)
  br label %85

85:                                               ; preds = %81, %63
  %86 = phi i1 [ true, %63 ], [ false, %81 ]
  %87 = phi i8 [ 0, %63 ], [ 1, %81 ]
  br i1 %86, label %91, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %90 = load ptr, ptr %89, align 8, !tbaa !42
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %90) #10
  tail call void @WM_main_add_notifier(i32 noundef 68091904, ptr noundef null) #10
  br label %91

91:                                               ; preds = %85, %88, %34, %27, %19, %15
  %92 = phi i8 [ 0, %15 ], [ 0, %19 ], [ 0, %27 ], [ 0, %34 ], [ %87, %88 ], [ %87, %85 ]
  ret i8 %92
}

declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @EDBM_selectmode_disable(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMEditMesh, ptr %1, i64 0, i32 12
  %6 = load i16, ptr %5, align 4, !tbaa !66
  %7 = and i16 %6, %2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = icmp eq i16 %6, %2
  %11 = xor i16 %2, -1
  %12 = and i16 %6, %11
  %13 = select i1 %10, i16 %3, i16 %12
  store i16 %13, ptr %5, align 4, !tbaa !66
  %14 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  %16 = getelementptr inbounds %struct.ToolSettings, ptr %15, i64 0, i32 8
  store i16 %13, ptr %16, align 2, !tbaa !219
  tail call void @EDBM_selectmode_set(ptr noundef %1)
  tail call void @WM_main_add_notifier(i32 noundef 68091904, ptr noundef %0) #10
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi i8 [ 1, %9 ], [ 0, %4 ]
  ret i8 %18
}

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_deselect_by_material(ptr nocapture noundef readonly %0, i16 noundef signext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  %5 = load ptr, ptr %0, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %6, align 4, !tbaa !55
  %7 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  store ptr %10, ptr %4, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #10
  %11 = load ptr, ptr %8, align 8, !tbaa !58
  %12 = call ptr %11(ptr noundef nonnull %4) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %3, %26
  %15 = phi ptr [ %28, %26 ], [ %12, %3 ]
  %16 = getelementptr inbounds %struct.BMHeader, ptr %15, i64 0, i32 3
  %17 = load i8, ptr %16, align 1, !tbaa !61
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 5
  %22 = load i16, ptr %21, align 8, !tbaa !195
  %23 = icmp eq i16 %22, %1
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 8, !tbaa !48
  call void @BM_face_select_set(ptr noundef %25, ptr noundef nonnull %15, i8 noundef zeroext %2) #10
  br label %26

26:                                               ; preds = %20, %24, %14
  %27 = load ptr, ptr %8, align 8, !tbaa !58
  %28 = call ptr %27(ptr noundef nonnull %4) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %14, !llvm.loop !220

30:                                               ; preds = %26, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_select_toggle_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.BMesh, ptr %2, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !192
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.BMesh, ptr %2, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !193
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.BMesh, ptr %2, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !169
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %6, %1
  tail call void @EDBM_flag_disable_all(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  br label %16

15:                                               ; preds = %10
  tail call void @EDBM_flag_enable_all(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  br label %16

16:                                               ; preds = %15, %14
  ret void
}

declare void @EDBM_flag_enable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @EDBM_select_swap(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 28
  %5 = load i16, ptr %4, align 8, !tbaa !53
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 1, ptr %9, align 4, !tbaa !55
  %10 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %10, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %11, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  store ptr %13, ptr %2, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #10
  %14 = load ptr, ptr %11, align 8, !tbaa !58
  %15 = call ptr %14(ptr noundef nonnull %2) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %79, label %17

17:                                               ; preds = %8, %27
  %18 = phi ptr [ %29, %27 ], [ %15, %8 ]
  %19 = getelementptr inbounds %struct.BMHeader, ptr %18, i64 0, i32 3
  %20 = load i8, ptr %19, align 1, !tbaa !61
  %21 = and i8 %20, 2
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load ptr, ptr %0, align 8, !tbaa !48
  %25 = and i8 %20, 1
  %26 = xor i8 %25, 1
  call void @BM_vert_select_set(ptr noundef %24, ptr noundef nonnull %18, i8 noundef zeroext %26) #10
  br label %27

27:                                               ; preds = %17, %23
  %28 = load ptr, ptr %11, align 8, !tbaa !58
  %29 = call ptr %28(ptr noundef nonnull %2) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %79, label %17, !llvm.loop !221

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %33 = load i16, ptr %32, align 4, !tbaa !66
  %34 = and i16 %33, 2
  %35 = icmp eq i16 %34, 0
  %36 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  %37 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %38 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  br i1 %35, label %59, label %39

39:                                               ; preds = %31
  store i8 2, ptr %36, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %37, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %38, align 8, !tbaa !58
  %40 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !67
  store ptr %41, ptr %2, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #10
  %42 = load ptr, ptr %38, align 8, !tbaa !58
  %43 = call ptr %42(ptr noundef nonnull %2) #10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %79, label %45

45:                                               ; preds = %39, %55
  %46 = phi ptr [ %57, %55 ], [ %43, %39 ]
  %47 = getelementptr inbounds %struct.BMHeader, ptr %46, i64 0, i32 3
  %48 = load i8, ptr %47, align 1, !tbaa !61
  %49 = and i8 %48, 2
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load ptr, ptr %0, align 8, !tbaa !48
  %53 = and i8 %48, 1
  %54 = xor i8 %53, 1
  call void @BM_edge_select_set(ptr noundef %52, ptr noundef nonnull %46, i8 noundef zeroext %54) #10
  br label %55

55:                                               ; preds = %45, %51
  %56 = load ptr, ptr %38, align 8, !tbaa !58
  %57 = call ptr %56(ptr noundef nonnull %2) #10
  %58 = icmp eq ptr %57, null
  br i1 %58, label %79, label %45, !llvm.loop !222

59:                                               ; preds = %31
  store i8 3, ptr %36, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %37, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %38, align 8, !tbaa !58
  %60 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 12
  %61 = load ptr, ptr %60, align 8, !tbaa !69
  store ptr %61, ptr %2, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #10
  %62 = load ptr, ptr %38, align 8, !tbaa !58
  %63 = call ptr %62(ptr noundef nonnull %2) #10
  %64 = icmp eq ptr %63, null
  br i1 %64, label %79, label %65

65:                                               ; preds = %59, %75
  %66 = phi ptr [ %77, %75 ], [ %63, %59 ]
  %67 = getelementptr inbounds %struct.BMHeader, ptr %66, i64 0, i32 3
  %68 = load i8, ptr %67, align 1, !tbaa !61
  %69 = and i8 %68, 2
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load ptr, ptr %0, align 8, !tbaa !48
  %73 = and i8 %68, 1
  %74 = xor i8 %73, 1
  call void @BM_face_select_set(ptr noundef %72, ptr noundef nonnull %66, i8 noundef zeroext %74) #10
  br label %75

75:                                               ; preds = %65, %71
  %76 = load ptr, ptr %38, align 8, !tbaa !58
  %77 = call ptr %76(ptr noundef nonnull %2) #10
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %65, !llvm.loop !223

79:                                               ; preds = %27, %55, %75, %8, %39, %59
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @EDBM_select_interior_faces(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %5 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 3, ptr %5, align 4, !tbaa !55
  %6 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  store ptr %9, ptr %2, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #10
  %10 = load ptr, ptr %7, align 8, !tbaa !58
  %11 = call ptr %10(ptr noundef nonnull %2) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %15 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %16 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  br label %17

17:                                               ; preds = %13, %37
  %18 = phi i8 [ 0, %13 ], [ %38, %37 ]
  %19 = phi ptr [ %11, %13 ], [ %40, %37 ]
  %20 = getelementptr inbounds %struct.BMHeader, ptr %19, i64 0, i32 3
  %21 = load i8, ptr %20, align 1, !tbaa !61
  %22 = and i8 %21, 2
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  store i8 10, ptr %14, align 4, !tbaa !55
  store ptr @bmiter__edge_of_face_begin, ptr %15, align 8, !tbaa !57
  store ptr @bmiter__edge_of_face_step, ptr %16, align 8, !tbaa !58
  store ptr %19, ptr %3, align 8, !tbaa !60
  call void @bmiter__edge_of_face_begin(ptr noundef nonnull %3) #10
  %25 = load ptr, ptr %16, align 8, !tbaa !58
  %26 = call ptr %25(ptr noundef nonnull %3) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %24, %32
  %29 = phi ptr [ %34, %32 ], [ %26, %24 ]
  %30 = call i32 @BM_edge_face_count(ptr noundef nonnull %29) #10
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %16, align 8, !tbaa !58
  %34 = call ptr %33(ptr noundef nonnull %3) #10
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %28, !llvm.loop !224

36:                                               ; preds = %32, %24
  call void @BM_face_select_set(ptr noundef %4, ptr noundef nonnull %19, i8 noundef zeroext 1) #10
  br label %37

37:                                               ; preds = %28, %36, %17
  %38 = phi i8 [ %18, %17 ], [ 1, %36 ], [ %18, %28 ]
  %39 = load ptr, ptr %7, align 8, !tbaa !58
  %40 = call ptr %39(ptr noundef nonnull %2) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %17, !llvm.loop !225

42:                                               ; preds = %37, %1
  %43 = phi i8 [ 0, %1 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #10
  ret i8 %43
}

declare i32 @BM_edge_face_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_select_linked(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.67, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.68, ptr %2, align 8, !tbaa !154
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.69, ptr %3, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_linked_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.70, i32 noundef 0, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.6) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_linked_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMWalker, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #10
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #10
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !162
  %10 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %9, ptr noundef nonnull @.str.70) #10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %14 = tail call ptr @BKE_editmesh_from_object(ptr noundef %13) #10
  %15 = getelementptr inbounds %struct.BMEditMesh, ptr %14, i64 0, i32 12
  %16 = load i16, ptr %15, align 4, !tbaa !66
  %17 = icmp eq i16 %16, 4
  %18 = load ptr, ptr %8, align 8, !tbaa !162
  %19 = zext i1 %17 to i32
  tail call void @RNA_boolean_set(ptr noundef %18, ptr noundef nonnull @.str.70, i32 noundef %19) #10
  br label %20

20:                                               ; preds = %12, %2
  %21 = load ptr, ptr %8, align 8, !tbaa !162
  %22 = tail call i32 @RNA_boolean_get(ptr noundef %21, ptr noundef nonnull @.str.70) #10
  %23 = getelementptr inbounds %struct.BMEditMesh, ptr %6, i64 0, i32 12
  %24 = load i16, ptr %23, align 4, !tbaa !66
  %25 = icmp eq i16 %24, 4
  %26 = load ptr, ptr %6, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %28 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %29 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  br i1 %25, label %30, label %115

30:                                               ; preds = %20
  store i8 3, ptr %27, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %28, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %29, align 8, !tbaa !58
  %31 = getelementptr inbounds %struct.BMesh, ptr %26, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !69
  store ptr %32, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %33 = load ptr, ptr %29, align 8, !tbaa !58
  %34 = call ptr %33(ptr noundef nonnull %3) #10
  %35 = icmp eq ptr %34, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %30, %36
  %37 = phi ptr [ %46, %36 ], [ %34, %30 ]
  %38 = getelementptr inbounds %struct.BMHeader, ptr %37, i64 0, i32 3
  %39 = load i8, ptr %38, align 1, !tbaa !61
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  %42 = or i8 %39, 16
  %43 = and i8 %39, -18
  %44 = select i1 %41, i8 %43, i8 %42
  store i8 %44, ptr %38, align 1, !tbaa !61
  %45 = load ptr, ptr %29, align 8, !tbaa !58
  %46 = call ptr %45(ptr noundef nonnull %3) #10
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %36, !llvm.loop !226

48:                                               ; preds = %36, %30
  %49 = icmp ne i32 %22, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %48
  call void @BM_mesh_elem_toolflags_ensure(ptr noundef %7) #10
  store i8 2, ptr %27, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %28, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %29, align 8, !tbaa !58
  %51 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !67
  store ptr %52, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %53 = load ptr, ptr %29, align 8, !tbaa !58
  %54 = call ptr %53(ptr noundef nonnull %3) #10
  %55 = icmp eq ptr %54, null
  br i1 %55, label %85, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 22
  %58 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 22
  br label %59

59:                                               ; preds = %56, %81
  %60 = phi ptr [ %54, %56 ], [ %83, %81 ]
  %61 = getelementptr inbounds %struct.BMEdge, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !227
  %63 = getelementptr inbounds %struct.BMHeader, ptr %60, i64 0, i32 3
  %64 = load i8, ptr %63, align 1, !tbaa !61
  %65 = and i8 %64, 4
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load i32, ptr %58, align 8, !tbaa !228
  %69 = sext i32 %68 to i64
  %70 = getelementptr %struct.BMFlagLayer, ptr %62, i64 %69
  %71 = getelementptr %struct.BMFlagLayer, ptr %70, i64 -1
  %72 = load i16, ptr %71, align 2, !tbaa !229
  %73 = or i16 %72, 1
  store i16 %73, ptr %71, align 2, !tbaa !229
  br label %81

74:                                               ; preds = %59
  %75 = load i32, ptr %57, align 8, !tbaa !228
  %76 = sext i32 %75 to i64
  %77 = getelementptr %struct.BMFlagLayer, ptr %62, i64 %76
  %78 = getelementptr %struct.BMFlagLayer, ptr %77, i64 -1
  %79 = load i16, ptr %78, align 2, !tbaa !229
  %80 = and i16 %79, -2
  store i16 %80, ptr %78, align 2, !tbaa !229
  br label %81

81:                                               ; preds = %67, %74
  %82 = load ptr, ptr %29, align 8, !tbaa !58
  %83 = call ptr %82(ptr noundef nonnull %3) #10
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %59, !llvm.loop !231

85:                                               ; preds = %81, %50, %48
  %86 = zext i1 %49 to i16
  call void @BMW_init(ptr noundef nonnull %4, ptr noundef %7, i32 noundef 8, i16 noundef signext 0, i16 noundef signext %86, i16 noundef signext 0, i32 noundef 1, i32 noundef 0) #10
  %87 = load ptr, ptr %6, align 8, !tbaa !48
  store i8 3, ptr %27, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %28, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %29, align 8, !tbaa !58
  %88 = getelementptr inbounds %struct.BMesh, ptr %87, i64 0, i32 12
  %89 = load ptr, ptr %88, align 8, !tbaa !69
  store ptr %89, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %90 = load ptr, ptr %29, align 8, !tbaa !58
  %91 = call ptr %90(ptr noundef nonnull %3) #10
  %92 = icmp eq ptr %91, null
  br i1 %92, label %113, label %93

93:                                               ; preds = %85, %109
  %94 = phi ptr [ %111, %109 ], [ %91, %85 ]
  %95 = getelementptr inbounds %struct.BMHeader, ptr %94, i64 0, i32 3
  %96 = load i8, ptr %95, align 1, !tbaa !61
  %97 = and i8 %96, 16
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %93
  %100 = call ptr @BMW_begin(ptr noundef nonnull %4, ptr noundef nonnull %94) #10
  %101 = icmp eq ptr %100, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %99, %102
  %103 = phi ptr [ %107, %102 ], [ %100, %99 ]
  call void @BM_face_select_set(ptr noundef %7, ptr noundef nonnull %103, i8 noundef zeroext 1) #10
  %104 = getelementptr inbounds %struct.BMHeader, ptr %103, i64 0, i32 3
  %105 = load i8, ptr %104, align 1, !tbaa !61
  %106 = and i8 %105, -17
  store i8 %106, ptr %104, align 1, !tbaa !61
  %107 = call ptr @BMW_step(ptr noundef nonnull %4) #10
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %102, !llvm.loop !232

109:                                              ; preds = %102, %99, %93
  %110 = load ptr, ptr %29, align 8, !tbaa !58
  %111 = call ptr %110(ptr noundef nonnull %3) #10
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %93, !llvm.loop !233

113:                                              ; preds = %109, %85
  call void @BMW_end(ptr noundef nonnull %4) #10
  br i1 %49, label %114, label %163

114:                                              ; preds = %113
  call void @BM_mesh_elem_toolflags_clear(ptr noundef %7) #10
  br label %163

115:                                              ; preds = %20
  store i8 1, ptr %27, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %28, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %29, align 8, !tbaa !58
  %116 = getelementptr inbounds %struct.BMesh, ptr %26, i64 0, i32 9
  %117 = load ptr, ptr %116, align 8, !tbaa !59
  store ptr %117, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %118 = load ptr, ptr %29, align 8, !tbaa !58
  %119 = call ptr %118(ptr noundef nonnull %3) #10
  %120 = icmp eq ptr %119, null
  br i1 %120, label %133, label %121

121:                                              ; preds = %115, %121
  %122 = phi ptr [ %131, %121 ], [ %119, %115 ]
  %123 = getelementptr inbounds %struct.BMHeader, ptr %122, i64 0, i32 3
  %124 = load i8, ptr %123, align 1, !tbaa !61
  %125 = and i8 %124, 1
  %126 = icmp eq i8 %125, 0
  %127 = or i8 %124, 16
  %128 = and i8 %124, -18
  %129 = select i1 %126, i8 %128, i8 %127
  store i8 %129, ptr %123, align 1, !tbaa !61
  %130 = load ptr, ptr %29, align 8, !tbaa !58
  %131 = call ptr %130(ptr noundef nonnull %3) #10
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %121, !llvm.loop !234

133:                                              ; preds = %121, %115
  %134 = load ptr, ptr %6, align 8, !tbaa !48
  call void @BMW_init(ptr noundef nonnull %4, ptr noundef %134, i32 noundef 0, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i32 noundef 1, i32 noundef 0) #10
  %135 = load ptr, ptr %6, align 8, !tbaa !48
  store i8 1, ptr %27, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %28, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %29, align 8, !tbaa !58
  %136 = getelementptr inbounds %struct.BMesh, ptr %135, i64 0, i32 9
  %137 = load ptr, ptr %136, align 8, !tbaa !59
  store ptr %137, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %138 = load ptr, ptr %29, align 8, !tbaa !58
  %139 = call ptr %138(ptr noundef nonnull %3) #10
  %140 = icmp eq ptr %139, null
  br i1 %140, label %162, label %141

141:                                              ; preds = %133, %158
  %142 = phi ptr [ %160, %158 ], [ %139, %133 ]
  %143 = getelementptr inbounds %struct.BMHeader, ptr %142, i64 0, i32 3
  %144 = load i8, ptr %143, align 1, !tbaa !61
  %145 = and i8 %144, 16
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %158, label %147

147:                                              ; preds = %141
  %148 = call ptr @BMW_begin(ptr noundef nonnull %4, ptr noundef nonnull %142) #10
  %149 = icmp eq ptr %148, null
  br i1 %149, label %158, label %150

150:                                              ; preds = %147, %150
  %151 = phi ptr [ %156, %150 ], [ %148, %147 ]
  %152 = load ptr, ptr %6, align 8, !tbaa !48
  call void @BM_edge_select_set(ptr noundef %152, ptr noundef nonnull %151, i8 noundef zeroext 1) #10
  %153 = getelementptr inbounds %struct.BMHeader, ptr %151, i64 0, i32 3
  %154 = load i8, ptr %153, align 1, !tbaa !61
  %155 = and i8 %154, -17
  store i8 %155, ptr %153, align 1, !tbaa !61
  %156 = call ptr @BMW_step(ptr noundef nonnull %4) #10
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %150, !llvm.loop !235

158:                                              ; preds = %150, %147, %141
  %159 = load ptr, ptr %29, align 8, !tbaa !58
  %160 = call ptr %159(ptr noundef nonnull %3) #10
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %141, !llvm.loop !236

162:                                              ; preds = %158, %133
  call void @BMW_end(ptr noundef nonnull %4) #10
  call void @EDBM_selectmode_flush(ptr noundef nonnull %6) #10
  br label %163

163:                                              ; preds = %113, %114, %162
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %5) #10
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_select_linked_pick(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.72, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.73, ptr %2, align 8, !tbaa !154
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.74, ptr %3, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_select_linked_pick_invoke, ptr %4, align 8, !tbaa !156
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.50, i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.6) #10
  %10 = load ptr, ptr %7, align 8, !tbaa !160
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.70, i32 noundef 0, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.6) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_linked_pick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.ViewContext, align 8
  %5 = alloca %struct.BMWalker, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !162
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.50) #10
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i8
  %16 = load ptr, ptr %11, align 8, !tbaa !162
  %17 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %16, ptr noundef nonnull @.str.70) #10
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %21 = tail call ptr @BKE_editmesh_from_object(ptr noundef %20) #10
  %22 = getelementptr inbounds %struct.BMEditMesh, ptr %21, i64 0, i32 12
  %23 = load i16, ptr %22, align 4, !tbaa !66
  %24 = icmp eq i16 %23, 4
  %25 = load ptr, ptr %11, align 8, !tbaa !162
  %26 = zext i1 %24 to i32
  tail call void @RNA_boolean_set(ptr noundef %25, ptr noundef nonnull @.str.70, i32 noundef %26) #10
  br label %27

27:                                               ; preds = %19, %3
  %28 = load ptr, ptr %11, align 8, !tbaa !162
  %29 = tail call i32 @RNA_boolean_get(ptr noundef %28, ptr noundef nonnull @.str.70) #10
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #10
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %4) #10
  %30 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !100
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = call ptr @BKE_editmesh_from_object(ptr noundef nonnull %31) #10
  %35 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 6
  store ptr %34, ptr %35, align 8, !tbaa !120
  br label %36

36:                                               ; preds = %27, %33
  %37 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !120
  %39 = load ptr, ptr %38, align 8, !tbaa !48
  %40 = getelementptr inbounds %struct.BMesh, ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !237
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %142, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %45 = load i32, ptr %44, align 4, !tbaa !52
  %46 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 7
  store i32 %45, ptr %46, align 8, !tbaa !52
  %47 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %48 = load i32, ptr %47, align 4, !tbaa !52
  %49 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 7, i64 1
  store i32 %48, ptr %49, align 4, !tbaa !52
  %50 = call fastcc i32 @unified_findnearest(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8), !range !194
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %10) #10
  br label %142

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.BMEditMesh, ptr %38, i64 0, i32 12
  %55 = load i16, ptr %54, align 4, !tbaa !66
  %56 = icmp eq i16 %55, 4
  br i1 %56, label %57, label %110

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #10
  %58 = load ptr, ptr %8, align 8, !tbaa !109
  %59 = icmp eq ptr %58, null
  br i1 %59, label %141, label %60

60:                                               ; preds = %57
  %61 = icmp ne i32 %29, 0
  br i1 %61, label %62, label %100

62:                                               ; preds = %60
  call void @BM_mesh_elem_toolflags_ensure(ptr noundef %39) #10
  %63 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  store i8 2, ptr %63, align 4, !tbaa !55
  %64 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %64, align 8, !tbaa !57
  %65 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %65, align 8, !tbaa !58
  %66 = getelementptr inbounds %struct.BMesh, ptr %39, i64 0, i32 10
  %67 = load ptr, ptr %66, align 8, !tbaa !67
  store ptr %67, ptr %9, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #10
  %68 = load ptr, ptr %65, align 8, !tbaa !58
  %69 = call ptr %68(ptr noundef nonnull %9) #10
  %70 = icmp eq ptr %69, null
  br i1 %70, label %100, label %71

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.BMesh, ptr %39, i64 0, i32 22
  %73 = getelementptr inbounds %struct.BMesh, ptr %39, i64 0, i32 22
  br label %74

74:                                               ; preds = %71, %96
  %75 = phi ptr [ %69, %71 ], [ %98, %96 ]
  %76 = getelementptr inbounds %struct.BMEdge, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !227
  %78 = getelementptr inbounds %struct.BMHeader, ptr %75, i64 0, i32 3
  %79 = load i8, ptr %78, align 1, !tbaa !61
  %80 = and i8 %79, 4
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %74
  %83 = load i32, ptr %73, align 8, !tbaa !228
  %84 = sext i32 %83 to i64
  %85 = getelementptr %struct.BMFlagLayer, ptr %77, i64 %84
  %86 = getelementptr %struct.BMFlagLayer, ptr %85, i64 -1
  %87 = load i16, ptr %86, align 2, !tbaa !229
  %88 = or i16 %87, 1
  store i16 %88, ptr %86, align 2, !tbaa !229
  br label %96

89:                                               ; preds = %74
  %90 = load i32, ptr %72, align 8, !tbaa !228
  %91 = sext i32 %90 to i64
  %92 = getelementptr %struct.BMFlagLayer, ptr %77, i64 %91
  %93 = getelementptr %struct.BMFlagLayer, ptr %92, i64 -1
  %94 = load i16, ptr %93, align 2, !tbaa !229
  %95 = and i16 %94, -2
  store i16 %95, ptr %93, align 2, !tbaa !229
  br label %96

96:                                               ; preds = %82, %89
  %97 = load ptr, ptr %65, align 8, !tbaa !58
  %98 = call ptr %97(ptr noundef nonnull %9) #10
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %74, !llvm.loop !238

100:                                              ; preds = %96, %62, %60
  %101 = zext i1 %61 to i16
  call void @BMW_init(ptr noundef nonnull %5, ptr noundef %39, i32 noundef 8, i16 noundef signext 0, i16 noundef signext %101, i16 noundef signext 0, i32 noundef 1, i32 noundef 0) #10
  %102 = call ptr @BMW_begin(ptr noundef nonnull %5, ptr noundef nonnull %58) #10
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %100, %104
  %105 = phi ptr [ %106, %104 ], [ %102, %100 ]
  call void @BM_face_select_set(ptr noundef %39, ptr noundef nonnull %105, i8 noundef zeroext %15) #10
  %106 = call ptr @BMW_step(ptr noundef nonnull %5) #10
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %104, !llvm.loop !239

108:                                              ; preds = %104, %100
  %109 = phi ptr [ %102, %100 ], [ %106, %104 ]
  store ptr %109, ptr %8, align 8, !tbaa !109
  call void @BMW_end(ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #10
  br label %140

110:                                              ; preds = %53
  %111 = load ptr, ptr %8, align 8, !tbaa !109
  %112 = icmp eq ptr %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.BMFace, ptr %111, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !240
  %116 = getelementptr inbounds %struct.BMLoop, ptr %115, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !241
  store ptr %117, ptr %7, align 8, !tbaa !109
  br label %129

118:                                              ; preds = %110
  %119 = load ptr, ptr %7, align 8, !tbaa !109
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  %122 = load ptr, ptr %6, align 8, !tbaa !109
  %123 = icmp eq ptr %122, null
  br i1 %123, label %142, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.BMVert, ptr %122, i64 0, i32 4
  %126 = load ptr, ptr %125, align 8, !tbaa !242
  %127 = icmp eq ptr %126, null
  br i1 %127, label %142, label %128

128:                                              ; preds = %124
  store ptr %126, ptr %7, align 8, !tbaa !109
  br label %129

129:                                              ; preds = %118, %128, %113
  call void @BMW_init(ptr noundef nonnull %5, ptr noundef %39, i32 noundef 0, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i32 noundef 1, i32 noundef 0) #10
  %130 = load ptr, ptr %7, align 8, !tbaa !109
  %131 = getelementptr inbounds %struct.BMEdge, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !138
  %133 = call ptr @BMW_begin(ptr noundef nonnull %5, ptr noundef %132) #10
  %134 = icmp eq ptr %133, null
  br i1 %134, label %139, label %135

135:                                              ; preds = %129, %135
  %136 = phi ptr [ %137, %135 ], [ %133, %129 ]
  call void @BM_edge_select_set(ptr noundef %39, ptr noundef nonnull %136, i8 noundef zeroext %15) #10
  %137 = call ptr @BMW_step(ptr noundef nonnull %5) #10
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %135, !llvm.loop !244

139:                                              ; preds = %135, %129
  call void @BMW_end(ptr noundef nonnull %5) #10
  call void @EDBM_selectmode_flush(ptr noundef nonnull %38) #10
  br label %140

140:                                              ; preds = %108, %139
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %10) #10
  br label %142

141:                                              ; preds = %57
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #10
  br label %142

142:                                              ; preds = %121, %124, %141, %36, %140, %52
  %143 = phi i32 [ 2, %52 ], [ 4, %140 ], [ 2, %36 ], [ 2, %141 ], [ 2, %124 ], [ 2, %121 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  ret i32 %143
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_select_face_by_sides(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.83, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.84, ptr %2, align 8, !tbaa !155
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.85, ptr %3, align 8, !tbaa !154
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_face_by_sides_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.86, i32 noundef 4, i32 noundef 3, i32 noundef 2147483647, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.6, i32 noundef 3, i32 noundef 2147483647) #10
  %10 = load ptr, ptr %7, align 8, !tbaa !160
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.4, ptr noundef nonnull @MESH_OT_select_face_by_sides.type_items, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.88) #10
  %12 = load ptr, ptr %7, align 8, !tbaa !160
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.47, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.49) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_face_by_sides_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !162
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.86) #10
  %9 = load ptr, ptr %6, align 8, !tbaa !162
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.4) #10
  %11 = load ptr, ptr %6, align 8, !tbaa !162
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.47) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  tail call void @EDBM_flag_disable_all(ptr noundef %5, i8 noundef zeroext 1) #10
  br label %15

15:                                               ; preds = %14, %2
  %16 = load ptr, ptr %5, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %17, align 4, !tbaa !55
  %18 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %18, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %19, align 8, !tbaa !58
  %20 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  store ptr %21, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %22 = load ptr, ptr %19, align 8, !tbaa !58
  %23 = call ptr %22(ptr noundef nonnull %3) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %51, label %25

25:                                               ; preds = %15, %47
  %26 = phi ptr [ %49, %47 ], [ %23, %15 ]
  switch i32 %10, label %47 [
    i32 0, label %27
    i32 1, label %31
    i32 2, label %35
    i32 3, label %39
  ]

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.BMFace, ptr %26, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !245
  %30 = icmp slt i32 %29, %8
  br label %43

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.BMFace, ptr %26, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !245
  %34 = icmp eq i32 %33, %8
  br label %43

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.BMFace, ptr %26, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !245
  %38 = icmp sgt i32 %37, %8
  br label %43

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.BMFace, ptr %26, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !245
  %42 = icmp ne i32 %41, %8
  br label %43

43:                                               ; preds = %39, %35, %31, %27
  %44 = phi i1 [ %42, %39 ], [ %38, %35 ], [ %34, %31 ], [ %30, %27 ]
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  %46 = load ptr, ptr %5, align 8, !tbaa !48
  call void @BM_face_select_set(ptr noundef %46, ptr noundef nonnull %26, i8 noundef zeroext 1) #10
  br label %47

47:                                               ; preds = %25, %45, %43
  %48 = load ptr, ptr %19, align 8, !tbaa !58
  %49 = call ptr %48(ptr noundef nonnull %3) #10
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %25, !llvm.loop !246

51:                                               ; preds = %47, %15
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #10
  %52 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %53 = load ptr, ptr %52, align 8, !tbaa !42
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %53) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret i32 4
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_select_loose(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.89, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.90, ptr %2, align 8, !tbaa !155
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.91, ptr %3, align 8, !tbaa !154
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_loose_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.49) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_loose_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #10
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !162
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.47) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @EDBM_flag_disable_all(ptr noundef nonnull %6, i8 noundef zeroext 1) #10
  br label %13

13:                                               ; preds = %12, %2
  %14 = getelementptr inbounds %struct.BMEditMesh, ptr %6, i64 0, i32 12
  %15 = load i16, ptr %14, align 4, !tbaa !66
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %19, align 4, !tbaa !55
  %20 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %20, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %21, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  store ptr %23, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %24 = load ptr, ptr %21, align 8, !tbaa !58
  %25 = call ptr %24(ptr noundef nonnull %3) #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %18, %33
  %28 = phi ptr [ %35, %33 ], [ %25, %18 ]
  %29 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !242
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  call void @BM_vert_select_set(ptr noundef %7, ptr noundef nonnull %28, i8 noundef zeroext 1) #10
  br label %33

33:                                               ; preds = %27, %32
  %34 = load ptr, ptr %21, align 8, !tbaa !58
  %35 = call ptr %34(ptr noundef nonnull %3) #10
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %27, !llvm.loop !247

37:                                               ; preds = %33, %18, %13
  %38 = load i16, ptr %14, align 4, !tbaa !66
  %39 = and i16 %38, 2
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %42, align 4, !tbaa !55
  %43 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %43, align 8, !tbaa !57
  %44 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %44, align 8, !tbaa !58
  %45 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !67
  store ptr %46, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %47 = load ptr, ptr %44, align 8, !tbaa !58
  %48 = call ptr %47(ptr noundef nonnull %3) #10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %41, %56
  %51 = phi ptr [ %58, %56 ], [ %48, %41 ]
  %52 = getelementptr inbounds %struct.BMEdge, ptr %51, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !187
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  call void @BM_edge_select_set(ptr noundef %7, ptr noundef nonnull %51, i8 noundef zeroext 1) #10
  br label %56

56:                                               ; preds = %50, %55
  %57 = load ptr, ptr %44, align 8, !tbaa !58
  %58 = call ptr %57(ptr noundef nonnull %3) #10
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %50, !llvm.loop !248

60:                                               ; preds = %56, %41, %37
  %61 = load i16, ptr %14, align 4, !tbaa !66
  %62 = and i16 %61, 4
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %106, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %65, align 4, !tbaa !55
  %66 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %66, align 8, !tbaa !57
  %67 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %67, align 8, !tbaa !58
  %68 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 12
  %69 = load ptr, ptr %68, align 8, !tbaa !69
  store ptr %69, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %70 = load ptr, ptr %67, align 8, !tbaa !58
  %71 = call ptr %70(ptr noundef nonnull %3) #10
  %72 = icmp eq ptr %71, null
  br i1 %72, label %106, label %73

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %75 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %76 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  br label %77

77:                                               ; preds = %73, %102
  %78 = phi ptr [ %71, %73 ], [ %104, %102 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  store i8 11, ptr %74, align 4, !tbaa !55
  store ptr @bmiter__loop_of_face_begin, ptr %75, align 8, !tbaa !57
  store ptr @bmiter__loop_of_face_step, ptr %76, align 8, !tbaa !58
  store ptr %78, ptr %4, align 8, !tbaa !60
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #10
  %79 = load ptr, ptr %76, align 8, !tbaa !58
  %80 = call ptr %79(ptr noundef nonnull %4) #10
  %81 = icmp eq ptr %80, null
  br i1 %81, label %101, label %82

82:                                               ; preds = %77, %97
  %83 = phi ptr [ %99, %97 ], [ %80, %77 ]
  %84 = getelementptr inbounds %struct.BMLoop, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !241
  %86 = getelementptr inbounds %struct.BMEdge, ptr %85, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !187
  %88 = icmp eq ptr %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.BMLoop, ptr %87, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !188
  %92 = icmp eq ptr %91, %87
  %93 = zext i1 %92 to i8
  br label %94

94:                                               ; preds = %82, %89
  %95 = phi i8 [ 0, %82 ], [ %93, %89 ]
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %76, align 8, !tbaa !58
  %99 = call ptr %98(ptr noundef nonnull %4) #10
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %82, !llvm.loop !249

101:                                              ; preds = %97, %77
  call void @BM_face_select_set(ptr noundef %7, ptr noundef nonnull %78, i8 noundef zeroext 1) #10
  br label %102

102:                                              ; preds = %94, %101
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  %103 = load ptr, ptr %67, align 8, !tbaa !58
  %104 = call ptr %103(ptr noundef nonnull %3) #10
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %77, !llvm.loop !250

106:                                              ; preds = %102, %64, %60
  call void @EDBM_selectmode_flush(ptr noundef nonnull %6) #10
  %107 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %108 = load ptr, ptr %107, align 8, !tbaa !42
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %108) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_select_mirror(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.92, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.93, ptr %2, align 8, !tbaa !155
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.94, ptr %3, align 8, !tbaa !154
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_mirror_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.95) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_mirror_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #10
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !162
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.47) #10
  %10 = trunc i32 %9 to i8
  %11 = load ptr, ptr %6, align 8, !tbaa !48
  %12 = load i32, ptr %11, align 8, !tbaa !251
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !192
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @EDBM_select_mirrored(ptr noundef nonnull %6, i8 noundef zeroext %10, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %19 = load i32, ptr %3, align 4, !tbaa !52
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  tail call void @EDBM_selectmode_flush(ptr noundef nonnull %6) #10
  %22 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %23) #10
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, ptr %4, align 4, !tbaa !52
  %26 = load ptr, ptr %6, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.BMesh, ptr %26, i64 0, i32 28
  %28 = load i16, ptr %27, align 8, !tbaa !53
  %29 = trunc i16 %28 to i8
  tail call void @ED_mesh_report_mirror_ex(ptr noundef %1, i32 noundef %19, i32 noundef %25, i8 noundef zeroext %29) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %30

30:                                               ; preds = %24, %14, %2
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_select_more(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.96, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.97, ptr %2, align 8, !tbaa !154
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.98, ptr %3, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_more_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #10
  tail call void @EDBM_select_more(ptr noundef %4) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %3) #10
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_select_less(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.99, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.100, ptr %2, align 8, !tbaa !154
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.101, ptr %3, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_less_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #10
  tail call void @EDBM_select_less(ptr noundef %4) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %3) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_select_nth(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.102, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.103, ptr %2, align 8, !tbaa !154
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.104, ptr %3, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_nth_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.105, i32 noundef 2, i32 noundef 2, i32 noundef 2147483647, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.6, i32 noundef 2, i32 noundef 100) #10
  %10 = load ptr, ptr %7, align 8, !tbaa !160
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.107, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.6, i32 noundef -100, i32 noundef 100) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_nth_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !162
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.105) #10
  %9 = load ptr, ptr %6, align 8, !tbaa !162
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.107) #10
  %11 = srem i32 %10, %8
  %12 = add nsw i32 %11, %8
  %13 = srem i32 %12, %8
  %14 = add nsw i32 %13, -1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  tail call void @EDBM_selectmode_flush(ptr noundef %5) #10
  %15 = load ptr, ptr %5, align 8, !tbaa !48
  %16 = tail call ptr @BM_mesh_active_elem_get(ptr noundef %15) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.BMHeader, ptr %16, i64 0, i32 3
  %20 = load i8, ptr %19, align 1, !tbaa !61
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.BMHeader, ptr %16, i64 0, i32 2
  %25 = load i8, ptr %24, align 4, !tbaa !252
  switch i8 %25, label %28 [
    i8 1, label %90
    i8 2, label %26
    i8 8, label %27
  ]

26:                                               ; preds = %23
  br label %90

27:                                               ; preds = %23
  br label %90

28:                                               ; preds = %23, %18, %2
  %29 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 12
  %30 = load i16, ptr %29, align 4, !tbaa !66
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %5, align 8, !tbaa !48
  %36 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %36, align 4, !tbaa !55
  %37 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %37, align 8, !tbaa !57
  %38 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %38, align 8, !tbaa !58
  %39 = getelementptr inbounds %struct.BMesh, ptr %35, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !59
  store ptr %40, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %41 = load ptr, ptr %38, align 8, !tbaa !58
  %42 = call ptr %41(ptr noundef nonnull %3) #10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %90, label %44

44:                                               ; preds = %34, %50
  %45 = phi ptr [ %52, %50 ], [ %42, %34 ]
  %46 = getelementptr inbounds %struct.BMHeader, ptr %45, i64 0, i32 3
  %47 = load i8, ptr %46, align 1, !tbaa !61
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %90

50:                                               ; preds = %44
  %51 = load ptr, ptr %38, align 8, !tbaa !58
  %52 = call ptr %51(ptr noundef nonnull %3) #10
  %53 = icmp eq ptr %52, null
  br i1 %53, label %90, label %44, !llvm.loop !254

54:                                               ; preds = %28
  %55 = and i32 %31, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %5, align 8, !tbaa !48
  %59 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %59, align 4, !tbaa !55
  %60 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %60, align 8, !tbaa !57
  %61 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %61, align 8, !tbaa !58
  %62 = getelementptr inbounds %struct.BMesh, ptr %58, i64 0, i32 10
  %63 = load ptr, ptr %62, align 8, !tbaa !67
  store ptr %63, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %64 = load ptr, ptr %61, align 8, !tbaa !58
  %65 = call ptr %64(ptr noundef nonnull %3) #10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %90, label %67

67:                                               ; preds = %57, %73
  %68 = phi ptr [ %75, %73 ], [ %65, %57 ]
  %69 = getelementptr inbounds %struct.BMHeader, ptr %68, i64 0, i32 3
  %70 = load i8, ptr %69, align 1, !tbaa !61
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = load ptr, ptr %61, align 8, !tbaa !58
  %75 = call ptr %74(ptr noundef nonnull %3) #10
  %76 = icmp eq ptr %75, null
  br i1 %76, label %90, label %67, !llvm.loop !255

77:                                               ; preds = %54
  %78 = and i32 %31, 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %5, align 8, !tbaa !48
  %82 = tail call ptr @BM_mesh_active_face_get(ptr noundef %81, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  %83 = icmp eq ptr %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.BMHeader, ptr %82, i64 0, i32 3
  %86 = load i8, ptr %85, align 1, !tbaa !61
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, ptr null, ptr %82
  br label %90

90:                                               ; preds = %50, %44, %73, %67, %34, %57, %84, %80, %77, %27, %26, %23
  %91 = phi ptr [ null, %77 ], [ null, %80 ], [ null, %27 ], [ null, %26 ], [ %16, %23 ], [ null, %84 ], [ null, %57 ], [ null, %34 ], [ null, %67 ], [ null, %73 ], [ %45, %44 ], [ null, %50 ]
  %92 = phi ptr [ null, %77 ], [ null, %80 ], [ null, %27 ], [ %16, %26 ], [ null, %23 ], [ null, %84 ], [ null, %57 ], [ null, %34 ], [ null, %73 ], [ %68, %67 ], [ null, %44 ], [ null, %50 ]
  %93 = phi ptr [ null, %77 ], [ null, %80 ], [ %16, %27 ], [ null, %26 ], [ null, %23 ], [ %89, %84 ], [ null, %57 ], [ null, %34 ], [ null, %67 ], [ null, %73 ], [ null, %44 ], [ null, %50 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  %94 = icmp eq ptr %91, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = icmp eq ptr %92, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %95
  %98 = icmp eq ptr %93, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %101 = load ptr, ptr %100, align 8, !tbaa !170
  call void @BKE_report(ptr noundef %101, i32 noundef 32, ptr noundef nonnull @.str.221) #10
  br label %104

102:                                              ; preds = %97, %95, %90
  %103 = phi ptr [ %91, %90 ], [ %92, %95 ], [ %93, %97 ]
  call fastcc void @walker_deselect_nth(ptr noundef nonnull %5, i32 noundef %8, i32 noundef %14, ptr noundef nonnull %103)
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %104

104:                                              ; preds = %102, %99
  %105 = phi i32 [ 2, %99 ], [ 4, %102 ]
  ret i32 %105
}

declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_edges_select_sharp(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.109, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.110, ptr %2, align 8, !tbaa !155
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.111, ptr %3, align 8, !tbaa !154
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_sharp_edges_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = tail call ptr @RNA_def_float_rotation(ptr noundef %8, ptr noundef nonnull @.str.112, i32 noundef 0, ptr noundef null, float noundef 0x3F26E05A60000000, float noundef 0x400921FB60000000, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.6, float noundef 0x3F91DF46A0000000, float noundef 0x400921FB60000000) #10
  tail call void @RNA_def_property_float_default(ptr noundef %9, float noundef 0x3FE0C15240000000) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_sharp_edges_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !162
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.112) #10
  %11 = load ptr, ptr %7, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %12, align 4, !tbaa !55
  %13 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  store ptr %16, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %17 = load ptr, ptr %14, align 8, !tbaa !58
  %18 = call ptr %17(ptr noundef nonnull %3) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %2, %43
  %21 = phi ptr [ %45, %43 ], [ %18, %2 ]
  %22 = getelementptr inbounds %struct.BMHeader, ptr %21, i64 0, i32 3
  %23 = load i8, ptr %22, align 1, !tbaa !61
  %24 = and i8 %23, 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = call zeroext i8 @BM_edge_loop_pair(ptr noundef nonnull %21, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %4, align 8, !tbaa !109
  %31 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !256
  %33 = getelementptr inbounds %struct.BMFace, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %5, align 8, !tbaa !109
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !256
  %37 = getelementptr inbounds %struct.BMFace, ptr %36, i64 0, i32 4
  %38 = call float @angle_normalized_v3v3(ptr noundef nonnull %33, ptr noundef nonnull %37) #10
  %39 = call float @llvm.fabs.f32(float %38)
  %40 = fcmp ogt float %39, %10
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load ptr, ptr %7, align 8, !tbaa !48
  call void @BM_edge_select_set(ptr noundef %42, ptr noundef nonnull %21, i8 noundef zeroext 1) #10
  br label %43

43:                                               ; preds = %29, %41, %20, %26
  %44 = load ptr, ptr %14, align 8, !tbaa !58
  %45 = call ptr %44(ptr noundef nonnull %3) #10
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %20, !llvm.loop !257

47:                                               ; preds = %43, %2
  %48 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %49 = load ptr, ptr %48, align 8, !tbaa !42
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %49) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret i32 4
}

declare ptr @RNA_def_float_rotation(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @RNA_def_property_float_default(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_faces_select_linked_flat(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.114, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.115, ptr %2, align 8, !tbaa !155
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.116, ptr %3, align 8, !tbaa !154
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_linked_flat_faces_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = tail call ptr @RNA_def_float_rotation(ptr noundef %8, ptr noundef nonnull @.str.112, i32 noundef 0, ptr noundef null, float noundef 0x3F26E05A60000000, float noundef 0x400921FB60000000, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.6, float noundef 0x3F91DF46A0000000, float noundef 0x400921FB60000000) #10
  tail call void @RNA_def_property_float_default(ptr noundef %9, float noundef 0x3F91DF46A0000000) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_linked_flat_faces_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %7) #10
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !162
  %12 = tail call float @RNA_float_get(ptr noundef %11, ptr noundef nonnull @.str.112) #10
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %9, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #10
  store ptr null, ptr %3, align 8, !tbaa !109
  %13 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #10
  %14 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 3, ptr %14, align 4, !tbaa !55
  %15 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %15, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %16, align 8, !tbaa !58
  %17 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  store ptr %18, ptr %4, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #10
  %19 = load ptr, ptr %16, align 8, !tbaa !58
  %20 = call ptr %19(ptr noundef nonnull %4) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %84, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %24 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %25 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %26 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %27 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %28 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  br label %29

29:                                               ; preds = %22, %80
  %30 = phi ptr [ %20, %22 ], [ %82, %80 ]
  %31 = getelementptr inbounds %struct.BMHeader, ptr %30, i64 0, i32 3
  %32 = load i8, ptr %31, align 1, !tbaa !61
  %33 = and i8 %32, 19
  %34 = icmp eq i8 %33, 1
  br i1 %34, label %35, label %80

35:                                               ; preds = %29, %77
  %36 = phi ptr [ %78, %77 ], [ %30, %29 ]
  call void @BM_face_select_set(ptr noundef %9, ptr noundef nonnull %36, i8 noundef zeroext 1) #10
  %37 = getelementptr inbounds %struct.BMHeader, ptr %36, i64 0, i32 3
  %38 = load i8, ptr %37, align 1, !tbaa !61
  %39 = or i8 %38, 16
  store i8 %39, ptr %37, align 1, !tbaa !61
  store i8 11, ptr %23, align 4, !tbaa !55
  store ptr @bmiter__loop_of_face_begin, ptr %24, align 8, !tbaa !57
  store ptr @bmiter__loop_of_face_step, ptr %25, align 8, !tbaa !58
  store ptr %36, ptr %5, align 8, !tbaa !60
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %5) #10
  %40 = load ptr, ptr %25, align 8, !tbaa !58
  %41 = call ptr %40(ptr noundef nonnull %5) #10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %72, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.BMFace, ptr %36, i64 0, i32 4
  br label %45

45:                                               ; preds = %43, %68
  %46 = phi ptr [ %41, %43 ], [ %70, %68 ]
  store i8 13, ptr %26, align 4, !tbaa !55
  store ptr @bmiter__loop_of_loop_begin, ptr %27, align 8, !tbaa !57
  store ptr @bmiter__loop_of_loop_step, ptr %28, align 8, !tbaa !58
  store ptr %46, ptr %6, align 8, !tbaa !60
  call void @bmiter__loop_of_loop_begin(ptr noundef nonnull %6) #10
  %47 = load ptr, ptr %28, align 8, !tbaa !58
  %48 = call ptr %47(ptr noundef nonnull %6) #10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %68, label %50

50:                                               ; preds = %45, %64
  %51 = phi ptr [ %66, %64 ], [ %48, %45 ]
  %52 = getelementptr inbounds %struct.BMLoop, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !256
  %54 = getelementptr inbounds %struct.BMHeader, ptr %53, i64 0, i32 3
  %55 = load i8, ptr %54, align 1, !tbaa !61
  %56 = and i8 %55, 18
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.BMFace, ptr %53, i64 0, i32 4
  %60 = call float @angle_normalized_v3v3(ptr noundef nonnull %44, ptr noundef nonnull %59) #10
  %61 = fcmp olt float %60, %12
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load ptr, ptr %52, align 8, !tbaa !256
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %3, ptr noundef %63, ptr noundef %13) #10
  br label %64

64:                                               ; preds = %58, %62, %50
  %65 = load ptr, ptr %28, align 8, !tbaa !58
  %66 = call ptr %65(ptr noundef nonnull %6) #10
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %50, !llvm.loop !258

68:                                               ; preds = %64, %45
  %69 = load ptr, ptr %25, align 8, !tbaa !58
  %70 = call ptr %69(ptr noundef nonnull %5) #10
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %45, !llvm.loop !259

72:                                               ; preds = %68, %35
  %73 = load ptr, ptr %3, align 8, !tbaa !109
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %3, ptr noundef %13) #10
  br label %77

77:                                               ; preds = %72, %75
  %78 = phi ptr [ %76, %75 ], [ null, %72 ]
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %35, !llvm.loop !260

80:                                               ; preds = %77, %29
  %81 = load ptr, ptr %16, align 8, !tbaa !58
  %82 = call ptr %81(ptr noundef nonnull %4) #10
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %29, !llvm.loop !261

84:                                               ; preds = %80, %2
  call void @BLI_mempool_destroy(ptr noundef %13) #10
  store ptr null, ptr %3, align 8, !tbaa !109
  %85 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %86 = load ptr, ptr %85, align 8, !tbaa !42
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %86) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_select_non_manifold(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.117, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.118, ptr %2, align 8, !tbaa !155
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.119, ptr %3, align 8, !tbaa !154
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_non_manifold_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.49) #10
  %10 = load ptr, ptr %7, align 8, !tbaa !160
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.120, i32 noundef 1, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122) #10
  %12 = load ptr, ptr %7, align 8, !tbaa !160
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.123, i32 noundef 1, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125) #10
  %14 = load ptr, ptr %7, align 8, !tbaa !160
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.126, i32 noundef 1, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128) #10
  %16 = load ptr, ptr %7, align 8, !tbaa !160
  %17 = tail call ptr @RNA_def_boolean(ptr noundef %16, ptr noundef nonnull @.str.129, i32 noundef 1, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.131) #10
  %18 = load ptr, ptr %7, align 8, !tbaa !160
  %19 = tail call ptr @RNA_def_boolean(ptr noundef %18, ptr noundef nonnull @.str.132, i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.133) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_non_manifold_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !162
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.120) #10
  %9 = load ptr, ptr %6, align 8, !tbaa !162
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.123) #10
  %11 = load ptr, ptr %6, align 8, !tbaa !162
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.126) #10
  %13 = load ptr, ptr %6, align 8, !tbaa !162
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.129) #10
  %15 = load ptr, ptr %6, align 8, !tbaa !162
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.132) #10
  %17 = load ptr, ptr %6, align 8, !tbaa !162
  %18 = tail call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.47) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  tail call void @EDBM_flag_disable_all(ptr noundef %5, i8 noundef zeroext 1) #10
  br label %21

21:                                               ; preds = %20, %2
  %22 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 12
  %23 = load i16, ptr %22, align 4, !tbaa !66
  %24 = icmp eq i16 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !170
  tail call void @BKE_report(ptr noundef %27, i32 noundef 32, ptr noundef nonnull @.str.222) #10
  br label %151

28:                                               ; preds = %21
  %29 = and i32 %16, 255
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %5, align 8, !tbaa !48
  %33 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %33, align 4, !tbaa !55
  %34 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %34, align 8, !tbaa !57
  %35 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %35, align 8, !tbaa !58
  %36 = getelementptr inbounds %struct.BMesh, ptr %32, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !59
  store ptr %37, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %38 = load ptr, ptr %35, align 8, !tbaa !58
  %39 = call ptr %38(ptr noundef nonnull %3) #10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %56, label %41

41:                                               ; preds = %31, %52
  %42 = phi ptr [ %54, %52 ], [ %39, %31 ]
  %43 = getelementptr inbounds %struct.BMHeader, ptr %42, i64 0, i32 3
  %44 = load i8, ptr %43, align 1, !tbaa !61
  %45 = and i8 %44, 2
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = call zeroext i8 @BM_vert_is_manifold(ptr noundef nonnull %42) #10
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load ptr, ptr %5, align 8, !tbaa !48
  call void @BM_vert_select_set(ptr noundef %51, ptr noundef nonnull %42, i8 noundef zeroext 1) #10
  br label %52

52:                                               ; preds = %41, %50, %47
  %53 = load ptr, ptr %35, align 8, !tbaa !58
  %54 = call ptr %53(ptr noundef nonnull %3) #10
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %41, !llvm.loop !262

56:                                               ; preds = %52, %31, %28
  %57 = and i32 %8, 255
  %58 = icmp ne i32 %57, 0
  %59 = and i32 %10, 255
  %60 = icmp ne i32 %59, 0
  %61 = select i1 %58, i1 true, i1 %60
  %62 = and i32 %12, 255
  %63 = icmp ne i32 %62, 0
  %64 = select i1 %61, i1 true, i1 %63
  %65 = and i32 %14, 255
  %66 = icmp ne i32 %65, 0
  %67 = select i1 %64, i1 true, i1 %66
  br i1 %67, label %68, label %148

68:                                               ; preds = %56
  %69 = load ptr, ptr %5, align 8, !tbaa !48
  %70 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %70, align 4, !tbaa !55
  %71 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %71, align 8, !tbaa !57
  %72 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %72, align 8, !tbaa !58
  %73 = getelementptr inbounds %struct.BMesh, ptr %69, i64 0, i32 10
  %74 = load ptr, ptr %73, align 8, !tbaa !67
  store ptr %74, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %75 = load ptr, ptr %72, align 8, !tbaa !58
  %76 = call ptr %75(ptr noundef nonnull %3) #10
  %77 = icmp eq ptr %76, null
  br i1 %77, label %148, label %78

78:                                               ; preds = %68, %144
  %79 = phi ptr [ %146, %144 ], [ %76, %68 ]
  %80 = getelementptr inbounds %struct.BMHeader, ptr %79, i64 0, i32 3
  %81 = load i8, ptr %80, align 1, !tbaa !61
  %82 = and i8 %81, 2
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %144

84:                                               ; preds = %78
  br i1 %58, label %85, label %89

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.BMEdge, ptr %79, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !187
  %88 = icmp eq ptr %87, null
  br i1 %88, label %142, label %89

89:                                               ; preds = %85, %84
  br i1 %60, label %90, label %102

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.BMEdge, ptr %79, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !187
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.BMLoop, ptr %92, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !188
  %97 = icmp eq ptr %96, %92
  %98 = zext i1 %97 to i8
  br label %99

99:                                               ; preds = %90, %94
  %100 = phi i8 [ 0, %90 ], [ %98, %94 ]
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %142

102:                                              ; preds = %99, %89
  br i1 %66, label %103, label %138

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.BMEdge, ptr %79, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !187
  %106 = icmp eq ptr %105, null
  br i1 %106, label %116, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.BMLoop, ptr %105, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !188
  %110 = icmp eq ptr %109, %105
  br i1 %110, label %116, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.BMLoop, ptr %109, i64 0, i32 4
  %113 = load ptr, ptr %112, align 8, !tbaa !188
  %114 = icmp eq ptr %113, %105
  %115 = zext i1 %114 to i8
  br label %116

116:                                              ; preds = %103, %107, %111
  %117 = phi i8 [ 0, %107 ], [ 0, %103 ], [ %115, %111 ]
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %138, label %119

119:                                              ; preds = %116
  br i1 %106, label %135, label %120

120:                                              ; preds = %119
  %121 = getelementptr inbounds %struct.BMLoop, ptr %105, i64 0, i32 4
  %122 = load ptr, ptr %121, align 8, !tbaa !188
  %123 = icmp eq ptr %122, %105
  br i1 %123, label %135, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.BMLoop, ptr %122, i64 0, i32 4
  %126 = load ptr, ptr %125, align 8, !tbaa !188
  %127 = icmp eq ptr %126, %105
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.BMLoop, ptr %122, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !263
  %131 = getelementptr inbounds %struct.BMLoop, ptr %105, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !263
  %133 = icmp ne ptr %130, %132
  %134 = zext i1 %133 to i8
  br label %135

135:                                              ; preds = %119, %120, %124, %128
  %136 = phi i8 [ 0, %124 ], [ 0, %120 ], [ 0, %119 ], [ %134, %128 ]
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %135, %116, %102
  br i1 %63, label %139, label %144

139:                                              ; preds = %138
  %140 = call i32 @BM_edge_face_count(ptr noundef nonnull %79) #10
  %141 = icmp sgt i32 %140, 2
  br i1 %141, label %142, label %144

142:                                              ; preds = %139, %135, %99, %85
  %143 = load ptr, ptr %5, align 8, !tbaa !48
  call void @BM_edge_select_set(ptr noundef %143, ptr noundef nonnull %79, i8 noundef zeroext 1) #10
  br label %144

144:                                              ; preds = %78, %142, %139, %138
  %145 = load ptr, ptr %72, align 8, !tbaa !58
  %146 = call ptr %145(ptr noundef nonnull %3) #10
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %78, !llvm.loop !264

148:                                              ; preds = %144, %68, %56
  %149 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %150 = load ptr, ptr %149, align 8, !tbaa !42
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %150) #10
  call void @EDBM_selectmode_flush(ptr noundef %5) #10
  br label %151

151:                                              ; preds = %148, %25
  %152 = phi i32 [ 2, %25 ], [ 4, %148 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret i32 %152
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_select_random(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.134, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.135, ptr %2, align 8, !tbaa !155
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.136, ptr %3, align 8, !tbaa !154
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_random_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = tail call ptr @RNA_def_float_percentage(ptr noundef %8, ptr noundef nonnull @.str.137, float noundef 5.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+02, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139, float noundef 0.000000e+00, float noundef 1.000000e+02) #10
  tail call void @WM_operator_properties_select_action_simple(ptr noundef nonnull %0, i32 noundef 1) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_random_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !162
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.36) #10
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i8
  %11 = load ptr, ptr %6, align 8, !tbaa !162
  %12 = tail call float @RNA_float_get(ptr noundef %11, ptr noundef nonnull @.str.137) #10
  %13 = fdiv float %12, 1.000000e+02
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %14 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 12
  %15 = load i16, ptr %14, align 4, !tbaa !66
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  br i1 %18, label %44, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %22, align 4, !tbaa !55
  %23 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %23, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %19, align 8, !tbaa !58
  %24 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  store ptr %25, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %26 = load ptr, ptr %19, align 8, !tbaa !58
  %27 = call ptr %26(ptr noundef nonnull %3) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %92, label %29

29:                                               ; preds = %20, %40
  %30 = phi ptr [ %42, %40 ], [ %27, %20 ]
  %31 = getelementptr inbounds %struct.BMHeader, ptr %30, i64 0, i32 3
  %32 = load i8, ptr %31, align 1, !tbaa !61
  %33 = and i8 %32, 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = call float @BLI_frand() #10
  %37 = fcmp olt float %36, %13
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load ptr, ptr %5, align 8, !tbaa !48
  call void @BM_vert_select_set(ptr noundef %39, ptr noundef nonnull %30, i8 noundef zeroext %10) #10
  br label %40

40:                                               ; preds = %29, %35, %38
  %41 = load ptr, ptr %19, align 8, !tbaa !58
  %42 = call ptr %41(ptr noundef nonnull %3) #10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %92, label %29, !llvm.loop !265

44:                                               ; preds = %2
  %45 = and i32 %16, 2
  %46 = icmp eq i32 %45, 0
  %47 = load ptr, ptr %5, align 8, !tbaa !48
  %48 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %49 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  br i1 %46, label %71, label %50

50:                                               ; preds = %44
  store i8 2, ptr %48, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %49, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %19, align 8, !tbaa !58
  %51 = getelementptr inbounds %struct.BMesh, ptr %47, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !67
  store ptr %52, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %53 = load ptr, ptr %19, align 8, !tbaa !58
  %54 = call ptr %53(ptr noundef nonnull %3) #10
  %55 = icmp eq ptr %54, null
  br i1 %55, label %92, label %56

56:                                               ; preds = %50, %67
  %57 = phi ptr [ %69, %67 ], [ %54, %50 ]
  %58 = getelementptr inbounds %struct.BMHeader, ptr %57, i64 0, i32 3
  %59 = load i8, ptr %58, align 1, !tbaa !61
  %60 = and i8 %59, 2
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = call float @BLI_frand() #10
  %64 = fcmp olt float %63, %13
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load ptr, ptr %5, align 8, !tbaa !48
  call void @BM_edge_select_set(ptr noundef %66, ptr noundef nonnull %57, i8 noundef zeroext %10) #10
  br label %67

67:                                               ; preds = %56, %62, %65
  %68 = load ptr, ptr %19, align 8, !tbaa !58
  %69 = call ptr %68(ptr noundef nonnull %3) #10
  %70 = icmp eq ptr %69, null
  br i1 %70, label %92, label %56, !llvm.loop !266

71:                                               ; preds = %44
  store i8 3, ptr %48, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %49, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %19, align 8, !tbaa !58
  %72 = getelementptr inbounds %struct.BMesh, ptr %47, i64 0, i32 12
  %73 = load ptr, ptr %72, align 8, !tbaa !69
  store ptr %73, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %74 = load ptr, ptr %19, align 8, !tbaa !58
  %75 = call ptr %74(ptr noundef nonnull %3) #10
  %76 = icmp eq ptr %75, null
  br i1 %76, label %92, label %77

77:                                               ; preds = %71, %88
  %78 = phi ptr [ %90, %88 ], [ %75, %71 ]
  %79 = getelementptr inbounds %struct.BMHeader, ptr %78, i64 0, i32 3
  %80 = load i8, ptr %79, align 1, !tbaa !61
  %81 = and i8 %80, 2
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = call float @BLI_frand() #10
  %85 = fcmp olt float %84, %13
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load ptr, ptr %5, align 8, !tbaa !48
  call void @BM_face_select_set(ptr noundef %87, ptr noundef nonnull %78, i8 noundef zeroext %10) #10
  br label %88

88:                                               ; preds = %77, %83, %86
  %89 = load ptr, ptr %19, align 8, !tbaa !58
  %90 = call ptr %89(ptr noundef nonnull %3) #10
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %77, !llvm.loop !267

92:                                               ; preds = %40, %67, %88, %20, %50, %71
  br i1 %9, label %93, label %94

93:                                               ; preds = %92
  call void @EDBM_selectmode_flush(ptr noundef %5) #10
  br label %95

94:                                               ; preds = %92
  call void @EDBM_deselect_flush(ptr noundef %5) #10
  br label %95

95:                                               ; preds = %94, %93
  %96 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %97 = load ptr, ptr %96, align 8, !tbaa !42
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %97) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret i32 4
}

declare ptr @RNA_def_float_percentage(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @WM_operator_properties_select_action_simple(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_select_ungrouped(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.140, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.141, ptr %2, align 8, !tbaa !154
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.142, ptr %3, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_ungrouped_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edbm_select_ungrouped_poll, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.49) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_ungrouped_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #10
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 24
  %8 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %7, i32 noundef 2) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !162
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.47) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @EDBM_flag_disable_all(ptr noundef nonnull %5, i8 noundef zeroext 1) #10
  br label %14

14:                                               ; preds = %13, %2
  %15 = load ptr, ptr %5, align 8, !tbaa !48
  %16 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %16, align 4, !tbaa !55
  %17 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %17, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %18, align 8, !tbaa !58
  %19 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  store ptr %20, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %21 = load ptr, ptr %18, align 8, !tbaa !58
  %22 = call ptr %21(ptr noundef nonnull %3) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %14
  %25 = sext i32 %8 to i64
  br label %26

26:                                               ; preds = %24, %41
  %27 = phi ptr [ %22, %24 ], [ %43, %41 ]
  %28 = getelementptr inbounds %struct.BMHeader, ptr %27, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !61
  %30 = and i8 %29, 2
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load ptr, ptr %27, align 8, !tbaa !268
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, ptr %33, i64 %25
  %37 = load ptr, ptr %36, align 8, !tbaa !269
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %32
  %40 = load ptr, ptr %5, align 8, !tbaa !48
  call void @BM_vert_select_set(ptr noundef %40, ptr noundef nonnull %27, i8 noundef zeroext 1) #10
  br label %41

41:                                               ; preds = %35, %39, %26
  %42 = load ptr, ptr %18, align 8, !tbaa !58
  %43 = call ptr %42(ptr noundef nonnull %3) #10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %26, !llvm.loop !271

45:                                               ; preds = %41, %14
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #10
  %46 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %47 = load ptr, ptr %46, align 8, !tbaa !42
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %47) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_ungrouped_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_editmesh(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #10
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 24
  %9 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %8, i32 noundef 2) #10
  %10 = getelementptr inbounds %struct.BMEditMesh, ptr %6, i64 0, i32 12
  %11 = load i16, ptr %10, align 4, !tbaa !66
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 25
  %16 = load ptr, ptr %15, align 8, !tbaa !272
  %17 = icmp eq ptr %16, null
  %18 = icmp eq i32 %9, -1
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %4
  %21 = phi ptr [ @.str.223, %4 ], [ @.str.224, %14 ]
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull %21) #10
  br label %22

22:                                               ; preds = %20, %14, %1
  %23 = phi i32 [ 0, %1 ], [ 1, %14 ], [ 0, %20 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_select_axis(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.155, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.156, ptr %2, align 8, !tbaa !155
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.157, ptr %3, align 8, !tbaa !154
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_axis_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.158, ptr noundef nonnull @MESH_OT_select_axis.axis_mode_items, i32 noundef 0, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.160) #10
  %10 = load ptr, ptr %7, align 8, !tbaa !160
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.161, ptr noundef nonnull @MESH_OT_select_axis.axis_items_xyz, i32 noundef 0, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_axis_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #10
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = tail call ptr @BM_mesh_active_vert_get(ptr noundef %6) #10
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !162
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.161) #10
  %11 = load ptr, ptr %8, align 8, !tbaa !162
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.158) #10
  %13 = icmp eq ptr %7, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !170
  tail call void @BKE_report(ptr noundef %16, i32 noundef 16, ptr noundef nonnull @.str.225) #10
  br label %67

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %18 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #10
  %19 = getelementptr inbounds %struct.ToolSettings, ptr %18, i64 0, i32 5
  %20 = load float, ptr %19, align 4, !tbaa !93
  %21 = sext i32 %10 to i64
  %22 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !121
  switch i32 %12, label %28 [
    i32 0, label %24
    i32 1, label %26
  ]

24:                                               ; preds = %17
  %25 = fsub float %23, %20
  br label %28

26:                                               ; preds = %17
  %27 = fadd float %20, %23
  br label %28

28:                                               ; preds = %17, %26, %24
  %29 = phi float [ %25, %24 ], [ %27, %26 ], [ %23, %17 ]
  %30 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %30, align 4, !tbaa !55
  %31 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %31, align 8, !tbaa !57
  %32 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %32, align 8, !tbaa !58
  %33 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !59
  store ptr %34, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %35 = load ptr, ptr %32, align 8, !tbaa !58
  %36 = call ptr %35(ptr noundef nonnull %3) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %64, label %38

38:                                               ; preds = %28, %60
  %39 = phi ptr [ %62, %60 ], [ %36, %28 ]
  %40 = getelementptr inbounds %struct.BMHeader, ptr %39, i64 0, i32 3
  %41 = load i8, ptr %40, align 1, !tbaa !61
  %42 = and i8 %41, 2
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
  switch i32 %12, label %60 [
    i32 -1, label %45
    i32 0, label %51
    i32 1, label %55
  ]

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.BMVert, ptr %39, i64 0, i32 2, i64 %21
  %47 = load float, ptr %46, align 4, !tbaa !121
  %48 = fsub float %47, %29
  %49 = call float @llvm.fabs.f32(float %48)
  %50 = fcmp olt float %49, %20
  br i1 %50, label %59, label %60

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.BMVert, ptr %39, i64 0, i32 2, i64 %21
  %53 = load float, ptr %52, align 4, !tbaa !121
  %54 = fcmp ogt float %53, %29
  br i1 %54, label %59, label %60

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.BMVert, ptr %39, i64 0, i32 2, i64 %21
  %57 = load float, ptr %56, align 4, !tbaa !121
  %58 = fcmp olt float %57, %29
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51, %45
  call void @BM_vert_select_set(ptr noundef %6, ptr noundef nonnull %39, i8 noundef zeroext 1) #10
  br label %60

60:                                               ; preds = %59, %38, %55, %51, %45, %44
  %61 = load ptr, ptr %32, align 8, !tbaa !58
  %62 = call ptr %61(ptr noundef nonnull %3) #10
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %38, !llvm.loop !273

64:                                               ; preds = %60, %28
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #10
  %65 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %66 = load ptr, ptr %65, align 8, !tbaa !42
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %66) #10
  br label %67

67:                                               ; preds = %64, %14
  %68 = phi i32 [ 2, %14 ], [ 4, %64 ]
  ret i32 %68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_select_next_loop(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.164, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.165, ptr %2, align 8, !tbaa !154
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.166, ptr %3, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_next_loop_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_select_next_loop_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %8, align 4, !tbaa !55
  %9 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %9, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %10, align 8, !tbaa !58
  %11 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  store ptr %12, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %13 = load ptr, ptr %10, align 8, !tbaa !58
  %14 = call ptr %13(ptr noundef nonnull %3) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %2, %16
  %17 = phi ptr [ %22, %16 ], [ %14, %2 ]
  %18 = getelementptr inbounds %struct.BMHeader, ptr %17, i64 0, i32 3
  %19 = load i8, ptr %18, align 1, !tbaa !61
  %20 = and i8 %19, -17
  store i8 %20, ptr %18, align 1, !tbaa !61
  %21 = load ptr, ptr %10, align 8, !tbaa !58
  %22 = call ptr %21(ptr noundef nonnull %3) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %16, !llvm.loop !274

24:                                               ; preds = %16, %2
  %25 = load ptr, ptr %6, align 8, !tbaa !48
  store i8 3, ptr %8, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %9, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %10, align 8, !tbaa !58
  %26 = getelementptr inbounds %struct.BMesh, ptr %25, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  store ptr %27, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %28 = load ptr, ptr %10, align 8, !tbaa !58
  %29 = call ptr %28(ptr noundef nonnull %3) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %65, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %33 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %34 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  br label %35

35:                                               ; preds = %31, %61
  %36 = phi ptr [ %29, %31 ], [ %63, %61 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  store i8 11, ptr %32, align 4, !tbaa !55
  store ptr @bmiter__loop_of_face_begin, ptr %33, align 8, !tbaa !57
  store ptr @bmiter__loop_of_face_step, ptr %34, align 8, !tbaa !58
  store ptr %36, ptr %4, align 8, !tbaa !60
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #10
  %37 = load ptr, ptr %34, align 8, !tbaa !58
  %38 = call ptr %37(ptr noundef nonnull %4) #10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %61, label %40

40:                                               ; preds = %35, %57
  %41 = phi ptr [ %59, %57 ], [ %38, %35 ]
  %42 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !263
  %44 = getelementptr inbounds %struct.BMHeader, ptr %43, i64 0, i32 3
  %45 = load i8, ptr %44, align 1, !tbaa !61
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !275
  %51 = getelementptr inbounds %struct.BMLoop, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !263
  %53 = getelementptr inbounds %struct.BMHeader, ptr %52, i64 0, i32 3
  %54 = load i8, ptr %53, align 1, !tbaa !61
  %55 = or i8 %54, 16
  store i8 %55, ptr %53, align 1, !tbaa !61
  %56 = load ptr, ptr %6, align 8, !tbaa !48
  call void @BM_vert_select_set(ptr noundef %56, ptr noundef %43, i8 noundef zeroext 0) #10
  br label %57

57:                                               ; preds = %40, %48
  %58 = load ptr, ptr %34, align 8, !tbaa !58
  %59 = call ptr %58(ptr noundef nonnull %4) #10
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %40, !llvm.loop !276

61:                                               ; preds = %57, %35
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  %62 = load ptr, ptr %10, align 8, !tbaa !58
  %63 = call ptr %62(ptr noundef nonnull %3) #10
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %35, !llvm.loop !277

65:                                               ; preds = %61, %24
  %66 = load ptr, ptr %6, align 8, !tbaa !48
  store i8 1, ptr %8, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %9, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %10, align 8, !tbaa !58
  %67 = getelementptr inbounds %struct.BMesh, ptr %66, i64 0, i32 9
  %68 = load ptr, ptr %67, align 8, !tbaa !59
  store ptr %68, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %69 = load ptr, ptr %10, align 8, !tbaa !58
  %70 = call ptr %69(ptr noundef nonnull %3) #10
  %71 = icmp eq ptr %70, null
  br i1 %71, label %84, label %72

72:                                               ; preds = %65, %80
  %73 = phi ptr [ %82, %80 ], [ %70, %65 ]
  %74 = getelementptr inbounds %struct.BMHeader, ptr %73, i64 0, i32 3
  %75 = load i8, ptr %74, align 1, !tbaa !61
  %76 = and i8 %75, 16
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %72
  %79 = load ptr, ptr %6, align 8, !tbaa !48
  call void @BM_vert_select_set(ptr noundef %79, ptr noundef nonnull %73, i8 noundef zeroext 1) #10
  br label %80

80:                                               ; preds = %72, %78
  %81 = load ptr, ptr %10, align 8, !tbaa !58
  %82 = call ptr %81(ptr noundef nonnull %3) #10
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %72, !llvm.loop !278

84:                                               ; preds = %80, %65
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %5) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_region_to_loop(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.167, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.168, ptr %2, align 8, !tbaa !154
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.169, ptr %3, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_region_to_loop_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_region_to_loop_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %8, i8 noundef zeroext 2, i8 noundef zeroext 16, i8 noundef zeroext 0) #10
  %9 = load ptr, ptr %7, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %10, align 4, !tbaa !55
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %11, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %12, align 8, !tbaa !58
  %13 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  store ptr %14, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %15 = load ptr, ptr %12, align 8, !tbaa !58
  %16 = call ptr %15(ptr noundef nonnull %3) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %75, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %20 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %21 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %22 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %23 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %24 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  br label %25

25:                                               ; preds = %18, %71
  %26 = phi ptr [ %16, %18 ], [ %73, %71 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  store i8 11, ptr %19, align 4, !tbaa !55
  store ptr @bmiter__loop_of_face_begin, ptr %20, align 8, !tbaa !57
  store ptr @bmiter__loop_of_face_step, ptr %21, align 8, !tbaa !58
  store ptr %26, ptr %4, align 8, !tbaa !60
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #10
  %27 = load ptr, ptr %21, align 8, !tbaa !58
  %28 = call ptr %27(ptr noundef nonnull %4) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %71, label %30

30:                                               ; preds = %25, %67
  %31 = phi ptr [ %69, %67 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !241
  store i8 14, ptr %22, align 4, !tbaa !55
  store ptr @bmiter__loop_of_edge_begin, ptr %23, align 8, !tbaa !57
  store ptr @bmiter__loop_of_edge_step, ptr %24, align 8, !tbaa !58
  store ptr %33, ptr %5, align 8, !tbaa !60
  call void @bmiter__loop_of_edge_begin(ptr noundef nonnull %5) #10
  %34 = load ptr, ptr %24, align 8, !tbaa !58
  %35 = call ptr %34(ptr noundef nonnull %5) #10
  %36 = icmp eq ptr %35, null
  br i1 %36, label %52, label %37

37:                                               ; preds = %30, %37
  %38 = phi i32 [ %48, %37 ], [ 0, %30 ]
  %39 = phi i32 [ %41, %37 ], [ 0, %30 ]
  %40 = phi ptr [ %50, %37 ], [ %35, %30 ]
  %41 = add nuw nsw i32 %39, 1
  %42 = getelementptr inbounds %struct.BMLoop, ptr %40, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !256
  %44 = getelementptr inbounds %struct.BMHeader, ptr %43, i64 0, i32 3
  %45 = load i8, ptr %44, align 1, !tbaa !61
  %46 = and i8 %45, 1
  %47 = zext nneg i8 %46 to i32
  %48 = add nuw nsw i32 %38, %47
  %49 = load ptr, ptr %24, align 8, !tbaa !58
  %50 = call ptr %49(ptr noundef nonnull %5) #10
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %37, !llvm.loop !279

52:                                               ; preds = %37, %30
  %53 = phi i32 [ 0, %30 ], [ %41, %37 ]
  %54 = phi i32 [ 0, %30 ], [ %48, %37 ]
  %55 = icmp ne i32 %53, %54
  %56 = icmp ne i32 %54, 0
  %57 = and i1 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = icmp eq i32 %54, 1
  %60 = icmp eq i32 %53, 1
  %61 = and i1 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58, %52
  %63 = load ptr, ptr %32, align 8, !tbaa !241
  %64 = getelementptr inbounds %struct.BMHeader, ptr %63, i64 0, i32 3
  %65 = load i8, ptr %64, align 1, !tbaa !61
  %66 = or i8 %65, 16
  store i8 %66, ptr %64, align 1, !tbaa !61
  br label %67

67:                                               ; preds = %62, %58
  %68 = load ptr, ptr %21, align 8, !tbaa !58
  %69 = call ptr %68(ptr noundef nonnull %4) #10
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %30, !llvm.loop !280

71:                                               ; preds = %67, %25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  %72 = load ptr, ptr %12, align 8, !tbaa !58
  %73 = call ptr %72(ptr noundef nonnull %3) #10
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %25, !llvm.loop !281

75:                                               ; preds = %71, %2
  call void @EDBM_flag_disable_all(ptr noundef nonnull %7, i8 noundef zeroext 1) #10
  %76 = load ptr, ptr %7, align 8, !tbaa !48
  store i8 2, ptr %10, align 4, !tbaa !55
  store ptr @bmiter__elem_of_mesh_begin, ptr %11, align 8, !tbaa !57
  store ptr @bmiter__elem_of_mesh_step, ptr %12, align 8, !tbaa !58
  %77 = getelementptr inbounds %struct.BMesh, ptr %76, i64 0, i32 10
  %78 = load ptr, ptr %77, align 8, !tbaa !67
  store ptr %78, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %79 = load ptr, ptr %12, align 8, !tbaa !58
  %80 = call ptr %79(ptr noundef nonnull %3) #10
  %81 = icmp eq ptr %80, null
  br i1 %81, label %94, label %82

82:                                               ; preds = %75, %90
  %83 = phi ptr [ %92, %90 ], [ %80, %75 ]
  %84 = getelementptr inbounds %struct.BMHeader, ptr %83, i64 0, i32 3
  %85 = load i8, ptr %84, align 1, !tbaa !61
  %86 = and i8 %85, 16
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = load ptr, ptr %7, align 8, !tbaa !48
  call void @BM_edge_select_set(ptr noundef %89, ptr noundef nonnull %83, i8 noundef zeroext 1) #10
  br label %90

90:                                               ; preds = %82, %88
  %91 = load ptr, ptr %12, align 8, !tbaa !58
  %92 = call ptr %91(ptr noundef nonnull %3) #10
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %82, !llvm.loop !282

94:                                               ; preds = %90, %75
  %95 = getelementptr inbounds %struct.BMEditMesh, ptr %7, i64 0, i32 12
  %96 = load i16, ptr %95, align 4, !tbaa !66
  %97 = icmp eq i16 %96, 4
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i16 2, ptr %95, align 4, !tbaa !66
  call void @EDBM_selectmode_set(ptr noundef nonnull %7)
  call void @EDBM_selectmode_to_scene(ptr noundef %0) #10
  br label %99

99:                                               ; preds = %98, %94
  %100 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %101 = load ptr, ptr %100, align 8, !tbaa !42
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %101) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_loop_to_region(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.170, ptr %0, align 8, !tbaa !151
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.171, ptr %2, align 8, !tbaa !154
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.172, ptr %3, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_loop_to_region_exec, ptr %4, align 8, !tbaa !157
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.173, i32 noundef 0, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.175) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_loop_to_region_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !162
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.173) #10
  %9 = trunc i32 %8 to i8
  %10 = load ptr, ptr %5, align 8, !tbaa !48
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %10, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #10
  %11 = tail call fastcc i32 @loop_find_regions(ptr noundef nonnull %5, i8 noundef zeroext %9)
  %12 = icmp eq i8 %9, 0
  %13 = zext i1 %12 to i8
  %14 = tail call fastcc i32 @loop_find_regions(ptr noundef nonnull %5, i8 noundef zeroext %13)
  %15 = load ptr, ptr %5, align 8, !tbaa !48
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %15, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #10
  %16 = icmp sle i32 %11, %14
  %17 = zext i1 %16 to i32
  %18 = and i32 %8, 255
  %19 = icmp eq i32 %18, %17
  %20 = zext i1 %12 to i32
  %21 = select i1 %19, i32 %20, i32 %8
  %22 = trunc i32 %21 to i8
  %23 = tail call fastcc i32 @loop_find_regions(ptr noundef nonnull %5, i8 noundef zeroext %22)
  tail call void @EDBM_flag_disable_all(ptr noundef nonnull %5, i8 noundef zeroext 1) #10
  %24 = load ptr, ptr %5, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %25, align 4, !tbaa !55
  %26 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %26, align 8, !tbaa !57
  %27 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %27, align 8, !tbaa !58
  %28 = getelementptr inbounds %struct.BMesh, ptr %24, i64 0, i32 12
  %29 = load ptr, ptr %28, align 8, !tbaa !69
  store ptr %29, ptr %3, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #10
  %30 = load ptr, ptr %27, align 8, !tbaa !58
  %31 = call ptr %30(ptr noundef nonnull %3) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %2, %41
  %34 = phi ptr [ %43, %41 ], [ %31, %2 ]
  %35 = getelementptr inbounds %struct.BMHeader, ptr %34, i64 0, i32 3
  %36 = load i8, ptr %35, align 1, !tbaa !61
  %37 = and i8 %36, 18
  %38 = icmp eq i8 %37, 16
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load ptr, ptr %5, align 8, !tbaa !48
  call void @BM_face_select_set(ptr noundef %40, ptr noundef nonnull %34, i8 noundef zeroext 1) #10
  br label %41

41:                                               ; preds = %33, %39
  %42 = load ptr, ptr %27, align 8, !tbaa !58
  %43 = call ptr %42(ptr noundef nonnull %3) #10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %33, !llvm.loop !283

45:                                               ; preds = %41, %2
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #10
  %46 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %47 = load ptr, ptr %46, align 8, !tbaa !42
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %47) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret i32 4
}

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

declare void @bmiter__face_of_edge_begin(ptr noundef) #2

declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

declare void @bmiter__edge_of_face_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_face_step(ptr noundef) #2

declare void @bmiter__loop_of_face_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

declare void @bmiter__loop_of_loop_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_loop_step(ptr noundef) #2

declare void @bmiter__loop_of_edge_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_edge_step(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

declare float @dist_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @line_point_factor_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare zeroext i8 @ED_view3d_clipping_test(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @EDBM_op_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @EDBM_op_finish(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @RNA_enum_items_add_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BM_mesh_calc_face_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BM_face_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BM_mesh_region_match(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @walker_select(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.BMWalker, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #10
  call void @BMW_init(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %1, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i32 noundef 1, i32 noundef 0) #10
  %7 = call ptr @BMW_begin(ptr noundef nonnull %5, ptr noundef %2) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = icmp eq i8 %3, 0
  br label %11

11:                                               ; preds = %9, %15
  %12 = phi ptr [ %7, %9 ], [ %16, %15 ]
  br i1 %10, label %13, label %15

13:                                               ; preds = %11
  %14 = call zeroext i8 @_bm_select_history_remove(ptr noundef %6, ptr noundef nonnull %12) #10
  br label %15

15:                                               ; preds = %13, %11
  call void @BM_elem_select_set(ptr noundef %6, ptr noundef nonnull %12, i8 noundef zeroext %3) #10
  %16 = call ptr @BMW_step(ptr noundef nonnull %5) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %11, !llvm.loop !184

18:                                               ; preds = %15, %4
  call void @BMW_end(ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #10
  ret void
}

declare void @BMW_init(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BMW_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_elem_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BMW_step(ptr noundef) local_unnamed_addr #2

declare void @BMW_end(ptr noundef) local_unnamed_addr #2

declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #2

declare float @ED_view3d_select_dist_px() local_unnamed_addr #2

declare i32 @ED_view3d_project_float_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_face_calc_center_mean(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @walker_select_count(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = alloca %struct.BMWalker, align 8
  %8 = alloca [2 x i32], align 8
  %9 = load ptr, ptr %0, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 0, ptr %8, align 8
  call void @BMW_init(ptr noundef nonnull %7, ptr noundef %9, i32 noundef %1, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i32 noundef 1, i32 noundef 0) #10
  %10 = call ptr @BMW_begin(ptr noundef nonnull %7, ptr noundef %2) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  br label %14

14:                                               ; preds = %12, %31
  %15 = phi ptr [ %10, %12 ], [ %32, %31 ]
  %16 = getelementptr inbounds %struct.BMHeader, ptr %15, i64 0, i32 3
  %17 = load i8, ptr %16, align 1, !tbaa !61
  %18 = and i8 %17, 1
  %19 = icmp ne i8 %18, %3
  %20 = zext i1 %19 to i64
  %21 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !52
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 4, !tbaa !52
  %24 = load i32, ptr %8, align 8
  %25 = icmp ne i32 %24, 0
  %26 = load i32, ptr %13, align 4
  %27 = icmp ne i32 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %31

29:                                               ; preds = %14
  %30 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  store i32 -1, ptr %30, align 4, !tbaa !52
  store i32 -1, ptr %8, align 8, !tbaa !52
  br label %34

31:                                               ; preds = %14
  %32 = call ptr @BMW_step(ptr noundef nonnull %7) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %14, !llvm.loop !284

34:                                               ; preds = %31, %6, %29
  %35 = load i32, ptr %8, align 8, !tbaa !52
  store i32 %35, ptr %4, align 4, !tbaa !52
  %36 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  %37 = load i32, ptr %36, align 4, !tbaa !52
  store i32 %37, ptr %5, align 4, !tbaa !52
  call void @BMW_end(ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #10
  ret void
}

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_toolflags_ensure(ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_toolflags_clear(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_mesh_report_mirror_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @EDBM_select_more(ptr noundef) local_unnamed_addr #2

declare void @EDBM_select_less(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @walker_deselect_nth(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMWalker, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = load ptr, ptr %0, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #10
  %10 = getelementptr inbounds %struct.BMHeader, ptr %3, i64 0, i32 2
  %11 = load i8, ptr %10, align 4, !tbaa !285
  switch i8 %11, label %51 [
    i8 1, label %12
    i8 2, label %13
    i8 8, label %50
  ]

12:                                               ; preds = %4
  br label %51

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  %14 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 7, ptr %14, align 4, !tbaa !55
  %15 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__vert_of_edge_begin, ptr %15, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__vert_of_edge_step, ptr %16, align 8, !tbaa !58
  store ptr %3, ptr %5, align 8, !tbaa !60
  call void @bmiter__vert_of_edge_begin(ptr noundef nonnull %5) #10
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = call ptr %17(ptr noundef nonnull %5) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %22 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %23 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  br label %24

24:                                               ; preds = %20, %43
  %25 = phi i1 [ %19, %20 ], [ %46, %43 ]
  %26 = phi ptr [ %18, %20 ], [ %45, %43 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  store i8 4, ptr %21, align 4, !tbaa !55
  store ptr @bmiter__edge_of_vert_begin, ptr %22, align 8, !tbaa !57
  store ptr @bmiter__edge_of_vert_step, ptr %23, align 8, !tbaa !58
  store ptr %26, ptr %6, align 8, !tbaa !60
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %6) #10
  %27 = load ptr, ptr %23, align 8, !tbaa !58
  %28 = call ptr %27(ptr noundef nonnull %6) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %24, %38
  %31 = phi ptr [ %40, %38 ], [ %28, %24 ]
  %32 = icmp eq ptr %31, %3
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.BMHeader, ptr %31, i64 0, i32 3
  %35 = load i8, ptr %34, align 1, !tbaa !61
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33, %30
  %39 = load ptr, ptr %23, align 8, !tbaa !58
  %40 = call ptr %39(ptr noundef nonnull %6) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %30, !llvm.loop !286

42:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  br label %47

43:                                               ; preds = %38, %24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  %44 = load ptr, ptr %16, align 8, !tbaa !58
  %45 = call ptr %44(ptr noundef nonnull %5) #10
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %24, !llvm.loop !287

47:                                               ; preds = %43, %13, %42
  %48 = phi i1 [ %25, %42 ], [ %19, %13 ], [ %46, %43 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  %49 = zext i1 %48 to i32
  br label %51

50:                                               ; preds = %4
  br label %51

51:                                               ; preds = %4, %50, %47, %12
  %52 = phi i32 [ 0, %4 ], [ 8, %50 ], [ %49, %47 ], [ 9, %12 ]
  %53 = phi i8 [ 0, %4 ], [ 3, %50 ], [ 2, %47 ], [ 1, %12 ]
  %54 = phi i16 [ 0, %4 ], [ 4, %50 ], [ 2, %47 ], [ 1, %12 ]
  %55 = phi i16 [ 0, %4 ], [ 0, %50 ], [ 0, %47 ], [ 1, %12 ]
  %56 = phi i16 [ 0, %4 ], [ 0, %50 ], [ 1, %47 ], [ 0, %12 ]
  %57 = phi i16 [ 0, %4 ], [ 1, %50 ], [ 0, %47 ], [ 0, %12 ]
  call void @BM_mesh_elem_toolflags_ensure(ptr noundef %9) #10
  call void @BMO_push(ptr noundef %9, ptr noundef null) #10
  %58 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 %53, ptr %58, align 4, !tbaa !55
  switch i8 %53, label %80 [
    i8 1, label %59
    i8 2, label %64
    i8 3, label %69
  ]

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %60, align 8, !tbaa !57
  %61 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %61, align 8, !tbaa !58
  %62 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 9
  %63 = load ptr, ptr %62, align 8, !tbaa !59
  store ptr %63, ptr %8, align 8, !tbaa !60
  br label %74

64:                                               ; preds = %51
  %65 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %65, align 8, !tbaa !57
  %66 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %66, align 8, !tbaa !58
  %67 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 10
  %68 = load ptr, ptr %67, align 8, !tbaa !67
  store ptr %68, ptr %8, align 8, !tbaa !60
  br label %74

69:                                               ; preds = %51
  %70 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %70, align 8, !tbaa !57
  %71 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %71, align 8, !tbaa !58
  %72 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 12
  %73 = load ptr, ptr %72, align 8, !tbaa !69
  store ptr %73, ptr %8, align 8, !tbaa !60
  br label %74

74:                                               ; preds = %69, %64, %59
  %75 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !57
  call void %76(ptr noundef nonnull %8) #10
  %77 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !58
  %79 = call ptr %78(ptr noundef nonnull %8) #10
  br label %80

80:                                               ; preds = %51, %74
  %81 = phi ptr [ %79, %74 ], [ null, %51 ]
  %82 = icmp eq ptr %81, null
  br i1 %82, label %105, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 22
  %85 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  br label %86

86:                                               ; preds = %83, %101
  %87 = phi ptr [ %81, %83 ], [ %103, %101 ]
  %88 = getelementptr inbounds %struct.BMHeader, ptr %87, i64 0, i32 3
  %89 = load i8, ptr %88, align 1, !tbaa !61
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.BMElemF, ptr %87, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !288
  %95 = load i32, ptr %84, align 8, !tbaa !228
  %96 = sext i32 %95 to i64
  %97 = getelementptr %struct.BMFlagLayer, ptr %94, i64 %96
  %98 = getelementptr %struct.BMFlagLayer, ptr %97, i64 -1
  %99 = load i16, ptr %98, align 2, !tbaa !229
  %100 = or i16 %99, 1
  store i16 %100, ptr %98, align 2, !tbaa !229
  br label %101

101:                                              ; preds = %86, %92
  %102 = load ptr, ptr %85, align 8, !tbaa !58
  %103 = call ptr %102(ptr noundef nonnull %8) #10
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %86, !llvm.loop !290

105:                                              ; preds = %101, %80
  call void @BMW_init(ptr noundef nonnull %7, ptr noundef %9, i32 noundef %52, i16 noundef signext %55, i16 noundef signext %56, i16 noundef signext %57, i32 noundef 0, i32 noundef 0) #10
  store i8 %53, ptr %58, align 4, !tbaa !55
  switch i8 %53, label %127 [
    i8 1, label %106
    i8 2, label %111
    i8 3, label %116
  ]

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %107, align 8, !tbaa !57
  %108 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %108, align 8, !tbaa !58
  %109 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 9
  %110 = load ptr, ptr %109, align 8, !tbaa !59
  store ptr %110, ptr %8, align 8, !tbaa !60
  br label %121

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %112, align 8, !tbaa !57
  %113 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %113, align 8, !tbaa !58
  %114 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 10
  %115 = load ptr, ptr %114, align 8, !tbaa !67
  store ptr %115, ptr %8, align 8, !tbaa !60
  br label %121

116:                                              ; preds = %105
  %117 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %117, align 8, !tbaa !57
  %118 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %118, align 8, !tbaa !58
  %119 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 12
  %120 = load ptr, ptr %119, align 8, !tbaa !69
  store ptr %120, ptr %8, align 8, !tbaa !60
  br label %121

121:                                              ; preds = %116, %111, %106
  %122 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !57
  call void %123(ptr noundef nonnull %8) #10
  %124 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !58
  %126 = call ptr %125(ptr noundef nonnull %8) #10
  br label %127

127:                                              ; preds = %105, %121
  %128 = phi ptr [ %126, %121 ], [ null, %105 ]
  %129 = icmp eq ptr %128, null
  br i1 %129, label %140, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  br label %132

132:                                              ; preds = %130, %132
  %133 = phi ptr [ %128, %130 ], [ %138, %132 ]
  %134 = getelementptr inbounds %struct.BMHeader, ptr %133, i64 0, i32 3
  %135 = load i8, ptr %134, align 1, !tbaa !61
  %136 = and i8 %135, -17
  store i8 %136, ptr %134, align 1, !tbaa !61
  %137 = load ptr, ptr %131, align 8, !tbaa !58
  %138 = call ptr %137(ptr noundef nonnull %8) #10
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %132, !llvm.loop !291

140:                                              ; preds = %132, %127
  %141 = call ptr @BMW_begin(ptr noundef nonnull %7, ptr noundef %3) #10
  %142 = icmp eq ptr %141, null
  br i1 %142, label %161, label %143

143:                                              ; preds = %140, %158
  %144 = phi ptr [ %159, %158 ], [ %141, %140 ]
  %145 = getelementptr inbounds %struct.BMHeader, ptr %144, i64 0, i32 3
  %146 = load i8, ptr %145, align 1, !tbaa !61
  %147 = and i8 %146, 16
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  %150 = call i32 @BMW_current_depth(ptr noundef nonnull %7) #10
  %151 = add nsw i32 %150, %2
  %152 = srem i32 %151, %1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %149
  call void @BM_elem_select_set(ptr noundef %9, ptr noundef nonnull %144, i8 noundef zeroext 0) #10
  br label %155

155:                                              ; preds = %154, %149
  %156 = load i8, ptr %145, align 1, !tbaa !61
  %157 = or i8 %156, 16
  store i8 %157, ptr %145, align 1, !tbaa !61
  br label %158

158:                                              ; preds = %143, %155
  %159 = call ptr @BMW_step(ptr noundef nonnull %7) #10
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %143, !llvm.loop !292

161:                                              ; preds = %158, %140
  call void @BMW_end(ptr noundef nonnull %7) #10
  call void @BMO_pop(ptr noundef %9) #10
  call void @EDBM_selectmode_flush_ex(ptr noundef nonnull %0, i16 noundef signext %54) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #10
  ret void
}

declare ptr @BM_mesh_active_elem_get(ptr noundef) local_unnamed_addr #2

declare ptr @BM_mesh_active_face_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMO_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BMW_current_depth(ptr noundef) local_unnamed_addr #2

declare void @BMO_pop(ptr noundef) local_unnamed_addr #2

declare void @EDBM_selectmode_flush_ex(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare zeroext i8 @BM_edge_loop_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_linklist_prepend_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_linklist_pop_pool(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_vert_is_manifold(ptr noundef) local_unnamed_addr #2

declare float @BLI_frand() local_unnamed_addr #2

declare void @EDBM_deselect_flush(ptr noundef) local_unnamed_addr #2

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CTX_wm_operator_poll_msg_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_mesh_active_vert_get(ptr noundef) local_unnamed_addr #2

declare void @EDBM_selectmode_to_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @loop_find_regions(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #10
  %9 = load ptr, ptr %0, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !193
  %12 = tail call ptr @BLI_gset_ptr_new_ex(ptr noundef nonnull @__func__.loop_find_regions, i32 noundef %11) #10
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !109
  %14 = sext i32 %11 to i64
  %15 = shl nsw i64 %14, 3
  %16 = tail call ptr %13(i64 noundef %15, ptr noundef nonnull @__func__.loop_find_regions) #10
  %17 = load ptr, ptr %0, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 2, ptr %18, align 4, !tbaa !55
  %19 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %19, align 8, !tbaa !57
  %20 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %20, align 8, !tbaa !58
  %21 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  store ptr %22, ptr %7, align 8, !tbaa !60
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #10
  %23 = load ptr, ptr %20, align 8, !tbaa !58
  %24 = call ptr %23(ptr noundef nonnull %7) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %2, %40
  %27 = phi ptr [ %44, %40 ], [ %24, %2 ]
  %28 = phi i32 [ %42, %40 ], [ 0, %2 ]
  %29 = getelementptr inbounds %struct.BMHeader, ptr %27, i64 0, i32 3
  %30 = load i8, ptr %29, align 1, !tbaa !61
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = add nsw i32 %28, 1
  %35 = sext i32 %28 to i64
  %36 = getelementptr inbounds ptr, ptr %16, i64 %35
  store ptr %27, ptr %36, align 8, !tbaa !109
  %37 = or i8 %30, 16
  br label %40

38:                                               ; preds = %26
  %39 = and i8 %30, -18
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi i8 [ %37, %33 ], [ %39, %38 ]
  %42 = phi i32 [ %34, %33 ], [ %28, %38 ]
  store i8 %41, ptr %29, align 1, !tbaa !61
  %43 = load ptr, ptr %20, align 8, !tbaa !58
  %44 = call ptr %43(ptr noundef nonnull %7) #10
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %26, !llvm.loop !293

46:                                               ; preds = %40, %2
  call void @qsort(ptr noundef %16, i64 noundef %14, i64 noundef 8, ptr noundef nonnull @verg_radial) #10
  %47 = icmp sgt i32 %11, 0
  br i1 %47, label %48, label %233

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  %50 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  %51 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  %52 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %53 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %54 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %55 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %56 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %57 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %58 = icmp eq i8 %1, 0
  %59 = zext nneg i32 %11 to i64
  br label %60

60:                                               ; preds = %48, %229
  %61 = phi i64 [ 0, %48 ], [ %231, %229 ]
  %62 = phi i32 [ 0, %48 ], [ %230, %229 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #10
  %63 = getelementptr inbounds ptr, ptr %16, i64 %61
  %64 = load ptr, ptr %63, align 8, !tbaa !109
  %65 = getelementptr inbounds %struct.BMHeader, ptr %64, i64 0, i32 3
  %66 = load i8, ptr %65, align 1, !tbaa !61
  %67 = and i8 %66, 16
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %229, label %69

69:                                               ; preds = %60
  store i8 14, ptr %49, align 4, !tbaa !55
  store ptr @bmiter__loop_of_edge_begin, ptr %50, align 8, !tbaa !57
  store ptr @bmiter__loop_of_edge_step, ptr %51, align 8, !tbaa !58
  store ptr %64, ptr %8, align 8, !tbaa !60
  call void @bmiter__loop_of_edge_begin(ptr noundef nonnull %8) #10
  %70 = load ptr, ptr %51, align 8, !tbaa !58
  %71 = call ptr %70(ptr noundef nonnull %8) #10
  %72 = icmp eq ptr %71, null
  br i1 %72, label %195, label %73

73:                                               ; preds = %69, %189
  %74 = phi i32 [ %191, %189 ], [ 0, %69 ]
  %75 = phi ptr [ %190, %189 ], [ null, %69 ]
  %76 = phi ptr [ %193, %189 ], [ %71, %69 ]
  %77 = getelementptr inbounds %struct.BMLoop, ptr %76, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !256
  %79 = call zeroext i8 @BLI_gset_haskey(ptr noundef %12, ptr noundef %78) #10
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %189

81:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store ptr null, ptr %3, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store ptr null, ptr %4, align 8, !tbaa !109
  call void @_bli_array_grow_func(ptr noundef nonnull %4, ptr noundef null, i32 noundef 8, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.226) #10
  %82 = load ptr, ptr %77, align 8, !tbaa !256
  %83 = load ptr, ptr %4, align 8, !tbaa !109
  store ptr %82, ptr %83, align 8, !tbaa !109
  %84 = load ptr, ptr %77, align 8, !tbaa !256
  call void @BLI_gset_insert(ptr noundef %12, ptr noundef %84) #10
  br label %85

85:                                               ; preds = %81, %169
  %86 = phi i64 [ 0, %81 ], [ %106, %169 ]
  %87 = phi i32 [ 1, %81 ], [ %170, %169 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  %88 = load ptr, ptr %4, align 8, !tbaa !109
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = add nsw i32 %87, -1
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds ptr, ptr %88, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !109
  br label %95

95:                                               ; preds = %90, %85
  %96 = phi i32 [ %91, %90 ], [ %87, %85 ]
  %97 = phi ptr [ %94, %90 ], [ null, %85 ]
  %98 = load ptr, ptr %3, align 8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !109
  %102 = call i64 %101(ptr noundef nonnull %98) #10
  %103 = lshr i64 %102, 3
  br label %104

104:                                              ; preds = %100, %95
  %105 = phi i64 [ %103, %100 ], [ 0, %95 ]
  %106 = add nuw i64 %86, 1
  %107 = icmp ugt i64 %105, %86
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = trunc i64 %86 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %3, ptr noundef null, i32 noundef 8, i32 noundef %109, i32 noundef 1, ptr noundef nonnull @.str.227) #10
  br label %110

110:                                              ; preds = %108, %104
  %111 = load ptr, ptr %3, align 8, !tbaa !109
  %112 = getelementptr inbounds ptr, ptr %111, i64 %86
  store ptr %97, ptr %112, align 8, !tbaa !109
  store i8 11, ptr %52, align 4, !tbaa !55
  store ptr @bmiter__loop_of_face_begin, ptr %53, align 8, !tbaa !57
  store ptr @bmiter__loop_of_face_step, ptr %54, align 8, !tbaa !58
  store ptr %97, ptr %5, align 8, !tbaa !60
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %5) #10
  %113 = load ptr, ptr %54, align 8, !tbaa !58
  %114 = call ptr %113(ptr noundef nonnull %5) #10
  %115 = icmp eq ptr %114, null
  br i1 %115, label %169, label %116

116:                                              ; preds = %110, %164
  %117 = phi ptr [ %167, %164 ], [ %114, %110 ]
  %118 = phi i32 [ %165, %164 ], [ %96, %110 ]
  %119 = getelementptr inbounds %struct.BMLoop, ptr %117, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !241
  %121 = getelementptr inbounds %struct.BMHeader, ptr %120, i64 0, i32 3
  %122 = load i8, ptr %121, align 1, !tbaa !61
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %164

125:                                              ; preds = %116
  store i8 14, ptr %55, align 4, !tbaa !55
  store ptr @bmiter__loop_of_edge_begin, ptr %56, align 8, !tbaa !57
  store ptr @bmiter__loop_of_edge_step, ptr %57, align 8, !tbaa !58
  store ptr %120, ptr %6, align 8, !tbaa !60
  call void @bmiter__loop_of_edge_begin(ptr noundef nonnull %6) #10
  %126 = load ptr, ptr %57, align 8, !tbaa !58
  %127 = call ptr %126(ptr noundef nonnull %6) #10
  %128 = icmp eq ptr %127, null
  br i1 %128, label %164, label %129

129:                                              ; preds = %125, %159
  %130 = phi ptr [ %162, %159 ], [ %127, %125 ]
  %131 = phi i32 [ %160, %159 ], [ %118, %125 ]
  %132 = getelementptr inbounds %struct.BMLoop, ptr %130, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !256
  %134 = getelementptr inbounds %struct.BMHeader, ptr %133, i64 0, i32 3
  %135 = load i8, ptr %134, align 1, !tbaa !61
  %136 = and i8 %135, 16
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %159

138:                                              ; preds = %129
  %139 = call zeroext i8 @BLI_gset_add(ptr noundef %12, ptr noundef %133) #10
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %159, label %141

141:                                              ; preds = %138
  %142 = load ptr, ptr %4, align 8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !109
  %146 = call i64 %145(ptr noundef nonnull %142) #10
  %147 = lshr i64 %146, 3
  br label %148

148:                                              ; preds = %144, %141
  %149 = phi i64 [ %147, %144 ], [ 0, %141 ]
  %150 = add nsw i32 %131, 1
  %151 = sext i32 %150 to i64
  %152 = icmp ult i64 %149, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  call void @_bli_array_grow_func(ptr noundef nonnull %4, ptr noundef null, i32 noundef 8, i32 noundef %131, i32 noundef 1, ptr noundef nonnull @.str.226) #10
  br label %154

154:                                              ; preds = %153, %148
  %155 = load ptr, ptr %132, align 8, !tbaa !256
  %156 = load ptr, ptr %4, align 8, !tbaa !109
  %157 = sext i32 %131 to i64
  %158 = getelementptr inbounds ptr, ptr %156, i64 %157
  store ptr %155, ptr %158, align 8, !tbaa !109
  br label %159

159:                                              ; preds = %154, %138, %129
  %160 = phi i32 [ %131, %129 ], [ %150, %154 ], [ %131, %138 ]
  %161 = load ptr, ptr %57, align 8, !tbaa !58
  %162 = call ptr %161(ptr noundef nonnull %6) #10
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %129, !llvm.loop !294

164:                                              ; preds = %159, %125, %116
  %165 = phi i32 [ %118, %116 ], [ %118, %125 ], [ %160, %159 ]
  %166 = load ptr, ptr %54, align 8, !tbaa !58
  %167 = call ptr %166(ptr noundef nonnull %5) #10
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %116, !llvm.loop !295

169:                                              ; preds = %164, %110
  %170 = phi i32 [ %96, %110 ], [ %165, %164 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %85, label %172, !llvm.loop !296

172:                                              ; preds = %169
  %173 = trunc i64 %106 to i32
  %174 = load ptr, ptr %4, align 8, !tbaa !109
  %175 = icmp eq ptr %174, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr @MEM_freeN, align 8, !tbaa !109
  call void %177(ptr noundef nonnull %174) #10
  br label %178

178:                                              ; preds = %172, %176
  %179 = load ptr, ptr %3, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  %180 = icmp eq ptr %75, null
  br i1 %180, label %189, label %181

181:                                              ; preds = %178
  %182 = icmp sgt i32 %74, %173
  br i1 %58, label %184, label %183

183:                                              ; preds = %181
  br i1 %182, label %187, label %185

184:                                              ; preds = %181
  br i1 %182, label %185, label %187

185:                                              ; preds = %183, %184
  %186 = load ptr, ptr @MEM_freeN, align 8, !tbaa !109
  call void %186(ptr noundef nonnull %75) #10
  br label %189

187:                                              ; preds = %184, %183
  %188 = load ptr, ptr @MEM_freeN, align 8, !tbaa !109
  call void %188(ptr noundef %179) #10
  br label %189

189:                                              ; preds = %185, %178, %187, %73
  %190 = phi ptr [ %75, %73 ], [ %75, %187 ], [ %179, %178 ], [ %179, %185 ]
  %191 = phi i32 [ %74, %73 ], [ %74, %187 ], [ %173, %178 ], [ %173, %185 ]
  %192 = load ptr, ptr %51, align 8, !tbaa !58
  %193 = call ptr %192(ptr noundef nonnull %8) #10
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %73, !llvm.loop !297

195:                                              ; preds = %189, %69
  %196 = phi ptr [ null, %69 ], [ %190, %189 ]
  %197 = phi i32 [ 0, %69 ], [ %191, %189 ]
  %198 = icmp eq ptr %196, null
  br i1 %198, label %229, label %199

199:                                              ; preds = %195
  %200 = icmp sgt i32 %197, 0
  br i1 %200, label %201, label %226

201:                                              ; preds = %199
  %202 = zext nneg i32 %197 to i64
  br label %203

203:                                              ; preds = %201, %223
  %204 = phi i64 [ 0, %201 ], [ %224, %223 ]
  %205 = getelementptr inbounds ptr, ptr %196, i64 %204
  %206 = load ptr, ptr %205, align 8, !tbaa !109
  %207 = getelementptr inbounds %struct.BMHeader, ptr %206, i64 0, i32 3
  %208 = load i8, ptr %207, align 1, !tbaa !61
  %209 = or i8 %208, 16
  store i8 %209, ptr %207, align 1, !tbaa !61
  store i8 11, ptr %49, align 4, !tbaa !55
  store ptr @bmiter__loop_of_face_begin, ptr %50, align 8, !tbaa !57
  store ptr @bmiter__loop_of_face_step, ptr %51, align 8, !tbaa !58
  store ptr %206, ptr %8, align 8, !tbaa !60
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %8) #10
  %210 = load ptr, ptr %51, align 8, !tbaa !58
  %211 = call ptr %210(ptr noundef nonnull %8) #10
  %212 = icmp eq ptr %211, null
  br i1 %212, label %223, label %213

213:                                              ; preds = %203, %213
  %214 = phi ptr [ %221, %213 ], [ %211, %203 ]
  %215 = getelementptr inbounds %struct.BMLoop, ptr %214, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !241
  %217 = getelementptr inbounds %struct.BMHeader, ptr %216, i64 0, i32 3
  %218 = load i8, ptr %217, align 1, !tbaa !61
  %219 = and i8 %218, -17
  store i8 %219, ptr %217, align 1, !tbaa !61
  %220 = load ptr, ptr %51, align 8, !tbaa !58
  %221 = call ptr %220(ptr noundef nonnull %8) #10
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %213, !llvm.loop !298

223:                                              ; preds = %213, %203
  %224 = add nuw nsw i64 %204, 1
  %225 = icmp eq i64 %224, %202
  br i1 %225, label %226, label %203, !llvm.loop !299

226:                                              ; preds = %223, %199
  %227 = add nsw i32 %197, %62
  %228 = load ptr, ptr @MEM_freeN, align 8, !tbaa !109
  call void %228(ptr noundef nonnull %196) #10
  br label %229

229:                                              ; preds = %195, %226, %60
  %230 = phi i32 [ %62, %60 ], [ %227, %226 ], [ %62, %195 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #10
  %231 = add nuw nsw i64 %61, 1
  %232 = icmp eq i64 %231, %59
  br i1 %232, label %233, label %60, !llvm.loop !300

233:                                              ; preds = %229, %46
  %234 = phi i32 [ 0, %46 ], [ %230, %229 ]
  %235 = load ptr, ptr @MEM_freeN, align 8, !tbaa !109
  call void %235(ptr noundef %16) #10
  call void @BLI_gset_free(ptr noundef %12, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #10
  ret i32 %234
}

declare ptr @BLI_gset_ptr_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal i32 @verg_radial(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !109
  %4 = load ptr, ptr %1, align 8, !tbaa !109
  %5 = tail call i32 @BM_edge_face_count(ptr noundef %3) #10
  %6 = tail call i32 @BM_edge_face_count(ptr noundef %4) #10
  %7 = icmp sgt i32 %5, %6
  %8 = icmp slt i32 %5, %6
  %9 = zext i1 %8 to i32
  %10 = select i1 %7, i32 -1, i32 %9
  ret i32 %10
}

declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_gset_add(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }

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
!34 = !{!35, !36, i64 96}
!35 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !36, i64 48, !40, i64 56, !36, i64 64, !39, i64 72, !36, i64 80, !39, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !39, i64 104}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"long", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!43, !36, i64 296}
!43 = !{!"Object", !44, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !45, i64 312, !36, i64 360, !46, i64 368, !46, i64 384, !46, i64 400, !46, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !47, i64 616, !47, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !47, i64 988, !47, i64 992, !47, i64 996, !47, i64 1000, !47, i64 1004, !47, i64 1008, !47, i64 1012, !47, i64 1016, !47, i64 1020, !47, i64 1024, !47, i64 1028, !47, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !47, i64 1048, !47, i64 1052, !46, i64 1056, !46, i64 1072, !46, i64 1088, !46, i64 1104, !47, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !46, i64 1176, !46, i64 1192, !46, i64 1208, !46, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !47, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !40, i64 1304, !40, i64 1312, !39, i64 1320, !39, i64 1324, !46, i64 1328, !46, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !46, i64 1400, !36, i64 1416}
!44 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!45 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!46 = !{!"ListBase", !36, i64 0, !36, i64 8}
!47 = !{!"float", !37, i64 0}
!48 = !{!35, !36, i64 0}
!49 = !{!50, !37, i64 1365}
!50 = !{!"Mesh", !44, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !51, i64 280, !51, i64 480, !51, i64 680, !51, i64 880, !51, i64 1080, !39, i64 1280, !39, i64 1284, !39, i64 1288, !39, i64 1292, !39, i64 1296, !39, i64 1300, !39, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !39, i64 1344, !41, i64 1348, !41, i64 1350, !47, i64 1352, !39, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !41, i64 1366, !36, i64 1368}
!51 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!52 = !{!39, !39, i64 0}
!53 = !{!54, !41, i64 944}
!54 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 136, !51, i64 144, !51, i64 344, !51, i64 544, !51, i64 744, !41, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !46, i64 960, !36, i64 976, !46, i64 984, !36, i64 1000}
!55 = !{!56, !37, i64 60}
!56 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !39, i64 56, !37, i64 60}
!57 = !{!56, !36, i64 40}
!58 = !{!56, !36, i64 48}
!59 = !{!54, !36, i64 32}
!60 = !{!37, !37, i64 0}
!61 = !{!62, !37, i64 13}
!62 = !{!"BMHeader", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!35, !41, i64 92}
!67 = !{!54, !36, i64 40}
!68 = distinct !{!68, !64, !65}
!69 = !{!54, !36, i64 56}
!70 = distinct !{!70, !64, !65}
!71 = distinct !{!71, !64, !65}
!72 = distinct !{!72, !64, !65}
!73 = distinct !{!73, !64, !65}
!74 = !{!75, !36, i64 264}
!75 = !{!"Scene", !44, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !46, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !76, i64 280, !85, i64 4264, !46, i64 4296, !46, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !39, i64 4380, !46, i64 4384, !86, i64 4400, !87, i64 4416, !90, i64 4600, !36, i64 4608, !91, i64 4616, !36, i64 4640, !40, i64 4648, !40, i64 4656, !78, i64 4664, !79, i64 4824, !92, i64 4888, !36, i64 4952}
!76 = !{!"RenderData", !77, i64 0, !36, i64 248, !36, i64 256, !80, i64 264, !81, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !47, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !41, i64 432, !41, i64 434, !47, i64 436, !47, i64 440, !47, i64 444, !47, i64 448, !47, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !39, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !39, i64 484, !39, i64 488, !41, i64 492, !41, i64 494, !39, i64 496, !39, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !82, i64 544, !82, i64 560, !83, i64 576, !46, i64 592, !41, i64 608, !41, i64 610, !47, i64 612, !47, i64 616, !47, i64 620, !47, i64 624, !39, i64 628, !47, i64 632, !47, i64 636, !47, i64 640, !47, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !47, i64 660, !47, i64 664, !41, i64 668, !41, i64 670, !47, i64 672, !47, i64 676, !37, i64 680, !39, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !41, i64 2524, !41, i64 2526, !47, i64 2528, !47, i64 2532, !41, i64 2536, !41, i64 2538, !47, i64 2540, !41, i64 2544, !41, i64 2546, !39, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !47, i64 2560, !47, i64 2564, !36, i64 2568, !39, i64 2576, !47, i64 2580, !37, i64 2584, !84, i64 2616, !39, i64 3976, !39, i64 3980}
!77 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !47, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !78, i64 24, !79, i64 184}
!78 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !47, i64 136, !47, i64 140, !36, i64 144, !36, i64 152}
!79 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!80 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !41, i64 48, !41, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!81 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !47, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!82 = !{!"rctf", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!83 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!84 = !{!"BakeData", !77, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !47, i64 1280, !47, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!85 = !{!"AudioData", !39, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !39, i64 16, !41, i64 20, !41, i64 22, !47, i64 24, !47, i64 28}
!86 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!87 = !{!"GameData", !86, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !88, i64 40, !41, i64 64, !41, i64 66, !47, i64 68, !89, i64 72, !47, i64 128, !47, i64 132, !39, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180}
!88 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !47, i64 8, !47, i64 12, !36, i64 16}
!89 = !{!"RecastData", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !39, i64 40, !47, i64 44, !47, i64 48, !41, i64 52, !41, i64 54}
!90 = !{!"UnitSettings", !47, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!91 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!92 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!93 = !{!94, !47, i64 36}
!94 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !47, i64 32, !47, i64 36, !47, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !47, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !95, i64 64, !97, i64 168, !47, i64 336, !47, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !47, i64 352, !47, i64 356, !47, i64 360, !47, i64 364, !47, i64 368, !47, i64 372, !47, i64 376, !47, i64 380, !47, i64 384, !47, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !39, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !41, i64 464, !41, i64 466, !39, i64 468, !47, i64 472, !47, i64 476, !98, i64 480, !99, i64 608}
!95 = !{!"ImagePaintSettings", !96, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !39, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !47, i64 100}
!96 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36}
!97 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !47, i64 128, !47, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !36, i64 152, !36, i64 160}
!98 = !{!"UnifiedPaintSettings", !39, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !37, i64 16, !37, i64 28, !39, i64 40, !37, i64 44, !47, i64 52, !39, i64 56, !39, i64 60, !37, i64 64, !37, i64 65, !47, i64 72, !37, i64 76, !39, i64 84, !47, i64 88, !37, i64 92, !37, i64 100, !39, i64 108, !36, i64 112, !47, i64 120, !39, i64 124}
!99 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !37, i64 20, !37, i64 21, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36}
!100 = !{!101, !36, i64 16}
!101 = !{!"ViewContext", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56}
!102 = !{!101, !36, i64 32}
!103 = !{!104, !41, i64 232}
!104 = !{!"View3D", !36, i64 0, !36, i64 8, !46, i64 16, !39, i64 32, !47, i64 36, !37, i64 40, !37, i64 56, !47, i64 72, !47, i64 76, !37, i64 80, !37, i64 81, !39, i64 84, !39, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !82, i64 112, !46, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !39, i64 224, !39, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !47, i64 244, !47, i64 248, !47, i64 252, !47, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !46, i64 296, !46, i64 312, !46, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!105 = !{!104, !41, i64 240}
!106 = !{!107, !36, i64 40}
!107 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !47, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !83, i64 2436, !108, i64 2456}
!108 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!109 = !{!36, !36, i64 0}
!110 = distinct !{!110, !64, !65}
!111 = !{!101, !36, i64 8}
!112 = !{!107, !39, i64 16}
!113 = !{!107, !39, i64 20}
!114 = !{!115, !36, i64 0}
!115 = !{!"LassoMaskData", !36, i64 0, !39, i64 8}
!116 = !{!115, !39, i64 8}
!117 = distinct !{!117, !64, !65}
!118 = distinct !{!118, !64, !65}
!119 = distinct !{!119, !64, !65}
!120 = !{!101, !36, i64 48}
!121 = !{!47, !47, i64 0}
!122 = !{!123, !47, i64 24}
!123 = !{!"", !37, i64 0, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !36, i64 32}
!124 = !{!123, !47, i64 12}
!125 = !{!123, !47, i64 20}
!126 = !{!123, !47, i64 16}
!127 = !{!123, !36, i64 32}
!128 = !{!123, !47, i64 28}
!129 = !{!123, !47, i64 8}
!130 = !{!101, !36, i64 40}
!131 = !{i64 0, i64 8, !109, i64 8, i64 8, !109, i64 16, i64 8, !109, i64 24, i64 8, !109, i64 32, i64 8, !109, i64 40, i64 8, !109, i64 48, i64 8, !109, i64 56, i64 8, !60}
!132 = !{!133, !47, i64 72}
!133 = !{!"", !101, i64 0, !37, i64 64, !47, i64 72, !36, i64 80}
!134 = !{!133, !36, i64 80}
!135 = !{!133, !36, i64 40}
!136 = !{!137, !41, i64 826}
!137 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !47, i64 776, !47, i64 780, !47, i64 784, !47, i64 788, !37, i64 792, !47, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !41, i64 824, !41, i64 826, !37, i64 828, !41, i64 844, !41, i64 846, !47, i64 848, !37, i64 852, !47, i64 864, !37, i64 868}
!138 = !{!139, !36, i64 24}
!139 = !{!"BMEdge", !62, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !140, i64 48, !140, i64 64}
!140 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!141 = !{!139, !36, i64 32}
!142 = !{!143, !47, i64 8}
!143 = !{!"", !37, i64 0, !47, i64 8, !36, i64 16}
!144 = !{!143, !36, i64 16}
!145 = !{!146, !47, i64 16}
!146 = !{!"", !37, i64 0, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !36, i64 24}
!147 = !{!146, !47, i64 12}
!148 = !{!146, !36, i64 24}
!149 = !{!146, !47, i64 20}
!150 = !{!146, !47, i64 8}
!151 = !{!152, !36, i64 0}
!152 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !46, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !153, i64 152, !41, i64 184}
!153 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!154 = !{!152, !36, i64 8}
!155 = !{!152, !36, i64 24}
!156 = !{!152, !36, i64 48}
!157 = !{!152, !36, i64 32}
!158 = !{!152, !36, i64 72}
!159 = !{!152, !41, i64 184}
!160 = !{!152, !36, i64 88}
!161 = !{!152, !36, i64 104}
!162 = !{!163, !36, i64 112}
!163 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !46, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!164 = !{!94, !47, i64 340}
!165 = !{!43, !41, i64 136}
!166 = distinct !{!166, !64, !65}
!167 = distinct !{!167, !64, !65}
!168 = distinct !{!168, !64, !65}
!169 = !{!54, !39, i64 24}
!170 = !{!163, !36, i64 120}
!171 = distinct !{!171, !64, !65}
!172 = !{!173, !36, i64 16}
!173 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!174 = distinct !{!174, !64, !65}
!175 = distinct !{!175, !64, !65}
!176 = distinct !{!176, !64, !65}
!177 = !{!178, !41, i64 72}
!178 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !39, i64 20, !39, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !39, i64 48, !39, i64 52, !179, i64 56, !39, i64 64, !39, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !39, i64 108, !36, i64 112}
!179 = !{!"double", !37, i64 0}
!180 = !{!178, !41, i64 74}
!181 = !{i8 0, i8 2}
!182 = distinct !{!182, !64, !65}
!183 = distinct !{!183, !64, !65}
!184 = distinct !{!184, !64, !65}
!185 = distinct !{!185, !64, !65}
!186 = distinct !{!186, !64, !65}
!187 = !{!139, !36, i64 40}
!188 = !{!189, !36, i64 40}
!189 = !{!"BMLoop", !62, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!190 = !{!101, !36, i64 24}
!191 = distinct !{!191, !64, !65}
!192 = !{!54, !39, i64 16}
!193 = !{!54, !39, i64 20}
!194 = !{i32 0, i32 2}
!195 = !{!196, !41, i64 48}
!196 = !{!"BMFace", !62, i64 0, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 36, !41, i64 48}
!197 = !{!43, !39, i64 460}
!198 = !{!35, !41, i64 94}
!199 = !{!54, !36, i64 960}
!200 = !{!201, !36, i64 0}
!201 = !{!"BMEditSelection", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!202 = !{!201, !37, i64 24}
!203 = distinct !{!203, !64, !65}
!204 = distinct !{!204, !64, !65}
!205 = distinct !{!205, !64, !65}
!206 = distinct !{!206, !64, !65}
!207 = distinct !{!207, !64, !65}
!208 = distinct !{!208, !64, !65}
!209 = distinct !{!209, !64, !65}
!210 = distinct !{!210, !64, !65}
!211 = distinct !{!211, !64, !65}
!212 = distinct !{!212, !64, !65}
!213 = distinct !{!213, !64, !65}
!214 = distinct !{!214, !64, !65}
!215 = distinct !{!215, !64, !65}
!216 = distinct !{!216, !64, !65}
!217 = distinct !{!217, !64, !65}
!218 = distinct !{!218, !64, !65}
!219 = !{!94, !41, i64 46}
!220 = distinct !{!220, !64, !65}
!221 = distinct !{!221, !64, !65}
!222 = distinct !{!222, !64, !65}
!223 = distinct !{!223, !64, !65}
!224 = distinct !{!224, !64, !65}
!225 = distinct !{!225, !64, !65}
!226 = distinct !{!226, !64, !65}
!227 = !{!139, !36, i64 16}
!228 = !{!54, !39, i64 128}
!229 = !{!230, !41, i64 0}
!230 = !{!"BMFlagLayer", !41, i64 0}
!231 = distinct !{!231, !64, !65}
!232 = distinct !{!232, !64, !65}
!233 = distinct !{!233, !64, !65}
!234 = distinct !{!234, !64, !65}
!235 = distinct !{!235, !64, !65}
!236 = distinct !{!236, !64, !65}
!237 = !{!54, !39, i64 4}
!238 = distinct !{!238, !64, !65}
!239 = distinct !{!239, !64, !65}
!240 = !{!196, !36, i64 24}
!241 = !{!189, !36, i64 24}
!242 = !{!243, !36, i64 48}
!243 = !{!"BMVert", !62, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!244 = distinct !{!244, !64, !65}
!245 = !{!196, !39, i64 32}
!246 = distinct !{!246, !64, !65}
!247 = distinct !{!247, !64, !65}
!248 = distinct !{!248, !64, !65}
!249 = distinct !{!249, !64, !65}
!250 = distinct !{!250, !64, !65}
!251 = !{!54, !39, i64 0}
!252 = !{!253, !37, i64 12}
!253 = !{!"BMElem", !62, i64 0}
!254 = distinct !{!254, !64, !65}
!255 = distinct !{!255, !64, !65}
!256 = !{!189, !36, i64 32}
!257 = distinct !{!257, !64, !65}
!258 = distinct !{!258, !64, !65}
!259 = distinct !{!259, !64, !65}
!260 = distinct !{!260, !64, !65}
!261 = distinct !{!261, !64, !65}
!262 = distinct !{!262, !64, !65}
!263 = !{!189, !36, i64 16}
!264 = distinct !{!264, !64, !65}
!265 = distinct !{!265, !64, !65}
!266 = distinct !{!266, !64, !65}
!267 = distinct !{!267, !64, !65}
!268 = !{!243, !36, i64 0}
!269 = !{!270, !36, i64 0}
!270 = !{!"MDeformVert", !36, i64 0, !39, i64 8, !39, i64 12}
!271 = distinct !{!271, !64, !65}
!272 = !{!46, !36, i64 0}
!273 = distinct !{!273, !64, !65}
!274 = distinct !{!274, !64, !65}
!275 = !{!189, !36, i64 56}
!276 = distinct !{!276, !64, !65}
!277 = distinct !{!277, !64, !65}
!278 = distinct !{!278, !64, !65}
!279 = distinct !{!279, !64, !65}
!280 = distinct !{!280, !64, !65}
!281 = distinct !{!281, !64, !65}
!282 = distinct !{!282, !64, !65}
!283 = distinct !{!283, !64, !65}
!284 = distinct !{!284, !64, !65}
!285 = !{!62, !37, i64 12}
!286 = distinct !{!286, !64, !65}
!287 = distinct !{!287, !64, !65}
!288 = !{!289, !36, i64 16}
!289 = !{!"BMElemF", !62, i64 0, !36, i64 16}
!290 = distinct !{!290, !64, !65}
!291 = distinct !{!291, !64, !65}
!292 = distinct !{!292, !64, !65}
!293 = distinct !{!293, !64, !65}
!294 = distinct !{!294, !64, !65}
!295 = distinct !{!295, !64, !65}
!296 = distinct !{!296, !64, !65}
!297 = distinct !{!297, !64, !65}
!298 = distinct !{!298, !64, !65}
!299 = distinct !{!299, !64, !65}
!300 = distinct !{!300, !64, !65}
