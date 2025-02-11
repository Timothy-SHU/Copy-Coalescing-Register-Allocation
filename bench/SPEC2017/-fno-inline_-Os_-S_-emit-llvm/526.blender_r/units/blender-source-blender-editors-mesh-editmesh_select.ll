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
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.BMWalker = type { i8, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %struct.ListBase, i16, i16, i16, i32, ptr, ptr, i32 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon.7 }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon.7 = type { ptr, [8 x i8] }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_select_mirrored(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = load ptr, ptr %0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  %11 = icmp eq ptr %9, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 46
  %14 = load i8, ptr %13, align 1, !tbaa !20
  %15 = lshr i8 %14, 4
  %16 = and i8 %15, 1
  br label %17

17:                                               ; preds = %12, %4
  %18 = phi i8 [ 0, %4 ], [ %16, %12 ]
  store i32 0, ptr %3, align 4, !tbaa !23
  store i32 0, ptr %2, align 4, !tbaa !23
  %19 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 28
  %20 = load i16, ptr %19, align 8, !tbaa !24
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %17
  %24 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %10, i8 noundef zeroext 1, ptr noundef null) #14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %55, label %26

26:                                               ; preds = %23, %26
  %27 = phi ptr [ %30, %26 ], [ %24, %23 ]
  %28 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %27, i8 noundef zeroext 1) #14, !range !26
  %29 = zext nneg i8 %28 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %27, i32 noundef %29) #14
  %30 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %55, label %26, !llvm.loop !27

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %34 = load i16, ptr %33, align 4, !tbaa !29
  %35 = and i16 %34, 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %10, i8 noundef zeroext 2, ptr noundef null) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %55, label %40

40:                                               ; preds = %37, %40
  %41 = phi ptr [ %44, %40 ], [ %38, %37 ]
  %42 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %41, i8 noundef zeroext 1) #14, !range !26
  %43 = zext nneg i8 %42 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %41, i32 noundef %43) #14
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %40, !llvm.loop !30

46:                                               ; preds = %32
  %47 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %10, i8 noundef zeroext 3, ptr noundef null) #14
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %46, %49
  %50 = phi ptr [ %53, %49 ], [ %47, %46 ]
  %51 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %50, i8 noundef zeroext 1) #14, !range !26
  %52 = zext nneg i8 %51 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %50, i32 noundef %52) #14
  %53 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %49, !llvm.loop !31

55:                                               ; preds = %26, %40, %49, %23, %37, %46
  call void @EDBM_verts_mirror_cache_begin(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext %18) #15
  %56 = icmp eq i8 %1, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  call void @EDBM_flag_disable_all(ptr noundef nonnull %0, i8 noundef zeroext 1) #15
  br label %58

58:                                               ; preds = %57, %55
  %59 = load i16, ptr %19, align 8, !tbaa !24
  %60 = and i16 %59, 1
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %89, label %62

62:                                               ; preds = %58
  %63 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %10, i8 noundef zeroext 1, ptr noundef null) #14
  %64 = icmp eq ptr %63, null
  br i1 %64, label %148, label %65

65:                                               ; preds = %62, %84
  %66 = phi i32 [ %86, %84 ], [ 0, %62 ]
  %67 = phi i32 [ %85, %84 ], [ 0, %62 ]
  %68 = phi ptr [ %87, %84 ], [ %63, %62 ]
  %69 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %68, i8 noundef zeroext 2) #14, !range !26
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %68, i8 noundef zeroext 16) #14, !range !26
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %71
  %75 = call ptr @EDBM_verts_mirror_get(ptr noundef nonnull %0, ptr noundef nonnull %68) #15
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %75, i8 noundef zeroext 2) #14, !range !26
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  call void @BM_vert_select_set(ptr noundef %10, ptr noundef nonnull %75, i8 noundef zeroext 1) #15
  %81 = add nsw i32 %66, 1
  br label %84

82:                                               ; preds = %77, %74
  %83 = add nsw i32 %67, 1
  br label %84

84:                                               ; preds = %80, %82, %65, %71
  %85 = phi i32 [ %67, %65 ], [ %67, %71 ], [ %83, %82 ], [ %67, %80 ]
  %86 = phi i32 [ %66, %65 ], [ %66, %71 ], [ %66, %82 ], [ %81, %80 ]
  %87 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %88 = icmp eq ptr %87, null
  br i1 %88, label %148, label %65, !llvm.loop !32

89:                                               ; preds = %58
  %90 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %91 = load i16, ptr %90, align 4, !tbaa !29
  %92 = and i16 %91, 2
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %121, label %94

94:                                               ; preds = %89
  %95 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %10, i8 noundef zeroext 2, ptr noundef null) #14
  %96 = icmp eq ptr %95, null
  br i1 %96, label %148, label %97

97:                                               ; preds = %94, %116
  %98 = phi i32 [ %118, %116 ], [ 0, %94 ]
  %99 = phi i32 [ %117, %116 ], [ 0, %94 ]
  %100 = phi ptr [ %119, %116 ], [ %95, %94 ]
  %101 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %100, i8 noundef zeroext 2) #14, !range !26
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %97
  %104 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %100, i8 noundef zeroext 16) #14, !range !26
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %103
  %107 = call ptr @EDBM_verts_mirror_get_edge(ptr noundef nonnull %0, ptr noundef nonnull %100) #15
  %108 = icmp eq ptr %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %107, i8 noundef zeroext 2) #14, !range !26
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  call void @BM_edge_select_set(ptr noundef %10, ptr noundef nonnull %107, i8 noundef zeroext 1) #15
  %113 = add nsw i32 %98, 1
  br label %116

114:                                              ; preds = %109, %106
  %115 = add nsw i32 %99, 1
  br label %116

116:                                              ; preds = %112, %114, %97, %103
  %117 = phi i32 [ %99, %97 ], [ %99, %103 ], [ %115, %114 ], [ %99, %112 ]
  %118 = phi i32 [ %98, %97 ], [ %98, %103 ], [ %98, %114 ], [ %113, %112 ]
  %119 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %120 = icmp eq ptr %119, null
  br i1 %120, label %148, label %97, !llvm.loop !33

121:                                              ; preds = %89
  %122 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %10, i8 noundef zeroext 3, ptr noundef null) #14
  %123 = icmp eq ptr %122, null
  br i1 %123, label %148, label %124

124:                                              ; preds = %121, %143
  %125 = phi i32 [ %145, %143 ], [ 0, %121 ]
  %126 = phi ptr [ %146, %143 ], [ %122, %121 ]
  %127 = phi i32 [ %144, %143 ], [ 0, %121 ]
  %128 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %126, i8 noundef zeroext 2) #14, !range !26
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %124
  %131 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %126, i8 noundef zeroext 16) #14, !range !26
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %130
  %134 = call ptr @EDBM_verts_mirror_get_face(ptr noundef nonnull %0, ptr noundef nonnull %126) #15
  %135 = icmp eq ptr %134, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %133
  %137 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %134, i8 noundef zeroext 2) #14, !range !26
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  call void @BM_face_select_set(ptr noundef %10, ptr noundef nonnull %134, i8 noundef zeroext 1) #15
  %140 = add nsw i32 %125, 1
  br label %143

141:                                              ; preds = %136, %133
  %142 = add nsw i32 %127, 1
  br label %143

143:                                              ; preds = %139, %141, %124, %130
  %144 = phi i32 [ %127, %124 ], [ %127, %130 ], [ %142, %141 ], [ %127, %139 ]
  %145 = phi i32 [ %125, %124 ], [ %125, %130 ], [ %125, %141 ], [ %140, %139 ]
  %146 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %124, !llvm.loop !34

148:                                              ; preds = %84, %116, %143, %62, %94, %121
  %149 = phi i32 [ 0, %121 ], [ 0, %94 ], [ 0, %62 ], [ %144, %143 ], [ %117, %116 ], [ %85, %84 ]
  %150 = phi i32 [ 0, %121 ], [ 0, %94 ], [ 0, %62 ], [ %145, %143 ], [ %118, %116 ], [ %86, %84 ]
  call void @EDBM_verts_mirror_cache_end(ptr noundef nonnull %0) #15
  store i32 %150, ptr %2, align 4, !tbaa !23
  store i32 %149, ptr %3, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc zeroext i8 @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #14, !range !35
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #14
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %8, %7 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_set(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %0) #14
  br label %6

5:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %0) #14
  br label %6

6:                                                ; preds = %5, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !36
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = tail call ptr %3(ptr noundef %0) #15
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @EDBM_verts_mirror_cache_begin(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @EDBM_flag_disable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @EDBM_verts_mirror_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @EDBM_verts_mirror_get_edge(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @EDBM_verts_mirror_get_face(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BM_face_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @EDBM_verts_mirror_cache_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_automerge(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %1) #15
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = zext i8 %3 to i32
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 5
  %11 = load float, ptr %10, align 4, !tbaa !59
  %12 = fpext float %11 to double
  %13 = tail call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %7, double noundef %12) #15
  %14 = icmp ne i8 %13, 0
  %15 = icmp ne i8 %2, 0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  tail call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  br label %18

18:                                               ; preds = %17, %4
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @EDBM_backbuf_border_init(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = icmp eq ptr %7, null
  br i1 %8, label %66, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 24
  %13 = load i16, ptr %12, align 8, !tbaa !69
  %14 = icmp slt i16 %13, 3
  br i1 %14, label %66, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 28
  %17 = load i16, ptr %16, align 8, !tbaa !71
  %18 = and i16 %17, 4096
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %66, label %20

20:                                               ; preds = %15
  %21 = tail call ptr @view3d_read_backbuf(ptr noundef nonnull %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %66, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr @bm_vertoffs, align 4, !tbaa !23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %66, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ImBuf, ptr %21, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  %29 = add i32 %24, 1
  %30 = tail call fastcc ptr @edbm_backbuf_alloc(i32 noundef %29) #14
  store ptr %30, ptr @selbuf, align 8, !tbaa !75
  %31 = sext i16 %3 to i32
  %32 = sext i16 %1 to i32
  %33 = sub nsw i32 %31, %32
  %34 = add nsw i32 %33, 1
  %35 = sext i16 %4 to i32
  %36 = sext i16 %2 to i32
  %37 = sub nsw i32 %35, %36
  %38 = add nsw i32 %37, 1
  %39 = mul nsw i32 %38, %34
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %65, label %41

41:                                               ; preds = %26
  %42 = load i32, ptr @bm_vertoffs, align 4
  br label %43

43:                                               ; preds = %41, %61
  %44 = phi i32 [ %62, %61 ], [ %42, %41 ]
  %45 = phi i32 [ %48, %61 ], [ %39, %41 ]
  %46 = phi ptr [ %63, %61 ], [ %28, %41 ]
  %47 = freeze i32 %44
  %48 = add nsw i32 %45, -1
  %49 = load i32, ptr %46, align 4, !tbaa !23
  %50 = add i32 %49, -1
  %51 = icmp ult i32 %50, %47
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = and i32 %49, 31
  %54 = shl nuw i32 1, %53
  %55 = lshr i32 %49, 5
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %30, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !23
  %59 = or i32 %58, %54
  store i32 %59, ptr %57, align 4, !tbaa !23
  %60 = load i32, ptr @bm_vertoffs, align 4
  br label %61

61:                                               ; preds = %52, %43
  %62 = phi i32 [ %60, %52 ], [ %47, %43 ]
  %63 = getelementptr inbounds i32, ptr %46, i64 1
  %64 = icmp eq i32 %48, 0
  br i1 %64, label %65, label %43, !llvm.loop !76

65:                                               ; preds = %61, %26
  tail call void @IMB_freeImBuf(ptr noundef nonnull %21) #15
  br label %66

66:                                               ; preds = %23, %20, %5, %9, %15, %65
  %67 = phi i8 [ 1, %65 ], [ 0, %15 ], [ 0, %9 ], [ 0, %5 ], [ 0, %20 ], [ 0, %23 ]
  ret i8 %67
}

; Function Attrs: optsize
declare ptr @view3d_read_backbuf(ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @edbm_backbuf_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %3 = ashr i32 %0, 5
  %4 = add nsw i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 2
  %7 = tail call ptr %2(i64 noundef %6, ptr noundef nonnull @.str.176) #15
  ret ptr %7
}

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @EDBM_backbuf_check(i32 noundef %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr @selbuf, align 8, !tbaa !75
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
  %13 = load i32, ptr %12, align 4, !tbaa !23
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_backbuf_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @selbuf, align 8, !tbaa !75
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  tail call void %4(ptr noundef nonnull %1) #15
  br label %5

5:                                                ; preds = %3, %0
  store ptr null, ptr @selbuf, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @EDBM_backbuf_border_mask_init(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, i16 noundef signext %6) local_unnamed_addr #0 {
  %8 = alloca %struct.LassoMaskData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  %9 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !77
  %15 = tail call zeroext i8 @BKE_paint_select_elem_test(ptr noundef %14) #15
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %95, label %28

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  %20 = getelementptr inbounds %struct.View3D, ptr %19, i64 0, i32 24
  %21 = load i16, ptr %20, align 8, !tbaa !69
  %22 = icmp slt i16 %21, 3
  br i1 %22, label %95, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.View3D, ptr %19, i64 0, i32 28
  %25 = load i16, ptr %24, align 8, !tbaa !71
  %26 = and i16 %25, 4096
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %95, label %28

28:                                               ; preds = %23, %12
  %29 = tail call ptr @view3d_read_backbuf(ptr noundef nonnull %0, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, i16 noundef signext %6) #15
  %30 = icmp eq ptr %29, null
  %31 = load i32, ptr @bm_vertoffs, align 4
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %95, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ImBuf, ptr %29, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !75
  %38 = getelementptr inbounds %struct.ImBuf, ptr %29, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !78
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %40, 2
  %42 = getelementptr inbounds %struct.ImBuf, ptr %29, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !79
  %44 = sext i32 %43 to i64
  %45 = mul i64 %41, %44
  %46 = tail call ptr %37(i64 noundef %45, ptr noundef nonnull @__func__.EDBM_backbuf_border_mask_init) #15
  store ptr %46, ptr %8, align 8, !tbaa !80
  %47 = sext i16 %5 to i32
  %48 = sext i16 %3 to i32
  %49 = sub nsw i32 %47, %48
  %50 = add nsw i32 %49, 1
  %51 = getelementptr inbounds %struct.LassoMaskData, ptr %8, i64 0, i32 1
  store i32 %50, ptr %51, align 8, !tbaa !82
  %52 = sext i16 %4 to i32
  %53 = add nsw i32 %47, 1
  %54 = sext i16 %6 to i32
  %55 = add nsw i32 %54, 1
  %56 = sext i16 %2 to i32
  call void @fill_poly_v2i_n(i32 noundef %48, i32 noundef %52, i32 noundef %53, i32 noundef %55, ptr noundef %1, i32 noundef %56, ptr noundef nonnull @edbm_mask_lasso_px_cb, ptr noundef nonnull %8) #15
  %57 = load i32, ptr @bm_vertoffs, align 4, !tbaa !23
  %58 = add i32 %57, 1
  %59 = call fastcc ptr @edbm_backbuf_alloc(i32 noundef %58) #14
  store ptr %59, ptr @selbuf, align 8, !tbaa !75
  %60 = sub nsw i32 %54, %52
  %61 = add nsw i32 %60, 1
  %62 = mul nsw i32 %50, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %93, label %64

64:                                               ; preds = %34
  %65 = load i32, ptr @bm_vertoffs, align 4
  br label %66

66:                                               ; preds = %64, %88
  %67 = phi i32 [ %89, %88 ], [ %65, %64 ]
  %68 = phi i32 [ %72, %88 ], [ %62, %64 ]
  %69 = phi ptr [ %90, %88 ], [ %36, %64 ]
  %70 = phi ptr [ %91, %88 ], [ %46, %64 ]
  %71 = freeze i32 %67
  %72 = add nsw i32 %68, -1
  %73 = load i32, ptr %69, align 4, !tbaa !23
  %74 = add i32 %73, -1
  %75 = icmp ult i32 %74, %71
  br i1 %75, label %76, label %88

76:                                               ; preds = %66
  %77 = load i32, ptr %70, align 4, !tbaa !23
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = and i32 %73, 31
  %81 = shl nuw i32 1, %80
  %82 = lshr i32 %73, 5
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds i32, ptr %59, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !23
  %86 = or i32 %85, %81
  store i32 %86, ptr %84, align 4, !tbaa !23
  %87 = load i32, ptr @bm_vertoffs, align 4
  br label %88

88:                                               ; preds = %79, %76, %66
  %89 = phi i32 [ %87, %79 ], [ %71, %76 ], [ %71, %66 ]
  %90 = getelementptr inbounds i32, ptr %69, i64 1
  %91 = getelementptr inbounds i32, ptr %70, i64 1
  %92 = icmp eq i32 %72, 0
  br i1 %92, label %93, label %66, !llvm.loop !83

93:                                               ; preds = %88, %34
  call void @IMB_freeImBuf(ptr noundef nonnull %29) #15
  %94 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %94(ptr noundef %46) #15
  br label %95

95:                                               ; preds = %28, %17, %23, %12, %93
  %96 = phi i8 [ 1, %93 ], [ 0, %12 ], [ 0, %23 ], [ 0, %17 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  ret i8 %96
}

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_select_elem_test(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @fill_poly_v2i_n(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @edbm_mask_lasso_px_cb(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #6 {
  %4 = load ptr, ptr %2, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.LassoMaskData, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !82
  %7 = mul nsw i32 %6, %1
  %8 = add nsw i32 %7, %0
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %4, i64 %9
  store i32 1, ptr %10, align 4, !tbaa !23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @EDBM_backbuf_circle_init(ptr noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  %11 = tail call zeroext i8 @BKE_paint_select_elem_test(ptr noundef %10) #15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %77, label %24

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  %16 = getelementptr inbounds %struct.View3D, ptr %15, i64 0, i32 24
  %17 = load i16, ptr %16, align 8, !tbaa !69
  %18 = icmp slt i16 %17, 3
  br i1 %18, label %77, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.View3D, ptr %15, i64 0, i32 28
  %21 = load i16, ptr %20, align 8, !tbaa !71
  %22 = and i16 %21, 4096
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %77, label %24

24:                                               ; preds = %19, %8
  %25 = sub i16 %1, %3
  %26 = add i16 %3, %1
  %27 = sub i16 %2, %3
  %28 = add i16 %3, %2
  %29 = tail call ptr @view3d_read_backbuf(ptr noundef nonnull %0, i16 noundef signext %25, i16 noundef signext %27, i16 noundef signext %26, i16 noundef signext %28) #15
  %30 = load i32, ptr @bm_vertoffs, align 4, !tbaa !23
  %31 = icmp eq i32 %30, 0
  %32 = icmp eq ptr %29, null
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %77, label %34

34:                                               ; preds = %24
  %35 = sext i16 %3 to i32
  %36 = getelementptr inbounds %struct.ImBuf, ptr %29, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !72
  %38 = add i32 %30, 1
  %39 = tail call fastcc ptr @edbm_backbuf_alloc(i32 noundef %38) #14
  store ptr %39, ptr @selbuf, align 8, !tbaa !75
  %40 = mul nsw i32 %35, %35
  %41 = sub i16 0, %3
  %42 = icmp sgt i16 %41, %3
  br i1 %42, label %76, label %43

43:                                               ; preds = %34, %73
  %44 = phi i16 [ %74, %73 ], [ %41, %34 ]
  %45 = phi ptr [ %71, %73 ], [ %37, %34 ]
  %46 = sext i16 %44 to i32
  %47 = mul nsw i32 %46, %46
  br label %48

48:                                               ; preds = %43, %69
  %49 = phi i16 [ %41, %43 ], [ %70, %69 ]
  %50 = phi ptr [ %45, %43 ], [ %71, %69 ]
  %51 = sext i16 %49 to i32
  %52 = mul nsw i32 %51, %51
  %53 = add nuw nsw i32 %52, %47
  %54 = icmp ult i32 %53, %40
  br i1 %54, label %55, label %69

55:                                               ; preds = %48
  %56 = load i32, ptr %50, align 4, !tbaa !23
  %57 = load i32, ptr @bm_vertoffs, align 4
  %58 = freeze i32 %57
  %59 = add i32 %56, -1
  %60 = icmp ult i32 %59, %58
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = and i32 %56, 31
  %63 = shl nuw i32 1, %62
  %64 = lshr i32 %56, 5
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %39, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !23
  %68 = or i32 %67, %63
  store i32 %68, ptr %66, align 4, !tbaa !23
  br label %69

69:                                               ; preds = %48, %61, %55
  %70 = add i16 %49, 1
  %71 = getelementptr inbounds i32, ptr %50, i64 1
  %72 = icmp sgt i16 %70, %3
  br i1 %72, label %73, label %48, !llvm.loop !84

73:                                               ; preds = %69
  %74 = add i16 %44, 1
  %75 = icmp sgt i16 %74, %3
  br i1 %75, label %76, label %43, !llvm.loop !85

76:                                               ; preds = %73, %34
  tail call void @IMB_freeImBuf(ptr noundef nonnull %29) #15
  br label %77

77:                                               ; preds = %24, %13, %19, %8, %76
  %78 = phi i8 [ 1, %76 ], [ 0, %8 ], [ 0, %19 ], [ 0, %13 ], [ 0, %24 ]
  ret i8 %78
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @EDBM_vert_find_nearest(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = alloca %struct.anon, align 8
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 24
  %10 = load i16, ptr %9, align 8, !tbaa !69
  %11 = icmp sgt i16 %10, 2
  br i1 %11, label %12, label %45

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 28
  %14 = load i16, ptr %13, align 8, !tbaa !71
  %15 = and i16 %14, 4096
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %18 = icmp eq i8 %3, 0
  %19 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 7
  %20 = load i32, ptr @bm_wireoffs, align 4, !tbaa !23
  br i1 %18, label %26, label %21

21:                                               ; preds = %17
  %22 = zext i8 %3 to i16
  %23 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !86
  %25 = call i32 @view3d_sample_backbuf_rect(ptr noundef nonnull %0, ptr noundef nonnull %19, i32 noundef 50, i32 noundef %20, i32 noundef 16777215, ptr noundef nonnull %5, i16 noundef signext %22, ptr noundef %24, ptr noundef nonnull @findnearestvert__backbufIndextest) #15
  br label %28

26:                                               ; preds = %17
  %27 = call i32 @view3d_sample_backbuf_rect(ptr noundef nonnull %0, ptr noundef nonnull %19, i32 noundef 50, i32 noundef %20, i32 noundef 16777215, ptr noundef nonnull %5, i16 noundef signext 0, ptr noundef null, ptr noundef null) #15
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi i32 [ %25, %21 ], [ %27, %26 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !86
  %34 = load ptr, ptr %33, align 8, !tbaa !19
  %35 = add i32 %29, -1
  %36 = call ptr @BM_vert_at_index_find(ptr noundef %34, i32 noundef %35) #15
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load float, ptr %5, align 4, !tbaa !87
  %40 = load float, ptr %1, align 4, !tbaa !87
  %41 = fcmp olt float %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store float %39, ptr %1, align 4, !tbaa !87
  br label %43

43:                                               ; preds = %28, %31, %38, %42
  %44 = phi ptr [ %36, %42 ], [ null, %38 ], [ null, %31 ], [ null, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %89

45:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #13
  %46 = load ptr, ptr @EDBM_vert_find_nearest.lastSelected, align 8, !tbaa !75
  %47 = icmp eq ptr %46, null
  %48 = load i32, ptr @EDBM_vert_find_nearest.lastSelectedIndex, align 4, !tbaa !23
  br i1 %47, label %59, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !86
  %52 = load ptr, ptr %51, align 8, !tbaa !19
  %53 = tail call ptr @BM_vert_at_index_find(ptr noundef %52, i32 noundef %48) #15
  %54 = load ptr, ptr @EDBM_vert_find_nearest.lastSelected, align 8, !tbaa !75
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, ptr @EDBM_vert_find_nearest.lastSelectedIndex, align 4, !tbaa !23
  br label %59

58:                                               ; preds = %49
  store i32 0, ptr @EDBM_vert_find_nearest.lastSelectedIndex, align 4, !tbaa !23
  store ptr null, ptr @EDBM_vert_find_nearest.lastSelected, align 8, !tbaa !75
  br label %59

59:                                               ; preds = %56, %58, %45
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ], [ %48, %45 ]
  %61 = sitofp i32 %60 to float
  %62 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 5
  store float %61, ptr %62, align 8, !tbaa !88
  %63 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 7
  %64 = load <2 x i32>, ptr %63, align 8, !tbaa !23
  %65 = sitofp <2 x i32> %64 to <2 x float>
  store <2 x float> %65, ptr %6, align 8, !tbaa !87
  %66 = icmp ne i8 %2, 0
  %67 = uitofp i1 %66 to float
  %68 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 2
  store float %67, ptr %68, align 4, !tbaa !90
  %69 = load float, ptr %1, align 4, !tbaa !87
  %70 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 4
  store float %69, ptr %70, align 4, !tbaa !91
  %71 = uitofp i8 %3 to float
  %72 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 3
  store float %71, ptr %72, align 8, !tbaa !92
  %73 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 7
  store ptr null, ptr %73, align 8, !tbaa !93
  %74 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 6
  store float 0.000000e+00, ptr %74, align 4, !tbaa !94
  %75 = getelementptr inbounds %struct.anon, ptr %6, i64 0, i32 1
  store float 0.000000e+00, ptr %75, align 8, !tbaa !95
  %76 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !66
  %78 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !96
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %77, ptr noundef %79) #15
  call void @mesh_foreachScreenVert(ptr noundef nonnull %0, ptr noundef nonnull @findnearestvert__doClosest, ptr noundef nonnull %6, i32 noundef 7) #15
  %80 = load float, ptr %70, align 4, !tbaa !91
  %81 = fcmp ogt float %80, 3.000000e+00
  br i1 %81, label %82, label %84

82:                                               ; preds = %59
  store float 1.000000e+00, ptr %75, align 8, !tbaa !95
  call void @mesh_foreachScreenVert(ptr noundef nonnull %0, ptr noundef nonnull @findnearestvert__doClosest, ptr noundef nonnull %6, i32 noundef 7) #15
  %83 = load float, ptr %70, align 4, !tbaa !91
  br label %84

84:                                               ; preds = %82, %59
  %85 = phi float [ %83, %82 ], [ %80, %59 ]
  store float %85, ptr %1, align 4, !tbaa !87
  %86 = load ptr, ptr %73, align 8, !tbaa !93
  store ptr %86, ptr @EDBM_vert_find_nearest.lastSelected, align 8, !tbaa !75
  %87 = load float, ptr %74, align 4, !tbaa !94
  %88 = fptosi float %87 to i32
  store i32 %88, ptr @EDBM_vert_find_nearest.lastSelectedIndex, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #13
  br label %89

89:                                               ; preds = %84, %43
  %90 = phi ptr [ %44, %43 ], [ %86, %84 ]
  ret ptr %90
}

; Function Attrs: optsize
declare i32 @view3d_sample_backbuf_rect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @findnearestvert__backbufIndextest(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !19
  %4 = add i32 %1, -1
  %5 = tail call ptr @BM_vert_at_index_find(ptr noundef %3, i32 noundef %4) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %5, i8 noundef zeroext 1) #14, !range !26
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i8 [ 1, %2 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @BM_vert_at_index_find(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mesh_foreachScreenVert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @findnearestvert__doClosest(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.anon.3, ptr %0, i64 0, i32 1
  %6 = load float, ptr %5, align 8, !tbaa !95
  %7 = fcmp oeq float %6, 0.000000e+00
  %8 = sitofp i32 %3 to float
  %9 = getelementptr inbounds %struct.anon.3, ptr %0, i64 0, i32 5
  %10 = load float, ptr %9, align 8, !tbaa !88
  br i1 %7, label %11, label %13

11:                                               ; preds = %4
  %12 = fcmp ult float %10, %8
  br i1 %12, label %15, label %39

13:                                               ; preds = %4
  %14 = fcmp olt float %10, %8
  br i1 %14, label %39, label %15

15:                                               ; preds = %13, %11
  %16 = getelementptr inbounds %struct.anon.3, ptr %0, i64 0, i32 4
  %17 = load float, ptr %16, align 4, !tbaa !91
  %18 = fcmp ogt float %17, 3.000000e+00
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = tail call fastcc float @len_manhattan_v2v2(ptr noundef nonnull %0, ptr noundef %2) #14
  %21 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %1, i8 noundef zeroext 1) #14, !range !26
  %22 = uitofp i8 %21 to float
  %23 = getelementptr inbounds %struct.anon.3, ptr %0, i64 0, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !90
  %25 = fcmp oeq float %24, %22
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.anon.3, ptr %0, i64 0, i32 3
  %28 = load float, ptr %27, align 8, !tbaa !92
  %29 = fcmp oeq float %28, 1.000000e+00
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = fadd float %20, 5.000000e+00
  br label %32

32:                                               ; preds = %30, %19
  %33 = phi float [ %31, %30 ], [ %20, %19 ]
  %34 = fcmp olt float %33, %17
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  store float %33, ptr %16, align 4, !tbaa !91
  %36 = getelementptr inbounds %struct.anon.3, ptr %0, i64 0, i32 7
  store ptr %1, ptr %36, align 8, !tbaa !93
  %37 = sitofp i32 %3 to float
  %38 = getelementptr inbounds %struct.anon.3, ptr %0, i64 0, i32 6
  store float %37, ptr %38, align 4, !tbaa !94
  br label %39

39:                                               ; preds = %26, %15, %32, %35, %13, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @EDBM_edge_find_nearest(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = alloca %struct.anon.0, align 8
  %5 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 24
  %8 = load i16, ptr %7, align 8, !tbaa !69
  %9 = icmp sgt i16 %8, 2
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 28
  %12 = load i16, ptr %11, align 8, !tbaa !71
  %13 = and i16 %12, 4096
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  tail call void @view3d_validate_backbuf(ptr noundef nonnull %0) #15
  %16 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 7
  %17 = load i32, ptr @bm_solidoffs, align 4, !tbaa !23
  %18 = load i32, ptr @bm_wireoffs, align 4, !tbaa !23
  %19 = call i32 @view3d_sample_backbuf_rect(ptr noundef nonnull %0, ptr noundef nonnull %16, i32 noundef 50, i32 noundef %17, i32 noundef %18, ptr noundef nonnull %3, i16 noundef signext 0, ptr noundef null, ptr noundef null) #15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  %24 = load ptr, ptr %23, align 8, !tbaa !19
  %25 = add i32 %19, -1
  %26 = call ptr @BM_edge_at_index_find(ptr noundef %24, i32 noundef %25) #15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load float, ptr %3, align 4, !tbaa !87
  %30 = load float, ptr %1, align 4, !tbaa !87
  %31 = fcmp olt float %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store float %29, ptr %1, align 4, !tbaa !87
  br label %33

33:                                               ; preds = %15, %21, %28, %32
  %34 = phi ptr [ %26, %32 ], [ null, %28 ], [ null, %21 ], [ null, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %49

35:                                               ; preds = %10, %2
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !97
  %36 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 7
  %37 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 1
  %38 = load <2 x i32>, ptr %36, align 8, !tbaa !23
  %39 = sitofp <2 x i32> %38 to <2 x float>
  store <2 x float> %39, ptr %37, align 8, !tbaa !87
  %40 = load float, ptr %1, align 4, !tbaa !87
  %41 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 2
  store float %40, ptr %41, align 8, !tbaa !99
  %42 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 3
  store ptr null, ptr %42, align 8, !tbaa !101
  %43 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !66
  %45 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !96
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %44, ptr noundef %46) #15
  call void @mesh_foreachScreenEdge(ptr noundef nonnull %0, ptr noundef nonnull @findnearestedge__doClosest, ptr noundef nonnull %4, i32 noundef 2) #15
  %47 = load float, ptr %41, align 8, !tbaa !99
  store float %47, ptr %1, align 4, !tbaa !87
  %48 = load ptr, ptr %42, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #13
  br label %49

49:                                               ; preds = %35, %33
  %50 = phi ptr [ %34, %33 ], [ %48, %35 ]
  ret ptr %50
}

; Function Attrs: optsize
declare void @view3d_validate_backbuf(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BM_edge_at_index_find(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @mesh_foreachScreenEdge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @findnearestedge__doClosest(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 %4) #0 {
  %6 = alloca [3 x float], align 8
  %7 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 1
  %8 = tail call float @dist_to_line_segment_v2(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3) #15
  %9 = fptosi float %8 to i32
  %10 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %1, i8 noundef zeroext 1) #14, !range !26
  %11 = icmp eq i8 %10, 0
  %12 = add nsw i32 %9, 5
  %13 = select i1 %11, i32 %9, i32 %12
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 2
  %16 = load float, ptr %15, align 8, !tbaa !99
  %17 = fcmp ogt float %16, %14
  br i1 %17, label %18, label %54

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !102
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %20, i64 0, i32 32
  %22 = load i16, ptr %21, align 2, !tbaa !103
  %23 = and i16 %22, 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %18
  %26 = tail call float @line_point_factor_v2(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  %27 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !105
  %29 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2
  %30 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !108
  %32 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2
  %33 = load <2 x float>, ptr %29, align 8, !tbaa !87
  %34 = load <2 x float>, ptr %32, align 8, !tbaa !87
  %35 = fsub <2 x float> %34, %33
  %36 = insertelement <2 x float> poison, float %26, i64 0
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> zeroinitializer
  %38 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %37, <2 x float> %35, <2 x float> %33)
  store <2 x float> %38, ptr %6, align 8, !tbaa !87
  %39 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2, i64 2
  %40 = load float, ptr %39, align 8, !tbaa !87
  %41 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2, i64 2
  %42 = load float, ptr %41, align 8, !tbaa !87
  %43 = fsub float %42, %40
  %44 = tail call float @llvm.fmuladd.f32(float %26, float %43, float %40)
  %45 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %44, ptr %45, align 8, !tbaa !87
  %46 = load ptr, ptr %19, align 8, !tbaa !102
  %47 = call zeroext i8 @ED_view3d_clipping_test(ptr noundef %46, ptr noundef nonnull %6, i8 noundef zeroext 1) #15
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %25
  store float %14, ptr %15, align 8, !tbaa !99
  %50 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 3
  store ptr %1, ptr %50, align 8, !tbaa !101
  br label %51

51:                                               ; preds = %49, %25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  br label %54

52:                                               ; preds = %18
  store float %14, ptr %15, align 8, !tbaa !99
  %53 = getelementptr inbounds %struct.anon.4, ptr %0, i64 0, i32 3
  store ptr %1, ptr %53, align 8, !tbaa !101
  br label %54

54:                                               ; preds = %51, %52, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @EDBM_face_find_nearest(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.anon.1, align 8
  %4 = alloca %struct.anon.2, align 8
  %5 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 24
  %8 = load i16, ptr %7, align 8, !tbaa !69
  %9 = icmp sgt i16 %8, 2
  br i1 %9, label %10, label %48

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 28
  %12 = load i16, ptr %11, align 8, !tbaa !71
  %13 = and i16 %12, 4096
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %10
  tail call void @view3d_validate_backbuf(ptr noundef nonnull %0) #15
  %16 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !23
  %18 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 7, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !23
  %20 = tail call i32 @view3d_sample_backbuf(ptr noundef nonnull %0, i32 noundef %17, i32 noundef %19) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %87, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !86
  %25 = load ptr, ptr %24, align 8, !tbaa !19
  %26 = add i32 %20, -1
  %27 = tail call ptr @BM_face_at_index_find(ptr noundef %25, i32 noundef %26) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %87, label %29

29:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %30 = load <2 x i32>, ptr %16, align 8, !tbaa !23
  %31 = sitofp <2 x i32> %30 to <2 x float>
  store <2 x float> %31, ptr %3, align 8, !tbaa !87
  %32 = getelementptr inbounds %struct.anon.1, ptr %3, i64 0, i32 1
  store float 0x47EFFFFFE0000000, ptr %32, align 8, !tbaa !109
  %33 = getelementptr inbounds %struct.anon.1, ptr %3, i64 0, i32 2
  store ptr %27, ptr %33, align 8, !tbaa !111
  %34 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !66
  %36 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !96
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %35, ptr noundef %37) #15
  call void @mesh_foreachScreenFace(ptr noundef nonnull %0, ptr noundef nonnull @findnearestface__getDistance, ptr noundef nonnull %3, i32 noundef 7) #15
  %38 = load ptr, ptr %23, align 8, !tbaa !86
  %39 = getelementptr inbounds %struct.BMEditMesh, ptr %38, i64 0, i32 12
  %40 = load i16, ptr %39, align 4, !tbaa !29
  %41 = icmp eq i16 %40, 4
  %42 = load float, ptr %32, align 8, !tbaa !109
  br i1 %41, label %46, label %43

43:                                               ; preds = %29
  %44 = load float, ptr %1, align 4, !tbaa !87
  %45 = fcmp olt float %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %29
  store float %42, ptr %1, align 4, !tbaa !87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %87

47:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %87

48:                                               ; preds = %10, %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  %49 = load ptr, ptr @EDBM_face_find_nearest.lastSelected, align 8, !tbaa !75
  %50 = icmp eq ptr %49, null
  %51 = load i32, ptr @EDBM_face_find_nearest.lastSelectedIndex, align 4, !tbaa !23
  br i1 %50, label %62, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !86
  %55 = load ptr, ptr %54, align 8, !tbaa !19
  %56 = tail call ptr @BM_face_at_index_find(ptr noundef %55, i32 noundef %51) #15
  %57 = load ptr, ptr @EDBM_face_find_nearest.lastSelected, align 8, !tbaa !75
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, ptr @EDBM_face_find_nearest.lastSelectedIndex, align 4, !tbaa !23
  br label %62

61:                                               ; preds = %52
  store i32 0, ptr @EDBM_face_find_nearest.lastSelectedIndex, align 4, !tbaa !23
  store ptr null, ptr @EDBM_face_find_nearest.lastSelected, align 8, !tbaa !75
  br label %62

62:                                               ; preds = %59, %61, %48
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ], [ %51, %48 ]
  %64 = sitofp i32 %63 to float
  %65 = getelementptr inbounds %struct.anon.2, ptr %4, i64 0, i32 3
  store float %64, ptr %65, align 8, !tbaa !112
  %66 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 7
  %67 = load <2 x i32>, ptr %66, align 8, !tbaa !23
  %68 = sitofp <2 x i32> %67 to <2 x float>
  store <2 x float> %68, ptr %4, align 8, !tbaa !87
  %69 = load float, ptr %1, align 4, !tbaa !87
  %70 = getelementptr inbounds %struct.anon.2, ptr %4, i64 0, i32 2
  store float %69, ptr %70, align 4, !tbaa !114
  %71 = getelementptr inbounds %struct.anon.2, ptr %4, i64 0, i32 5
  store ptr null, ptr %71, align 8, !tbaa !115
  %72 = getelementptr inbounds %struct.anon.2, ptr %4, i64 0, i32 4
  store float 0.000000e+00, ptr %72, align 4, !tbaa !116
  %73 = getelementptr inbounds %struct.anon.2, ptr %4, i64 0, i32 1
  store float 0.000000e+00, ptr %73, align 8, !tbaa !117
  %74 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !66
  %76 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !96
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %75, ptr noundef %77) #15
  call void @mesh_foreachScreenFace(ptr noundef nonnull %0, ptr noundef nonnull @findnearestface__doClosest, ptr noundef nonnull %4, i32 noundef 7) #15
  %78 = load float, ptr %70, align 4, !tbaa !114
  %79 = fcmp ogt float %78, 3.000000e+00
  br i1 %79, label %80, label %82

80:                                               ; preds = %62
  store float 1.000000e+00, ptr %73, align 8, !tbaa !117
  call void @mesh_foreachScreenFace(ptr noundef nonnull %0, ptr noundef nonnull @findnearestface__doClosest, ptr noundef nonnull %4, i32 noundef 7) #15
  %81 = load float, ptr %70, align 4, !tbaa !114
  br label %82

82:                                               ; preds = %80, %62
  %83 = phi float [ %81, %80 ], [ %78, %62 ]
  store float %83, ptr %1, align 4, !tbaa !87
  %84 = load ptr, ptr %71, align 8, !tbaa !115
  store ptr %84, ptr @EDBM_face_find_nearest.lastSelected, align 8, !tbaa !75
  %85 = load float, ptr %72, align 4, !tbaa !116
  %86 = fptosi float %85 to i32
  store i32 %86, ptr @EDBM_face_find_nearest.lastSelectedIndex, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  br label %87

87:                                               ; preds = %15, %46, %47, %22, %82
  %88 = phi ptr [ %84, %82 ], [ %27, %46 ], [ null, %47 ], [ null, %22 ], [ null, %15 ]
  ret ptr %88
}

; Function Attrs: optsize
declare i32 @view3d_sample_backbuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BM_face_at_index_find(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mesh_foreachScreenFace(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @findnearestface__getDistance(ptr nocapture noundef %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, i32 %3) #2 {
  %5 = getelementptr inbounds %struct.anon.5, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = tail call fastcc float @len_manhattan_v2v2(ptr noundef nonnull %0, ptr noundef %2) #14
  %10 = getelementptr inbounds %struct.anon.5, ptr %0, i64 0, i32 1
  %11 = load float, ptr %10, align 8, !tbaa !109
  %12 = fcmp olt float %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store float %9, ptr %10, align 8, !tbaa !109
  br label %14

14:                                               ; preds = %8, %13, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @findnearestface__doClosest(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.anon.6, ptr %0, i64 0, i32 1
  %6 = load float, ptr %5, align 8, !tbaa !117
  %7 = fcmp oeq float %6, 0.000000e+00
  %8 = sitofp i32 %3 to float
  %9 = getelementptr inbounds %struct.anon.6, ptr %0, i64 0, i32 3
  %10 = load float, ptr %9, align 8, !tbaa !112
  br i1 %7, label %11, label %13

11:                                               ; preds = %4
  %12 = fcmp ult float %10, %8
  br i1 %12, label %15, label %26

13:                                               ; preds = %4
  %14 = fcmp olt float %10, %8
  br i1 %14, label %26, label %15

15:                                               ; preds = %13, %11
  %16 = getelementptr inbounds %struct.anon.6, ptr %0, i64 0, i32 2
  %17 = load float, ptr %16, align 4, !tbaa !114
  %18 = fcmp ogt float %17, 3.000000e+00
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = tail call fastcc float @len_manhattan_v2v2(ptr noundef nonnull %0, ptr noundef %2) #14
  %21 = fcmp olt float %20, %17
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  store float %20, ptr %16, align 4, !tbaa !114
  %23 = getelementptr inbounds %struct.anon.6, ptr %0, i64 0, i32 5
  store ptr %1, ptr %23, align 8, !tbaa !115
  %24 = sitofp i32 %3 to float
  %25 = getelementptr inbounds %struct.anon.6, ptr %0, i64 0, i32 4
  store float %24, ptr %25, align 4, !tbaa !116
  br label %26

26:                                               ; preds = %15, %22, %19, %13, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_select_similar(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.3, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_similar_exec, ptr %5, align 8, !tbaa !124
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %6, align 8, !tbaa !125
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !126
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !127
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef nonnull @prop_similar_types, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #15
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !128
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @select_similar_type_itemf) #15
  %12 = load ptr, ptr %8, align 8, !tbaa !127
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.7, ptr noundef nonnull @prop_similar_compare_types, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6) #15
  %14 = load ptr, ptr %8, align 8, !tbaa !127
  %15 = tail call ptr @RNA_def_float(ptr noundef %14, ptr noundef nonnull @.str.9, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6, float noundef 0.000000e+00, float noundef 1.000000e+00) #15
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_similar_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !129
  %6 = tail call ptr @RNA_struct_find_property(ptr noundef %5, ptr noundef nonnull @.str.9) #15
  %7 = load ptr, ptr %4, align 8, !tbaa !129
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.4) #15
  %9 = load ptr, ptr %4, align 8, !tbaa !129
  %10 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %9, ptr noundef %6) #15
  %11 = icmp eq i8 %10, 0
  %12 = load ptr, ptr %4, align 8, !tbaa !129
  br i1 %11, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 20
  %15 = load float, ptr %14, align 4, !tbaa !131
  tail call void @RNA_property_float_set(ptr noundef %12, ptr noundef %6, float noundef %15) #15
  br label %19

16:                                               ; preds = %2
  %17 = tail call float @RNA_property_float_get(ptr noundef %12, ptr noundef %6) #15
  %18 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 20
  store float %17, ptr %18, align 4, !tbaa !131
  br label %19

19:                                               ; preds = %16, %13
  %20 = icmp slt i32 %8, 100
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = tail call fastcc i32 @similar_vert_select_exec(ptr noundef %0, ptr noundef nonnull %1) #14, !range !132
  br label %29

23:                                               ; preds = %19
  %24 = icmp ult i32 %8, 200
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = tail call fastcc i32 @similar_edge_select_exec(ptr noundef %0, ptr noundef nonnull %1) #14, !range !132
  br label %29

27:                                               ; preds = %23
  %28 = tail call fastcc i32 @similar_face_select_exec(ptr noundef %0, ptr noundef nonnull %1) #14, !range !132
  br label %29

29:                                               ; preds = %27, %25, %21
  %30 = phi i32 [ %22, %21 ], [ %26, %25 ], [ %28, %27 ]
  ret i32 %30
}

; Function Attrs: optsize
declare i32 @ED_operator_editmesh(ptr noundef) #4

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @select_similar_type_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %42, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef nonnull %0) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !133
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr null, ptr %5, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !tbaa !23
  %16 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %9) #15
  %17 = getelementptr inbounds %struct.BMEditMesh, ptr %16, i64 0, i32 12
  %18 = load i16, ptr %17, align 4, !tbaa !29
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15, %22
  %23 = phi i32 [ %24, %22 ], [ 0, %15 ]
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @prop_similar_types, i32 noundef %23) #15
  %24 = add nuw nsw i32 %23, 1
  %25 = icmp eq i32 %24, 101
  br i1 %25, label %40, label %22, !llvm.loop !134

26:                                               ; preds = %15
  %27 = and i32 %19, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26, %29
  %30 = phi i32 [ %31, %29 ], [ 101, %26 ]
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @prop_similar_types, i32 noundef %30) #15
  %31 = add nuw nsw i32 %30, 1
  %32 = icmp eq i32 %31, 201
  br i1 %32, label %40, label %29, !llvm.loop !135

33:                                               ; preds = %26
  %34 = and i32 %19, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33, %36
  %37 = phi i32 [ %38, %36 ], [ 201, %33 ]
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @prop_similar_types, i32 noundef %37) #15
  %38 = add nuw nsw i32 %37, 1
  %39 = icmp eq i32 %38, 208
  br i1 %39, label %40, label %36, !llvm.loop !136

40:                                               ; preds = %22, %29, %36, %33
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  store i8 1, ptr %3, align 1, !tbaa !98
  %41 = load ptr, ptr %5, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br label %42

42:                                               ; preds = %8, %11, %4, %40
  %43 = phi ptr [ %41, %40 ], [ @prop_similar_types, %4 ], [ null, %11 ], [ null, %8 ]
  ret ptr %43
}

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_select_similar_region(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_similar_region_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_similar_region_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #15
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !137
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !138
  tail call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.218) #15
  br label %87

14:                                               ; preds = %2
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %16 = zext nneg i32 %9 to i64
  %17 = shl nuw nsw i64 %16, 2
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @__func__.edbm_select_similar_region_exec) #15
  %19 = call i32 @BM_mesh_calc_face_groups(ptr noundef nonnull %7, ptr noundef %18, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  call void @BM_mesh_elem_table_ensure(ptr noundef nonnull %7, i8 noundef zeroext 8) #15
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %22(ptr noundef %18) #15
  br label %84

23:                                               ; preds = %14
  %24 = zext nneg i32 %19 to i64
  br label %25

25:                                               ; preds = %23, %76
  %26 = phi i64 [ 0, %23 ], [ %78, %76 ]
  %27 = phi i8 [ 0, %23 ], [ %77, %76 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %28 = load ptr, ptr %3, align 8, !tbaa !75
  %29 = getelementptr inbounds [2 x i32], ptr %28, i64 %26
  %30 = load i32, ptr %29, align 4, !tbaa !23
  %31 = getelementptr inbounds [2 x i32], ptr %28, i64 %26, i64 1
  %32 = load i32, ptr %31, align 4, !tbaa !23
  %33 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %34 = sext i32 %32 to i64
  %35 = shl nsw i64 %34, 3
  %36 = call ptr %33(i64 noundef %35, ptr noundef nonnull @__func__.edbm_select_similar_region_exec) #15
  %37 = icmp sgt i32 %32, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %25
  %39 = sext i32 %30 to i64
  %40 = zext nneg i32 %32 to i64
  %41 = getelementptr i32, ptr %18, i64 %39
  br label %42

42:                                               ; preds = %38, %42
  %43 = phi i64 [ 0, %38 ], [ %48, %42 ]
  %44 = getelementptr i32, ptr %41, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !23
  %46 = call ptr @BM_face_at_index(ptr noundef %7, i32 noundef %45) #15
  %47 = getelementptr inbounds ptr, ptr %36, i64 %43
  store ptr %46, ptr %47, align 8, !tbaa !75
  %48 = add nuw nsw i64 %43, 1
  %49 = icmp eq i64 %48, %40
  br i1 %49, label %50, label %42, !llvm.loop !139

50:                                               ; preds = %42, %25
  %51 = call i32 @BM_mesh_region_match(ptr noundef %7, ptr noundef %36, i32 noundef %32, ptr noundef nonnull %4) #15
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %52(ptr noundef %36) #15
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %76, label %54

54:                                               ; preds = %50
  %55 = call ptr @BLI_pophead(ptr noundef nonnull %4) #15
  %56 = icmp eq ptr %55, null
  br i1 %56, label %76, label %57

57:                                               ; preds = %54, %71
  %58 = phi ptr [ %74, %71 ], [ %55, %54 ]
  %59 = getelementptr inbounds %struct.LinkData, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !140
  %61 = load ptr, ptr %60, align 8, !tbaa !75
  %62 = icmp eq ptr %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %57, %63
  %64 = phi ptr [ %69, %63 ], [ %61, %57 ]
  %65 = phi i32 [ %66, %63 ], [ 0, %57 ]
  %66 = add i32 %65, 1
  call void @BM_face_select_set(ptr noundef %7, ptr noundef nonnull %64, i8 noundef zeroext 1) #15
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %60, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !75
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %63, !llvm.loop !142

71:                                               ; preds = %63, %57
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %72(ptr noundef nonnull %60) #15
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %73(ptr noundef nonnull %58) #15
  %74 = call ptr @BLI_pophead(ptr noundef nonnull %4) #15
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %57, !llvm.loop !143

76:                                               ; preds = %71, %54, %50
  %77 = phi i8 [ %27, %50 ], [ %27, %54 ], [ 1, %71 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  %78 = add nuw nsw i64 %26, 1
  %79 = icmp eq i64 %78, %24
  br i1 %79, label %80, label %25, !llvm.loop !144

80:                                               ; preds = %76
  %81 = icmp eq i8 %77, 0
  %82 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %82(ptr noundef %18) #15
  br i1 %81, label %84, label %83

83:                                               ; preds = %80
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %5) #15
  br label %87

84:                                               ; preds = %21, %80
  %85 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %86 = load ptr, ptr %85, align 8, !tbaa !138
  call void @BKE_report(ptr noundef %86, i32 noundef 16, ptr noundef nonnull @.str.219) #15
  br label %87

87:                                               ; preds = %83, %84, %11
  %88 = phi i32 [ 2, %11 ], [ 4, %84 ], [ 4, %83 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 %88
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_select_mode(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.30, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_select_mode_invoke, ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_mode_exec, ptr %5, align 8, !tbaa !124
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %6, align 8, !tbaa !125
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !126
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !127
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.32, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.6) #15
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 268435456) #15
  %11 = load ptr, ptr %8, align 8, !tbaa !127
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.34, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.6) #15
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #15
  %13 = load ptr, ptr %8, align 8, !tbaa !127
  %14 = tail call ptr @RNA_def_enum(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @MESH_OT_select_mode.elem_items, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #15
  %15 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %14, ptr %15, align 8, !tbaa !128
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 268435456) #15
  %16 = load ptr, ptr %8, align 8, !tbaa !127
  %17 = tail call ptr @RNA_def_enum(ptr noundef %16, ptr noundef nonnull @.str.36, ptr noundef nonnull @MESH_OT_select_mode.actions_items, i32 noundef 2, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_mode_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !129
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.32) #15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !129
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %11 = load i16, ptr %10, align 8, !tbaa !145
  %12 = sext i16 %11 to i32
  tail call void @RNA_boolean_set(ptr noundef %9, ptr noundef nonnull @.str.32, i32 noundef %12) #15
  br label %13

13:                                               ; preds = %8, %3
  %14 = load ptr, ptr %4, align 8, !tbaa !129
  %15 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %14, ptr noundef nonnull @.str.34) #15
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load ptr, ptr %4, align 8, !tbaa !129
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %20 = load i16, ptr %19, align 2, !tbaa !148
  %21 = sext i16 %20 to i32
  tail call void @RNA_boolean_set(ptr noundef %18, ptr noundef nonnull @.str.34, i32 noundef %21) #15
  br label %22

22:                                               ; preds = %17, %13
  %23 = tail call i32 @edbm_select_mode_exec(ptr noundef %0, ptr noundef nonnull %1) #14, !range !132
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_mode_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !129
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.4) #15
  %6 = load ptr, ptr %3, align 8, !tbaa !129
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.36) #15
  %8 = load ptr, ptr %3, align 8, !tbaa !129
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.32) #15
  %10 = trunc i32 %9 to i8
  %11 = load ptr, ptr %3, align 8, !tbaa !129
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.34) #15
  %13 = trunc i32 %12 to i8
  %14 = trunc i32 %5 to i16
  %15 = tail call zeroext i8 @EDBM_selectmode_toggle(ptr noundef %0, i16 noundef signext %14, i32 noundef %7, i8 noundef zeroext %10, i8 noundef zeroext %13) #14, !range !35
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i32 2, i32 4
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_loop_multi_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_loop_multiselect_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_loop_multiselect_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.42) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %9 = load ptr, ptr %5, align 8, !tbaa !19
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %9, i8 noundef zeroext 2, ptr noundef null) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %2, %12
  %13 = phi i32 [ %18, %12 ], [ 0, %2 ]
  %14 = phi ptr [ %19, %12 ], [ %10, %2 ]
  %15 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %14, i8 noundef zeroext 1) #14, !range !26
  %16 = icmp ne i8 %15, 0
  %17 = zext i1 %16 to i32
  %18 = add nuw nsw i32 %13, %17
  %19 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %12, !llvm.loop !149

21:                                               ; preds = %12, %2
  %22 = phi i32 [ 0, %2 ], [ %18, %12 ]
  %23 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %24 = zext i32 %22 to i64
  %25 = shl nuw nsw i64 %24, 3
  %26 = call ptr %23(i64 noundef %25, ptr noundef nonnull @.str.220) #15
  %27 = load ptr, ptr %5, align 8, !tbaa !19
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %27, i8 noundef zeroext 2, ptr noundef null) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %21, %39
  %31 = phi ptr [ %41, %39 ], [ %28, %21 ]
  %32 = phi i32 [ %40, %39 ], [ 0, %21 ]
  %33 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %31, i8 noundef zeroext 1) #14, !range !26
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = sext i32 %32 to i64
  %37 = getelementptr inbounds ptr, ptr %26, i64 %36
  store ptr %31, ptr %37, align 8, !tbaa !75
  %38 = add nsw i32 %32, 1
  br label %39

39:                                               ; preds = %30, %35
  %40 = phi i32 [ %38, %35 ], [ %32, %30 ]
  %41 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %30, !llvm.loop !150

43:                                               ; preds = %39, %21
  %44 = and i32 %8, 255
  %45 = icmp eq i32 %44, 0
  %46 = icmp eq i32 %22, 0
  br i1 %45, label %48, label %47

47:                                               ; preds = %43
  br i1 %46, label %61, label %49

48:                                               ; preds = %43
  br i1 %46, label %61, label %55

49:                                               ; preds = %47, %49
  %50 = phi i64 [ %53, %49 ], [ 0, %47 ]
  %51 = getelementptr inbounds ptr, ptr %26, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !75
  call fastcc void @walker_select(ptr noundef nonnull %5, i32 noundef 4, ptr noundef %52, i8 noundef zeroext 1) #14
  %53 = add nuw nsw i64 %50, 1
  %54 = icmp eq i64 %53, %24
  br i1 %54, label %61, label %49, !llvm.loop !151

55:                                               ; preds = %48, %55
  %56 = phi i64 [ %59, %55 ], [ 0, %48 ]
  %57 = getelementptr inbounds ptr, ptr %26, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !75
  call fastcc void @walker_select(ptr noundef nonnull %5, i32 noundef 2, ptr noundef %58, i8 noundef zeroext 1) #14
  %59 = add nuw nsw i64 %56, 1
  %60 = icmp eq i64 %59, %24
  br i1 %60, label %61, label %55, !llvm.loop !152

61:                                               ; preds = %49, %55, %48, %47
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #15
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %62(ptr noundef %26) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_loop_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.44, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.45, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.46, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_select_loop_invoke, ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh_region_view3d, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #15
  %10 = load ptr, ptr %7, align 8, !tbaa !127
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.50, i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #15
  %12 = load ptr, ptr %7, align 8, !tbaa !127
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.53, i32 noundef 0, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) #15
  %14 = load ptr, ptr %7, align 8, !tbaa !127
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_loop_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.47) #15
  %8 = trunc i32 %7 to i8
  %9 = load ptr, ptr %5, align 8, !tbaa !129
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.50) #15
  %11 = trunc i32 %10 to i8
  %12 = load ptr, ptr %5, align 8, !tbaa !129
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.53) #15
  %14 = trunc i32 %13 to i8
  %15 = load ptr, ptr %5, align 8, !tbaa !129
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.42) #15
  %17 = trunc i32 %16 to i8
  %18 = tail call fastcc zeroext i8 @mouse_mesh_loop(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext %8, i8 noundef zeroext %11, i8 noundef zeroext %14, i8 noundef zeroext %17) #14, !range !35
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i32 2, i32 4
  ret i32 %20
}

; Function Attrs: optsize
declare i32 @ED_operator_editmesh_region_view3d(ptr noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_edgering_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.58, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.60, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_select_loop_invoke, ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh_region_view3d, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.49) #15
  %10 = load ptr, ptr %7, align 8, !tbaa !127
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.50, i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #15
  %12 = load ptr, ptr %7, align 8, !tbaa !127
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.53, i32 noundef 0, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) #15
  %14 = load ptr, ptr %7, align 8, !tbaa !127
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.42, i32 noundef 1, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_select_all(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.61, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.62, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.63, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_all_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.36) #15
  switch i32 %7, label %12 [
    i32 0, label %8
    i32 1, label %9
    i32 2, label %10
    i32 3, label %11
  ]

8:                                                ; preds = %2
  tail call void @EDBM_select_toggle_all(ptr noundef %4) #14
  br label %12

9:                                                ; preds = %2
  tail call void @EDBM_flag_enable_all(ptr noundef %4, i8 noundef zeroext 1) #15
  br label %12

10:                                               ; preds = %2
  tail call void @EDBM_flag_disable_all(ptr noundef %4, i8 noundef zeroext 1) #15
  br label %12

11:                                               ; preds = %2
  tail call void @EDBM_select_swap(ptr noundef %4) #14
  tail call void @EDBM_selectmode_flush(ptr noundef %4) #15
  br label %12

12:                                               ; preds = %2, %11, %10, %9, %8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: optsize
declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_select_interior_faces(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.64, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.65, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.66, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_faces_select_interior_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_faces_select_interior_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #15
  %5 = tail call zeroext i8 @EDBM_select_interior_faces(ptr noundef %4) #14, !range !35
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %3) #15
  br label %8

8:                                                ; preds = %2, %7
  %9 = phi i32 [ 4, %7 ], [ 2, %2 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @EDBM_select_pick(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ViewContext, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store ptr null, ptr %7, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  store ptr null, ptr %8, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  store ptr null, ptr %9, align 8, !tbaa !75
  call void @em_setup_viewcontext(ptr noundef %0, ptr noundef nonnull %6) #14
  %10 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 7
  %11 = load <2 x i32>, ptr %1, align 4, !tbaa !23
  store <2 x i32> %11, ptr %10, align 8, !tbaa !23
  %12 = call fastcc i32 @unified_findnearest(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #14, !range !153
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %169, label %14

14:                                               ; preds = %5
  %15 = or i8 %3, %2
  %16 = or i8 %15, %4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !86
  call void @EDBM_flag_disable_all(ptr noundef %20, i8 noundef zeroext 1) #15
  br label %21

21:                                               ; preds = %18, %14
  %22 = load ptr, ptr %9, align 8, !tbaa !75
  %23 = icmp eq ptr %22, null
  br i1 %23, label %56, label %24

24:                                               ; preds = %21
  %25 = icmp eq i8 %2, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !86
  %29 = load ptr, ptr %28, align 8, !tbaa !19
  call void @BM_mesh_active_face_set(ptr noundef %29, ptr noundef nonnull %22) #15
  %30 = load ptr, ptr %27, align 8, !tbaa !86
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = call zeroext i8 @_bm_select_history_remove(ptr noundef %31, ptr noundef nonnull %22) #15
  %33 = load ptr, ptr %27, align 8, !tbaa !86
  %34 = load ptr, ptr %33, align 8, !tbaa !19
  call void @BM_face_select_set(ptr noundef %34, ptr noundef nonnull %22, i8 noundef zeroext 0) #15
  %35 = load ptr, ptr %27, align 8, !tbaa !86
  %36 = load ptr, ptr %35, align 8, !tbaa !19
  call void @_bm_select_history_store(ptr noundef %36, ptr noundef nonnull %22) #15
  br label %145

37:                                               ; preds = %24
  %38 = icmp eq i8 %3, 0
  %39 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !86
  %41 = load ptr, ptr %40, align 8, !tbaa !19
  br i1 %38, label %44, label %42

42:                                               ; preds = %37
  %43 = call zeroext i8 @_bm_select_history_remove(ptr noundef %41, ptr noundef nonnull %22) #15
  br label %145

44:                                               ; preds = %37
  call void @BM_mesh_active_face_set(ptr noundef %41, ptr noundef nonnull %22) #15
  %45 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %22, i8 noundef zeroext 1) #14, !range !26
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load ptr, ptr %39, align 8, !tbaa !86
  %49 = load ptr, ptr %48, align 8, !tbaa !19
  call void @_bm_select_history_store(ptr noundef %49, ptr noundef nonnull %22) #15
  br label %145

50:                                               ; preds = %44
  %51 = icmp eq i8 %4, 0
  br i1 %51, label %150, label %52

52:                                               ; preds = %50
  %53 = load ptr, ptr %39, align 8, !tbaa !86
  %54 = load ptr, ptr %53, align 8, !tbaa !19
  %55 = call zeroext i8 @_bm_select_history_remove(ptr noundef %54, ptr noundef nonnull %22) #15
  br label %145

56:                                               ; preds = %21
  %57 = load ptr, ptr %8, align 8, !tbaa !75
  %58 = icmp eq ptr %57, null
  br i1 %58, label %99, label %59

59:                                               ; preds = %56
  %60 = icmp eq i8 %2, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !86
  %64 = load ptr, ptr %63, align 8, !tbaa !19
  %65 = call zeroext i8 @_bm_select_history_remove(ptr noundef %64, ptr noundef nonnull %57) #15
  %66 = load ptr, ptr %62, align 8, !tbaa !86
  %67 = load ptr, ptr %66, align 8, !tbaa !19
  call void @BM_edge_select_set(ptr noundef %67, ptr noundef nonnull %57, i8 noundef zeroext 0) #15
  %68 = load ptr, ptr %62, align 8, !tbaa !86
  %69 = load ptr, ptr %68, align 8, !tbaa !19
  call void @_bm_select_history_store(ptr noundef %69, ptr noundef nonnull %57) #15
  %70 = load ptr, ptr %62, align 8, !tbaa !86
  %71 = load ptr, ptr %70, align 8, !tbaa !19
  call void @BM_edge_select_set(ptr noundef %71, ptr noundef nonnull %57, i8 noundef zeroext 1) #15
  br label %142

72:                                               ; preds = %59
  %73 = icmp eq i8 %3, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !86
  %77 = load ptr, ptr %76, align 8, !tbaa !19
  %78 = call zeroext i8 @_bm_select_history_remove(ptr noundef %77, ptr noundef nonnull %57) #15
  %79 = load ptr, ptr %75, align 8, !tbaa !86
  %80 = load ptr, ptr %79, align 8, !tbaa !19
  call void @BM_edge_select_set(ptr noundef %80, ptr noundef nonnull %57, i8 noundef zeroext 0) #15
  br label %142

81:                                               ; preds = %72
  %82 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %57, i8 noundef zeroext 1) #14, !range !26
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !86
  %87 = load ptr, ptr %86, align 8, !tbaa !19
  call void @_bm_select_history_store(ptr noundef %87, ptr noundef nonnull %57) #15
  %88 = load ptr, ptr %85, align 8, !tbaa !86
  %89 = load ptr, ptr %88, align 8, !tbaa !19
  call void @BM_edge_select_set(ptr noundef %89, ptr noundef nonnull %57, i8 noundef zeroext 1) #15
  br label %142

90:                                               ; preds = %81
  %91 = icmp eq i8 %4, 0
  br i1 %91, label %142, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !86
  %95 = load ptr, ptr %94, align 8, !tbaa !19
  %96 = call zeroext i8 @_bm_select_history_remove(ptr noundef %95, ptr noundef nonnull %57) #15
  %97 = load ptr, ptr %93, align 8, !tbaa !86
  %98 = load ptr, ptr %97, align 8, !tbaa !19
  call void @BM_edge_select_set(ptr noundef %98, ptr noundef nonnull %57, i8 noundef zeroext 0) #15
  br label %142

99:                                               ; preds = %56
  %100 = load ptr, ptr %7, align 8, !tbaa !75
  %101 = icmp eq ptr %100, null
  br i1 %101, label %142, label %102

102:                                              ; preds = %99
  %103 = icmp eq i8 %2, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %106 = load ptr, ptr %105, align 8, !tbaa !86
  %107 = load ptr, ptr %106, align 8, !tbaa !19
  %108 = call zeroext i8 @_bm_select_history_remove(ptr noundef %107, ptr noundef nonnull %100) #15
  %109 = load ptr, ptr %105, align 8, !tbaa !86
  %110 = load ptr, ptr %109, align 8, !tbaa !19
  call void @BM_vert_select_set(ptr noundef %110, ptr noundef nonnull %100, i8 noundef zeroext 0) #15
  %111 = load ptr, ptr %105, align 8, !tbaa !86
  %112 = load ptr, ptr %111, align 8, !tbaa !19
  call void @_bm_select_history_store(ptr noundef %112, ptr noundef nonnull %100) #15
  %113 = load ptr, ptr %105, align 8, !tbaa !86
  %114 = load ptr, ptr %113, align 8, !tbaa !19
  call void @BM_vert_select_set(ptr noundef %114, ptr noundef nonnull %100, i8 noundef zeroext 1) #15
  br label %142

115:                                              ; preds = %102
  %116 = icmp eq i8 %3, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !86
  %120 = load ptr, ptr %119, align 8, !tbaa !19
  %121 = call zeroext i8 @_bm_select_history_remove(ptr noundef %120, ptr noundef nonnull %100) #15
  %122 = load ptr, ptr %118, align 8, !tbaa !86
  %123 = load ptr, ptr %122, align 8, !tbaa !19
  call void @BM_vert_select_set(ptr noundef %123, ptr noundef nonnull %100, i8 noundef zeroext 0) #15
  br label %142

124:                                              ; preds = %115
  %125 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %100, i8 noundef zeroext 1) #14, !range !26
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %129 = load ptr, ptr %128, align 8, !tbaa !86
  %130 = load ptr, ptr %129, align 8, !tbaa !19
  call void @_bm_select_history_store(ptr noundef %130, ptr noundef nonnull %100) #15
  %131 = load ptr, ptr %128, align 8, !tbaa !86
  %132 = load ptr, ptr %131, align 8, !tbaa !19
  call void @BM_vert_select_set(ptr noundef %132, ptr noundef nonnull %100, i8 noundef zeroext 1) #15
  br label %142

133:                                              ; preds = %124
  %134 = icmp eq i8 %4, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %133
  %136 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %137 = load ptr, ptr %136, align 8, !tbaa !86
  %138 = load ptr, ptr %137, align 8, !tbaa !19
  %139 = call zeroext i8 @_bm_select_history_remove(ptr noundef %138, ptr noundef nonnull %100) #15
  %140 = load ptr, ptr %136, align 8, !tbaa !86
  %141 = load ptr, ptr %140, align 8, !tbaa !19
  call void @BM_vert_select_set(ptr noundef %141, ptr noundef nonnull %100, i8 noundef zeroext 0) #15
  br label %142

142:                                              ; preds = %74, %90, %92, %84, %61, %104, %127, %135, %133, %117, %99
  %143 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %144 = load ptr, ptr %143, align 8, !tbaa !86
  call void @EDBM_selectmode_flush(ptr noundef %144) #15
  br label %166

145:                                              ; preds = %26, %47, %52, %42
  %146 = phi ptr [ %39, %42 ], [ %39, %52 ], [ %39, %47 ], [ %27, %26 ]
  %147 = phi i8 [ 0, %42 ], [ 0, %52 ], [ 1, %47 ], [ 1, %26 ]
  %148 = load ptr, ptr %146, align 8, !tbaa !86
  %149 = load ptr, ptr %148, align 8, !tbaa !19
  call void @BM_face_select_set(ptr noundef %149, ptr noundef nonnull %22, i8 noundef zeroext %147) #15
  br label %150

150:                                              ; preds = %145, %50
  %151 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 6
  %152 = load ptr, ptr %151, align 8, !tbaa !86
  call void @EDBM_selectmode_flush(ptr noundef %152) #15
  %153 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 5
  %154 = load i16, ptr %153, align 8, !tbaa !154
  %155 = sext i16 %154 to i32
  %156 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !66
  %158 = getelementptr inbounds %struct.Object, ptr %157, i64 0, i32 32
  %159 = load i32, ptr %158, align 4, !tbaa !156
  %160 = add nsw i32 %159, -1
  %161 = icmp eq i32 %160, %155
  br i1 %161, label %166, label %162

162:                                              ; preds = %150
  %163 = add nsw i32 %155, 1
  store i32 %163, ptr %158, align 4, !tbaa !156
  %164 = load ptr, ptr %151, align 8, !tbaa !86
  %165 = getelementptr inbounds %struct.BMEditMesh, ptr %164, i64 0, i32 13
  store i16 %154, ptr %165, align 2, !tbaa !157
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 102760448, ptr noundef null) #15
  br label %166

166:                                              ; preds = %142, %162, %150
  %167 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !66
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %168) #15
  br label %169

169:                                              ; preds = %5, %166
  %170 = phi i8 [ 1, %166 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  ret i8 %170
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @em_setup_viewcontext(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef %1) #15
  %3 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %4) #15
  %8 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 6
  store ptr %7, ptr %8, align 8, !tbaa !86
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @unified_findnearest(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %8 = tail call float @ED_view3d_select_dist_px() #15
  store float %8, ptr %5, align 4, !tbaa !87
  store ptr null, ptr %1, align 8, !tbaa !75
  store ptr null, ptr %2, align 8, !tbaa !75
  store ptr null, ptr %3, align 8, !tbaa !75
  tail call void @view3d_validate_backbuf(ptr noundef %0) #15
  %9 = getelementptr inbounds %struct.BMEditMesh, ptr %7, i64 0, i32 12
  %10 = load i16, ptr %9, align 4, !tbaa !29
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = call ptr @EDBM_vert_find_nearest(ptr noundef nonnull %0, ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 0) #14
  store ptr %14, ptr %1, align 8, !tbaa !75
  %15 = load i16, ptr %9, align 4, !tbaa !29
  br label %16

16:                                               ; preds = %13, %4
  %17 = phi i16 [ %15, %13 ], [ %10, %4 ]
  %18 = and i16 %17, 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = call ptr @EDBM_face_find_nearest(ptr noundef nonnull %0, ptr noundef nonnull %5) #14
  store ptr %21, ptr %3, align 8, !tbaa !75
  %22 = load i16, ptr %9, align 4, !tbaa !29
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i16 [ %22, %20 ], [ %17, %16 ]
  %25 = load float, ptr %5, align 4, !tbaa !87
  %26 = fadd float %25, -2.000000e+01
  store float %26, ptr %5, align 4, !tbaa !87
  %27 = and i16 %24, 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = call ptr @EDBM_edge_find_nearest(ptr noundef nonnull %0, ptr noundef nonnull %5) #14
  store ptr %30, ptr %2, align 8, !tbaa !75
  br label %33

31:                                               ; preds = %23
  %32 = load ptr, ptr %2, align 8, !tbaa !75
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %32, %31 ], [ %30, %29 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store ptr null, ptr %3, align 8, !tbaa !75
  br label %43

37:                                               ; preds = %33
  %38 = load ptr, ptr %3, align 8, !tbaa !75
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load ptr, ptr %1, align 8, !tbaa !75
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %51

43:                                               ; preds = %37, %36
  store ptr null, ptr %1, align 8, !tbaa !75
  br label %44

44:                                               ; preds = %43, %40
  %45 = load ptr, ptr %2, align 8, !tbaa !75
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load ptr, ptr %3, align 8, !tbaa !75
  %49 = icmp ne ptr %48, null
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %47, %44, %40
  %52 = phi i32 [ 1, %44 ], [ 1, %40 ], [ %50, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %52
}

; Function Attrs: optsize
declare void @BM_mesh_active_face_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @_bm_select_history_remove(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_bm_select_history_store(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @EDBM_selectmode_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_selectmode_set(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  %3 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %4 = load i16, ptr %3, align 4, !tbaa !29
  %5 = load ptr, ptr %0, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 28
  store i16 %4, ptr %6, align 8, !tbaa !24
  tail call fastcc void @edbm_strip_selections(ptr noundef nonnull %0) #14
  %7 = load ptr, ptr %0, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !158
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !159
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !137
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %88, label %19

19:                                               ; preds = %15, %11
  %20 = load i16, ptr %3, align 4, !tbaa !29
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %88

24:                                               ; preds = %1
  %25 = load i16, ptr %3, align 4, !tbaa !29
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void @EDBM_select_flush(ptr noundef nonnull %0) #15
  br label %88

30:                                               ; preds = %24, %19
  %31 = phi i32 [ %26, %24 ], [ %21, %19 ]
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %60, label %34

34:                                               ; preds = %30
  %35 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef null) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %34, %37
  %38 = phi ptr [ %40, %37 ], [ %35, %34 ]
  %39 = load ptr, ptr %0, align 8, !tbaa !19
  call void @BM_vert_select_set(ptr noundef %39, ptr noundef nonnull %38, i8 noundef zeroext 0) #15
  %40 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #14
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %37, !llvm.loop !160

42:                                               ; preds = %37, %34
  %43 = load ptr, ptr %0, align 8, !tbaa !19
  %44 = getelementptr inbounds %struct.BMesh, ptr %43, i64 0, i32 5
  %45 = load i32, ptr %44, align 4, !tbaa !159
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %88, label %47

47:                                               ; preds = %42
  %48 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %43, i8 noundef zeroext 2, ptr noundef null) #14
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %47, %56
  %51 = phi ptr [ %57, %56 ], [ %48, %47 ]
  %52 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %51, i8 noundef zeroext 1) #14, !range !26
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %0, align 8, !tbaa !19
  call void @BM_edge_select_set(ptr noundef %55, ptr noundef nonnull %51, i8 noundef zeroext 1) #15
  br label %56

56:                                               ; preds = %50, %54
  %57 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #14
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %50, !llvm.loop !161

59:                                               ; preds = %56, %47
  call void @EDBM_selectmode_flush(ptr noundef nonnull %0) #15
  br label %88

60:                                               ; preds = %30
  %61 = and i32 %31, 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %88, label %63

63:                                               ; preds = %60
  %64 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %7, i8 noundef zeroext 2, ptr noundef null) #14
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %63, %66
  %67 = phi ptr [ %69, %66 ], [ %64, %63 ]
  %68 = load ptr, ptr %0, align 8, !tbaa !19
  call void @BM_edge_select_set(ptr noundef %68, ptr noundef nonnull %67, i8 noundef zeroext 0) #15
  %69 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #14
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %66, !llvm.loop !162

71:                                               ; preds = %66, %63
  %72 = load ptr, ptr %0, align 8, !tbaa !19
  %73 = getelementptr inbounds %struct.BMesh, ptr %72, i64 0, i32 6
  %74 = load i32, ptr %73, align 8, !tbaa !137
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %71
  %77 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %72, i8 noundef zeroext 3, ptr noundef null) #14
  %78 = icmp eq ptr %77, null
  br i1 %78, label %88, label %79

79:                                               ; preds = %76, %85
  %80 = phi ptr [ %86, %85 ], [ %77, %76 ]
  %81 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %80, i8 noundef zeroext 1) #14, !range !26
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %0, align 8, !tbaa !19
  call void @BM_face_select_set(ptr noundef %84, ptr noundef nonnull %80, i8 noundef zeroext 1) #15
  br label %85

85:                                               ; preds = %79, %83
  %86 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #14
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %79, !llvm.loop !163

88:                                               ; preds = %85, %76, %19, %29, %60, %71, %42, %59, %15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_strip_selections(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %3 = load i16, ptr %2, align 4, !tbaa !29
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 32
  %9 = load ptr, ptr %8, align 8, !tbaa !164
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %6, %20
  %12 = phi ptr [ %13, %20 ], [ %9, %6 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !165
  %14 = getelementptr inbounds %struct.BMEditSelection, ptr %12, i64 0, i32 3
  %15 = load i8, ptr %14, align 8, !tbaa !167
  %16 = icmp eq i8 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load ptr, ptr %0, align 8, !tbaa !19
  %19 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 32
  tail call void @BLI_freelinkN(ptr noundef nonnull %19, ptr noundef nonnull %12) #15
  br label %20

20:                                               ; preds = %17, %11
  %21 = icmp eq ptr %13, null
  br i1 %21, label %22, label %11, !llvm.loop !168

22:                                               ; preds = %20
  %23 = load i16, ptr %2, align 4, !tbaa !29
  br label %24

24:                                               ; preds = %22, %6, %1
  %25 = phi i16 [ %23, %22 ], [ %3, %6 ], [ %3, %1 ]
  %26 = and i16 %25, 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load ptr, ptr %0, align 8, !tbaa !19
  %30 = getelementptr inbounds %struct.BMesh, ptr %29, i64 0, i32 32
  %31 = load ptr, ptr %30, align 8, !tbaa !164
  %32 = icmp eq ptr %31, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %28, %42
  %34 = phi ptr [ %35, %42 ], [ %31, %28 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !165
  %36 = getelementptr inbounds %struct.BMEditSelection, ptr %34, i64 0, i32 3
  %37 = load i8, ptr %36, align 8, !tbaa !167
  %38 = icmp eq i8 %37, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load ptr, ptr %0, align 8, !tbaa !19
  %41 = getelementptr inbounds %struct.BMesh, ptr %40, i64 0, i32 32
  tail call void @BLI_freelinkN(ptr noundef nonnull %41, ptr noundef nonnull %34) #15
  br label %42

42:                                               ; preds = %39, %33
  %43 = icmp eq ptr %35, null
  br i1 %43, label %44, label %33, !llvm.loop !169

44:                                               ; preds = %42
  %45 = load i16, ptr %2, align 4, !tbaa !29
  br label %46

46:                                               ; preds = %44, %28, %24
  %47 = phi i16 [ %45, %44 ], [ %25, %28 ], [ %25, %24 ]
  %48 = and i16 %47, 4
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load ptr, ptr %0, align 8, !tbaa !19
  %52 = getelementptr inbounds %struct.BMesh, ptr %51, i64 0, i32 32
  %53 = load ptr, ptr %52, align 8, !tbaa !164
  %54 = icmp eq ptr %53, null
  br i1 %54, label %66, label %55

55:                                               ; preds = %50, %64
  %56 = phi ptr [ %57, %64 ], [ %53, %50 ]
  %57 = load ptr, ptr %56, align 8, !tbaa !165
  %58 = getelementptr inbounds %struct.BMEditSelection, ptr %56, i64 0, i32 3
  %59 = load i8, ptr %58, align 8, !tbaa !167
  %60 = icmp eq i8 %59, 8
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load ptr, ptr %0, align 8, !tbaa !19
  %63 = getelementptr inbounds %struct.BMesh, ptr %62, i64 0, i32 32
  tail call void @BLI_freelinkN(ptr noundef nonnull %63, ptr noundef nonnull %56) #15
  br label %64

64:                                               ; preds = %61, %55
  %65 = icmp eq ptr %57, null
  br i1 %65, label %66, label %55, !llvm.loop !170

66:                                               ; preds = %64, %50, %46
  ret void
}

; Function Attrs: optsize
declare void @EDBM_select_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_selectmode_convert(ptr nocapture noundef readonly %0, i16 noundef signext %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  switch i16 %1, label %115 [
    i16 1, label %6
    i16 2, label %51
    i16 4, label %87
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !158
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %115, label %10

10:                                               ; preds = %6
  switch i16 %2, label %115 [
    i16 2, label %11
    i16 4, label %31
  ]

11:                                               ; preds = %10
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 2, ptr noundef null) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %18, %14 ], [ %12, %11 ]
  %16 = call zeroext i8 @BM_edge_is_any_vert_flag_test(ptr noundef nonnull %15, i8 noundef zeroext 1) #15
  %17 = zext i8 %16 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %15, i32 noundef %17) #14
  %18 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %14, !llvm.loop !171

20:                                               ; preds = %14, %11
  %21 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %5, i8 noundef zeroext 2, ptr noundef null) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %115, label %23

23:                                               ; preds = %20, %28
  %24 = phi ptr [ %29, %28 ], [ %21, %20 ]
  %25 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %24, i8 noundef zeroext 16) #14, !range !26
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  call void @BM_edge_select_set(ptr noundef %5, ptr noundef nonnull %24, i8 noundef zeroext 1) #15
  br label %28

28:                                               ; preds = %23, %27
  %29 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %30 = icmp eq ptr %29, null
  br i1 %30, label %115, label %23, !llvm.loop !172

31:                                               ; preds = %10
  %32 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 3, ptr noundef null) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %38, %34 ], [ %32, %31 ]
  %36 = call zeroext i8 @BM_face_is_any_vert_flag_test(ptr noundef nonnull %35, i8 noundef zeroext 1) #15
  %37 = zext i8 %36 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %35, i32 noundef %37) #14
  %38 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %34, !llvm.loop !173

40:                                               ; preds = %34, %31
  %41 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %5, i8 noundef zeroext 3, ptr noundef null) #14
  %42 = icmp eq ptr %41, null
  br i1 %42, label %115, label %43

43:                                               ; preds = %40, %48
  %44 = phi ptr [ %49, %48 ], [ %41, %40 ]
  %45 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %44, i8 noundef zeroext 16) #14, !range !26
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  call void @BM_face_select_set(ptr noundef %5, ptr noundef nonnull %44, i8 noundef zeroext 1) #15
  br label %48

48:                                               ; preds = %43, %47
  %49 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %50 = icmp eq ptr %49, null
  br i1 %50, label %115, label %43, !llvm.loop !174

51:                                               ; preds = %3
  %52 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 5
  %53 = load i32, ptr %52, align 4, !tbaa !159
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %115, label %55

55:                                               ; preds = %51
  switch i16 %2, label %115 [
    i16 4, label %56
    i16 1, label %76
  ]

56:                                               ; preds = %55
  %57 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 3, ptr noundef null) #14
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %56, %59
  %60 = phi ptr [ %63, %59 ], [ %57, %56 ]
  %61 = call zeroext i8 @BM_face_is_any_edge_flag_test(ptr noundef nonnull %60, i8 noundef zeroext 1) #15
  %62 = zext i8 %61 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %60, i32 noundef %62) #14
  %63 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %59, !llvm.loop !175

65:                                               ; preds = %59, %56
  %66 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %5, i8 noundef zeroext 3, ptr noundef null) #14
  %67 = icmp eq ptr %66, null
  br i1 %67, label %115, label %68

68:                                               ; preds = %65, %73
  %69 = phi ptr [ %74, %73 ], [ %66, %65 ]
  %70 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %69, i8 noundef zeroext 16) #14, !range !26
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  call void @BM_face_select_set(ptr noundef %5, ptr noundef nonnull %69, i8 noundef zeroext 1) #15
  br label %73

73:                                               ; preds = %68, %72
  %74 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %75 = icmp eq ptr %74, null
  br i1 %75, label %115, label %68, !llvm.loop !176

76:                                               ; preds = %55
  %77 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef null) #14
  %78 = icmp eq ptr %77, null
  br i1 %78, label %114, label %79

79:                                               ; preds = %76, %84
  %80 = phi ptr [ %85, %84 ], [ %77, %76 ]
  %81 = call zeroext i8 @BM_vert_is_all_edge_flag_test(ptr noundef nonnull %80, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  call void @BM_vert_select_set(ptr noundef %5, ptr noundef nonnull %80, i8 noundef zeroext 0) #15
  br label %84

84:                                               ; preds = %79, %83
  %85 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %86 = icmp eq ptr %85, null
  br i1 %86, label %114, label %79, !llvm.loop !177

87:                                               ; preds = %3
  %88 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 6
  %89 = load i32, ptr %88, align 8, !tbaa !137
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %115, label %91

91:                                               ; preds = %87
  switch i16 %2, label %115 [
    i16 2, label %92
    i16 1, label %103
  ]

92:                                               ; preds = %91
  %93 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 2, ptr noundef null) #14
  %94 = icmp eq ptr %93, null
  br i1 %94, label %115, label %95

95:                                               ; preds = %92, %100
  %96 = phi ptr [ %101, %100 ], [ %93, %92 ]
  %97 = call zeroext i8 @BM_edge_is_all_face_flag_test(ptr noundef nonnull %96, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  call void @BM_edge_select_set(ptr noundef %5, ptr noundef nonnull %96, i8 noundef zeroext 0) #15
  br label %100

100:                                              ; preds = %95, %99
  %101 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %102 = icmp eq ptr %101, null
  br i1 %102, label %115, label %95, !llvm.loop !178

103:                                              ; preds = %91
  %104 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef null) #14
  %105 = icmp eq ptr %104, null
  br i1 %105, label %114, label %106

106:                                              ; preds = %103, %111
  %107 = phi ptr [ %112, %111 ], [ %104, %103 ]
  %108 = call zeroext i8 @BM_vert_is_all_face_flag_test(ptr noundef nonnull %107, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  call void @BM_vert_select_set(ptr noundef %5, ptr noundef nonnull %107, i8 noundef zeroext 0) #15
  br label %111

111:                                              ; preds = %106, %110
  %112 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %106, !llvm.loop !179

114:                                              ; preds = %111, %84, %103, %76
  call void @BM_mesh_deselect_flush(ptr noundef %5) #15
  br label %115

115:                                              ; preds = %100, %73, %48, %28, %114, %92, %65, %40, %20, %91, %3, %55, %10, %51, %87, %6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BM_edge_is_any_vert_flag_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BM_face_is_any_vert_flag_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BM_face_is_any_edge_flag_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BM_vert_is_all_edge_flag_test(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BM_mesh_deselect_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BM_edge_is_all_face_flag_test(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BM_vert_is_all_face_flag_test(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @EDBM_selectmode_toggle(ptr noundef %0, i16 noundef signext %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #15
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %75, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !133
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %13, label %75

13:                                               ; preds = %9
  %14 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %7) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %75, label %16

16:                                               ; preds = %13
  switch i32 %2, label %38 [
    i32 2, label %32
    i32 0, label %17
    i32 1, label %25
  ]

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.BMEditMesh, ptr %14, i64 0, i32 12
  %19 = load i16, ptr %18, align 4, !tbaa !29
  %20 = and i16 %19, %1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %75, label %22

22:                                               ; preds = %17
  %23 = xor i16 %1, -1
  %24 = and i16 %19, %23
  store i16 %24, ptr %18, align 4, !tbaa !29
  br label %38

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.BMEditMesh, ptr %14, i64 0, i32 12
  %27 = load i16, ptr %26, align 4, !tbaa !29
  %28 = and i16 %27, %1
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %25
  %31 = or i16 %27, %1
  store i16 %31, ptr %26, align 4, !tbaa !29
  br label %38

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.BMEditMesh, ptr %14, i64 0, i32 12
  %34 = load i16, ptr %33, align 4, !tbaa !29
  %35 = icmp eq i16 %34, %1
  br i1 %35, label %75, label %36

36:                                               ; preds = %32
  %37 = xor i16 %34, %1
  store i16 %37, ptr %33, align 4, !tbaa !29
  br label %38

38:                                               ; preds = %16, %36, %30, %22
  %39 = icmp eq i8 %3, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.BMEditMesh, ptr %14, i64 0, i32 12
  %42 = load i16, ptr %41, align 4, !tbaa !29
  %43 = icmp eq i16 %42, 0
  %44 = icmp ne i8 %4, 0
  %45 = and i1 %44, %43
  br i1 %45, label %48, label %52

46:                                               ; preds = %38
  %47 = icmp eq i8 %4, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %40, %46
  %49 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 8
  %50 = load i16, ptr %49, align 2, !tbaa !180
  %51 = tail call fastcc zeroext i16 @highest_order_bit_s(i16 noundef zeroext %50) #14
  tail call void @EDBM_selectmode_convert(ptr noundef nonnull %14, i16 noundef signext %51, i16 noundef signext %1) #14
  br label %52

52:                                               ; preds = %46, %48, %40
  switch i16 %1, label %75 [
    i16 1, label %53
    i16 2, label %58
    i16 4, label %63
  ]

53:                                               ; preds = %52
  br i1 %39, label %68, label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.BMEditMesh, ptr %14, i64 0, i32 12
  %56 = load i16, ptr %55, align 4, !tbaa !29
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %68, label %70

58:                                               ; preds = %52
  br i1 %39, label %68, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.BMEditMesh, ptr %14, i64 0, i32 12
  %61 = load i16, ptr %60, align 4, !tbaa !29
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %68, label %70

63:                                               ; preds = %52
  br i1 %39, label %68, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.BMEditMesh, ptr %14, i64 0, i32 12
  %66 = load i16, ptr %65, align 4, !tbaa !29
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63, %64, %58, %59, %53, %54
  %69 = getelementptr inbounds %struct.BMEditMesh, ptr %14, i64 0, i32 12
  store i16 %1, ptr %69, align 4, !tbaa !29
  br label %70

70:                                               ; preds = %68, %64, %59, %54
  %71 = phi i16 [ %56, %54 ], [ %61, %59 ], [ %66, %64 ], [ %1, %68 ]
  %72 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 8
  store i16 %71, ptr %72, align 2, !tbaa !180
  tail call void @EDBM_selectmode_set(ptr noundef nonnull %14) #14
  %73 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %74 = load ptr, ptr %73, align 8, !tbaa !13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %74) #15
  tail call void @WM_main_add_notifier(i32 noundef 68091904, ptr noundef null) #15
  br label %75

75:                                               ; preds = %5, %9, %52, %70, %32, %25, %17, %13
  %76 = phi i8 [ 0, %13 ], [ 0, %17 ], [ 0, %25 ], [ 0, %32 ], [ 1, %70 ], [ 0, %52 ], [ 0, %9 ], [ 0, %5 ]
  ret i8 %76
}

; Function Attrs: optsize
declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @highest_order_bit_s(i16 noundef zeroext %0) unnamed_addr #9 {
  %2 = lshr i16 %0, 1
  %3 = or i16 %2, %0
  %4 = lshr i16 %3, 2
  %5 = or i16 %4, %3
  %6 = lshr i16 %5, 4
  %7 = or i16 %6, %5
  %8 = lshr i16 %7, 8
  %9 = or i16 %8, %7
  %10 = lshr i16 %9, 1
  %11 = sub i16 %9, %10
  ret i16 %11
}

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @EDBM_selectmode_disable(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMEditMesh, ptr %1, i64 0, i32 12
  %6 = load i16, ptr %5, align 4, !tbaa !29
  %7 = and i16 %6, %2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = icmp eq i16 %6, %2
  %11 = xor i16 %2, -1
  %12 = and i16 %6, %11
  %13 = select i1 %10, i16 %3, i16 %12
  store i16 %13, ptr %5, align 4, !tbaa !29
  %14 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = getelementptr inbounds %struct.ToolSettings, ptr %15, i64 0, i32 8
  store i16 %13, ptr %16, align 2, !tbaa !180
  tail call void @EDBM_selectmode_set(ptr noundef nonnull %1) #14
  tail call void @WM_main_add_notifier(i32 noundef 68091904, ptr noundef %0) #15
  br label %17

17:                                               ; preds = %4, %9
  %18 = phi i8 [ 1, %9 ], [ 0, %4 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_deselect_by_material(ptr nocapture noundef readonly %0, i16 noundef signext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %5 = load ptr, ptr %0, align 8, !tbaa !19
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %5, i8 noundef zeroext 3, ptr noundef null) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3, %18
  %9 = phi ptr [ %19, %18 ], [ %6, %3 ]
  %10 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %9, i8 noundef zeroext 2) #14, !range !26
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.BMFace, ptr %9, i64 0, i32 5
  %14 = load i16, ptr %13, align 8, !tbaa !154
  %15 = icmp eq i16 %14, %1
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 8, !tbaa !19
  call void @BM_face_select_set(ptr noundef %17, ptr noundef nonnull %9, i8 noundef zeroext %2) #15
  br label %18

18:                                               ; preds = %12, %16, %8
  %19 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8, !llvm.loop !181

21:                                               ; preds = %18, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_select_toggle_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct.BMesh, ptr %2, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !158
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.BMesh, ptr %2, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !159
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.BMesh, ptr %2, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !137
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %6, %1
  tail call void @EDBM_flag_disable_all(ptr noundef nonnull %0, i8 noundef zeroext 1) #15
  br label %16

15:                                               ; preds = %10
  tail call void @EDBM_flag_enable_all(ptr noundef nonnull %0, i8 noundef zeroext 1) #15
  br label %16

16:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: optsize
declare void @EDBM_flag_enable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EDBM_select_swap(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !19
  %4 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 28
  %5 = load i16, ptr %4, align 8, !tbaa !24
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %3, i8 noundef zeroext 1, ptr noundef null) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %58, label %11

11:                                               ; preds = %8, %20
  %12 = phi ptr [ %21, %20 ], [ %9, %8 ]
  %13 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %12, i8 noundef zeroext 2) #14, !range !26
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !19
  %17 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %12, i8 noundef zeroext 1) #14, !range !26
  %18 = icmp eq i8 %17, 0
  %19 = zext i1 %18 to i8
  call void @BM_vert_select_set(ptr noundef %16, ptr noundef nonnull %12, i8 noundef zeroext %19) #15
  br label %20

20:                                               ; preds = %11, %15
  %21 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %58, label %11, !llvm.loop !182

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %25 = load i16, ptr %24, align 4, !tbaa !29
  %26 = and i16 %25, 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %23
  %29 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %3, i8 noundef zeroext 2, ptr noundef null) #14
  %30 = icmp eq ptr %29, null
  br i1 %30, label %58, label %31

31:                                               ; preds = %28, %40
  %32 = phi ptr [ %41, %40 ], [ %29, %28 ]
  %33 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %32, i8 noundef zeroext 2) #14, !range !26
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load ptr, ptr %0, align 8, !tbaa !19
  %37 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %32, i8 noundef zeroext 1) #14, !range !26
  %38 = icmp eq i8 %37, 0
  %39 = zext i1 %38 to i8
  call void @BM_edge_select_set(ptr noundef %36, ptr noundef nonnull %32, i8 noundef zeroext %39) #15
  br label %40

40:                                               ; preds = %31, %35
  %41 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #14
  %42 = icmp eq ptr %41, null
  br i1 %42, label %58, label %31, !llvm.loop !183

43:                                               ; preds = %23
  %44 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %3, i8 noundef zeroext 3, ptr noundef null) #14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %43, %55
  %47 = phi ptr [ %56, %55 ], [ %44, %43 ]
  %48 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %47, i8 noundef zeroext 2) #14, !range !26
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load ptr, ptr %0, align 8, !tbaa !19
  %52 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %47, i8 noundef zeroext 1) #14, !range !26
  %53 = icmp eq i8 %52, 0
  %54 = zext i1 %53 to i8
  call void @BM_face_select_set(ptr noundef %51, ptr noundef nonnull %47, i8 noundef zeroext %54) #15
  br label %55

55:                                               ; preds = %46, %50
  %56 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #14
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %46, !llvm.loop !184

58:                                               ; preds = %20, %40, %55, %8, %28, %43
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @EDBM_select_interior_faces(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %5 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %4, i8 noundef zeroext 3, ptr noundef null) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1, %23
  %8 = phi i8 [ %24, %23 ], [ 0, %1 ]
  %9 = phi ptr [ %25, %23 ], [ %5, %1 ]
  %10 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %9, i8 noundef zeroext 2) #14, !range !26
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 10, ptr noundef nonnull %9) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %12, %19
  %16 = phi ptr [ %20, %19 ], [ %13, %12 ]
  %17 = call i32 @BM_edge_face_count(ptr noundef nonnull %16) #15
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %15, !llvm.loop !185

22:                                               ; preds = %19, %12
  call void @BM_face_select_set(ptr noundef %4, ptr noundef nonnull %9, i8 noundef zeroext 1) #15
  br label %23

23:                                               ; preds = %15, %22, %7
  %24 = phi i8 [ %8, %7 ], [ 1, %22 ], [ %8, %15 ]
  %25 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %7, !llvm.loop !186

27:                                               ; preds = %23, %1
  %28 = phi i8 [ 0, %1 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret i8 %28
}

; Function Attrs: optsize
declare i32 @BM_edge_face_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_select_linked(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.67, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.68, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.69, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_linked_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.70, i32 noundef 0, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_linked_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMWalker, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #15
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #13
  tail call fastcc void @linked_limit_default(ptr noundef %0, ptr noundef %1) #14
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.70) #15
  %11 = getelementptr inbounds %struct.BMEditMesh, ptr %6, i64 0, i32 12
  %12 = load i16, ptr %11, align 4, !tbaa !29
  %13 = icmp eq i16 %12, 4
  %14 = load ptr, ptr %6, align 8, !tbaa !19
  br i1 %13, label %15, label %59

15:                                               ; preds = %2
  %16 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %14, i8 noundef zeroext 3, ptr noundef null) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15, %18
  %19 = phi ptr [ %22, %18 ], [ %16, %15 ]
  %20 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %19, i8 noundef zeroext 1) #14, !range !26
  %21 = zext nneg i8 %20 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %19, i32 noundef %21) #14
  %22 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %18, !llvm.loop !187

24:                                               ; preds = %18, %15
  %25 = icmp ne i32 %10, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %24
  call void @BM_mesh_elem_toolflags_ensure(ptr noundef %7) #15
  %27 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %7, i8 noundef zeroext 2, ptr noundef null) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %36, %29 ], [ %27, %26 ]
  %31 = getelementptr inbounds %struct.BMEdge, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !188
  %33 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %30, i8 noundef zeroext 4) #14, !range !26
  %34 = icmp eq i8 %33, 0
  %35 = zext i1 %34 to i32
  call fastcc void @_bmo_elem_flag_set(ptr noundef %7, ptr noundef %32, i32 noundef %35) #14
  %36 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %29, !llvm.loop !189

38:                                               ; preds = %29, %26, %24
  %39 = zext i1 %25 to i16
  call void @BMW_init(ptr noundef nonnull %4, ptr noundef %7, i32 noundef 8, i16 noundef signext 0, i16 noundef signext %39, i16 noundef signext 0, i32 noundef 1, i32 noundef 0) #15
  %40 = load ptr, ptr %6, align 8, !tbaa !19
  %41 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %40, i8 noundef zeroext 3, ptr noundef null) #14
  %42 = icmp eq ptr %41, null
  br i1 %42, label %57, label %43

43:                                               ; preds = %38, %54
  %44 = phi ptr [ %55, %54 ], [ %41, %38 ]
  %45 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %44, i8 noundef zeroext 16) #14, !range !26
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = call ptr @BMW_begin(ptr noundef nonnull %4, ptr noundef nonnull %44) #15
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %47, %50
  %51 = phi ptr [ %52, %50 ], [ %48, %47 ]
  call void @BM_face_select_set(ptr noundef %7, ptr noundef nonnull %51, i8 noundef zeroext 1) #15
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %51) #14
  %52 = call ptr @BMW_step(ptr noundef nonnull %4) #15
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %50, !llvm.loop !190

54:                                               ; preds = %50, %47, %43
  %55 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %43, !llvm.loop !191

57:                                               ; preds = %54, %38
  call void @BMW_end(ptr noundef nonnull %4) #15
  br i1 %25, label %58, label %89

58:                                               ; preds = %57
  call void @BM_mesh_elem_toolflags_clear(ptr noundef %7) #15
  br label %89

59:                                               ; preds = %2
  %60 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %14, i8 noundef zeroext 1, ptr noundef null) #14
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %59, %62
  %63 = phi ptr [ %66, %62 ], [ %60, %59 ]
  %64 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %63, i8 noundef zeroext 1) #14, !range !26
  %65 = zext nneg i8 %64 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %63, i32 noundef %65) #14
  %66 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %62, !llvm.loop !192

68:                                               ; preds = %62, %59
  %69 = load ptr, ptr %6, align 8, !tbaa !19
  call void @BMW_init(ptr noundef nonnull %4, ptr noundef %69, i32 noundef 0, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i32 noundef 1, i32 noundef 0) #15
  %70 = load ptr, ptr %6, align 8, !tbaa !19
  %71 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %70, i8 noundef zeroext 1, ptr noundef null) #14
  %72 = icmp eq ptr %71, null
  br i1 %72, label %88, label %73

73:                                               ; preds = %68, %85
  %74 = phi ptr [ %86, %85 ], [ %71, %68 ]
  %75 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %74, i8 noundef zeroext 16) #14, !range !26
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = call ptr @BMW_begin(ptr noundef nonnull %4, ptr noundef nonnull %74) #15
  %79 = icmp eq ptr %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %77, %80
  %81 = phi ptr [ %83, %80 ], [ %78, %77 ]
  %82 = load ptr, ptr %6, align 8, !tbaa !19
  call void @BM_edge_select_set(ptr noundef %82, ptr noundef nonnull %81, i8 noundef zeroext 1) #15
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %81) #14
  %83 = call ptr @BMW_step(ptr noundef nonnull %4) #15
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %80, !llvm.loop !193

85:                                               ; preds = %80, %77, %73
  %86 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %73, !llvm.loop !194

88:                                               ; preds = %85, %68
  call void @BMW_end(ptr noundef nonnull %4) #15
  call void @EDBM_selectmode_flush(ptr noundef nonnull %6) #15
  br label %89

89:                                               ; preds = %57, %58, %88
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_select_linked_pick(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.72, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.73, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.74, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_select_linked_pick_invoke, ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.50, i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.6) #15
  %10 = load ptr, ptr %7, align 8, !tbaa !127
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.70, i32 noundef 0, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_linked_pick_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.ViewContext, align 8
  %5 = alloca %struct.BMWalker, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !129
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.50) #15
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i8
  tail call fastcc void @linked_limit_default(ptr noundef %0, ptr noundef %1) #14
  %16 = load ptr, ptr %11, align 8, !tbaa !129
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.70) #15
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #15
  call void @em_setup_viewcontext(ptr noundef %0, ptr noundef nonnull %4) #14
  %18 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !86
  %20 = load ptr, ptr %19, align 8, !tbaa !19
  %21 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !195
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %92, label %24

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %26 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 7
  %27 = load <2 x i32>, ptr %25, align 4, !tbaa !23
  store <2 x i32> %27, ptr %26, align 8, !tbaa !23
  %28 = call fastcc i32 @unified_findnearest(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #14, !range !153
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %10) #15
  br label %92

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.BMEditMesh, ptr %19, i64 0, i32 12
  %33 = load i16, ptr %32, align 4, !tbaa !29
  %34 = icmp eq i16 %33, 4
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #13
  %36 = load ptr, ptr %8, align 8, !tbaa !75
  %37 = icmp eq ptr %36, null
  br i1 %37, label %91, label %38

38:                                               ; preds = %35
  %39 = icmp ne i32 %17, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %38
  call void @BM_mesh_elem_toolflags_ensure(ptr noundef nonnull %20) #15
  %41 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef nonnull %20, i8 noundef zeroext 2, ptr noundef null) #14
  %42 = icmp eq ptr %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %40, %43
  %44 = phi ptr [ %50, %43 ], [ %41, %40 ]
  %45 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !188
  %47 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %44, i8 noundef zeroext 4) #14, !range !26
  %48 = icmp eq i8 %47, 0
  %49 = zext i1 %48 to i32
  call fastcc void @_bmo_elem_flag_set(ptr noundef %20, ptr noundef %46, i32 noundef %49) #14
  %50 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #14
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %43, !llvm.loop !196

52:                                               ; preds = %43, %40, %38
  %53 = zext i1 %39 to i16
  call void @BMW_init(ptr noundef nonnull %5, ptr noundef %20, i32 noundef 8, i16 noundef signext 0, i16 noundef signext %53, i16 noundef signext 0, i32 noundef 1, i32 noundef 0) #15
  %54 = call ptr @BMW_begin(ptr noundef nonnull %5, ptr noundef nonnull %36) #15
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %52, %56
  %57 = phi ptr [ %58, %56 ], [ %54, %52 ]
  call void @BM_face_select_set(ptr noundef %20, ptr noundef nonnull %57, i8 noundef zeroext %15) #15
  %58 = call ptr @BMW_step(ptr noundef nonnull %5) #15
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %56, !llvm.loop !197

60:                                               ; preds = %56, %52
  call void @BMW_end(ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #13
  br label %90

61:                                               ; preds = %31
  %62 = load ptr, ptr %8, align 8, !tbaa !75
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.BMFace, ptr %62, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !198
  %67 = getelementptr inbounds %struct.BMLoop, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !199
  br label %79

69:                                               ; preds = %61
  %70 = load ptr, ptr %7, align 8, !tbaa !75
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load ptr, ptr %6, align 8, !tbaa !75
  %74 = icmp eq ptr %73, null
  br i1 %74, label %92, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.BMVert, ptr %73, i64 0, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !201
  %78 = icmp eq ptr %77, null
  br i1 %78, label %92, label %79

79:                                               ; preds = %75, %69, %64
  %80 = phi ptr [ %70, %69 ], [ %68, %64 ], [ %77, %75 ]
  call void @BMW_init(ptr noundef nonnull %5, ptr noundef nonnull %20, i32 noundef 0, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i32 noundef 1, i32 noundef 0) #15
  %81 = getelementptr inbounds %struct.BMEdge, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !105
  %83 = call ptr @BMW_begin(ptr noundef nonnull %5, ptr noundef %82) #15
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %79, %85
  %86 = phi ptr [ %87, %85 ], [ %83, %79 ]
  call void @BM_edge_select_set(ptr noundef %20, ptr noundef nonnull %86, i8 noundef zeroext %15) #15
  %87 = call ptr @BMW_step(ptr noundef nonnull %5) #15
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %85, !llvm.loop !203

89:                                               ; preds = %85, %79
  call void @BMW_end(ptr noundef nonnull %5) #15
  call void @EDBM_selectmode_flush(ptr noundef nonnull %19) #15
  br label %90

90:                                               ; preds = %60, %89
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %10) #15
  br label %92

91:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #13
  br label %92

92:                                               ; preds = %72, %75, %91, %3, %90, %30
  %93 = phi i32 [ 2, %30 ], [ 4, %90 ], [ 2, %3 ], [ 2, %91 ], [ 2, %75 ], [ 2, %72 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i32 %93
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_select_face_by_sides(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.83, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.84, ptr %2, align 8, !tbaa !122
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.85, ptr %3, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_face_by_sides_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.86, i32 noundef 4, i32 noundef 3, i32 noundef 2147483647, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.6, i32 noundef 3, i32 noundef 2147483647) #15
  %10 = load ptr, ptr %7, align 8, !tbaa !127
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.4, ptr noundef nonnull @MESH_OT_select_face_by_sides.type_items, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.88) #15
  %12 = load ptr, ptr %7, align 8, !tbaa !127
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.47, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.49) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_face_by_sides_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.86) #15
  %9 = load ptr, ptr %6, align 8, !tbaa !129
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.4) #15
  %11 = load ptr, ptr %6, align 8, !tbaa !129
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.47) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  tail call void @EDBM_flag_disable_all(ptr noundef %5, i8 noundef zeroext 1) #15
  br label %15

15:                                               ; preds = %14, %2
  %16 = load ptr, ptr %5, align 8, !tbaa !19
  %17 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %16, i8 noundef zeroext 3, ptr noundef null) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %42, label %19

19:                                               ; preds = %15, %39
  %20 = phi ptr [ %40, %39 ], [ %17, %15 ]
  switch i32 %10, label %39 [
    i32 0, label %33
    i32 1, label %21
    i32 2, label %25
    i32 3, label %29
  ]

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !204
  %24 = icmp eq i32 %23, %8
  br i1 %24, label %37, label %39

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !204
  %28 = icmp sgt i32 %27, %8
  br i1 %28, label %37, label %39

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !204
  %32 = icmp eq i32 %31, %8
  br i1 %32, label %39, label %37

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !204
  %36 = icmp slt i32 %35, %8
  br i1 %36, label %37, label %39

37:                                               ; preds = %21, %25, %29, %33
  %38 = load ptr, ptr %5, align 8, !tbaa !19
  call void @BM_face_select_set(ptr noundef %38, ptr noundef nonnull %20, i8 noundef zeroext 1) #15
  br label %39

39:                                               ; preds = %21, %25, %29, %19, %37, %33
  %40 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %19, !llvm.loop !205

42:                                               ; preds = %39, %15
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #15
  %43 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %44) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_select_loose(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.89, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.90, ptr %2, align 8, !tbaa !122
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.91, ptr %3, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_loose_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.49) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_loose_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #15
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.47) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @EDBM_flag_disable_all(ptr noundef nonnull %6, i8 noundef zeroext 1) #15
  br label %13

13:                                               ; preds = %12, %2
  %14 = getelementptr inbounds %struct.BMEditMesh, ptr %6, i64 0, i32 12
  %15 = load i16, ptr %14, align 4, !tbaa !29
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %7, i8 noundef zeroext 1, ptr noundef null) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %18, %27
  %22 = phi ptr [ %28, %27 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !201
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void @BM_vert_select_set(ptr noundef %7, ptr noundef nonnull %22, i8 noundef zeroext 1) #15
  br label %27

27:                                               ; preds = %21, %26
  %28 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %21, !llvm.loop !206

30:                                               ; preds = %27, %18, %13
  %31 = load i16, ptr %14, align 4, !tbaa !29
  %32 = and i16 %31, 2
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %30
  %35 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %7, i8 noundef zeroext 2, ptr noundef null) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %34, %42
  %38 = phi ptr [ %43, %42 ], [ %35, %34 ]
  %39 = call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef nonnull %38) #14, !range !35
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  call void @BM_edge_select_set(ptr noundef %7, ptr noundef nonnull %38, i8 noundef zeroext 1) #15
  br label %42

42:                                               ; preds = %37, %41
  %43 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %37, !llvm.loop !207

45:                                               ; preds = %42, %34, %30
  %46 = load i16, ptr %14, align 4, !tbaa !29
  %47 = and i16 %46, 4
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %45
  %50 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %7, i8 noundef zeroext 3, ptr noundef null) #14
  %51 = icmp eq ptr %50, null
  br i1 %51, label %69, label %52

52:                                               ; preds = %49, %66
  %53 = phi ptr [ %67, %66 ], [ %50, %49 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %54 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %53) #14
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %52, %62
  %57 = phi ptr [ %63, %62 ], [ %54, %52 ]
  %58 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !199
  %60 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %59) #14, !range !35
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %56, !llvm.loop !208

65:                                               ; preds = %62, %52
  call void @BM_face_select_set(ptr noundef %7, ptr noundef nonnull %53, i8 noundef zeroext 1) #15
  br label %66

66:                                               ; preds = %56, %65
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  %67 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %52, !llvm.loop !209

69:                                               ; preds = %66, %49, %45
  call void @EDBM_selectmode_flush(ptr noundef nonnull %6) #15
  %70 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %71 = load ptr, ptr %70, align 8, !tbaa !13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %71) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_select_mirror(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.92, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.93, ptr %2, align 8, !tbaa !122
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.94, ptr %3, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_mirror_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.95) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_mirror_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #15
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.47) #15
  %10 = trunc i32 %9 to i8
  %11 = load ptr, ptr %6, align 8, !tbaa !19
  %12 = load i32, ptr %11, align 8, !tbaa !210
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !158
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @EDBM_select_mirrored(ptr noundef nonnull %6, i8 noundef zeroext %10, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %19 = load i32, ptr %3, align 4, !tbaa !23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  tail call void @EDBM_selectmode_flush(ptr noundef nonnull %6) #15
  %22 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %23) #15
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, ptr %4, align 4, !tbaa !23
  %26 = load ptr, ptr %6, align 8, !tbaa !19
  %27 = getelementptr inbounds %struct.BMesh, ptr %26, i64 0, i32 28
  %28 = load i16, ptr %27, align 8, !tbaa !24
  %29 = trunc i16 %28 to i8
  tail call void @ED_mesh_report_mirror_ex(ptr noundef nonnull %1, i32 noundef %19, i32 noundef %25, i8 noundef zeroext %29) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %30

30:                                               ; preds = %24, %14, %2
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_select_more(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.96, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.97, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.98, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_more_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_more_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #15
  tail call void @EDBM_select_more(ptr noundef %4) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_select_less(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.99, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.100, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.101, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_less_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_less_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #15
  tail call void @EDBM_select_less(ptr noundef %4) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_select_nth(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.102, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.103, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.104, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_nth_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.105, i32 noundef 2, i32 noundef 2, i32 noundef 2147483647, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.6, i32 noundef 2, i32 noundef 100) #15
  %10 = load ptr, ptr %7, align 8, !tbaa !127
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.107, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.6, i32 noundef -100, i32 noundef 100) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_nth_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.105) #15
  %8 = load ptr, ptr %5, align 8, !tbaa !129
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.107) #15
  %10 = tail call fastcc i32 @mod_i(i32 noundef %9, i32 noundef %7) #14
  %11 = add nsw i32 %10, -1
  %12 = tail call fastcc zeroext i8 @edbm_deselect_nth(ptr noundef %4, i32 noundef %7, i32 noundef %11) #14, !range !35
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !138
  tail call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.221) #15
  br label %18

17:                                               ; preds = %2
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi i32 [ 2, %14 ], [ 4, %17 ]
  ret i32 %19
}

; Function Attrs: optsize
declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_edges_select_sharp(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.109, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.110, ptr %2, align 8, !tbaa !122
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.111, ptr %3, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_sharp_edges_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = tail call ptr @RNA_def_float_rotation(ptr noundef %8, ptr noundef nonnull @.str.112, i32 noundef 0, ptr noundef null, float noundef 0x3F26E05A60000000, float noundef 0x400921FB60000000, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.6, float noundef 0x3F91DF46A0000000, float noundef 0x400921FB60000000) #15
  tail call void @RNA_def_property_float_default(ptr noundef %9, float noundef 0x3FE0C15240000000) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_sharp_edges_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.112) #15
  %11 = load ptr, ptr %7, align 8, !tbaa !19
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %11, i8 noundef zeroext 2, ptr noundef null) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %2, %35
  %15 = phi ptr [ %36, %35 ], [ %12, %2 ]
  %16 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %15, i8 noundef zeroext 2) #14, !range !26
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = call zeroext i8 @BM_edge_loop_pair(ptr noundef nonnull %15, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 8, !tbaa !75
  %23 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !211
  %25 = getelementptr inbounds %struct.BMFace, ptr %24, i64 0, i32 4
  %26 = load ptr, ptr %5, align 8, !tbaa !75
  %27 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !211
  %29 = getelementptr inbounds %struct.BMFace, ptr %28, i64 0, i32 4
  %30 = call float @angle_normalized_v3v3(ptr noundef nonnull %25, ptr noundef nonnull %29) #15
  %31 = call float @llvm.fabs.f32(float %30)
  %32 = fcmp ogt float %31, %10
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load ptr, ptr %7, align 8, !tbaa !19
  call void @BM_edge_select_set(ptr noundef %34, ptr noundef nonnull %15, i8 noundef zeroext 1) #15
  br label %35

35:                                               ; preds = %21, %33, %14, %18
  %36 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %14, !llvm.loop !212

38:                                               ; preds = %35, %2
  %39 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %40) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_float_rotation(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_def_property_float_default(ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_faces_select_linked_flat(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.114, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.115, ptr %2, align 8, !tbaa !122
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.116, ptr %3, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_linked_flat_faces_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = tail call ptr @RNA_def_float_rotation(ptr noundef %8, ptr noundef nonnull @.str.112, i32 noundef 0, ptr noundef null, float noundef 0x3F26E05A60000000, float noundef 0x400921FB60000000, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.6, float noundef 0x3F91DF46A0000000, float noundef 0x400921FB60000000) #15
  tail call void @RNA_def_property_float_default(ptr noundef %9, float noundef 0x3F91DF46A0000000) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_linked_flat_faces_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %7) #15
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !129
  %12 = tail call float @RNA_float_get(ptr noundef %11, ptr noundef nonnull @.str.112) #15
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %9, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #15
  store ptr null, ptr %3, align 8, !tbaa !75
  %13 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #15
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %9, i8 noundef zeroext 3, ptr noundef null) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %66, label %16

16:                                               ; preds = %2, %63
  %17 = phi ptr [ %64, %63 ], [ %14, %2 ]
  %18 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %17, i8 noundef zeroext 2) #14, !range !26
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %63

20:                                               ; preds = %16
  %21 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %17, i8 noundef zeroext 16) #14, !range !26
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %63

23:                                               ; preds = %20
  %24 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %17, i8 noundef zeroext 1) #14, !range !26
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %63, label %26

26:                                               ; preds = %23, %60
  %27 = phi ptr [ %61, %60 ], [ %17, %23 ]
  call void @BM_face_select_set(ptr noundef %9, ptr noundef nonnull %27, i8 noundef zeroext 1) #15
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %27) #14
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %27) #14
  %29 = icmp eq ptr %28, null
  br i1 %29, label %57, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.BMFace, ptr %27, i64 0, i32 4
  br label %32

32:                                               ; preds = %30, %54
  %33 = phi ptr [ %28, %30 ], [ %55, %54 ]
  %34 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 13, ptr noundef nonnull %33) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %54, label %36

36:                                               ; preds = %32, %51
  %37 = phi ptr [ %52, %51 ], [ %34, %32 ]
  %38 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !211
  %40 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %39, i8 noundef zeroext 16) #14, !range !26
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %39, i8 noundef zeroext 2) #14, !range !26
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.BMFace, ptr %39, i64 0, i32 4
  %47 = call float @angle_normalized_v3v3(ptr noundef nonnull %31, ptr noundef nonnull %46) #15
  %48 = fcmp olt float %47, %12
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load ptr, ptr %38, align 8, !tbaa !211
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %3, ptr noundef %50, ptr noundef %13) #15
  br label %51

51:                                               ; preds = %45, %49, %36, %42
  %52 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %36, !llvm.loop !213

54:                                               ; preds = %51, %32
  %55 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %32, !llvm.loop !214

57:                                               ; preds = %54, %26
  %58 = load ptr, ptr %3, align 8, !tbaa !75
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %3, ptr noundef %13) #15
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %26, !llvm.loop !215

63:                                               ; preds = %57, %60, %16, %20, %23
  %64 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %16, !llvm.loop !216

66:                                               ; preds = %63, %2
  call void @BLI_mempool_destroy(ptr noundef %13) #15
  store ptr null, ptr %3, align 8, !tbaa !75
  %67 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %68 = load ptr, ptr %67, align 8, !tbaa !13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %68) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_select_non_manifold(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.117, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.118, ptr %2, align 8, !tbaa !122
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.119, ptr %3, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_non_manifold_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.49) #15
  %10 = load ptr, ptr %7, align 8, !tbaa !127
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.120, i32 noundef 1, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122) #15
  %12 = load ptr, ptr %7, align 8, !tbaa !127
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.123, i32 noundef 1, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125) #15
  %14 = load ptr, ptr %7, align 8, !tbaa !127
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.126, i32 noundef 1, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128) #15
  %16 = load ptr, ptr %7, align 8, !tbaa !127
  %17 = tail call ptr @RNA_def_boolean(ptr noundef %16, ptr noundef nonnull @.str.129, i32 noundef 1, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.131) #15
  %18 = load ptr, ptr %7, align 8, !tbaa !127
  %19 = tail call ptr @RNA_def_boolean(ptr noundef %18, ptr noundef nonnull @.str.132, i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.133) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_non_manifold_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.120) #15
  %9 = load ptr, ptr %6, align 8, !tbaa !129
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.123) #15
  %11 = load ptr, ptr %6, align 8, !tbaa !129
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.126) #15
  %13 = load ptr, ptr %6, align 8, !tbaa !129
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.129) #15
  %15 = load ptr, ptr %6, align 8, !tbaa !129
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.132) #15
  %17 = load ptr, ptr %6, align 8, !tbaa !129
  %18 = tail call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.47) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  tail call void @EDBM_flag_disable_all(ptr noundef %5, i8 noundef zeroext 1) #15
  br label %21

21:                                               ; preds = %20, %2
  %22 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 12
  %23 = load i16, ptr %22, align 4, !tbaa !29
  %24 = icmp eq i16 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !138
  tail call void @BKE_report(ptr noundef %27, i32 noundef 32, ptr noundef nonnull @.str.222) #15
  br label %94

28:                                               ; preds = %21
  %29 = and i32 %16, 255
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %5, align 8, !tbaa !19
  %33 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %32, i8 noundef zeroext 1, ptr noundef null) #14
  %34 = icmp eq ptr %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %31, %44
  %36 = phi ptr [ %45, %44 ], [ %33, %31 ]
  %37 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %36, i8 noundef zeroext 2) #14, !range !26
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = call zeroext i8 @BM_vert_is_manifold(ptr noundef nonnull %36) #15
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load ptr, ptr %5, align 8, !tbaa !19
  call void @BM_vert_select_set(ptr noundef %43, ptr noundef nonnull %36, i8 noundef zeroext 1) #15
  br label %44

44:                                               ; preds = %35, %42, %39
  %45 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %35, !llvm.loop !217

47:                                               ; preds = %44, %31, %28
  %48 = and i32 %8, 255
  %49 = icmp ne i32 %48, 0
  %50 = and i32 %10, 255
  %51 = icmp ne i32 %50, 0
  %52 = select i1 %49, i1 true, i1 %51
  %53 = and i32 %12, 255
  %54 = icmp ne i32 %53, 0
  %55 = select i1 %52, i1 true, i1 %54
  %56 = and i32 %14, 255
  %57 = icmp ne i32 %56, 0
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %47
  %60 = load ptr, ptr %5, align 8, !tbaa !19
  %61 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %60, i8 noundef zeroext 2, ptr noundef null) #14
  %62 = icmp eq ptr %61, null
  br i1 %62, label %91, label %63

63:                                               ; preds = %59, %88
  %64 = phi ptr [ %89, %88 ], [ %61, %59 ]
  %65 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %64, i8 noundef zeroext 2) #14, !range !26
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  br i1 %49, label %68, label %71

68:                                               ; preds = %67
  %69 = call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef nonnull %64) #14, !range !35
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %68, %67
  br i1 %51, label %72, label %75

72:                                               ; preds = %71
  %73 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %64) #14, !range !35
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72, %71
  br i1 %57, label %76, label %82

76:                                               ; preds = %75
  %77 = call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef nonnull %64) #14, !range !35
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = call fastcc zeroext i8 @BM_edge_is_contiguous(ptr noundef nonnull %64) #14, !range !35
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79, %76, %75
  br i1 %54, label %83, label %88

83:                                               ; preds = %82
  %84 = call i32 @BM_edge_face_count(ptr noundef nonnull %64) #15
  %85 = icmp sgt i32 %84, 2
  br i1 %85, label %86, label %88

86:                                               ; preds = %83, %79, %72, %68
  %87 = load ptr, ptr %5, align 8, !tbaa !19
  call void @BM_edge_select_set(ptr noundef %87, ptr noundef nonnull %64, i8 noundef zeroext 1) #15
  br label %88

88:                                               ; preds = %63, %86, %83, %82
  %89 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %63, !llvm.loop !218

91:                                               ; preds = %88, %59, %47
  %92 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %93 = load ptr, ptr %92, align 8, !tbaa !13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %93) #15
  call void @EDBM_selectmode_flush(ptr noundef %5) #15
  br label %94

94:                                               ; preds = %91, %25
  %95 = phi i32 [ 2, %25 ], [ 4, %91 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i32 %95
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_select_random(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.134, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.135, ptr %2, align 8, !tbaa !122
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.136, ptr %3, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_random_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = tail call ptr @RNA_def_float_percentage(ptr noundef %8, ptr noundef nonnull @.str.137, float noundef 5.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+02, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139, float noundef 0.000000e+00, float noundef 1.000000e+02) #15
  tail call void @WM_operator_properties_select_action_simple(ptr noundef nonnull %0, i32 noundef 1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_random_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.36) #15
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i8
  %11 = load ptr, ptr %6, align 8, !tbaa !129
  %12 = tail call float @RNA_float_get(ptr noundef %11, ptr noundef nonnull @.str.137) #15
  %13 = fdiv float %12, 1.000000e+02
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %14 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 12
  %15 = load i16, ptr %14, align 4, !tbaa !29
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %2
  %20 = load ptr, ptr %5, align 8, !tbaa !19
  %21 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %20, i8 noundef zeroext 1, ptr noundef null) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %69, label %23

23:                                               ; preds = %19, %32
  %24 = phi ptr [ %33, %32 ], [ %21, %19 ]
  %25 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %24, i8 noundef zeroext 2) #14, !range !26
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = call float @BLI_frand() #15
  %29 = fcmp olt float %28, %13
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load ptr, ptr %5, align 8, !tbaa !19
  call void @BM_vert_select_set(ptr noundef %31, ptr noundef nonnull %24, i8 noundef zeroext %10) #15
  br label %32

32:                                               ; preds = %23, %27, %30
  %33 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %34 = icmp eq ptr %33, null
  br i1 %34, label %69, label %23, !llvm.loop !219

35:                                               ; preds = %2
  %36 = and i32 %16, 2
  %37 = icmp eq i32 %36, 0
  %38 = load ptr, ptr %5, align 8, !tbaa !19
  br i1 %37, label %54, label %39

39:                                               ; preds = %35
  %40 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %38, i8 noundef zeroext 2, ptr noundef null) #14
  %41 = icmp eq ptr %40, null
  br i1 %41, label %69, label %42

42:                                               ; preds = %39, %51
  %43 = phi ptr [ %52, %51 ], [ %40, %39 ]
  %44 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %43, i8 noundef zeroext 2) #14, !range !26
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = call float @BLI_frand() #15
  %48 = fcmp olt float %47, %13
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load ptr, ptr %5, align 8, !tbaa !19
  call void @BM_edge_select_set(ptr noundef %50, ptr noundef nonnull %43, i8 noundef zeroext %10) #15
  br label %51

51:                                               ; preds = %42, %46, %49
  %52 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %53 = icmp eq ptr %52, null
  br i1 %53, label %69, label %42, !llvm.loop !220

54:                                               ; preds = %35
  %55 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %38, i8 noundef zeroext 3, ptr noundef null) #14
  %56 = icmp eq ptr %55, null
  br i1 %56, label %69, label %57

57:                                               ; preds = %54, %66
  %58 = phi ptr [ %67, %66 ], [ %55, %54 ]
  %59 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %58, i8 noundef zeroext 2) #14, !range !26
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = call float @BLI_frand() #15
  %63 = fcmp olt float %62, %13
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load ptr, ptr %5, align 8, !tbaa !19
  call void @BM_face_select_set(ptr noundef %65, ptr noundef nonnull %58, i8 noundef zeroext %10) #15
  br label %66

66:                                               ; preds = %57, %61, %64
  %67 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %57, !llvm.loop !221

69:                                               ; preds = %32, %51, %66, %19, %39, %54
  br i1 %9, label %70, label %71

70:                                               ; preds = %69
  call void @EDBM_selectmode_flush(ptr noundef %5) #15
  br label %72

71:                                               ; preds = %69
  call void @EDBM_deselect_flush(ptr noundef %5) #15
  br label %72

72:                                               ; preds = %71, %70
  %73 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %74 = load ptr, ptr %73, align 8, !tbaa !13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %74) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_float_percentage(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_operator_properties_select_action_simple(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_select_ungrouped(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.140, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.141, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.142, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_ungrouped_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edbm_select_ungrouped_poll, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.49) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_ungrouped_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #15
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 24
  %8 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %7, i32 noundef 2) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.47) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @EDBM_flag_disable_all(ptr noundef nonnull %5, i8 noundef zeroext 1) #15
  br label %14

14:                                               ; preds = %13, %2
  %15 = load ptr, ptr %5, align 8, !tbaa !19
  %16 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %15, i8 noundef zeroext 1, ptr noundef null) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %14
  %19 = sext i32 %8 to i64
  br label %20

20:                                               ; preds = %18, %33
  %21 = phi ptr [ %16, %18 ], [ %34, %33 ]
  %22 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %21, i8 noundef zeroext 2) #14, !range !26
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load ptr, ptr %21, align 8, !tbaa !222
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, ptr %25, i64 %19
  %29 = load ptr, ptr %28, align 8, !tbaa !223
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %24
  %32 = load ptr, ptr %5, align 8, !tbaa !19
  call void @BM_vert_select_set(ptr noundef %32, ptr noundef nonnull %21, i8 noundef zeroext 1) #15
  br label %33

33:                                               ; preds = %27, %31, %20
  %34 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %20, !llvm.loop !225

36:                                               ; preds = %33, %14
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #15
  %37 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %38) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_ungrouped_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_editmesh(ptr noundef %0) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #15
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 24
  %9 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %8, i32 noundef 2) #15
  %10 = getelementptr inbounds %struct.BMEditMesh, ptr %6, i64 0, i32 12
  %11 = load i16, ptr %10, align 4, !tbaa !29
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 25
  %16 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %15) #14, !range !35
  %17 = icmp ne i8 %16, 0
  %18 = icmp eq i32 %9, -1
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %4
  %21 = phi ptr [ @.str.223, %4 ], [ @.str.224, %14 ]
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull %21) #15
  br label %22

22:                                               ; preds = %20, %1, %14
  %23 = phi i32 [ 1, %14 ], [ 0, %1 ], [ 0, %20 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_select_axis(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.155, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.156, ptr %2, align 8, !tbaa !122
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.157, ptr %3, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_axis_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.158, ptr noundef nonnull @MESH_OT_select_axis.axis_mode_items, i32 noundef 0, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.160) #15
  %10 = load ptr, ptr %7, align 8, !tbaa !127
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.161, ptr noundef nonnull @MESH_OT_select_axis.axis_items_xyz, i32 noundef 0, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_axis_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #15
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = tail call ptr @BM_mesh_active_vert_get(ptr noundef %6) #15
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.161) #15
  %11 = load ptr, ptr %8, align 8, !tbaa !129
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.158) #15
  %13 = icmp eq ptr %7, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !138
  tail call void @BKE_report(ptr noundef %16, i32 noundef 16, ptr noundef nonnull @.str.225) #15
  br label %58

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %18 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #15
  %19 = getelementptr inbounds %struct.ToolSettings, ptr %18, i64 0, i32 5
  %20 = load float, ptr %19, align 4, !tbaa !59
  %21 = sext i32 %10 to i64
  %22 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !87
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
  %30 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %6, i8 noundef zeroext 1, ptr noundef null) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %55, label %32

32:                                               ; preds = %28, %52
  %33 = phi ptr [ %53, %52 ], [ %30, %28 ]
  %34 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %33, i8 noundef zeroext 2) #14, !range !26
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  switch i32 %12, label %52 [
    i32 -1, label %37
    i32 0, label %43
    i32 1, label %47
  ]

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2, i64 %21
  %39 = load float, ptr %38, align 4, !tbaa !87
  %40 = fsub float %39, %29
  %41 = call float @llvm.fabs.f32(float %40)
  %42 = fcmp olt float %41, %20
  br i1 %42, label %51, label %52

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2, i64 %21
  %45 = load float, ptr %44, align 4, !tbaa !87
  %46 = fcmp ogt float %45, %29
  br i1 %46, label %51, label %52

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2, i64 %21
  %49 = load float, ptr %48, align 4, !tbaa !87
  %50 = fcmp olt float %49, %29
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %43, %37
  call void @BM_vert_select_set(ptr noundef %6, ptr noundef nonnull %33, i8 noundef zeroext 1) #15
  br label %52

52:                                               ; preds = %51, %32, %47, %43, %37, %36
  %53 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %32, !llvm.loop !226

55:                                               ; preds = %52, %28
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #15
  %56 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %57 = load ptr, ptr %56, align 8, !tbaa !13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %57) #15
  br label %58

58:                                               ; preds = %55, %14
  %59 = phi i32 [ 2, %14 ], [ 4, %55 ]
  ret i32 %59
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_select_next_loop(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.164, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.165, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.166, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_select_next_loop_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_select_next_loop_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %7, i8 noundef zeroext 1, ptr noundef null) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %12, %10 ], [ %8, %2 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %11) #14
  %12 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %10, !llvm.loop !227

14:                                               ; preds = %10, %2
  %15 = load ptr, ptr %6, align 8, !tbaa !19
  %16 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %15, i8 noundef zeroext 3, ptr noundef null) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %14, %38
  %19 = phi ptr [ %39, %38 ], [ %16, %14 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %20 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %19) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %18, %35
  %23 = phi ptr [ %36, %35 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !228
  %26 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %25, i8 noundef zeroext 1) #14, !range !26
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !229
  %31 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !228
  call fastcc void @_bm_elem_flag_enable(ptr noundef %32) #14
  %33 = load ptr, ptr %6, align 8, !tbaa !19
  %34 = load ptr, ptr %24, align 8, !tbaa !228
  call void @BM_vert_select_set(ptr noundef %33, ptr noundef %34, i8 noundef zeroext 0) #15
  br label %35

35:                                               ; preds = %22, %28
  %36 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %22, !llvm.loop !230

38:                                               ; preds = %35, %18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  %39 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %18, !llvm.loop !231

41:                                               ; preds = %38, %14
  %42 = load ptr, ptr %6, align 8, !tbaa !19
  %43 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %42, i8 noundef zeroext 1, ptr noundef null) #14
  %44 = icmp eq ptr %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %41, %51
  %46 = phi ptr [ %52, %51 ], [ %43, %41 ]
  %47 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %46, i8 noundef zeroext 16) #14, !range !26
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %6, align 8, !tbaa !19
  call void @BM_vert_select_set(ptr noundef %50, ptr noundef nonnull %46, i8 noundef zeroext 1) #15
  br label %51

51:                                               ; preds = %45, %49
  %52 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %45, !llvm.loop !232

54:                                               ; preds = %51, %41
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_region_to_loop(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.167, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.168, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.169, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_region_to_loop_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_region_to_loop_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %8, i8 noundef zeroext 2, i8 noundef zeroext 16, i8 noundef zeroext 0) #15
  %9 = load ptr, ptr %7, align 8, !tbaa !19
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %9, i8 noundef zeroext 3, ptr noundef null) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %51, label %12

12:                                               ; preds = %2, %48
  %13 = phi ptr [ %49, %48 ], [ %10, %2 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %13) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %16

16:                                               ; preds = %12, %45
  %17 = phi ptr [ %46, %45 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !199
  %20 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef null, i8 noundef zeroext 14, ptr noundef %19) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %16, %22
  %23 = phi i32 [ %32, %22 ], [ 0, %16 ]
  %24 = phi i32 [ %26, %22 ], [ 0, %16 ]
  %25 = phi ptr [ %33, %22 ], [ %20, %16 ]
  %26 = add nuw nsw i32 %24, 1
  %27 = getelementptr inbounds %struct.BMLoop, ptr %25, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !211
  %29 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %28, i8 noundef zeroext 1) #14, !range !26
  %30 = icmp ne i8 %29, 0
  %31 = zext i1 %30 to i32
  %32 = add nuw nsw i32 %23, %31
  %33 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %22, !llvm.loop !233

35:                                               ; preds = %22
  %36 = icmp ne i32 %26, %32
  %37 = icmp ne i32 %32, 0
  %38 = and i1 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = icmp eq i32 %32, 1
  %41 = icmp eq i32 %24, 0
  %42 = and i1 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %35
  %44 = load ptr, ptr %18, align 8, !tbaa !199
  call fastcc void @_bm_elem_flag_enable(ptr noundef %44) #14
  br label %45

45:                                               ; preds = %16, %43, %39
  %46 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %16, !llvm.loop !234

48:                                               ; preds = %45, %12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  %49 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %12, !llvm.loop !235

51:                                               ; preds = %48, %2
  call void @EDBM_flag_disable_all(ptr noundef nonnull %7, i8 noundef zeroext 1) #15
  %52 = load ptr, ptr %7, align 8, !tbaa !19
  %53 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %52, i8 noundef zeroext 2, ptr noundef null) #14
  %54 = icmp eq ptr %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %51, %61
  %56 = phi ptr [ %62, %61 ], [ %53, %51 ]
  %57 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %56, i8 noundef zeroext 16) #14, !range !26
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %7, align 8, !tbaa !19
  call void @BM_edge_select_set(ptr noundef %60, ptr noundef nonnull %56, i8 noundef zeroext 1) #15
  br label %61

61:                                               ; preds = %55, %59
  %62 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %55, !llvm.loop !236

64:                                               ; preds = %61, %51
  %65 = getelementptr inbounds %struct.BMEditMesh, ptr %7, i64 0, i32 12
  %66 = load i16, ptr %65, align 4, !tbaa !29
  %67 = icmp eq i16 %66, 4
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i16 2, ptr %65, align 4, !tbaa !29
  call void @EDBM_selectmode_set(ptr noundef nonnull %7) #14
  call void @EDBM_selectmode_to_scene(ptr noundef %0) #15
  br label %69

69:                                               ; preds = %68, %64
  %70 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %71 = load ptr, ptr %70, align 8, !tbaa !13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %71) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_loop_to_region(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.170, ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.171, ptr %2, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.172, ptr %3, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_loop_to_region_exec, ptr %4, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.173, i32 noundef 0, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.175) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_loop_to_region_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.173) #15
  %9 = trunc i32 %8 to i8
  %10 = load ptr, ptr %5, align 8, !tbaa !19
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %10, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #15
  %11 = tail call fastcc i32 @loop_find_regions(ptr noundef nonnull %5, i8 noundef zeroext %9) #14
  %12 = icmp eq i8 %9, 0
  %13 = zext i1 %12 to i8
  %14 = tail call fastcc i32 @loop_find_regions(ptr noundef nonnull %5, i8 noundef zeroext %13) #14
  %15 = load ptr, ptr %5, align 8, !tbaa !19
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %15, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #15
  %16 = icmp sle i32 %11, %14
  %17 = zext i1 %16 to i32
  %18 = and i32 %8, 255
  %19 = icmp eq i32 %18, %17
  %20 = zext i1 %12 to i32
  %21 = select i1 %19, i32 %20, i32 %8
  %22 = trunc i32 %21 to i8
  %23 = tail call fastcc i32 @loop_find_regions(ptr noundef nonnull %5, i8 noundef zeroext %22) #14
  tail call void @EDBM_flag_disable_all(ptr noundef nonnull %5, i8 noundef zeroext 1) #15
  %24 = load ptr, ptr %5, align 8, !tbaa !19
  %25 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %24, i8 noundef zeroext 3, ptr noundef null) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %2, %36
  %28 = phi ptr [ %37, %36 ], [ %25, %2 ]
  %29 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %28, i8 noundef zeroext 16) #14, !range !26
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %28, i8 noundef zeroext 2) #14, !range !26
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load ptr, ptr %5, align 8, !tbaa !19
  call void @BM_face_select_set(ptr noundef %35, ptr noundef nonnull %28, i8 noundef zeroext 1) #15
  br label %36

36:                                               ; preds = %27, %31, %34
  %37 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %27, !llvm.loop !237

39:                                               ; preds = %36, %2
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #15
  %40 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %41) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !238
  switch i8 %2, label %54 [
    i8 1, label %6
    i8 2, label %11
    i8 3, label %16
    i8 4, label %21
    i8 5, label %24
    i8 6, label %27
    i8 7, label %30
    i8 8, label %33
    i8 9, label %36
    i8 10, label %39
    i8 11, label %42
    i8 13, label %45
    i8 14, label %48
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !239
  %8 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !240
  br label %51

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !239
  %13 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !241
  br label %51

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %17, align 8, !tbaa !239
  %18 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %18, align 8, !tbaa !38
  %19 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !242
  br label %51

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %22, align 8, !tbaa !239
  %23 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %23, align 8, !tbaa !38
  br label %51

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %25, align 8, !tbaa !239
  %26 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %26, align 8, !tbaa !38
  br label %51

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %28, align 8, !tbaa !239
  %29 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %29, align 8, !tbaa !38
  br label %51

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__vert_of_edge_begin, ptr %31, align 8, !tbaa !239
  %32 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__vert_of_edge_step, ptr %32, align 8, !tbaa !38
  br label %51

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__face_of_edge_begin, ptr %34, align 8, !tbaa !239
  %35 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__face_of_edge_step, ptr %35, align 8, !tbaa !38
  br label %51

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__vert_of_face_begin, ptr %37, align 8, !tbaa !239
  %38 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__vert_of_face_step, ptr %38, align 8, !tbaa !38
  br label %51

39:                                               ; preds = %4
  %40 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__edge_of_face_begin, ptr %40, align 8, !tbaa !239
  %41 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__edge_of_face_step, ptr %41, align 8, !tbaa !38
  br label %51

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %43, align 8, !tbaa !239
  %44 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %44, align 8, !tbaa !38
  br label %51

45:                                               ; preds = %4
  %46 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_loop_begin, ptr %46, align 8, !tbaa !239
  %47 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_loop_step, ptr %47, align 8, !tbaa !38
  br label %51

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__loop_of_edge_begin, ptr %49, align 8, !tbaa !239
  %50 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__loop_of_edge_step, ptr %50, align 8, !tbaa !38
  br label %51

51:                                               ; preds = %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %16, %11, %6
  %52 = phi ptr [ %3, %48 ], [ %3, %45 ], [ %3, %42 ], [ %3, %39 ], [ %3, %36 ], [ %3, %33 ], [ %3, %30 ], [ %3, %27 ], [ %3, %24 ], [ %3, %21 ], [ %20, %16 ], [ %15, %11 ], [ %10, %6 ]
  %53 = phi ptr [ @bmiter__loop_of_edge_begin, %48 ], [ @bmiter__loop_of_loop_begin, %45 ], [ @bmiter__loop_of_face_begin, %42 ], [ @bmiter__edge_of_face_begin, %39 ], [ @bmiter__vert_of_face_begin, %36 ], [ @bmiter__face_of_edge_begin, %33 ], [ @bmiter__vert_of_edge_begin, %30 ], [ @bmiter__loop_of_vert_begin, %27 ], [ @bmiter__face_of_vert_begin, %24 ], [ @bmiter__edge_of_vert_begin, %21 ], [ @bmiter__elem_of_mesh_begin, %16 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %6 ]
  store ptr %52, ptr %0, align 8, !tbaa !98
  tail call void %53(ptr noundef nonnull %0) #15
  br label %54

54:                                               ; preds = %4, %51
  %55 = phi i8 [ 1, %51 ], [ 0, %4 ]
  ret i8 %55
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #4

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #4

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #4

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #4

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #4

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #4

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #4

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #4

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #4

; Function Attrs: optsize
declare void @bmiter__loop_of_loop_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__loop_of_loop_step(ptr noundef) #4

; Function Attrs: optsize
declare void @bmiter__loop_of_edge_begin(ptr noundef) #4

; Function Attrs: optsize
declare ptr @bmiter__loop_of_edge_step(ptr noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !36
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !36
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_manhattan_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #14
  %4 = call fastcc float @len_manhattan_v2(ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = load float, ptr %1, align 4, !tbaa !87
  %5 = load float, ptr %2, align 4, !tbaa !87
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !87
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !87
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !87
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_manhattan_v2(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !87
  %3 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %2)
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %5 = fadd <2 x float> %3, %4
  %6 = extractelement <2 x float> %5, i64 0
  ret float %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: optsize
declare float @dist_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @line_point_factor_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_clipping_test(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_property_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @similar_vert_select_exec(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #15
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #13
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.4) #15
  %9 = load ptr, ptr %6, align 8, !tbaa !129
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.9) #15
  %11 = load ptr, ptr %6, align 8, !tbaa !129
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.7) #15
  %13 = fpext float %10 to double
  %14 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.177, i32 noundef 1, i32 noundef %8, double noundef %13, i32 noundef %12) #15
  %15 = load ptr, ptr %5, align 8, !tbaa !19
  call void @BMO_op_exec(ptr noundef %15, ptr noundef nonnull %3) #15
  call void @EDBM_flag_disable_all(ptr noundef nonnull %5, i8 noundef zeroext 1) #15
  %16 = load ptr, ptr %5, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %16, ptr noundef nonnull %17, ptr noundef nonnull @.str.178, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  %18 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #15
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  br label %21

21:                                               ; preds = %2, %20
  %22 = phi i32 [ 4, %20 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #13
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @similar_edge_select_exec(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #15
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #13
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.4) #15
  %9 = load ptr, ptr %6, align 8, !tbaa !129
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.9) #15
  %11 = load ptr, ptr %6, align 8, !tbaa !129
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.7) #15
  %13 = fpext float %10 to double
  %14 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.179, i32 noundef 1, i32 noundef %8, double noundef %13, i32 noundef %12) #15
  %15 = load ptr, ptr %5, align 8, !tbaa !19
  call void @BMO_op_exec(ptr noundef %15, ptr noundef nonnull %3) #15
  call void @EDBM_flag_disable_all(ptr noundef nonnull %5, i8 noundef zeroext 1) #15
  %16 = load ptr, ptr %5, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %16, ptr noundef nonnull %17, ptr noundef nonnull @.str.180, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #15
  %18 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  br label %21

21:                                               ; preds = %2, %20
  %22 = phi i32 [ 4, %20 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #13
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @similar_face_select_exec(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #15
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #13
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.4) #15
  %9 = load ptr, ptr %6, align 8, !tbaa !129
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.9) #15
  %11 = load ptr, ptr %6, align 8, !tbaa !129
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.7) #15
  %13 = fpext float %10 to double
  %14 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.181, i32 noundef 1, i32 noundef %8, double noundef %13, i32 noundef %12) #15
  %15 = load ptr, ptr %5, align 8, !tbaa !19
  call void @BMO_op_exec(ptr noundef %15, ptr noundef nonnull %3) #15
  call void @EDBM_flag_disable_all(ptr noundef nonnull %5, i8 noundef zeroext 1) #15
  %16 = load ptr, ptr %5, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %16, ptr noundef nonnull %17, ptr noundef nonnull @.str.182, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  %18 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  br label %21

21:                                               ; preds = %2, %20
  %22 = phi i32 [ 4, %20 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #13
  ret i32 %22
}

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @EDBM_op_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @EDBM_op_finish(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_enum_items_add_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BM_mesh_calc_face_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BM_face_at_index(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BM_mesh_region_match(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @walker_select(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.BMWalker, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #13
  call void @BMW_init(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %1, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i32 noundef 1, i32 noundef 0) #15
  %7 = call ptr @BMW_begin(ptr noundef nonnull %5, ptr noundef %2) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = icmp eq i8 %3, 0
  br label %11

11:                                               ; preds = %9, %15
  %12 = phi ptr [ %7, %9 ], [ %16, %15 ]
  br i1 %10, label %13, label %15

13:                                               ; preds = %11
  %14 = call zeroext i8 @_bm_select_history_remove(ptr noundef %6, ptr noundef nonnull %12) #15
  br label %15

15:                                               ; preds = %13, %11
  call void @BM_elem_select_set(ptr noundef %6, ptr noundef nonnull %12, i8 noundef zeroext %3) #15
  %16 = call ptr @BMW_step(ptr noundef nonnull %5) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %11, !llvm.loop !243

18:                                               ; preds = %15, %4
  call void @BMW_end(ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #13
  ret void
}

; Function Attrs: optsize
declare void @BMW_init(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BMW_begin(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BM_elem_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BMW_step(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BMW_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @mouse_mesh_loop(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca %struct.ViewContext, align 8
  %8 = alloca float, align 4
  %9 = alloca [2 x float], align 8
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca %struct.BMIter, align 8
  %13 = alloca [3 x float], align 4
  %14 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  %15 = tail call float @ED_view3d_select_dist_px() #15
  %16 = fmul float %15, 0x3FE554C980000000
  store float %16, ptr %8, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  call void @em_setup_viewcontext(ptr noundef %0, ptr noundef nonnull %7) #14
  %17 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 7
  %18 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 7, i64 1
  %19 = load <2 x i32>, ptr %1, align 4, !tbaa !23
  %20 = extractelement <2 x i32> %19, i64 0
  store i32 %20, ptr %17, align 8, !tbaa !23
  %21 = extractelement <2 x i32> %19, i64 1
  store i32 %21, ptr %18, align 4, !tbaa !23
  %22 = sitofp <2 x i32> %19 to <2 x float>
  store <2 x float> %22, ptr %9, align 8, !tbaa !87
  %23 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !86
  call void @view3d_validate_backbuf(ptr noundef nonnull %7) #15
  %25 = call ptr @EDBM_edge_find_nearest(ptr noundef nonnull %7, ptr noundef nonnull %8) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %141, label %27

27:                                               ; preds = %6
  %28 = or i8 %3, %2
  %29 = or i8 %28, %4
  %30 = icmp eq i8 %29, 0
  %31 = zext i1 %30 to i8
  %32 = icmp eq i8 %2, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = icmp ne i8 %3, 0
  %35 = or i1 %34, %30
  %36 = xor i1 %34, true
  %37 = zext i1 %36 to i8
  br i1 %35, label %44, label %38

38:                                               ; preds = %33
  %39 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %25, i8 noundef zeroext 1) #14, !range !26
  %40 = icmp eq i8 %39, 0
  %41 = icmp eq i8 %4, 0
  %42 = or i1 %41, %40
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %33, %38, %27, %43
  %45 = phi i1 [ true, %43 ], [ false, %27 ], [ %34, %33 ], [ false, %38 ]
  %46 = phi i8 [ 0, %43 ], [ 1, %27 ], [ %37, %33 ], [ 1, %38 ]
  %47 = phi i8 [ 0, %43 ], [ 1, %27 ], [ 1, %33 ], [ 1, %38 ]
  %48 = getelementptr inbounds %struct.BMEditMesh, ptr %24, i64 0, i32 12
  %49 = load i16, ptr %48, align 4, !tbaa !29
  %50 = and i16 %49, 4
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  call fastcc void @mouse_mesh_loop_face(ptr noundef nonnull %24, ptr noundef nonnull %25, i8 noundef zeroext %46, i8 noundef zeroext %31) #14
  br label %57

53:                                               ; preds = %44
  %54 = icmp eq i8 %5, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %53
  call fastcc void @mouse_mesh_loop_edge_ring(ptr noundef nonnull %24, ptr noundef nonnull %25, i8 noundef zeroext %46, i8 noundef zeroext %31) #14
  br label %57

56:                                               ; preds = %53
  call fastcc void @mouse_mesh_loop_edge(ptr noundef nonnull %24, ptr noundef nonnull %25, i8 noundef zeroext %46, i8 noundef zeroext %31, i8 noundef zeroext %47) #14
  br label %57

57:                                               ; preds = %55, %56, %52
  call void @EDBM_selectmode_flush(ptr noundef nonnull %24) #15
  br i1 %45, label %138, label %58

58:                                               ; preds = %57
  %59 = load i16, ptr %48, align 4, !tbaa !29
  %60 = zext i16 %59 to i32
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %93, label %63

63:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  %64 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !66
  %66 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !96
  call void @ED_view3d_init_mats_rv3d(ptr noundef %65, ptr noundef %67) #15
  %68 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !244
  %70 = getelementptr inbounds %struct.BMEdge, ptr %25, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !105
  %72 = getelementptr inbounds %struct.BMVert, ptr %71, i64 0, i32 2
  %73 = call i32 @ED_view3d_project_float_object(ptr noundef %69, ptr noundef nonnull %72, ptr noundef nonnull %10, i32 noundef 4) #15
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %10) #14
  br label %77

77:                                               ; preds = %75, %63
  %78 = phi float [ %76, %75 ], [ 0x47EFFFFFE0000000, %63 ]
  %79 = load ptr, ptr %68, align 8, !tbaa !244
  %80 = getelementptr inbounds %struct.BMEdge, ptr %25, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !108
  %82 = getelementptr inbounds %struct.BMVert, ptr %81, i64 0, i32 2
  %83 = call i32 @ED_view3d_project_float_object(ptr noundef %79, ptr noundef nonnull %82, ptr noundef nonnull %11, i32 noundef 4) #15
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %11) #14
  br label %87

87:                                               ; preds = %85, %77
  %88 = phi float [ %86, %85 ], [ 0x47EFFFFFE0000000, %77 ]
  %89 = load ptr, ptr %24, align 8, !tbaa !19
  %90 = fcmp olt float %78, %88
  %91 = select i1 %90, ptr %70, ptr %80
  %92 = load ptr, ptr %91, align 8, !tbaa !75
  call void @_bm_select_history_store(ptr noundef %89, ptr noundef %92) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  br label %138

93:                                               ; preds = %58
  %94 = and i32 %60, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr %24, align 8, !tbaa !19
  call void @_bm_select_history_store(ptr noundef %97, ptr noundef nonnull %25) #15
  br label %138

98:                                               ; preds = %93
  %99 = and i32 %60, 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %138, label %101

101:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #13
  %102 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !66
  %104 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 5
  %105 = load ptr, ptr %104, align 8, !tbaa !96
  call void @ED_view3d_init_mats_rv3d(ptr noundef %103, ptr noundef %105) #15
  %106 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %12, ptr noundef null, i8 noundef zeroext 8, ptr noundef nonnull %25) #14
  %107 = icmp eq ptr %106, null
  br i1 %107, label %137, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 3
  br label %110

110:                                              ; preds = %108, %127
  %111 = phi float [ 0x47EFFFFFE0000000, %108 ], [ %129, %127 ]
  %112 = phi ptr [ null, %108 ], [ %128, %127 ]
  %113 = phi ptr [ %106, %108 ], [ %130, %127 ]
  %114 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %113, i8 noundef zeroext 1) #14, !range !26
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  call void @BM_face_calc_center_mean(ptr noundef nonnull %113, ptr noundef nonnull %13) #15
  %117 = load ptr, ptr %109, align 8, !tbaa !244
  %118 = call i32 @ED_view3d_project_float_object(ptr noundef %117, ptr noundef nonnull %13, ptr noundef nonnull %14, i32 noundef 4) #15
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %9, ptr noundef nonnull %14) #14
  %122 = fcmp olt float %121, %111
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %124

124:                                              ; preds = %120, %123, %116
  %125 = phi ptr [ %113, %123 ], [ %112, %120 ], [ %112, %116 ]
  %126 = phi float [ %121, %123 ], [ %111, %120 ], [ %111, %116 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #13
  br label %127

127:                                              ; preds = %110, %124
  %128 = phi ptr [ %125, %124 ], [ %112, %110 ]
  %129 = phi float [ %126, %124 ], [ %111, %110 ]
  %130 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %12) #14
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %110, !llvm.loop !245

132:                                              ; preds = %127
  %133 = icmp eq ptr %128, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %132
  %135 = load ptr, ptr %24, align 8, !tbaa !19
  call void @BM_mesh_active_face_set(ptr noundef %135, ptr noundef nonnull %128) #15
  %136 = load ptr, ptr %24, align 8, !tbaa !19
  call void @_bm_select_history_store(ptr noundef %136, ptr noundef nonnull %128) #15
  br label %137

137:                                              ; preds = %101, %134, %132
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #13
  br label %138

138:                                              ; preds = %87, %98, %137, %96, %57
  %139 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !66
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %140) #15
  br label %141

141:                                              ; preds = %6, %138
  %142 = phi i8 [ 1, %138 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13
  ret i8 %142
}

; Function Attrs: optsize
declare float @ED_view3d_select_dist_px() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mouse_mesh_loop_face(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @EDBM_flag_disable_all(ptr noundef %0, i8 noundef zeroext 1) #15
  br label %7

7:                                                ; preds = %6, %4
  tail call fastcc void @walker_select(ptr noundef %0, i32 noundef 3, ptr noundef %1, i8 noundef zeroext %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mouse_mesh_loop_edge_ring(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @EDBM_flag_disable_all(ptr noundef %0, i8 noundef zeroext 1) #15
  br label %7

7:                                                ; preds = %6, %4
  tail call fastcc void @walker_select(ptr noundef %0, i32 noundef 4, ptr noundef %1, i8 noundef zeroext %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mouse_mesh_loop_edge(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca [2 x i32], align 4
  %7 = icmp eq i8 %4, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %1) #14, !range !35
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %12 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  call fastcc void @walker_select_count(ptr noundef %0, i32 noundef 2, ptr noundef %1, i8 noundef zeroext %2, ptr noundef nonnull %6, ptr noundef nonnull %12) #14
  %13 = zext nneg i8 %2 to i64
  %14 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !23
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  call fastcc void @walker_select_count(ptr noundef %0, i32 noundef 5, ptr noundef %1, i8 noundef zeroext %2, ptr noundef nonnull %6, ptr noundef nonnull %12) #14
  %18 = load i32, ptr %14, align 4, !tbaa !23
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 2, i32 5
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i32 [ 2, %11 ], [ %20, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br label %23

23:                                               ; preds = %21, %8, %5
  %24 = phi i32 [ %22, %21 ], [ 2, %8 ], [ 2, %5 ]
  %25 = icmp eq i8 %3, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @EDBM_flag_disable_all(ptr noundef %0, i8 noundef zeroext 1) #15
  br label %27

27:                                               ; preds = %26, %23
  tail call fastcc void @walker_select(ptr noundef %0, i32 noundef %24, ptr noundef %1, i8 noundef zeroext %2) #14
  ret void
}

; Function Attrs: optsize
declare i32 @ED_view3d_project_float_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #14
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret float %4
}

; Function Attrs: optsize
declare void @BM_face_calc_center_mean(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !246
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !247
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @walker_select_count(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = alloca %struct.BMWalker, align 8
  %8 = alloca [2 x i32], align 8
  %9 = load ptr, ptr %0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  store i64 0, ptr %8, align 8
  call void @BMW_init(ptr noundef nonnull %7, ptr noundef %9, i32 noundef %1, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i32 noundef 1, i32 noundef 0) #15
  %10 = call ptr @BMW_begin(ptr noundef nonnull %7, ptr noundef %2) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  br label %14

14:                                               ; preds = %12, %27
  %15 = phi ptr [ %10, %12 ], [ %28, %27 ]
  %16 = call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef nonnull %15) #14
  %17 = icmp ne i8 %16, %3
  %18 = zext i1 %17 to i64
  %19 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !23
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !23
  %22 = load i32, ptr %8, align 8
  %23 = icmp ne i32 %22, 0
  %24 = load i32, ptr %13, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %30, label %27

27:                                               ; preds = %14
  %28 = call ptr @BMW_step(ptr noundef nonnull %7) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %14, !llvm.loop !248

30:                                               ; preds = %27, %14, %6
  %31 = phi i32 [ 0, %6 ], [ -1, %14 ], [ %24, %27 ]
  %32 = phi i32 [ 0, %6 ], [ -1, %14 ], [ %22, %27 ]
  store i32 %32, ptr %4, align 4, !tbaa !23
  store i32 %31, ptr %5, align 4, !tbaa !23
  call void @BMW_end(ptr noundef nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !36
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !87
  %4 = load float, ptr %1, align 4, !tbaa !87
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !87
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !87
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linked_limit_default(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !129
  %5 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %4, ptr noundef nonnull @.str.70) #15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %9 = tail call ptr @BKE_editmesh_from_object(ptr noundef %8) #15
  %10 = getelementptr inbounds %struct.BMEditMesh, ptr %9, i64 0, i32 12
  %11 = load i16, ptr %10, align 4, !tbaa !29
  %12 = icmp eq i16 %11, 4
  %13 = load ptr, ptr %3, align 8, !tbaa !129
  %14 = zext i1 %12 to i32
  tail call void @RNA_boolean_set(ptr noundef %13, ptr noundef nonnull @.str.70, i32 noundef %14) #15
  br label %15

15:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_elem_toolflags_ensure(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_set(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = icmp ne i32 %2, 0
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %6 = load i32, ptr %5, align 8, !tbaa !249
  %7 = sext i32 %6 to i64
  %8 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %7
  %9 = getelementptr %struct.BMFlagLayer, ptr %8, i64 -1
  %10 = load i16, ptr %9, align 2, !tbaa !250
  %11 = and i16 %10, -2
  %12 = zext i1 %4 to i16
  %13 = or disjoint i16 %11, %12
  store i16 %13, ptr %9, align 2, !tbaa !250
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_elem_toolflags_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_edge_is_wire(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !246
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare void @ED_mesh_report_mirror_ex(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @EDBM_select_more(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @EDBM_select_less(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @mod_i(i32 noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = srem i32 %0, %1
  %4 = add nsw i32 %3, %1
  %5 = srem i32 %4, %1
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @edbm_deselect_nth(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call fastcc void @deselect_nth_active(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %7 = load ptr, ptr %4, align 8, !tbaa !75
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 8, !tbaa !75
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load ptr, ptr %6, align 8, !tbaa !75
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi ptr [ %7, %3 ], [ %10, %9 ], [ %13, %12 ]
  tail call fastcc void @walker_deselect_nth(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %16) #14
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i8 [ 0, %12 ], [ 1, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @deselect_nth_active(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  store ptr null, ptr %1, align 8, !tbaa !75
  store ptr null, ptr %2, align 8, !tbaa !75
  store ptr null, ptr %3, align 8, !tbaa !75
  tail call void @EDBM_selectmode_flush(ptr noundef %0) #15
  %6 = load ptr, ptr %0, align 8, !tbaa !19
  %7 = tail call ptr @BM_mesh_active_elem_get(ptr noundef %6) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %7, i8 noundef zeroext 1) #14, !range !26
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.BMHeader, ptr %7, i64 0, i32 2
  %14 = load i8, ptr %13, align 4, !tbaa !252
  switch i8 %14, label %18 [
    i8 1, label %15
    i8 2, label %16
    i8 8, label %17
  ]

15:                                               ; preds = %12
  store ptr %7, ptr %1, align 8, !tbaa !75
  br label %62

16:                                               ; preds = %12
  store ptr %7, ptr %2, align 8, !tbaa !75
  br label %62

17:                                               ; preds = %12
  store ptr %7, ptr %3, align 8, !tbaa !75
  br label %62

18:                                               ; preds = %12, %9, %4
  %19 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %20 = load i16, ptr %19, align 4, !tbaa !29
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %0, align 8, !tbaa !19
  %26 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %25, i8 noundef zeroext 1, ptr noundef null) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %62, label %28

28:                                               ; preds = %24, %33
  %29 = phi ptr [ %34, %33 ], [ %26, %24 ]
  %30 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %29, i8 noundef zeroext 1) #14, !range !26
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store ptr %29, ptr %1, align 8, !tbaa !75
  br label %62

33:                                               ; preds = %28
  %34 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %62, label %28, !llvm.loop !254

36:                                               ; preds = %18
  %37 = and i32 %21, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %0, align 8, !tbaa !19
  %41 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %40, i8 noundef zeroext 2, ptr noundef null) #14
  %42 = icmp eq ptr %41, null
  br i1 %42, label %62, label %43

43:                                               ; preds = %39, %48
  %44 = phi ptr [ %49, %48 ], [ %41, %39 ]
  %45 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %44, i8 noundef zeroext 1) #14, !range !26
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store ptr %44, ptr %2, align 8, !tbaa !75
  br label %62

48:                                               ; preds = %43
  %49 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #14
  %50 = icmp eq ptr %49, null
  br i1 %50, label %62, label %43, !llvm.loop !255

51:                                               ; preds = %36
  %52 = and i32 %21, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %0, align 8, !tbaa !19
  %56 = tail call ptr @BM_mesh_active_face_get(ptr noundef %55, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %56, i8 noundef zeroext 1) #14, !range !26
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store ptr %56, ptr %3, align 8, !tbaa !75
  br label %62

62:                                               ; preds = %33, %48, %24, %39, %47, %32, %51, %54, %58, %61, %17, %16, %15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @walker_deselect_nth(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.BMWalker, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  %8 = getelementptr inbounds %struct.BMHeader, ptr %3, i64 0, i32 2
  %9 = load i8, ptr %8, align 4, !tbaa !256
  switch i8 %9, label %16 [
    i8 1, label %10
    i8 2, label %11
    i8 8, label %15
  ]

10:                                               ; preds = %4
  br label %16

11:                                               ; preds = %4
  %12 = tail call fastcc zeroext i8 @bm_edge_is_select_isolated(ptr noundef nonnull %3) #14
  %13 = icmp ne i8 %12, 0
  %14 = zext i1 %13 to i32
  br label %16

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %4, %15, %11, %10
  %17 = phi i32 [ 0, %4 ], [ 8, %15 ], [ %14, %11 ], [ 9, %10 ]
  %18 = phi i8 [ 0, %4 ], [ 3, %15 ], [ 2, %11 ], [ 1, %10 ]
  %19 = phi i16 [ 0, %4 ], [ 4, %15 ], [ 2, %11 ], [ 1, %10 ]
  %20 = phi i16 [ 0, %4 ], [ 0, %15 ], [ 0, %11 ], [ 1, %10 ]
  %21 = phi i16 [ 0, %4 ], [ 0, %15 ], [ 1, %11 ], [ 0, %10 ]
  %22 = phi i16 [ 0, %4 ], [ 1, %15 ], [ 0, %11 ], [ 0, %10 ]
  tail call void @BM_mesh_elem_toolflags_ensure(ptr noundef %7) #15
  tail call void @BMO_push(ptr noundef %7, ptr noundef null) #15
  %23 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %7, i8 noundef zeroext %18, ptr noundef null) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %16, %32
  %26 = phi ptr [ %33, %32 ], [ %23, %16 ]
  %27 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %26, i8 noundef zeroext 1) #14, !range !26
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.BMElemF, ptr %26, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !257
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %7, ptr noundef %31) #14
  br label %32

32:                                               ; preds = %25, %29
  %33 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %25, !llvm.loop !259

35:                                               ; preds = %32, %16
  call void @BMW_init(ptr noundef nonnull %5, ptr noundef %7, i32 noundef %17, i16 noundef signext %20, i16 noundef signext %21, i16 noundef signext %22, i32 noundef 0, i32 noundef 0) #15
  %36 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef %7, i8 noundef zeroext %18, ptr noundef null) #14
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35, %38
  %39 = phi ptr [ %40, %38 ], [ %36, %35 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %39) #14
  %40 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %38, !llvm.loop !260

42:                                               ; preds = %38, %35
  %43 = call ptr @BMW_begin(ptr noundef nonnull %5, ptr noundef %3) #15
  %44 = icmp eq ptr %43, null
  br i1 %44, label %59, label %45

45:                                               ; preds = %42, %56
  %46 = phi ptr [ %57, %56 ], [ %43, %42 ]
  %47 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %46, i8 noundef zeroext 16) #14, !range !26
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = call i32 @BMW_current_depth(ptr noundef nonnull %5) #15
  %51 = add nsw i32 %50, %2
  %52 = srem i32 %51, %1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  call void @BM_elem_select_set(ptr noundef %7, ptr noundef nonnull %46, i8 noundef zeroext 0) #15
  br label %55

55:                                               ; preds = %54, %49
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %46) #14
  br label %56

56:                                               ; preds = %45, %55
  %57 = call ptr @BMW_step(ptr noundef nonnull %5) #15
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %45, !llvm.loop !261

59:                                               ; preds = %56, %42
  call void @BMW_end(ptr noundef nonnull %5) #15
  call void @BMO_pop(ptr noundef %7) #15
  call void @EDBM_selectmode_flush_ex(ptr noundef nonnull %0, i16 noundef signext %19) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #13
  ret void
}

; Function Attrs: optsize
declare ptr @BM_mesh_active_elem_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BM_mesh_active_face_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bm_edge_is_select_isolated(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 7, ptr noundef %0) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %1, %20
  %7 = phi ptr [ %21, %20 ], [ %4, %1 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %8 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %7) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6, %16
  %11 = phi ptr [ %17, %16 ], [ %8, %6 ]
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %11, i8 noundef zeroext 1) #14, !range !26
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %13
  %17 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %10, !llvm.loop !262

19:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  br label %23

20:                                               ; preds = %16, %6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  %21 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %6, !llvm.loop !263

23:                                               ; preds = %20, %1, %19
  %24 = phi i8 [ 0, %19 ], [ 1, %1 ], [ 1, %20 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret i8 %24
}

; Function Attrs: optsize
declare void @BMO_push(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !249
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !250
  %9 = or i16 %8, 1
  store i16 %9, ptr %7, align 2, !tbaa !250
  ret void
}

; Function Attrs: optsize
declare i32 @BMW_current_depth(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BMO_pop(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @EDBM_selectmode_flush_ex(ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BM_edge_loop_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_linklist_prepend_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_linklist_pop_pool(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BM_vert_is_manifold(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_manifold(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !246
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !247
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !247
  %12 = icmp eq ptr %11, %3
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %13, %9 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_contiguous(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !246
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !247
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !247
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !228
  %16 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !228
  %18 = icmp ne ptr %15, %17
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %13, %9, %5, %1
  %21 = phi i8 [ 0, %9 ], [ 0, %5 ], [ 0, %1 ], [ %19, %13 ]
  ret i8 %21
}

; Function Attrs: optsize
declare float @BLI_frand() local_unnamed_addr #4

; Function Attrs: optsize
declare void @EDBM_deselect_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @CTX_wm_operator_poll_msg_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !264
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @BM_mesh_active_vert_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @EDBM_selectmode_to_scene(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @loop_find_regions(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %6 = load ptr, ptr %0, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !159
  %9 = tail call ptr @BLI_gset_ptr_new_ex(ptr noundef nonnull @__func__.loop_find_regions, i32 noundef %8) #15
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !75
  %11 = sext i32 %8 to i64
  %12 = shl nsw i64 %11, 3
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @__func__.loop_find_regions) #15
  %14 = load ptr, ptr %0, align 8, !tbaa !19
  %15 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %14, i8 noundef zeroext 2, ptr noundef null) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %2, %27
  %18 = phi ptr [ %29, %27 ], [ %15, %2 ]
  %19 = phi i32 [ %28, %27 ], [ 0, %2 ]
  %20 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %18, i8 noundef zeroext 1) #14, !range !26
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = add nsw i32 %19, 1
  %24 = sext i32 %19 to i64
  %25 = getelementptr inbounds ptr, ptr %13, i64 %24
  store ptr %18, ptr %25, align 8, !tbaa !75
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %18) #14
  br label %27

26:                                               ; preds = %17
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %18) #14
  br label %27

27:                                               ; preds = %22, %26
  %28 = phi i32 [ %23, %22 ], [ %19, %26 ]
  %29 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #14
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %17, !llvm.loop !265

31:                                               ; preds = %27, %2
  call void @qsort(ptr noundef %13, i64 noundef %11, i64 noundef 8, ptr noundef nonnull @verg_radial) #15
  %32 = icmp sgt i32 %8, 0
  br i1 %32, label %33, label %102

33:                                               ; preds = %31
  %34 = icmp eq i8 %1, 0
  %35 = zext nneg i32 %8 to i64
  br label %36

36:                                               ; preds = %33, %98
  %37 = phi i64 [ 0, %33 ], [ %100, %98 ]
  %38 = phi i32 [ 0, %33 ], [ %99, %98 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %39 = getelementptr inbounds ptr, ptr %13, i64 %37
  %40 = load ptr, ptr %39, align 8, !tbaa !75
  %41 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %40, i8 noundef zeroext 16) #14, !range !26
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %98, label %43

43:                                               ; preds = %36
  %44 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 14, ptr noundef %40) #14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %98, label %46

46:                                               ; preds = %43, %68
  %47 = phi i32 [ %70, %68 ], [ 0, %43 ]
  %48 = phi ptr [ %69, %68 ], [ null, %43 ]
  %49 = phi ptr [ %71, %68 ], [ %44, %43 ]
  %50 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !211
  %52 = call zeroext i8 @BLI_gset_haskey(ptr noundef %9, ptr noundef %51) #15
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %46
  %55 = call fastcc i32 @loop_find_region(ptr noundef nonnull %49, ptr noundef %9, ptr noundef nonnull %5) #14
  %56 = icmp eq ptr %48, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = icmp slt i32 %55, %47
  br i1 %34, label %60, label %59

59:                                               ; preds = %57
  br i1 %58, label %65, label %61

60:                                               ; preds = %57
  br i1 %58, label %61, label %65

61:                                               ; preds = %59, %60
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %62(ptr noundef nonnull %48) #15
  br label %63

63:                                               ; preds = %54, %61
  %64 = load ptr, ptr %5, align 8, !tbaa !75
  br label %68

65:                                               ; preds = %60, %59
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  %67 = load ptr, ptr %5, align 8, !tbaa !75
  call void %66(ptr noundef %67) #15
  br label %68

68:                                               ; preds = %63, %65, %46
  %69 = phi ptr [ %48, %46 ], [ %64, %63 ], [ %48, %65 ]
  %70 = phi i32 [ %47, %46 ], [ %55, %63 ], [ %47, %65 ]
  %71 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %46, !llvm.loop !266

73:                                               ; preds = %68
  %74 = icmp eq ptr %69, null
  br i1 %74, label %98, label %75

75:                                               ; preds = %73
  %76 = icmp sgt i32 %70, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %75
  %78 = zext nneg i32 %70 to i64
  br label %79

79:                                               ; preds = %77, %92
  %80 = phi i64 [ 0, %77 ], [ %93, %92 ]
  %81 = getelementptr inbounds ptr, ptr %69, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !75
  call fastcc void @_bm_elem_flag_enable(ptr noundef %82) #14
  %83 = load ptr, ptr %81, align 8, !tbaa !75
  %84 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef %83) #14
  %85 = icmp eq ptr %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %79, %86
  %87 = phi ptr [ %90, %86 ], [ %84, %79 ]
  %88 = getelementptr inbounds %struct.BMLoop, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !199
  call fastcc void @_bm_elem_flag_disable(ptr noundef %89) #14
  %90 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #14
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %86, !llvm.loop !267

92:                                               ; preds = %86, %79
  %93 = add nuw nsw i64 %80, 1
  %94 = icmp eq i64 %93, %78
  br i1 %94, label %95, label %79, !llvm.loop !268

95:                                               ; preds = %92, %75
  %96 = add nsw i32 %70, %38
  %97 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %97(ptr noundef nonnull %69) #15
  br label %98

98:                                               ; preds = %43, %73, %95, %36
  %99 = phi i32 [ %38, %36 ], [ %96, %95 ], [ %38, %73 ], [ %38, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  %100 = add nuw nsw i64 %37, 1
  %101 = icmp eq i64 %100, %35
  br i1 %101, label %102, label %36, !llvm.loop !269

102:                                              ; preds = %98, %31
  %103 = phi i32 [ 0, %31 ], [ %99, %98 ]
  %104 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %104(ptr noundef %13) #15
  call void @BLI_gset_free(ptr noundef %9, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i32 %103
}

; Function Attrs: optsize
declare ptr @BLI_gset_ptr_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @verg_radial(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = load ptr, ptr %1, align 8, !tbaa !75
  %5 = tail call i32 @BM_edge_face_count(ptr noundef %3) #15
  %6 = tail call i32 @BM_edge_face_count(ptr noundef %4) #15
  %7 = icmp sgt i32 %5, %6
  %8 = icmp slt i32 %5, %6
  %9 = zext i1 %8 to i32
  %10 = select i1 %7, i32 -1, i32 %9
  ret i32 %10
}

; Function Attrs: optsize
declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @loop_find_region(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr null, ptr %4, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr null, ptr %5, align 8, !tbaa !75
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef null, i32 noundef 8, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.226) #15
  %8 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !211
  %10 = load ptr, ptr %5, align 8, !tbaa !75
  store ptr %9, ptr %10, align 8, !tbaa !75
  call void @BLI_gset_insert(ptr noundef %1, ptr noundef %9) #15
  br label %11

11:                                               ; preds = %3, %90
  %12 = phi i32 [ 0, %3 ], [ %38, %90 ]
  %13 = phi i32 [ 1, %3 ], [ %91, %90 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13
  %14 = load ptr, ptr %5, align 8, !tbaa !75
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = add nsw i32 %13, -1
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %14, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi i32 [ %17, %16 ], [ %13, %11 ]
  %23 = phi ptr [ %20, %16 ], [ null, %11 ]
  %24 = load ptr, ptr %4, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = add nuw nsw i32 %12, 1
  br label %35

28:                                               ; preds = %21
  %29 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !75
  %30 = call i64 %29(ptr noundef nonnull %24) #15
  %31 = lshr i64 %30, 3
  %32 = add nuw nsw i32 %12, 1
  %33 = zext nneg i32 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26, %28
  %36 = phi i32 [ %27, %26 ], [ %32, %28 ]
  call void @_bli_array_grow_func(ptr noundef nonnull %4, ptr noundef null, i32 noundef 8, i32 noundef %12, i32 noundef 1, ptr noundef nonnull @.str.227) #15
  br label %37

37:                                               ; preds = %35, %28
  %38 = phi i32 [ %36, %35 ], [ %32, %28 ]
  %39 = load ptr, ptr %4, align 8, !tbaa !75
  %40 = zext nneg i32 %12 to i64
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  store ptr %23, ptr %41, align 8, !tbaa !75
  %42 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef %23) #14
  %43 = icmp eq ptr %42, null
  br i1 %43, label %90, label %44

44:                                               ; preds = %37, %86
  %45 = phi ptr [ %88, %86 ], [ %42, %37 ]
  %46 = phi i32 [ %87, %86 ], [ %22, %37 ]
  %47 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !199
  %49 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %48, i8 noundef zeroext 1) #14, !range !26
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %86

51:                                               ; preds = %44
  %52 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 14, ptr noundef %48) #14
  %53 = icmp eq ptr %52, null
  br i1 %53, label %86, label %54

54:                                               ; preds = %51, %82
  %55 = phi ptr [ %84, %82 ], [ %52, %51 ]
  %56 = phi i32 [ %83, %82 ], [ %46, %51 ]
  %57 = getelementptr inbounds %struct.BMLoop, ptr %55, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !211
  %59 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %58, i8 noundef zeroext 16) #14, !range !26
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %54
  %62 = call zeroext i8 @BLI_gset_add(ptr noundef %1, ptr noundef %58) #15
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %82, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %5, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !75
  %69 = call i64 %68(ptr noundef nonnull %65) #15
  %70 = lshr i64 %69, 3
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi i64 [ %70, %67 ], [ 0, %64 ]
  %73 = add nsw i32 %56, 1
  %74 = sext i32 %73 to i64
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef null, i32 noundef 8, i32 noundef %56, i32 noundef 1, ptr noundef nonnull @.str.226) #15
  br label %77

77:                                               ; preds = %76, %71
  %78 = load ptr, ptr %57, align 8, !tbaa !211
  %79 = load ptr, ptr %5, align 8, !tbaa !75
  %80 = sext i32 %56 to i64
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80
  store ptr %78, ptr %81, align 8, !tbaa !75
  br label %82

82:                                               ; preds = %61, %77, %54
  %83 = phi i32 [ %56, %54 ], [ %73, %77 ], [ %56, %61 ]
  %84 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #14
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %54, !llvm.loop !270

86:                                               ; preds = %82, %51, %44
  %87 = phi i32 [ %46, %44 ], [ %46, %51 ], [ %83, %82 ]
  %88 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #14
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %44, !llvm.loop !271

90:                                               ; preds = %86, %37
  %91 = phi i32 [ %22, %37 ], [ %87, %86 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %11, label %93, !llvm.loop !272

93:                                               ; preds = %90
  %94 = load ptr, ptr %5, align 8, !tbaa !75
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr @MEM_freeN, align 8, !tbaa !75
  call void %97(ptr noundef nonnull %94) #15
  br label %98

98:                                               ; preds = %96, %93
  %99 = load ptr, ptr %4, align 8, !tbaa !75
  store ptr %99, ptr %2, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret i32 %38
}

; Function Attrs: optsize
declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BLI_gset_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 96}
!6 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 24, !10, i64 32, !7, i64 40, !7, i64 48, !11, i64 56, !7, i64 64, !10, i64 72, !7, i64 80, !10, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !10, i64 104}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 296}
!14 = !{!"Object", !15, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !10, i64 140, !10, i64 144, !10, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !16, i64 312, !7, i64 360, !17, i64 368, !17, i64 384, !17, i64 400, !17, i64 416, !10, i64 432, !10, i64 436, !7, i64 440, !7, i64 448, !10, i64 456, !10, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !18, i64 616, !18, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !10, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !10, i64 968, !10, i64 972, !10, i64 976, !10, i64 980, !10, i64 984, !18, i64 988, !18, i64 992, !18, i64 996, !18, i64 1000, !18, i64 1004, !18, i64 1008, !18, i64 1012, !18, i64 1016, !18, i64 1020, !18, i64 1024, !18, i64 1028, !18, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !18, i64 1048, !18, i64 1052, !17, i64 1056, !17, i64 1072, !17, i64 1088, !17, i64 1104, !18, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !10, i64 1144, !10, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !17, i64 1176, !17, i64 1192, !17, i64 1208, !17, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !18, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !11, i64 1304, !11, i64 1312, !10, i64 1320, !10, i64 1324, !17, i64 1328, !17, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !17, i64 1400, !7, i64 1416}
!15 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !10, i64 100, !10, i64 104, !10, i64 108, !7, i64 112}
!16 = !{!"bAnimVizSettings", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44}
!17 = !{!"ListBase", !7, i64 0, !7, i64 8}
!18 = !{!"float", !8, i64 0}
!19 = !{!6, !7, i64 0}
!20 = !{!21, !8, i64 1365}
!21 = !{!"Mesh", !15, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !22, i64 280, !22, i64 480, !22, i64 680, !22, i64 880, !22, i64 1080, !10, i64 1280, !10, i64 1284, !10, i64 1288, !10, i64 1292, !10, i64 1296, !10, i64 1300, !10, i64 1304, !8, i64 1308, !8, i64 1320, !8, i64 1332, !10, i64 1344, !12, i64 1348, !12, i64 1350, !18, i64 1352, !10, i64 1356, !8, i64 1360, !8, i64 1361, !8, i64 1362, !8, i64 1363, !8, i64 1364, !8, i64 1365, !12, i64 1366, !7, i64 1368}
!22 = !{!"CustomData", !7, i64 0, !8, i64 8, !10, i64 172, !10, i64 176, !10, i64 180, !7, i64 184, !7, i64 192}
!23 = !{!10, !10, i64 0}
!24 = !{!25, !12, i64 944}
!25 = !{!"BMesh", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !8, i64 28, !8, i64 29, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88, !10, i64 92, !10, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 136, !22, i64 144, !22, i64 344, !22, i64 544, !22, i64 744, !12, i64 944, !10, i64 948, !10, i64 952, !10, i64 956, !17, i64 960, !7, i64 976, !17, i64 984, !7, i64 1000}
!26 = !{i8 0, i8 17}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!6, !12, i64 92}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !28}
!32 = distinct !{!32, !28}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !28}
!35 = !{i8 0, i8 2}
!36 = !{!37, !8, i64 13}
!37 = !{!"BMHeader", !7, i64 0, !10, i64 8, !8, i64 12, !8, i64 13, !8, i64 14}
!38 = !{!39, !7, i64 48}
!39 = !{!"BMIter", !8, i64 0, !7, i64 40, !7, i64 48, !10, i64 56, !8, i64 60}
!40 = !{!41, !7, i64 264}
!41 = !{!"Scene", !15, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !17, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !10, i64 232, !10, i64 236, !10, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !42, i64 280, !51, i64 4264, !17, i64 4296, !17, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !10, i64 4380, !17, i64 4384, !52, i64 4400, !53, i64 4416, !56, i64 4600, !7, i64 4608, !57, i64 4616, !7, i64 4640, !11, i64 4648, !11, i64 4656, !44, i64 4664, !45, i64 4824, !58, i64 4888, !7, i64 4952}
!42 = !{!"RenderData", !43, i64 0, !7, i64 248, !7, i64 256, !46, i64 264, !47, i64 328, !10, i64 400, !10, i64 404, !10, i64 408, !18, i64 412, !10, i64 416, !10, i64 420, !10, i64 424, !10, i64 428, !12, i64 432, !12, i64 434, !18, i64 436, !18, i64 440, !18, i64 444, !18, i64 448, !18, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !10, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !10, i64 484, !10, i64 488, !12, i64 492, !12, i64 494, !10, i64 496, !10, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !10, i64 516, !10, i64 520, !10, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !48, i64 544, !48, i64 560, !49, i64 576, !17, i64 592, !12, i64 608, !12, i64 610, !18, i64 612, !18, i64 616, !18, i64 620, !18, i64 624, !10, i64 628, !18, i64 632, !18, i64 636, !18, i64 640, !18, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !18, i64 660, !18, i64 664, !12, i64 668, !12, i64 670, !18, i64 672, !18, i64 676, !8, i64 680, !10, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !10, i64 2520, !12, i64 2524, !12, i64 2526, !18, i64 2528, !18, i64 2532, !12, i64 2536, !12, i64 2538, !18, i64 2540, !12, i64 2544, !12, i64 2546, !10, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !18, i64 2560, !18, i64 2564, !7, i64 2568, !10, i64 2576, !18, i64 2580, !8, i64 2584, !50, i64 2616, !10, i64 3976, !10, i64 3980}
!43 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !18, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !44, i64 24, !45, i64 184}
!44 = !{!"ColorManagedViewSettings", !10, i64 0, !10, i64 4, !8, i64 8, !8, i64 72, !18, i64 136, !18, i64 140, !7, i64 144, !7, i64 152}
!45 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!46 = !{!"QuicktimeCodecSettings", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !12, i64 48, !12, i64 50, !10, i64 52, !10, i64 56, !10, i64 60}
!47 = !{!"FFMpegCodecData", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !18, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !7, i64 64}
!48 = !{!"rctf", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12}
!49 = !{!"rcti", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!50 = !{!"BakeData", !43, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !18, i64 1280, !18, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!51 = !{!"AudioData", !10, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !10, i64 16, !12, i64 20, !12, i64 22, !18, i64 24, !18, i64 28}
!52 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!53 = !{!"GameData", !52, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !54, i64 40, !12, i64 64, !12, i64 66, !18, i64 68, !55, i64 72, !18, i64 128, !18, i64 132, !10, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !18, i64 164, !18, i64 168, !18, i64 172, !18, i64 176, !18, i64 180}
!54 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !18, i64 8, !18, i64 12, !7, i64 16}
!55 = !{!"RecastData", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !18, i64 36, !10, i64 40, !18, i64 44, !18, i64 48, !12, i64 52, !12, i64 54}
!56 = !{!"UnitSettings", !18, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!57 = !{!"PhysicsSettings", !8, i64 0, !10, i64 12, !10, i64 16, !10, i64 20}
!58 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!59 = !{!60, !18, i64 36}
!60 = !{!"ToolSettings", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !18, i64 32, !18, i64 36, !18, i64 40, !12, i64 44, !12, i64 46, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !18, i64 52, !12, i64 56, !8, i64 58, !8, i64 59, !61, i64 64, !63, i64 168, !18, i64 336, !18, i64 340, !12, i64 344, !12, i64 346, !8, i64 348, !8, i64 349, !12, i64 350, !18, i64 352, !18, i64 356, !18, i64 360, !18, i64 364, !18, i64 368, !18, i64 372, !18, i64 376, !18, i64 380, !18, i64 384, !18, i64 388, !12, i64 392, !8, i64 394, !8, i64 395, !8, i64 396, !8, i64 399, !7, i64 400, !8, i64 408, !8, i64 409, !8, i64 410, !8, i64 411, !8, i64 412, !8, i64 413, !8, i64 421, !8, i64 429, !8, i64 430, !8, i64 431, !8, i64 432, !8, i64 433, !12, i64 434, !12, i64 436, !12, i64 438, !12, i64 440, !8, i64 442, !8, i64 443, !8, i64 444, !8, i64 445, !8, i64 446, !8, i64 447, !10, i64 448, !10, i64 452, !10, i64 456, !10, i64 460, !12, i64 464, !12, i64 466, !10, i64 468, !18, i64 472, !18, i64 476, !64, i64 480, !65, i64 608}
!61 = !{!"ImagePaintSettings", !62, i64 0, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !8, i64 48, !10, i64 52, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !8, i64 88, !18, i64 100}
!62 = !{!"Paint", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !10, i64 28, !10, i64 32, !10, i64 36}
!63 = !{!"ParticleEditSettings", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !8, i64 8, !7, i64 120, !18, i64 128, !18, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !7, i64 160}
!64 = !{!"UnifiedPaintSettings", !10, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !8, i64 16, !8, i64 28, !10, i64 40, !8, i64 44, !18, i64 52, !10, i64 56, !10, i64 60, !8, i64 64, !8, i64 65, !18, i64 72, !8, i64 76, !10, i64 84, !18, i64 88, !8, i64 92, !8, i64 100, !10, i64 108, !7, i64 112, !18, i64 120, !10, i64 124}
!65 = !{!"MeshStatVis", !8, i64 0, !8, i64 1, !8, i64 3, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !8, i64 20, !8, i64 21, !18, i64 24, !18, i64 28, !18, i64 32, !18, i64 36}
!66 = !{!67, !7, i64 16}
!67 = !{!"ViewContext", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !8, i64 56}
!68 = !{!67, !7, i64 32}
!69 = !{!70, !12, i64 232}
!70 = !{!"View3D", !7, i64 0, !7, i64 8, !17, i64 16, !10, i64 32, !18, i64 36, !8, i64 40, !8, i64 56, !18, i64 72, !18, i64 76, !8, i64 80, !8, i64 81, !10, i64 84, !10, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !7, i64 104, !48, i64 112, !17, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !10, i64 224, !10, i64 228, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !12, i64 240, !12, i64 242, !18, i64 244, !18, i64 248, !18, i64 252, !18, i64 256, !8, i64 260, !8, i64 272, !12, i64 284, !12, i64 286, !12, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !17, i64 296, !17, i64 312, !17, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
!71 = !{!70, !12, i64 240}
!72 = !{!73, !7, i64 40}
!73 = !{!"ImBuf", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !8, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !7, i64 40, !7, i64 48, !8, i64 56, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !7, i64 88, !7, i64 96, !7, i64 104, !18, i64 112, !8, i64 120, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !7, i64 296, !7, i64 304, !10, i64 312, !8, i64 316, !8, i64 1340, !7, i64 2368, !10, i64 2376, !7, i64 2384, !10, i64 2392, !10, i64 2396, !7, i64 2400, !7, i64 2408, !7, i64 2416, !7, i64 2424, !10, i64 2432, !49, i64 2436, !74, i64 2456}
!74 = !{!"DDSData", !10, i64 0, !10, i64 4, !7, i64 8, !10, i64 16}
!75 = !{!7, !7, i64 0}
!76 = distinct !{!76, !28}
!77 = !{!67, !7, i64 8}
!78 = !{!73, !10, i64 16}
!79 = !{!73, !10, i64 20}
!80 = !{!81, !7, i64 0}
!81 = !{!"LassoMaskData", !7, i64 0, !10, i64 8}
!82 = !{!81, !10, i64 8}
!83 = distinct !{!83, !28}
!84 = distinct !{!84, !28}
!85 = distinct !{!85, !28}
!86 = !{!67, !7, i64 48}
!87 = !{!18, !18, i64 0}
!88 = !{!89, !18, i64 24}
!89 = !{!"", !8, i64 0, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !7, i64 32}
!90 = !{!89, !18, i64 12}
!91 = !{!89, !18, i64 20}
!92 = !{!89, !18, i64 16}
!93 = !{!89, !7, i64 32}
!94 = !{!89, !18, i64 28}
!95 = !{!89, !18, i64 8}
!96 = !{!67, !7, i64 40}
!97 = !{i64 0, i64 8, !75, i64 8, i64 8, !75, i64 16, i64 8, !75, i64 24, i64 8, !75, i64 32, i64 8, !75, i64 40, i64 8, !75, i64 48, i64 8, !75, i64 56, i64 8, !98}
!98 = !{!8, !8, i64 0}
!99 = !{!100, !18, i64 72}
!100 = !{!"", !67, i64 0, !8, i64 64, !18, i64 72, !7, i64 80}
!101 = !{!100, !7, i64 80}
!102 = !{!100, !7, i64 40}
!103 = !{!104, !12, i64 826}
!104 = !{!"RegionView3D", !8, i64 0, !8, i64 64, !8, i64 128, !8, i64 192, !8, i64 256, !8, i64 320, !8, i64 384, !8, i64 448, !8, i64 544, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !8, i64 696, !8, i64 760, !18, i64 776, !18, i64 780, !18, i64 784, !18, i64 788, !8, i64 792, !18, i64 804, !8, i64 808, !8, i64 809, !8, i64 810, !8, i64 811, !8, i64 812, !8, i64 813, !8, i64 816, !12, i64 824, !12, i64 826, !8, i64 828, !12, i64 844, !12, i64 846, !18, i64 848, !8, i64 852, !18, i64 864, !8, i64 868}
!105 = !{!106, !7, i64 24}
!106 = !{!"BMEdge", !37, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !107, i64 48, !107, i64 64}
!107 = !{!"BMDiskLink", !7, i64 0, !7, i64 8}
!108 = !{!106, !7, i64 32}
!109 = !{!110, !18, i64 8}
!110 = !{!"", !8, i64 0, !18, i64 8, !7, i64 16}
!111 = !{!110, !7, i64 16}
!112 = !{!113, !18, i64 16}
!113 = !{!"", !8, i64 0, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !7, i64 24}
!114 = !{!113, !18, i64 12}
!115 = !{!113, !7, i64 24}
!116 = !{!113, !18, i64 20}
!117 = !{!113, !18, i64 8}
!118 = !{!119, !7, i64 0}
!119 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !17, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !120, i64 152, !12, i64 184}
!120 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!121 = !{!119, !7, i64 8}
!122 = !{!119, !7, i64 24}
!123 = !{!119, !7, i64 48}
!124 = !{!119, !7, i64 32}
!125 = !{!119, !7, i64 72}
!126 = !{!119, !12, i64 184}
!127 = !{!119, !7, i64 88}
!128 = !{!119, !7, i64 104}
!129 = !{!130, !7, i64 112}
!130 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !17, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!131 = !{!60, !18, i64 340}
!132 = !{i32 2, i32 5}
!133 = !{!14, !12, i64 136}
!134 = distinct !{!134, !28}
!135 = distinct !{!135, !28}
!136 = distinct !{!136, !28}
!137 = !{!25, !10, i64 24}
!138 = !{!130, !7, i64 120}
!139 = distinct !{!139, !28}
!140 = !{!141, !7, i64 16}
!141 = !{!"LinkData", !7, i64 0, !7, i64 8, !7, i64 16}
!142 = distinct !{!142, !28}
!143 = distinct !{!143, !28}
!144 = distinct !{!144, !28}
!145 = !{!146, !12, i64 72}
!146 = !{!"wmEvent", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !10, i64 20, !10, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !12, i64 44, !12, i64 46, !10, i64 48, !10, i64 52, !147, i64 56, !10, i64 64, !10, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 106, !10, i64 108, !7, i64 112}
!147 = !{!"double", !8, i64 0}
!148 = !{!146, !12, i64 74}
!149 = distinct !{!149, !28}
!150 = distinct !{!150, !28}
!151 = distinct !{!151, !28}
!152 = distinct !{!152, !28}
!153 = !{i32 0, i32 2}
!154 = !{!155, !12, i64 48}
!155 = !{!"BMFace", !37, i64 0, !7, i64 16, !7, i64 24, !10, i64 32, !8, i64 36, !12, i64 48}
!156 = !{!14, !10, i64 460}
!157 = !{!6, !12, i64 94}
!158 = !{!25, !10, i64 16}
!159 = !{!25, !10, i64 20}
!160 = distinct !{!160, !28}
!161 = distinct !{!161, !28}
!162 = distinct !{!162, !28}
!163 = distinct !{!163, !28}
!164 = !{!25, !7, i64 960}
!165 = !{!166, !7, i64 0}
!166 = !{!"BMEditSelection", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24}
!167 = !{!166, !8, i64 24}
!168 = distinct !{!168, !28}
!169 = distinct !{!169, !28}
!170 = distinct !{!170, !28}
!171 = distinct !{!171, !28}
!172 = distinct !{!172, !28}
!173 = distinct !{!173, !28}
!174 = distinct !{!174, !28}
!175 = distinct !{!175, !28}
!176 = distinct !{!176, !28}
!177 = distinct !{!177, !28}
!178 = distinct !{!178, !28}
!179 = distinct !{!179, !28}
!180 = !{!60, !12, i64 46}
!181 = distinct !{!181, !28}
!182 = distinct !{!182, !28}
!183 = distinct !{!183, !28}
!184 = distinct !{!184, !28}
!185 = distinct !{!185, !28}
!186 = distinct !{!186, !28}
!187 = distinct !{!187, !28}
!188 = !{!106, !7, i64 16}
!189 = distinct !{!189, !28}
!190 = distinct !{!190, !28}
!191 = distinct !{!191, !28}
!192 = distinct !{!192, !28}
!193 = distinct !{!193, !28}
!194 = distinct !{!194, !28}
!195 = !{!25, !10, i64 4}
!196 = distinct !{!196, !28}
!197 = distinct !{!197, !28}
!198 = !{!155, !7, i64 24}
!199 = !{!200, !7, i64 24}
!200 = !{!"BMLoop", !37, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64}
!201 = !{!202, !7, i64 48}
!202 = !{!"BMVert", !37, i64 0, !7, i64 16, !8, i64 24, !8, i64 36, !7, i64 48}
!203 = distinct !{!203, !28}
!204 = !{!155, !10, i64 32}
!205 = distinct !{!205, !28}
!206 = distinct !{!206, !28}
!207 = distinct !{!207, !28}
!208 = distinct !{!208, !28}
!209 = distinct !{!209, !28}
!210 = !{!25, !10, i64 0}
!211 = !{!200, !7, i64 32}
!212 = distinct !{!212, !28}
!213 = distinct !{!213, !28}
!214 = distinct !{!214, !28}
!215 = distinct !{!215, !28}
!216 = distinct !{!216, !28}
!217 = distinct !{!217, !28}
!218 = distinct !{!218, !28}
!219 = distinct !{!219, !28}
!220 = distinct !{!220, !28}
!221 = distinct !{!221, !28}
!222 = !{!202, !7, i64 0}
!223 = !{!224, !7, i64 0}
!224 = !{!"MDeformVert", !7, i64 0, !10, i64 8, !10, i64 12}
!225 = distinct !{!225, !28}
!226 = distinct !{!226, !28}
!227 = distinct !{!227, !28}
!228 = !{!200, !7, i64 16}
!229 = !{!200, !7, i64 56}
!230 = distinct !{!230, !28}
!231 = distinct !{!231, !28}
!232 = distinct !{!232, !28}
!233 = distinct !{!233, !28}
!234 = distinct !{!234, !28}
!235 = distinct !{!235, !28}
!236 = distinct !{!236, !28}
!237 = distinct !{!237, !28}
!238 = !{!39, !8, i64 60}
!239 = !{!39, !7, i64 40}
!240 = !{!25, !7, i64 32}
!241 = !{!25, !7, i64 40}
!242 = !{!25, !7, i64 56}
!243 = distinct !{!243, !28}
!244 = !{!67, !7, i64 24}
!245 = distinct !{!245, !28}
!246 = !{!106, !7, i64 40}
!247 = !{!200, !7, i64 40}
!248 = distinct !{!248, !28}
!249 = !{!25, !10, i64 128}
!250 = !{!251, !12, i64 0}
!251 = !{!"BMFlagLayer", !12, i64 0}
!252 = !{!253, !8, i64 12}
!253 = !{!"BMElem", !37, i64 0}
!254 = distinct !{!254, !28}
!255 = distinct !{!255, !28}
!256 = !{!37, !8, i64 12}
!257 = !{!258, !7, i64 16}
!258 = !{!"BMElemF", !37, i64 0, !7, i64 16}
!259 = distinct !{!259, !28}
!260 = distinct !{!260, !28}
!261 = distinct !{!261, !28}
!262 = distinct !{!262, !28}
!263 = distinct !{!263, !28}
!264 = !{!17, !7, i64 0}
!265 = distinct !{!265, !28}
!266 = distinct !{!266, !28}
!267 = distinct !{!267, !28}
!268 = distinct !{!268, !28}
!269 = distinct !{!269, !28}
!270 = distinct !{!270, !28}
!271 = distinct !{!271, !28}
!272 = distinct !{!272, !28}
