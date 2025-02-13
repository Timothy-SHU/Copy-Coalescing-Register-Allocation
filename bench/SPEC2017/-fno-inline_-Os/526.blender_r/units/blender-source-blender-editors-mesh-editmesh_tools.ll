; ModuleID = 'blender/source/blender/editors/mesh/editmesh_tools.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_tools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type opaque
%struct.BMAllocTemplate = type { i32, i32, i32, i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.EdgeRingOpSubdProps = type { i32, i32, float, i32, float }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon.0 }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon.0 = type { ptr, [8 x i8] }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.MirrorModifierData = type { %struct.ModifierData, i16, i16, float, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon.1, i32, i32, %struct.PointerRNA, i32 }
%union.anon.1 = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.BMFlagLayer = type { i16 }
%struct.BMWalker = type { i8, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %struct.ListBase, i16, i16, i16, i32, ptr, ptr, i32 }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.SortPointerByFloat = type { float, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.BMElemSort = type { float, i32 }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
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

@.str = private unnamed_addr constant [10 x i8] c"Subdivide\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Subdivide selected edges\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"MESH_OT_subdivide\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"number_cuts\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Number of Cuts\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"smoothness\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Smoothness\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Smoothness factor\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"quadtri\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Quad/Tri Mode\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Tries to prevent ngons\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"quadcorner\00", align 1
@prop_mesh_cornervert_types = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.380, i32 0, ptr @.str.381, ptr @.str.5 }, %struct.EnumPropertyItem { i32 1, ptr @.str.382, i32 0, ptr @.str.383, ptr @.str.5 }, %struct.EnumPropertyItem { i32 3, ptr @.str.384, i32 0, ptr @.str.385, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.386, i32 0, ptr @.str.387, ptr @.str.5 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [17 x i8] c"Quad Corner Type\00", align 1
@.str.14 = private unnamed_addr constant [84 x i8] c"How to subdivide quad corners (anything other than Straight Cut will prevent ngons)\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"fractal\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Fractal\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Fractal randomness factor\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"fractal_along_normal\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Along Normal\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"Apply fractal displacement along normal only\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Random Seed\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"Seed for the random number generator\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Subdivide Edge-Ring\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"MESH_OT_subdivide_edgering\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Un-Subdivide\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"UnSubdivide selected edges & faces\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"MESH_OT_unsubdivide\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"Iterations\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Number of times to unsubdivide\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"Delete selected vertices, edges or faces\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"MESH_OT_delete\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@prop_mesh_delete_types = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.313, i32 0, ptr @.str.42, ptr @.str.5 }, %struct.EnumPropertyItem { i32 1, ptr @.str.314, i32 0, ptr @.str.45, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.315, i32 0, ptr @.str.48, ptr @.str.5 }, %struct.EnumPropertyItem { i32 3, ptr @.str.408, i32 0, ptr @.str.409, ptr @.str.5 }, %struct.EnumPropertyItem { i32 4, ptr @.str.410, i32 0, ptr @.str.411, ptr @.str.5 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.36 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"Method used for deleting mesh data\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"Delete Loose\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"Delete loose vertices, edges or faces\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"MESH_OT_delete_loose\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"use_verts\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"Vertices\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"Remove loose vertices\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"use_edges\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"Edges\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"Remove loose edges\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"use_faces\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"Faces\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"Remove loose faces\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"Edge Collapse\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"Collapse selected edges\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"MESH_OT_edge_collapse\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"Make Edge/Face\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"Add an edge or face to selected\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"MESH_OT_edge_face_add\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"Mark Seam\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"MESH_OT_mark_seam\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"(Un)mark selected edges as a seam\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"Mark Sharp\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"MESH_OT_mark_sharp\00", align 1
@.str.63 = private unnamed_addr constant [33 x i8] c"(Un)mark selected edges as sharp\00", align 1
@.str.64 = private unnamed_addr constant [77 x i8] c"Consider vertices instead of edges to select which edges to (un)tag as sharp\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"Vertex Connect\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"MESH_OT_vert_connect\00", align 1
@.str.67 = private unnamed_addr constant [67 x i8] c"Connect 2 vertices of a face by an edge, splitting the face in two\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"Split Non-Planar Faces\00", align 1
@.str.69 = private unnamed_addr constant [31 x i8] c"MESH_OT_vert_connect_nonplanar\00", align 1
@.str.70 = private unnamed_addr constant [55 x i8] c"Split non-planar faces that exceed the angle threshold\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"angle_limit\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"Max Angle\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"Angle limit\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"Edge Split\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"MESH_OT_edge_split\00", align 1
@.str.76 = private unnamed_addr constant [66 x i8] c"Split selected edges so that each neighbor face gets its own copy\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"Duplicate\00", align 1
@.str.78 = private unnamed_addr constant [44 x i8] c"Duplicate selected vertices, edges or faces\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"MESH_OT_duplicate\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"Flip Normals\00", align 1
@.str.83 = private unnamed_addr constant [70 x i8] c"Flip the direction of selected faces' normals (and of their vertices)\00", align 1
@.str.84 = private unnamed_addr constant [21 x i8] c"MESH_OT_flip_normals\00", align 1
@.str.85 = private unnamed_addr constant [21 x i8] c"Rotate Selected Edge\00", align 1
@.str.86 = private unnamed_addr constant [40 x i8] c"Rotate selected edge or adjoining faces\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"MESH_OT_edge_rotate\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"use_ccw\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"Counter Clockwise\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"Hide Selection\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"MESH_OT_hide\00", align 1
@.str.92 = private unnamed_addr constant [43 x i8] c"Hide (un)selected vertices, edges or faces\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"Unselected\00", align 1
@.str.95 = private unnamed_addr constant [37 x i8] c"Hide unselected rather than selected\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"Reveal Hidden\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"MESH_OT_reveal\00", align 1
@.str.98 = private unnamed_addr constant [44 x i8] c"Reveal all hidden vertices, edges and faces\00", align 1
@.str.99 = private unnamed_addr constant [24 x i8] c"Make Normals Consistent\00", align 1
@.str.100 = private unnamed_addr constant [69 x i8] c"Make face and vertex normals point either outside or inside the mesh\00", align 1
@.str.101 = private unnamed_addr constant [32 x i8] c"MESH_OT_normals_make_consistent\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"inside\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"Inside\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"Smooth Vertex\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c"Flatten angles of selected vertices\00", align 1
@.str.106 = private unnamed_addr constant [24 x i8] c"MESH_OT_vertices_smooth\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"factor\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"Smoothing\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"Smoothing factor\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"Repeat\00", align 1
@.str.112 = private unnamed_addr constant [35 x i8] c"Number of times to smooth the mesh\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"xaxis\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"X-Axis\00", align 1
@.str.115 = private unnamed_addr constant [24 x i8] c"Smooth along the X axis\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"yaxis\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"Y-Axis\00", align 1
@.str.118 = private unnamed_addr constant [24 x i8] c"Smooth along the Y axis\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"zaxis\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"Z-Axis\00", align 1
@.str.121 = private unnamed_addr constant [24 x i8] c"Smooth along the Z axis\00", align 1
@.str.122 = private unnamed_addr constant [24 x i8] c"Laplacian Smooth Vertex\00", align 1
@.str.123 = private unnamed_addr constant [38 x i8] c"Laplacian smooth of selected vertices\00", align 1
@.str.124 = private unnamed_addr constant [34 x i8] c"MESH_OT_vertices_smooth_laplacian\00", align 1
@.str.125 = private unnamed_addr constant [40 x i8] c"Number of iterations to smooth the mesh\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"lambda_factor\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"Lambda factor\00", align 1
@.str.128 = private unnamed_addr constant [14 x i8] c"lambda_border\00", align 1
@.str.129 = private unnamed_addr constant [24 x i8] c"Lambda factor in border\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"use_x\00", align 1
@.str.131 = private unnamed_addr constant [14 x i8] c"Smooth X Axis\00", align 1
@.str.132 = private unnamed_addr constant [27 x i8] c"Smooth object along X axis\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"use_y\00", align 1
@.str.134 = private unnamed_addr constant [14 x i8] c"Smooth Y Axis\00", align 1
@.str.135 = private unnamed_addr constant [27 x i8] c"Smooth object along Y axis\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"use_z\00", align 1
@.str.137 = private unnamed_addr constant [14 x i8] c"Smooth Z Axis\00", align 1
@.str.138 = private unnamed_addr constant [27 x i8] c"Smooth object along Z axis\00", align 1
@.str.139 = private unnamed_addr constant [16 x i8] c"preserve_volume\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"Preserve Volume\00", align 1
@.str.141 = private unnamed_addr constant [39 x i8] c"Apply volume preservation after smooth\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"Shade Smooth\00", align 1
@.str.143 = private unnamed_addr constant [44 x i8] c"Display faces smooth (using vertex normals)\00", align 1
@.str.144 = private unnamed_addr constant [27 x i8] c"MESH_OT_faces_shade_smooth\00", align 1
@.str.145 = private unnamed_addr constant [11 x i8] c"Shade Flat\00", align 1
@.str.146 = private unnamed_addr constant [19 x i8] c"Display faces flat\00", align 1
@.str.147 = private unnamed_addr constant [25 x i8] c"MESH_OT_faces_shade_flat\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"Rotate UVs\00", align 1
@.str.149 = private unnamed_addr constant [19 x i8] c"MESH_OT_uvs_rotate\00", align 1
@.str.150 = private unnamed_addr constant [35 x i8] c"Rotate UV coordinates inside faces\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"Reverse UVs\00", align 1
@.str.152 = private unnamed_addr constant [20 x i8] c"MESH_OT_uvs_reverse\00", align 1
@.str.153 = private unnamed_addr constant [46 x i8] c"Flip direction of UV coordinates inside faces\00", align 1
@.str.154 = private unnamed_addr constant [14 x i8] c"Rotate Colors\00", align 1
@.str.155 = private unnamed_addr constant [22 x i8] c"MESH_OT_colors_rotate\00", align 1
@.str.156 = private unnamed_addr constant [34 x i8] c"Rotate vertex colors inside faces\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"Reverse Colors\00", align 1
@.str.158 = private unnamed_addr constant [23 x i8] c"MESH_OT_colors_reverse\00", align 1
@.str.159 = private unnamed_addr constant [45 x i8] c"Flip direction of vertex colors inside faces\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"Merge\00", align 1
@.str.161 = private unnamed_addr constant [24 x i8] c"Merge selected vertices\00", align 1
@.str.162 = private unnamed_addr constant [14 x i8] c"MESH_OT_merge\00", align 1
@merge_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 6, ptr @.str.439, i32 0, ptr @.str.440, ptr @.str.5 }, %struct.EnumPropertyItem { i32 1, ptr @.str.441, i32 0, ptr @.str.442, ptr @.str.5 }, %struct.EnumPropertyItem { i32 3, ptr @.str.443, i32 0, ptr @.str.444, ptr @.str.5 }, %struct.EnumPropertyItem { i32 4, ptr @.str.445, i32 0, ptr @.str.446, ptr @.str.5 }, %struct.EnumPropertyItem { i32 5, ptr @.str.447, i32 0, ptr @.str.448, ptr @.str.5 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.163 = private unnamed_addr constant [20 x i8] c"Merge method to use\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"uvs\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"UVs\00", align 1
@.str.166 = private unnamed_addr constant [28 x i8] c"Move UVs according to merge\00", align 1
@.str.167 = private unnamed_addr constant [15 x i8] c"Remove Doubles\00", align 1
@.str.168 = private unnamed_addr constant [26 x i8] c"Remove duplicate vertices\00", align 1
@.str.169 = private unnamed_addr constant [23 x i8] c"MESH_OT_remove_doubles\00", align 1
@.str.170 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.171 = private unnamed_addr constant [15 x i8] c"Merge Distance\00", align 1
@.str.172 = private unnamed_addr constant [43 x i8] c"Minimum distance between elements to merge\00", align 1
@.str.173 = private unnamed_addr constant [15 x i8] c"use_unselected\00", align 1
@.str.174 = private unnamed_addr constant [44 x i8] c"Merge selected to other unselected vertices\00", align 1
@.str.175 = private unnamed_addr constant [16 x i8] c"Shape Propagate\00", align 1
@.str.176 = private unnamed_addr constant [56 x i8] c"Apply selected vertex locations to all other shape keys\00", align 1
@.str.177 = private unnamed_addr constant [31 x i8] c"MESH_OT_shape_propagate_to_all\00", align 1
@.str.178 = private unnamed_addr constant [17 x i8] c"Blend From Shape\00", align 1
@.str.179 = private unnamed_addr constant [32 x i8] c"Blend in shape from a shape key\00", align 1
@.str.180 = private unnamed_addr constant [25 x i8] c"MESH_OT_blend_from_shape\00", align 1
@.str.181 = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@DummyRNA_NULL_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.182 = private unnamed_addr constant [6 x i8] c"Shape\00", align 1
@.str.183 = private unnamed_addr constant [30 x i8] c"Shape key to use for blending\00", align 1
@.str.184 = private unnamed_addr constant [6 x i8] c"blend\00", align 1
@.str.185 = private unnamed_addr constant [6 x i8] c"Blend\00", align 1
@.str.186 = private unnamed_addr constant [16 x i8] c"Blending factor\00", align 1
@.str.187 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.189 = private unnamed_addr constant [37 x i8] c"Add rather than blend between shapes\00", align 1
@.str.190 = private unnamed_addr constant [9 x i8] c"Solidify\00", align 1
@.str.191 = private unnamed_addr constant [64 x i8] c"Create a solid skin by extruding, compensating for sharp angles\00", align 1
@.str.192 = private unnamed_addr constant [17 x i8] c"MESH_OT_solidify\00", align 1
@.str.193 = private unnamed_addr constant [10 x i8] c"thickness\00", align 1
@.str.194 = private unnamed_addr constant [10 x i8] c"Knife Cut\00", align 1
@.str.195 = private unnamed_addr constant [40 x i8] c"Cut selected edges and faces into parts\00", align 1
@.str.196 = private unnamed_addr constant [18 x i8] c"MESH_OT_knife_cut\00", align 1
@knife_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.468, i32 0, ptr @.str.469, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.470, i32 0, ptr @.str.471, ptr @.str.5 }, %struct.EnumPropertyItem { i32 3, ptr @.str.472, i32 0, ptr @.str.473, ptr @.str.5 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.197 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@RNA_OperatorMousePath = external global %struct.StructRNA, align 1
@.str.198 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.199 = private unnamed_addr constant [7 x i8] c"Cursor\00", align 1
@.str.200 = private unnamed_addr constant [9 x i8] c"Separate\00", align 1
@.str.201 = private unnamed_addr constant [43 x i8] c"Separate selected geometry into a new mesh\00", align 1
@.str.202 = private unnamed_addr constant [17 x i8] c"MESH_OT_separate\00", align 1
@prop_separate_types = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.304, i32 0, ptr @.str.478, ptr @.str.5 }, %struct.EnumPropertyItem { i32 1, ptr @.str.301, i32 0, ptr @.str.479, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.480, i32 0, ptr @.str.481, ptr @.str.5 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.203 = private unnamed_addr constant [5 x i8] c"Fill\00", align 1
@.str.204 = private unnamed_addr constant [13 x i8] c"MESH_OT_fill\00", align 1
@.str.205 = private unnamed_addr constant [37 x i8] c"Fill a selected edge loop with faces\00", align 1
@.str.206 = private unnamed_addr constant [11 x i8] c"use_beauty\00", align 1
@.str.207 = private unnamed_addr constant [7 x i8] c"Beauty\00", align 1
@.str.208 = private unnamed_addr constant [32 x i8] c"Use best triangulation division\00", align 1
@.str.209 = private unnamed_addr constant [10 x i8] c"Grid Fill\00", align 1
@.str.210 = private unnamed_addr constant [25 x i8] c"Fill grid from two loops\00", align 1
@.str.211 = private unnamed_addr constant [18 x i8] c"MESH_OT_fill_grid\00", align 1
@.str.212 = private unnamed_addr constant [5 x i8] c"span\00", align 1
@.str.213 = private unnamed_addr constant [5 x i8] c"Span\00", align 1
@.str.214 = private unnamed_addr constant [32 x i8] c"Number of sides (zero disables)\00", align 1
@.str.215 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.216 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.217 = private unnamed_addr constant [18 x i8] c"use_interp_simple\00", align 1
@.str.218 = private unnamed_addr constant [16 x i8] c"Simple Blending\00", align 1
@.str.219 = private unnamed_addr constant [11 x i8] c"Fill Holes\00", align 1
@.str.220 = private unnamed_addr constant [19 x i8] c"MESH_OT_fill_holes\00", align 1
@.str.221 = private unnamed_addr constant [36 x i8] c"Fill in holes (boundary edge loops)\00", align 1
@.str.222 = private unnamed_addr constant [6 x i8] c"sides\00", align 1
@.str.223 = private unnamed_addr constant [6 x i8] c"Sides\00", align 1
@.str.224 = private unnamed_addr constant [64 x i8] c"Number of sides in hole required to fill (zero fills all holes)\00", align 1
@.str.225 = private unnamed_addr constant [15 x i8] c"Beautify Faces\00", align 1
@.str.226 = private unnamed_addr constant [22 x i8] c"MESH_OT_beautify_fill\00", align 1
@.str.227 = private unnamed_addr constant [61 x i8] c"Rearrange some faces to try to get less degenerated geometry\00", align 1
@MESH_OT_poke.poke_center_modes = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.228, i32 0, ptr @.str.229, ptr @.str.230 }, %struct.EnumPropertyItem { i32 1, ptr @.str.231, i32 0, ptr @.str.232, ptr @.str.233 }, %struct.EnumPropertyItem { i32 2, ptr @.str.234, i32 0, ptr @.str.235, ptr @.str.236 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.228 = private unnamed_addr constant [14 x i8] c"MEAN_WEIGHTED\00", align 1
@.str.229 = private unnamed_addr constant [14 x i8] c"Weighted Mean\00", align 1
@.str.230 = private unnamed_addr constant [26 x i8] c"Weighted Mean Face Center\00", align 1
@.str.231 = private unnamed_addr constant [5 x i8] c"MEAN\00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"Mean\00", align 1
@.str.233 = private unnamed_addr constant [17 x i8] c"Mean Face Center\00", align 1
@.str.234 = private unnamed_addr constant [7 x i8] c"BOUNDS\00", align 1
@.str.235 = private unnamed_addr constant [7 x i8] c"Bounds\00", align 1
@.str.236 = private unnamed_addr constant [19 x i8] c"Face Bounds Center\00", align 1
@.str.237 = private unnamed_addr constant [11 x i8] c"Poke Faces\00", align 1
@.str.238 = private unnamed_addr constant [13 x i8] c"MESH_OT_poke\00", align 1
@.str.239 = private unnamed_addr constant [24 x i8] c"Split a face into a fan\00", align 1
@.str.240 = private unnamed_addr constant [12 x i8] c"Poke Offset\00", align 1
@.str.241 = private unnamed_addr constant [20 x i8] c"use_relative_offset\00", align 1
@.str.242 = private unnamed_addr constant [16 x i8] c"Offset Relative\00", align 1
@.str.243 = private unnamed_addr constant [41 x i8] c"Scale the offset by surrounding geometry\00", align 1
@.str.244 = private unnamed_addr constant [12 x i8] c"center_mode\00", align 1
@.str.245 = private unnamed_addr constant [12 x i8] c"Poke Center\00", align 1
@.str.246 = private unnamed_addr constant [29 x i8] c"Poke Face Center Calculation\00", align 1
@.str.247 = private unnamed_addr constant [18 x i8] c"Triangulate Faces\00", align 1
@.str.248 = private unnamed_addr constant [30 x i8] c"MESH_OT_quads_convert_to_tris\00", align 1
@.str.249 = private unnamed_addr constant [27 x i8] c"Triangulate selected faces\00", align 1
@.str.250 = private unnamed_addr constant [12 x i8] c"quad_method\00", align 1
@modifier_triangulate_quad_method_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.251 = private unnamed_addr constant [12 x i8] c"Quad Method\00", align 1
@.str.252 = private unnamed_addr constant [46 x i8] c"Method for splitting the quads into triangles\00", align 1
@.str.253 = private unnamed_addr constant [12 x i8] c"ngon_method\00", align 1
@modifier_triangulate_ngon_method_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.254 = private unnamed_addr constant [15 x i8] c"Polygon Method\00", align 1
@.str.255 = private unnamed_addr constant [49 x i8] c"Method for splitting the polygons into triangles\00", align 1
@.str.256 = private unnamed_addr constant [14 x i8] c"Tris to Quads\00", align 1
@.str.257 = private unnamed_addr constant [30 x i8] c"MESH_OT_tris_convert_to_quads\00", align 1
@.str.258 = private unnamed_addr constant [26 x i8] c"Join triangles into quads\00", align 1
@.str.259 = private unnamed_addr constant [18 x i8] c"Dissolve Vertices\00", align 1
@.str.260 = private unnamed_addr constant [38 x i8] c"Dissolve verts, merge edges and faces\00", align 1
@.str.261 = private unnamed_addr constant [23 x i8] c"MESH_OT_dissolve_verts\00", align 1
@.str.262 = private unnamed_addr constant [15 x i8] c"Dissolve Edges\00", align 1
@.str.263 = private unnamed_addr constant [30 x i8] c"Dissolve edges, merging faces\00", align 1
@.str.264 = private unnamed_addr constant [23 x i8] c"MESH_OT_dissolve_edges\00", align 1
@.str.265 = private unnamed_addr constant [15 x i8] c"Dissolve Faces\00", align 1
@.str.266 = private unnamed_addr constant [15 x i8] c"Dissolve faces\00", align 1
@.str.267 = private unnamed_addr constant [23 x i8] c"MESH_OT_dissolve_faces\00", align 1
@.str.268 = private unnamed_addr constant [19 x i8] c"Dissolve Selection\00", align 1
@.str.269 = private unnamed_addr constant [46 x i8] c"Dissolve geometry based on the selection mode\00", align 1
@.str.270 = private unnamed_addr constant [22 x i8] c"MESH_OT_dissolve_mode\00", align 1
@.str.271 = private unnamed_addr constant [17 x i8] c"Limited Dissolve\00", align 1
@.str.272 = private unnamed_addr constant [25 x i8] c"MESH_OT_dissolve_limited\00", align 1
@.str.273 = private unnamed_addr constant [80 x i8] c"Dissolve selected edges and verts, limited by the angle of surrounding geometry\00", align 1
@.str.274 = private unnamed_addr constant [24 x i8] c"use_dissolve_boundaries\00", align 1
@.str.275 = private unnamed_addr constant [15 x i8] c"All Boundaries\00", align 1
@.str.276 = private unnamed_addr constant [48 x i8] c"Dissolve all vertices inbetween face boundaries\00", align 1
@.str.277 = private unnamed_addr constant [8 x i8] c"delimit\00", align 1
@mesh_delimit_mode_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.278 = private unnamed_addr constant [8 x i8] c"Delimit\00", align 1
@.str.279 = private unnamed_addr constant [27 x i8] c"Delimit dissolve operation\00", align 1
@.str.280 = private unnamed_addr constant [20 x i8] c"Degenerate Dissolve\00", align 1
@.str.281 = private unnamed_addr constant [28 x i8] c"MESH_OT_dissolve_degenerate\00", align 1
@.str.282 = private unnamed_addr constant [47 x i8] c"Dissolve zero area faces and zero length edges\00", align 1
@.str.283 = private unnamed_addr constant [17 x i8] c"Delete Edge Loop\00", align 1
@.str.284 = private unnamed_addr constant [54 x i8] c"Delete an edge loop by merging the faces on each side\00", align 1
@.str.285 = private unnamed_addr constant [24 x i8] c"MESH_OT_delete_edgeloop\00", align 1
@.str.286 = private unnamed_addr constant [15 x i8] c"use_face_split\00", align 1
@.str.287 = private unnamed_addr constant [11 x i8] c"Face Split\00", align 1
@.str.288 = private unnamed_addr constant [56 x i8] c"Split off face corners to maintain surrounding geometry\00", align 1
@.str.289 = private unnamed_addr constant [6 x i8] c"Split\00", align 1
@.str.290 = private unnamed_addr constant [14 x i8] c"MESH_OT_split\00", align 1
@.str.291 = private unnamed_addr constant [63 x i8] c"Split off selected geometry from connected unselected geometry\00", align 1
@MESH_OT_sort_elements.type_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.292, i32 0, ptr @.str.293, ptr @.str.294 }, %struct.EnumPropertyItem { i32 2, ptr @.str.295, i32 0, ptr @.str.296, ptr @.str.297 }, %struct.EnumPropertyItem { i32 3, ptr @.str.298, i32 0, ptr @.str.299, ptr @.str.300 }, %struct.EnumPropertyItem { i32 4, ptr @.str.301, i32 0, ptr @.str.302, ptr @.str.303 }, %struct.EnumPropertyItem { i32 5, ptr @.str.304, i32 0, ptr @.str.305, ptr @.str.306 }, %struct.EnumPropertyItem { i32 6, ptr @.str.307, i32 0, ptr @.str.308, ptr @.str.309 }, %struct.EnumPropertyItem { i32 7, ptr @.str.310, i32 0, ptr @.str.311, ptr @.str.312 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.292 = private unnamed_addr constant [11 x i8] c"VIEW_ZAXIS\00", align 1
@.str.293 = private unnamed_addr constant [12 x i8] c"View Z Axis\00", align 1
@.str.294 = private unnamed_addr constant [68 x i8] c"Sort selected elements from farthest to nearest one in current view\00", align 1
@.str.295 = private unnamed_addr constant [11 x i8] c"VIEW_XAXIS\00", align 1
@.str.296 = private unnamed_addr constant [12 x i8] c"View X Axis\00", align 1
@.str.297 = private unnamed_addr constant [62 x i8] c"Sort selected elements from left to right one in current view\00", align 1
@.str.298 = private unnamed_addr constant [16 x i8] c"CURSOR_DISTANCE\00", align 1
@.str.299 = private unnamed_addr constant [16 x i8] c"Cursor Distance\00", align 1
@.str.300 = private unnamed_addr constant [63 x i8] c"Sort selected elements from nearest to farthest from 3D cursor\00", align 1
@.str.301 = private unnamed_addr constant [9 x i8] c"MATERIAL\00", align 1
@.str.302 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.303 = private unnamed_addr constant [78 x i8] c"Sort selected elements from smallest to greatest material index (faces only!)\00", align 1
@.str.304 = private unnamed_addr constant [9 x i8] c"SELECTED\00", align 1
@.str.305 = private unnamed_addr constant [9 x i8] c"Selected\00", align 1
@.str.306 = private unnamed_addr constant [142 x i8] c"Move all selected elements in first places, preserving their relative order (WARNING: this will affect unselected elements' indices as well!)\00", align 1
@.str.307 = private unnamed_addr constant [10 x i8] c"RANDOMIZE\00", align 1
@.str.308 = private unnamed_addr constant [10 x i8] c"Randomize\00", align 1
@.str.309 = private unnamed_addr constant [37 x i8] c"Randomize order of selected elements\00", align 1
@.str.310 = private unnamed_addr constant [8 x i8] c"REVERSE\00", align 1
@.str.311 = private unnamed_addr constant [8 x i8] c"Reverse\00", align 1
@.str.312 = private unnamed_addr constant [43 x i8] c"Reverse current order of selected elements\00", align 1
@MESH_OT_sort_elements.elem_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.313, i32 0, ptr @.str.42, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.314, i32 0, ptr @.str.45, ptr @.str.5 }, %struct.EnumPropertyItem { i32 8, ptr @.str.315, i32 0, ptr @.str.48, ptr @.str.5 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.313 = private unnamed_addr constant [5 x i8] c"VERT\00", align 1
@.str.314 = private unnamed_addr constant [5 x i8] c"EDGE\00", align 1
@.str.315 = private unnamed_addr constant [5 x i8] c"FACE\00", align 1
@.str.316 = private unnamed_addr constant [19 x i8] c"Sort Mesh Elements\00", align 1
@.str.317 = private unnamed_addr constant [80 x i8] c"The order of selected vertices/edges/faces is modified, based on a given method\00", align 1
@.str.318 = private unnamed_addr constant [22 x i8] c"MESH_OT_sort_elements\00", align 1
@.str.319 = private unnamed_addr constant [39 x i8] c"Type of re-ordering operation to apply\00", align 1
@.str.320 = private unnamed_addr constant [9 x i8] c"elements\00", align 1
@.str.321 = private unnamed_addr constant [9 x i8] c"Elements\00", align 1
@.str.322 = private unnamed_addr constant [56 x i8] c"Which elements to affect (vertices, edges and/or faces)\00", align 1
@.str.323 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.324 = private unnamed_addr constant [27 x i8] c"Reverse the sorting effect\00", align 1
@.str.325 = private unnamed_addr constant [5 x i8] c"Seed\00", align 1
@.str.326 = private unnamed_addr constant [33 x i8] c"Seed for random-based operations\00", align 1
@.str.327 = private unnamed_addr constant [6 x i8] c"Noise\00", align 1
@.str.328 = private unnamed_addr constant [44 x i8] c"Use vertex coordinate as texture coordinate\00", align 1
@.str.329 = private unnamed_addr constant [14 x i8] c"MESH_OT_noise\00", align 1
@.str.330 = private unnamed_addr constant [7 x i8] c"Factor\00", align 1
@MESH_OT_bridge_edge_loops.type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.331, i32 0, ptr @.str.332, ptr @.str.5 }, %struct.EnumPropertyItem { i32 1, ptr @.str.333, i32 0, ptr @.str.334, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.335, i32 0, ptr @.str.336, ptr @.str.5 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.331 = private unnamed_addr constant [7 x i8] c"SINGLE\00", align 1
@.str.332 = private unnamed_addr constant [10 x i8] c"Open Loop\00", align 1
@.str.333 = private unnamed_addr constant [7 x i8] c"CLOSED\00", align 1
@.str.334 = private unnamed_addr constant [12 x i8] c"Closed Loop\00", align 1
@.str.335 = private unnamed_addr constant [6 x i8] c"PAIRS\00", align 1
@.str.336 = private unnamed_addr constant [11 x i8] c"Loop Pairs\00", align 1
@.str.337 = private unnamed_addr constant [18 x i8] c"Bridge Edge Loops\00", align 1
@.str.338 = private unnamed_addr constant [42 x i8] c"Make faces between two or more edge loops\00", align 1
@.str.339 = private unnamed_addr constant [26 x i8] c"MESH_OT_bridge_edge_loops\00", align 1
@.str.340 = private unnamed_addr constant [14 x i8] c"Connect Loops\00", align 1
@.str.341 = private unnamed_addr constant [34 x i8] c"Method of bridging multiple loops\00", align 1
@.str.342 = private unnamed_addr constant [10 x i8] c"use_merge\00", align 1
@.str.343 = private unnamed_addr constant [33 x i8] c"Merge rather than creating faces\00", align 1
@.str.344 = private unnamed_addr constant [13 x i8] c"merge_factor\00", align 1
@.str.345 = private unnamed_addr constant [13 x i8] c"Merge Factor\00", align 1
@.str.346 = private unnamed_addr constant [13 x i8] c"twist_offset\00", align 1
@.str.347 = private unnamed_addr constant [6 x i8] c"Twist\00", align 1
@.str.348 = private unnamed_addr constant [30 x i8] c"Twist offset for closed loops\00", align 1
@.str.349 = private unnamed_addr constant [11 x i8] c"Wire Frame\00", align 1
@.str.350 = private unnamed_addr constant [18 x i8] c"MESH_OT_wireframe\00", align 1
@.str.351 = private unnamed_addr constant [37 x i8] c"Create a solid wire-frame from faces\00", align 1
@.str.352 = private unnamed_addr constant [13 x i8] c"use_boundary\00", align 1
@.str.353 = private unnamed_addr constant [9 x i8] c"Boundary\00", align 1
@.str.354 = private unnamed_addr constant [22 x i8] c"Inset face boundaries\00", align 1
@.str.355 = private unnamed_addr constant [16 x i8] c"use_even_offset\00", align 1
@.str.356 = private unnamed_addr constant [12 x i8] c"Offset Even\00", align 1
@.str.357 = private unnamed_addr constant [45 x i8] c"Scale the offset to give more even thickness\00", align 1
@.str.358 = private unnamed_addr constant [12 x i8] c"use_replace\00", align 1
@.str.359 = private unnamed_addr constant [8 x i8] c"Replace\00", align 1
@.str.360 = private unnamed_addr constant [22 x i8] c"Remove original faces\00", align 1
@.str.361 = private unnamed_addr constant [10 x i8] c"Thickness\00", align 1
@.str.362 = private unnamed_addr constant [11 x i8] c"use_crease\00", align 1
@.str.363 = private unnamed_addr constant [7 x i8] c"Crease\00", align 1
@.str.364 = private unnamed_addr constant [38 x i8] c"Crease hub edges for improved subsurf\00", align 1
@.str.365 = private unnamed_addr constant [14 x i8] c"crease_weight\00", align 1
@.str.366 = private unnamed_addr constant [14 x i8] c"Crease weight\00", align 1
@.str.367 = private unnamed_addr constant [11 x i8] c"Symmetrize\00", align 1
@.str.368 = private unnamed_addr constant [60 x i8] c"Enforce symmetry (both form and topological) across an axis\00", align 1
@.str.369 = private unnamed_addr constant [19 x i8] c"MESH_OT_symmetrize\00", align 1
@.str.370 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@symmetrize_direction_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.371 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.372 = private unnamed_addr constant [32 x i8] c"Which sides to copy from and to\00", align 1
@.str.373 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@.str.374 = private unnamed_addr constant [17 x i8] c"Snap to Symmetry\00", align 1
@.str.375 = private unnamed_addr constant [46 x i8] c"Snap vertex pairs to their mirrored locations\00", align 1
@.str.376 = private unnamed_addr constant [22 x i8] c"MESH_OT_symmetry_snap\00", align 1
@.str.377 = private unnamed_addr constant [11 x i8] c"use_center\00", align 1
@.str.378 = private unnamed_addr constant [7 x i8] c"Center\00", align 1
@.str.379 = private unnamed_addr constant [34 x i8] c"Snap mid verts to the axis center\00", align 1
@.str.380 = private unnamed_addr constant [10 x i8] c"INNERVERT\00", align 1
@.str.381 = private unnamed_addr constant [11 x i8] c"Inner Vert\00", align 1
@.str.382 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.383 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.384 = private unnamed_addr constant [13 x i8] c"STRAIGHT_CUT\00", align 1
@.str.385 = private unnamed_addr constant [13 x i8] c"Straight Cut\00", align 1
@.str.386 = private unnamed_addr constant [4 x i8] c"FAN\00", align 1
@.str.387 = private unnamed_addr constant [4 x i8] c"Fan\00", align 1
@.str.388 = private unnamed_addr constant [103 x i8] c"subdivide_edgering edges=%he interp_mode=%i cuts=%i smooth=%f profile_shape=%i profile_shape_factor=%f\00", align 1
@.str.389 = private unnamed_addr constant [14 x i8] c"interpolation\00", align 1
@.str.390 = private unnamed_addr constant [14 x i8] c"profile_shape\00", align 1
@.str.391 = private unnamed_addr constant [21 x i8] c"profile_shape_factor\00", align 1
@mesh_operator_edgering_props.prop_subd_edgering_types = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.392, i32 0, ptr @.str.393, ptr @.str.5 }, %struct.EnumPropertyItem { i32 1, ptr @.str.382, i32 0, ptr @.str.394, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.395, i32 0, ptr @.str.396, ptr @.str.5 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.392 = private unnamed_addr constant [7 x i8] c"LINEAR\00", align 1
@.str.393 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.394 = private unnamed_addr constant [11 x i8] c"Blend Path\00", align 1
@.str.395 = private unnamed_addr constant [8 x i8] c"SURFACE\00", align 1
@.str.396 = private unnamed_addr constant [14 x i8] c"Blend Surface\00", align 1
@.str.397 = private unnamed_addr constant [14 x i8] c"Interpolation\00", align 1
@.str.398 = private unnamed_addr constant [21 x i8] c"Interpolation method\00", align 1
@.str.399 = private unnamed_addr constant [15 x i8] c"Profile Factor\00", align 1
@proportional_falloff_curve_only_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.400 = private unnamed_addr constant [14 x i8] c"Profile Shape\00", align 1
@.str.401 = private unnamed_addr constant [21 x i8] c"Shape of the profile\00", align 1
@.str.402 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.403 = private unnamed_addr constant [36 x i8] c"unsubdivide verts=%hv iterations=%i\00", align 1
@.str.404 = private unnamed_addr constant [27 x i8] c"delete geom=%hv context=%i\00", align 1
@.str.405 = private unnamed_addr constant [27 x i8] c"delete geom=%he context=%i\00", align 1
@.str.406 = private unnamed_addr constant [27 x i8] c"delete geom=%hf context=%i\00", align 1
@.str.407 = private unnamed_addr constant [28 x i8] c"delete geom=%hef context=%i\00", align 1
@.str.408 = private unnamed_addr constant [10 x i8] c"EDGE_FACE\00", align 1
@.str.409 = private unnamed_addr constant [19 x i8] c"Only Edges & Faces\00", align 1
@.str.410 = private unnamed_addr constant [10 x i8] c"ONLY_FACE\00", align 1
@.str.411 = private unnamed_addr constant [11 x i8] c"Only Faces\00", align 1
@.str.412 = private unnamed_addr constant [41 x i8] c"Removed: %d vertices, %d edges, %d faces\00", align 1
@.str.413 = private unnamed_addr constant [19 x i8] c"collapse edges=%he\00", align 1
@.str.414 = private unnamed_addr constant [53 x i8] c"contextual_create geom=%hfev mat_nr=%i use_smooth=%b\00", align 1
@.str.415 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@.str.416 = private unnamed_addr constant [10 x i8] c"edges.out\00", align 1
@.str.417 = private unnamed_addr constant [64 x i8] c"connect_vert_pair verts=%hv verts_exclude=%hv faces_exclude=%hf\00", align 1
@.str.418 = private unnamed_addr constant [62 x i8] c"connect_verts verts=%hv faces_exclude=%hf check_degenerate=%b\00", align 1
@.str.419 = private unnamed_addr constant [49 x i8] c"connect_verts_nonplanar faces=%hf angle_limit=%f\00", align 1
@.str.420 = private unnamed_addr constant [22 x i8] c"split_edges edges=%he\00", align 1
@.str.421 = private unnamed_addr constant [43 x i8] c"duplicate geom=%hvef use_select_history=%b\00", align 1
@.str.422 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1
@.str.423 = private unnamed_addr constant [24 x i8] c"reverse_faces faces=%hf\00", align 1
@.str.424 = private unnamed_addr constant [58 x i8] c"Select edges or face pairs for edge loops to rotate about\00", align 1
@.str.425 = private unnamed_addr constant [54 x i8] c"Could not find any selected edges that can be rotated\00", align 1
@.str.426 = private unnamed_addr constant [34 x i8] c"rotate_edges edges=%he use_ccw=%b\00", align 1
@.str.427 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@.str.428 = private unnamed_addr constant [30 x i8] c"recalc_face_normals faces=%hf\00", align 1
@.str.429 = private unnamed_addr constant [138 x i8] c"smooth_vert verts=%hv factor=%f mirror_clip_x=%b mirror_clip_y=%b mirror_clip_z=%b clip_dist=%f use_axis_x=%b use_axis_y=%b use_axis_z=%b\00", align 1
@.str.430 = private unnamed_addr constant [42 x i8] c"Selected faces must be triangles or quads\00", align 1
@.str.431 = private unnamed_addr constant [112 x i8] c"smooth_laplacian_vert verts=%hv lambda_factor=%f lambda_border=%f use_x=%b use_y=%b use_z=%b preserve_volume=%b\00", align 1
@.str.432 = private unnamed_addr constant [32 x i8] c"rotate_uvs faces=%hf use_ccw=%b\00", align 1
@.str.433 = private unnamed_addr constant [22 x i8] c"reverse_uvs faces=%hf\00", align 1
@.str.434 = private unnamed_addr constant [35 x i8] c"rotate_colors faces=%hf use_ccw=%b\00", align 1
@.str.435 = private unnamed_addr constant [25 x i8] c"reverse_colors faces=%hf\00", align 1
@.str.436 = private unnamed_addr constant [32 x i8] c"average_vert_facedata verts=%hv\00", align 1
@.str.437 = private unnamed_addr constant [33 x i8] c"pointmerge verts=%hv merge_co=%v\00", align 1
@.str.438 = private unnamed_addr constant [43 x i8] c"pointmerge_facedata verts=%hv vert_snap=%e\00", align 1
@.str.439 = private unnamed_addr constant [6 x i8] c"FIRST\00", align 1
@.str.440 = private unnamed_addr constant [9 x i8] c"At First\00", align 1
@.str.441 = private unnamed_addr constant [5 x i8] c"LAST\00", align 1
@.str.442 = private unnamed_addr constant [8 x i8] c"At Last\00", align 1
@.str.443 = private unnamed_addr constant [7 x i8] c"CENTER\00", align 1
@.str.444 = private unnamed_addr constant [10 x i8] c"At Center\00", align 1
@.str.445 = private unnamed_addr constant [7 x i8] c"CURSOR\00", align 1
@.str.446 = private unnamed_addr constant [10 x i8] c"At Cursor\00", align 1
@.str.447 = private unnamed_addr constant [9 x i8] c"COLLAPSE\00", align 1
@.str.448 = private unnamed_addr constant [9 x i8] c"Collapse\00", align 1
@.str.449 = private unnamed_addr constant [28 x i8] c"automerge verts=%hv dist=%f\00", align 1
@.str.450 = private unnamed_addr constant [31 x i8] c"find_doubles verts=%hv dist=%f\00", align 1
@.str.451 = private unnamed_addr constant [24 x i8] c"weld_verts targetmap=%S\00", align 1
@.str.452 = private unnamed_addr constant [14 x i8] c"targetmap.out\00", align 1
@.str.453 = private unnamed_addr constant [20 x i8] c"Removed %d vertices\00", align 1
@.str.454 = private unnamed_addr constant [30 x i8] c"Mesh does not have shape keys\00", align 1
@.str.455 = private unnamed_addr constant [11 x i8] c"key_blocks\00", align 1
@__const.shape_itemf.tmp = private unnamed_addr constant %struct.EnumPropertyItem { i32 0, ptr @.str.5, i32 0, ptr @.str.5, ptr @.str.5 }, align 8
@.str.456 = private unnamed_addr constant [31 x i8] c"solidify geom=%hf thickness=%f\00", align 1
@.str.457 = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@.str.458 = private unnamed_addr constant [36 x i8] c"No edges are selected to operate on\00", align 1
@.str.459 = private unnamed_addr constant [21 x i8] c"Mouse path too short\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.edbm_knife_cut_exec = private unnamed_addr constant [20 x i8] c"edbm_knife_cut_exec\00", align 1
@.str.460 = private unnamed_addr constant [4 x i8] c"loc\00", align 1
@.str.461 = private unnamed_addr constant [16 x i8] c"subdivide_edges\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.462 = private unnamed_addr constant [14 x i8] c"edge_percents\00", align 1
@.str.463 = private unnamed_addr constant [5 x i8] c"cuts\00", align 1
@.str.464 = private unnamed_addr constant [17 x i8] c"quad_corner_type\00", align 1
@.str.465 = private unnamed_addr constant [16 x i8] c"use_single_edge\00", align 1
@.str.466 = private unnamed_addr constant [14 x i8] c"use_grid_fill\00", align 1
@.str.467 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.468 = private unnamed_addr constant [6 x i8] c"EXACT\00", align 1
@.str.469 = private unnamed_addr constant [6 x i8] c"Exact\00", align 1
@.str.470 = private unnamed_addr constant [10 x i8] c"MIDPOINTS\00", align 1
@.str.471 = private unnamed_addr constant [10 x i8] c"Midpoints\00", align 1
@.str.472 = private unnamed_addr constant [9 x i8] c"MULTICUT\00", align 1
@.str.473 = private unnamed_addr constant [9 x i8] c"Multicut\00", align 1
@.str.474 = private unnamed_addr constant [17 x i8] c"Nothing selected\00", align 1
@.str.475 = private unnamed_addr constant [39 x i8] c"Selection not supported in object mode\00", align 1
@bm_mesh_allocsize_default = external constant %struct.BMAllocTemplate, align 4
@CD_MASK_BMESH = external local_unnamed_addr constant i64, align 8
@.str.476 = private unnamed_addr constant [29 x i8] c"duplicate geom=%hvef dest=%p\00", align 1
@.str.477 = private unnamed_addr constant [29 x i8] c"delete geom=%hvef context=%i\00", align 1
@.str.478 = private unnamed_addr constant [10 x i8] c"Selection\00", align 1
@.str.479 = private unnamed_addr constant [12 x i8] c"By Material\00", align 1
@.str.480 = private unnamed_addr constant [6 x i8] c"LOOSE\00", align 1
@.str.481 = private unnamed_addr constant [15 x i8] c"By loose parts\00", align 1
@.str.482 = private unnamed_addr constant [38 x i8] c"triangle_fill edges=%he use_beauty=%b\00", align 1
@.str.483 = private unnamed_addr constant [65 x i8] c"grid_fill edges=%he mat_nr=%i use_smooth=%b use_interp_simple=%b\00", align 1
@__func__.edbm_fill_grid_prepare = private unnamed_addr constant [23 x i8] c"edbm_fill_grid_prepare\00", align 1
@.str.484 = private unnamed_addr constant [30 x i8] c"holes_fill edges=%he sides=%i\00", align 1
@.str.485 = private unnamed_addr constant [34 x i8] c"beautify_fill faces=%hf edges=%he\00", align 1
@.str.486 = private unnamed_addr constant [63 x i8] c"poke faces=%hf offset=%f use_relative_offset=%b center_mode=%i\00", align 1
@.str.487 = private unnamed_addr constant [10 x i8] c"verts.out\00", align 1
@.str.488 = private unnamed_addr constant [52 x i8] c"triangulate faces=%hf quad_method=%i ngon_method=%i\00", align 1
@.str.489 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.490 = private unnamed_addr constant [6 x i8] c"sharp\00", align 1
@.str.491 = private unnamed_addr constant [6 x i8] c"vcols\00", align 1
@.str.492 = private unnamed_addr constant [10 x i8] c"materials\00", align 1
@.str.493 = private unnamed_addr constant [88 x i8] c"join_triangles faces=%hf limit=%f cmp_sharp=%b cmp_uvs=%b cmp_vcols=%b cmp_materials=%b\00", align 1
@.str.494 = private unnamed_addr constant [12 x i8] c"Angle Limit\00", align 1
@.str.495 = private unnamed_addr constant [12 x i8] c"Compare UVs\00", align 1
@.str.496 = private unnamed_addr constant [14 x i8] c"Compare VCols\00", align 1
@.str.497 = private unnamed_addr constant [14 x i8] c"Compare Sharp\00", align 1
@.str.498 = private unnamed_addr constant [18 x i8] c"Compare Materials\00", align 1
@.str.499 = private unnamed_addr constant [18 x i8] c"use_boundary_tear\00", align 1
@.str.500 = private unnamed_addr constant [64 x i8] c"dissolve_verts verts=%hv use_face_split=%b use_boundary_tear=%b\00", align 1
@.str.501 = private unnamed_addr constant [14 x i8] c"Tear Boundary\00", align 1
@.str.502 = private unnamed_addr constant [48 x i8] c"Split off face corners instead of merging faces\00", align 1
@.str.503 = private unnamed_addr constant [56 x i8] c"dissolve_edges edges=%he use_verts=%b use_face_split=%b\00", align 1
@.str.504 = private unnamed_addr constant [15 x i8] c"Dissolve Verts\00", align 1
@.str.505 = private unnamed_addr constant [28 x i8] c"Dissolve remaining vertices\00", align 1
@.str.506 = private unnamed_addr constant [11 x i8] c"region.out\00", align 1
@.str.507 = private unnamed_addr constant [38 x i8] c"dissolve_faces faces=%hf use_verts=%b\00", align 1
@.str.508 = private unnamed_addr constant [88 x i8] c"dissolve_limit edges=%he verts=%hv angle_limit=%f use_dissolve_boundaries=%b delimit=%i\00", align 1
@.str.509 = private unnamed_addr constant [38 x i8] c"dissolve_degenerate edges=%he dist=%f\00", align 1
@.str.510 = private unnamed_addr constant [35 x i8] c"split geom=%hvef use_only_faces=%b\00", align 1
@.str.511 = private unnamed_addr constant [41 x i8] c"View not found, cannot sort by view axis\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.512 = private unnamed_addr constant [24 x i8] c"sort_bmelem vert pblock\00", align 1
@.str.513 = private unnamed_addr constant [24 x i8] c"sort_bmelem vert sblock\00", align 1
@.str.514 = private unnamed_addr constant [24 x i8] c"sort_bmelem edge pblock\00", align 1
@.str.515 = private unnamed_addr constant [24 x i8] c"sort_bmelem edge sblock\00", align 1
@.str.516 = private unnamed_addr constant [24 x i8] c"sort_bmelem face pblock\00", align 1
@.str.517 = private unnamed_addr constant [24 x i8] c"sort_bmelem face sblock\00", align 1
@.str.518 = private unnamed_addr constant [22 x i8] c"sort_bmelem vert tbuf\00", align 1
@.str.519 = private unnamed_addr constant [21 x i8] c"sort_bmelem vert map\00", align 1
@.str.520 = private unnamed_addr constant [22 x i8] c"sort_bmelem edge tbuf\00", align 1
@.str.521 = private unnamed_addr constant [21 x i8] c"sort_bmelem edge map\00", align 1
@.str.522 = private unnamed_addr constant [22 x i8] c"sort_bmelem face tbuf\00", align 1
@.str.523 = private unnamed_addr constant [21 x i8] c"sort_bmelem face map\00", align 1
@.str.524 = private unnamed_addr constant [16 x i8] c"sort_bmelem map\00", align 1
@.str.525 = private unnamed_addr constant [41 x i8] c"Mesh has no material or texture assigned\00", align 1
@__func__.edbm_bridge_edge_loops_exec = private unnamed_addr constant [28 x i8] c"edbm_bridge_edge_loops_exec\00", align 1
@.str.526 = private unnamed_addr constant [95 x i8] c"bridge_loops edges=%he use_pairs=%b use_cyclic=%b use_merge=%b merge_factor=%f twist_offset=%i\00", align 1
@.str.527 = private unnamed_addr constant [102 x i8] c"subdivide_edgering edges=%S interp_mode=%i cuts=%i smooth=%f profile_shape=%i profile_shape_factor=%f\00", align 1
@.str.528 = private unnamed_addr constant [147 x i8] c"wireframe faces=%hf use_replace=%b use_boundary=%b use_even_offset=%b use_relative_offset=%b use_crease=%b crease_weight=%f thickness=%f offset=%f\00", align 1
@.str.529 = private unnamed_addr constant [44 x i8] c"symmetrize input=%hvef direction=%i dist=%f\00", align 1
@__func__.mesh_symmetry_snap_exec = private unnamed_addr constant [24 x i8] c"mesh_symmetry_snap_exec\00", align 1
@.str.530 = private unnamed_addr constant [53 x i8] c"%d already symmetrical, %d pairs mirrored, %d failed\00", align 1
@.str.531 = private unnamed_addr constant [42 x i8] c"%d already symmetrical, %d pairs mirrored\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_subdivide(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_subdivide_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 10) #17
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #17
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.6, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef 0.000000e+00, float noundef 1.000000e+00) #17
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #17
  %14 = load ptr, ptr %7, align 8, !tbaa !47
  %15 = tail call ptr @RNA_def_enum(ptr noundef %14, ptr noundef nonnull @.str.12, ptr noundef nonnull @prop_mesh_cornervert_types, i32 noundef 3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #17
  %16 = load ptr, ptr %7, align 8, !tbaa !47
  %17 = tail call ptr @RNA_def_float(ptr noundef %16, ptr noundef nonnull @.str.15, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, float noundef 0.000000e+00, float noundef 1.000000e+03) #17
  %18 = load ptr, ptr %7, align 8, !tbaa !47
  %19 = tail call ptr @RNA_def_float(ptr noundef %18, ptr noundef nonnull @.str.18, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, float noundef 0.000000e+00, float noundef 1.000000e+00) #17
  %20 = load ptr, ptr %7, align 8, !tbaa !47
  %21 = tail call ptr @RNA_def_int(ptr noundef %20, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 0, i32 noundef 10000, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 50) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_subdivide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !48 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #17
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.3) #17
  %8 = load ptr, ptr %5, align 8, !tbaa !49
  %9 = tail call float @RNA_float_get(ptr noundef %8, ptr noundef nonnull @.str.6) #17
  %10 = load ptr, ptr %5, align 8, !tbaa !49
  %11 = tail call float @RNA_float_get(ptr noundef %10, ptr noundef nonnull @.str.15) #17
  %12 = load ptr, ptr %5, align 8, !tbaa !49
  %13 = tail call float @RNA_float_get(ptr noundef %12, ptr noundef nonnull @.str.18) #17
  %14 = load ptr, ptr %5, align 8, !tbaa !49
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.9) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %5, align 8, !tbaa !49
  %19 = tail call i32 @RNA_enum_get(ptr noundef %18, ptr noundef nonnull @.str.12) #17
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %5, align 8, !tbaa !49
  tail call void @RNA_enum_set(ptr noundef %22, ptr noundef nonnull @.str.12, i32 noundef 0) #17
  br label %23

23:                                               ; preds = %21, %17, %2
  %24 = fdiv float %11, 2.500000e+00
  %25 = fmul float %9, 0x3FD2B020C0000000
  %26 = load ptr, ptr %4, align 8, !tbaa !51
  %27 = load ptr, ptr %5, align 8, !tbaa !49
  %28 = tail call i32 @RNA_enum_get(ptr noundef %27, ptr noundef nonnull @.str.12) #17
  %29 = load ptr, ptr %5, align 8, !tbaa !49
  %30 = tail call i32 @RNA_boolean_get(ptr noundef %29, ptr noundef nonnull @.str.9) #17
  %31 = trunc i32 %30 to i16
  %32 = load ptr, ptr %5, align 8, !tbaa !49
  %33 = tail call i32 @RNA_int_get(ptr noundef %32, ptr noundef nonnull @.str.21) #17
  tail call void @BM_mesh_esubdivide(ptr noundef %26, i8 noundef zeroext 1, float noundef %25, i16 noundef signext 2, i8 noundef zeroext 0, float noundef %24, float noundef %13, i32 noundef %7, i32 noundef 1, i32 noundef %28, i16 noundef signext %31, i16 noundef signext 1, i16 noundef signext 0, i32 noundef %33) #17
  tail call void @EDBM_update_generic(ptr noundef nonnull %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_editmesh(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_subdivide_edgering(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_subdivide_edge_ring_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  tail call fastcc void @mesh_operator_edgering_props(ptr noundef nonnull %0, i32 noundef 10) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_subdivide_edge_ring_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !55 {
  %3 = alloca %struct.EdgeRingOpSubdProps, align 4
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #19
  call fastcc void @mesh_operator_edgering_props_get(ptr noundef %1, ptr noundef nonnull %3) #18
  %6 = load i32, ptr %3, align 4, !tbaa !56
  %7 = getelementptr inbounds %struct.EdgeRingOpSubdProps, ptr %3, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds %struct.EdgeRingOpSubdProps, ptr %3, i64 0, i32 2
  %10 = load float, ptr %9, align 4, !tbaa !60
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds %struct.EdgeRingOpSubdProps, ptr %3, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !61
  %14 = getelementptr inbounds %struct.EdgeRingOpSubdProps, ptr %3, i64 0, i32 4
  %15 = load float, ptr %14, align 4, !tbaa !62
  %16 = fpext float %15 to double
  %17 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %5, ptr noundef %1, ptr noundef nonnull @.str.388, i32 noundef 1, i32 noundef %6, i32 noundef %8, double noundef %11, i32 noundef %13, double noundef %16) #17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  tail call void @EDBM_update_generic(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %20

20:                                               ; preds = %2, %19
  %21 = phi i32 [ 4, %19 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #19
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_operator_edgering_props(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !63 {
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = tail call ptr @RNA_def_int(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %1, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 64) #17
  tail call void @RNA_def_property_flag(ptr noundef %5, i32 noundef 268435456) #17
  %6 = load ptr, ptr %3, align 8, !tbaa !47
  %7 = tail call ptr @RNA_def_enum(ptr noundef %6, ptr noundef nonnull @.str.389, ptr noundef nonnull @mesh_operator_edgering_props.prop_subd_edgering_types, i32 noundef 1, ptr noundef nonnull @.str.397, ptr noundef nonnull @.str.398) #17
  %8 = load ptr, ptr %3, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.6, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef 0.000000e+00, float noundef 2.000000e+00) #17
  %10 = load ptr, ptr %3, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.391, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.399, ptr noundef nonnull @.str.5, float noundef -2.000000e+00, float noundef 2.000000e+00) #17
  %12 = load ptr, ptr %3, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_property(ptr noundef %12, ptr noundef nonnull @.str.390, i32 noundef 4, i32 noundef 0) #17
  tail call void @RNA_def_property_enum_items(ptr noundef %13, ptr noundef nonnull @proportional_falloff_curve_only_items) #17
  tail call void @RNA_def_property_enum_default(ptr noundef %13, i32 noundef 0) #17
  tail call void @RNA_def_property_ui_text(ptr noundef %13, ptr noundef nonnull @.str.400, ptr noundef nonnull @.str.401) #17
  tail call void @RNA_def_property_translation_context(ptr noundef %13, ptr noundef nonnull @.str.402) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_unsubdivide(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.26, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_unsubdivide_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.29, i32 noundef 2, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1, i32 noundef 100) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_unsubdivide_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !64 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #19
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.29) #17
  %9 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.403, i32 noundef 1, i32 noundef %8) #17
  %10 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %10, ptr noundef nonnull %3) #17
  %11 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 12
  %15 = load i16, ptr %14, align 4, !tbaa !65
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  call void @EDBM_selectmode_flush_ex(ptr noundef nonnull %5, i16 noundef signext 1) #17
  br label %19

19:                                               ; preds = %18, %13
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #17
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %20

20:                                               ; preds = %2, %19
  %21 = phi i32 [ 4, %19 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #19
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EMBM_project_snap_verts(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [2 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca float, align 4
  %9 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %10, ptr noundef %12) #17
  %13 = load ptr, ptr %2, align 8, !tbaa !51
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %13, i8 noundef zeroext 1, ptr noundef null) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 50
  br label %18

18:                                               ; preds = %16, %31
  %19 = phi ptr [ %14, %16 ], [ %32, %31 ]
  %20 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %19, i8 noundef zeroext 1) #18, !range !72
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #19
  %23 = getelementptr inbounds %struct.BMVert, ptr %19, i64 0, i32 2
  %24 = call i32 @ED_view3d_project_float_object(ptr noundef %1, ptr noundef nonnull %23, ptr noundef nonnull %5, i32 noundef 0) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = call zeroext i8 @snapObjectsContext(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2) #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  call void @mul_v3_m4v3(ptr noundef nonnull %23, ptr noundef nonnull %17, ptr noundef nonnull %6) #17
  br label %30

30:                                               ; preds = %26, %29, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %31

31:                                               ; preds = %18, %30
  %32 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #18
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %18, !llvm.loop !73

34:                                               ; preds = %31, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !75 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #18
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #18
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 !PGOFuncName !76 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !77
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: optsize
declare i32 @ED_view3d_project_float_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @snapObjectsContext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !79 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = tail call ptr %3(ptr noundef %0) #17
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_delete(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_delete_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.35, ptr noundef nonnull @prop_mesh_delete_types, i32 noundef 0, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #17
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !83
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_delete_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !84 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #17
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.35) #17
  switch i32 %7, label %23 [
    i32 0, label %8
    i32 1, label %11
    i32 2, label %14
    i32 3, label %17
    i32 4, label %20
  ]

8:                                                ; preds = %2
  %9 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef nonnull %1, ptr noundef nonnull @.str.404, i32 noundef 1, i32 noundef 1) #17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %24, label %23

11:                                               ; preds = %2
  %12 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef nonnull %1, ptr noundef nonnull @.str.405, i32 noundef 1, i32 noundef 2) #17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %23

14:                                               ; preds = %2
  %15 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef nonnull %1, ptr noundef nonnull @.str.406, i32 noundef 1, i32 noundef 5) #17
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %24, label %23

17:                                               ; preds = %2
  %18 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef nonnull %1, ptr noundef nonnull @.str.407, i32 noundef 1, i32 noundef 4) #17
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %23

20:                                               ; preds = %2
  %21 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef nonnull %1, ptr noundef nonnull @.str.406, i32 noundef 1, i32 noundef 3) #17
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2, %11, %17, %20, %14, %8
  tail call void @EDBM_flag_disable_all(ptr noundef %4, i8 noundef zeroext 1) #17
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %24

24:                                               ; preds = %20, %17, %14, %11, %8, %23
  %25 = phi i32 [ 4, %23 ], [ 2, %8 ], [ 2, %11 ], [ 2, %14 ], [ 2, %17 ], [ 2, %20 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_delete_loose(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.39, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_delete_loose_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.41, i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #17
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.44, i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #17
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_delete_loose_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !85 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [3 x i32], align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #17
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.41) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !86
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i1 [ true, %2 ], [ %15, %12 ]
  %18 = load ptr, ptr %8, align 8, !tbaa !49
  %19 = tail call i32 @RNA_boolean_get(ptr noundef %18, ptr noundef nonnull @.str.44) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !89
  %24 = icmp eq i32 %23, 0
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i1 [ true, %16 ], [ %24, %21 ]
  %27 = load ptr, ptr %8, align 8, !tbaa !49
  %28 = tail call i32 @RNA_boolean_get(ptr noundef %27, ptr noundef nonnull @.str.47) #17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !90
  %33 = icmp eq i32 %32, 0
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  %34 = load <2 x i32>, ptr %7, align 8, !tbaa !91
  store <2 x i32> %34, ptr %4, align 8, !tbaa !91
  %35 = getelementptr inbounds i32, ptr %4, i64 2
  %36 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !92
  store i32 %37, ptr %35, align 8, !tbaa !91
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef nonnull %7, i8 noundef zeroext 11, i8 noundef zeroext 16, i8 noundef zeroext 0) #17
  br i1 %33, label %57, label %38

38:                                               ; preds = %30
  %39 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %7, i8 noundef zeroext 3, ptr noundef null) #18
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %38, %48
  %42 = phi ptr [ %49, %48 ], [ %39, %38 ]
  %43 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %42, i8 noundef zeroext 1) #18, !range !72
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = call fastcc zeroext i8 @bm_face_is_loose(ptr noundef nonnull %42) #18, !range !93
  %47 = zext nneg i8 %46 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %42, i8 noundef zeroext 16, i32 noundef %47) #18
  br label %48

48:                                               ; preds = %41, %45
  %49 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %41, !llvm.loop !94

51:                                               ; preds = %48, %38
  call void @BM_mesh_delete_hflag_context(ptr noundef nonnull %7, i8 noundef zeroext 16, i32 noundef 5) #17
  br label %57

52:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  %53 = load <2 x i32>, ptr %7, align 8, !tbaa !91
  store <2 x i32> %53, ptr %4, align 8, !tbaa !91
  %54 = getelementptr inbounds i32, ptr %4, i64 2
  %55 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !92
  store i32 %56, ptr %54, align 8, !tbaa !91
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef nonnull %7, i8 noundef zeroext 11, i8 noundef zeroext 16, i8 noundef zeroext 0) #17
  br label %57

57:                                               ; preds = %52, %51, %30
  br i1 %26, label %72, label %58

58:                                               ; preds = %57
  %59 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %7, i8 noundef zeroext 2, ptr noundef null) #18
  %60 = icmp eq ptr %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %58, %68
  %62 = phi ptr [ %69, %68 ], [ %59, %58 ]
  %63 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %62, i8 noundef zeroext 1) #18, !range !72
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = call zeroext i8 @BM_edge_is_wire(ptr noundef nonnull %62) #18, !range !93
  %67 = zext nneg i8 %66 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %62, i8 noundef zeroext 16, i32 noundef %67) #18
  br label %68

68:                                               ; preds = %61, %65
  %69 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %61, !llvm.loop !95

71:                                               ; preds = %68, %58
  call void @BM_mesh_delete_hflag_context(ptr noundef nonnull %7, i8 noundef zeroext 16, i32 noundef 2) #17
  br label %72

72:                                               ; preds = %71, %57
  br i1 %17, label %89, label %73

73:                                               ; preds = %72
  %74 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef null) #18
  %75 = icmp eq ptr %74, null
  br i1 %75, label %88, label %76

76:                                               ; preds = %73, %85
  %77 = phi ptr [ %86, %85 ], [ %74, %73 ]
  %78 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %77, i8 noundef zeroext 1) #18, !range !72
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.BMVert, ptr %77, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !96
  %83 = icmp eq ptr %82, null
  %84 = zext i1 %83 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %77, i8 noundef zeroext 16, i32 noundef %84) #18
  br label %85

85:                                               ; preds = %76, %80
  %86 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %76, !llvm.loop !98

88:                                               ; preds = %85, %73
  call void @BM_mesh_delete_hflag_context(ptr noundef nonnull %7, i8 noundef zeroext 16, i32 noundef 1) #17
  br label %89

89:                                               ; preds = %88, %72
  call void @EDBM_flag_disable_all(ptr noundef nonnull %6, i8 noundef zeroext 1) #17
  call void @EDBM_update_generic(ptr noundef nonnull %6, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %90 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %91 = load ptr, ptr %90, align 8, !tbaa !99
  call fastcc void @edbm_report_delete_info(ptr noundef %91, ptr noundef nonnull %7, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_edge_collapse(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.50, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.51, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.52, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_collapse_edge_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_collapse_edge_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !100 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #17
  %5 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.413, i32 noundef 1) #17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %8

8:                                                ; preds = %2, %7
  %9 = phi i32 [ 4, %7 ], [ 2, %2 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_edge_face_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.53, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.54, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.55, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_add_edge_face_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_add_edge_face_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !101 {
  %3 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #19
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = tail call fastcc i32 @edbm_add_edge_face__smooth_get(ptr noundef %6) #18, !range !102
  %8 = load ptr, ptr %5, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !103
  %11 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !92
  %13 = tail call fastcc ptr @edbm_add_edge_face_exec__tricky_extend_sel(ptr noundef %8) #18
  %14 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 13
  %15 = load i16, ptr %14, align 2, !tbaa !104
  %16 = sext i16 %15 to i32
  %17 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.414, i32 noundef 1, i32 noundef %16, i32 noundef %7) #17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %52, label %19

19:                                               ; preds = %2
  %20 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %20, ptr noundef nonnull %3) #17
  %21 = load ptr, ptr %5, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !103
  %24 = icmp eq i32 %10, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !92
  %28 = icmp eq i32 %12, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #17
  br label %52

31:                                               ; preds = %25, %19
  %32 = icmp eq ptr %13, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  %35 = call i32 @BMO_slot_buffer_count(ptr noundef nonnull %34, ptr noundef nonnull @.str.415) #17
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %5, align 8, !tbaa !51
  br label %44

39:                                               ; preds = %33
  %40 = call ptr @BMO_slot_buffer_get_first(ptr noundef nonnull %34, ptr noundef nonnull @.str.415) #17
  %41 = icmp eq ptr %40, null
  %42 = load ptr, ptr %5, align 8, !tbaa !51
  br i1 %41, label %44, label %43

43:                                               ; preds = %39
  call fastcc void @edbm_add_edge_face_exec__tricky_finalize_sel(ptr noundef %42, ptr noundef nonnull %13, ptr noundef nonnull %40) #18
  br label %48

44:                                               ; preds = %37, %39, %31
  %45 = phi ptr [ %38, %37 ], [ %42, %39 ], [ %21, %31 ]
  %46 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %45, ptr noundef nonnull %46, ptr noundef nonnull @.str.415, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %47 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %47, ptr noundef nonnull %46, ptr noundef nonnull @.str.416, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %48

48:                                               ; preds = %44, %43
  %49 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #17
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %52

52:                                               ; preds = %48, %2, %51, %29
  %53 = phi i32 [ 2, %29 ], [ 4, %51 ], [ 2, %2 ], [ 2, %48 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #19
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_mark_seam(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.56, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.57, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_mark_seam_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.59, i32 noundef 0, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.5) #17
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_mark_seam_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !105 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #17
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.59) #17
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %2
  %16 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %9, i8 noundef zeroext 2, ptr noundef null) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %15, %26
  %19 = phi ptr [ %27, %26 ], [ %16, %15 ]
  %20 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %19, i8 noundef zeroext 1) #18, !range !72
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %19, i8 noundef zeroext 2) #18, !range !72
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %19, i8 noundef zeroext 4) #18
  br label %26

26:                                               ; preds = %18, %22, %25
  %27 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %46, label %18, !llvm.loop !110

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 36
  %31 = load i32, ptr %30, align 8, !tbaa !111
  %32 = or i32 %31, 128
  store i32 %32, ptr %30, align 8, !tbaa !111
  %33 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %9, i8 noundef zeroext 2, ptr noundef null) #18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %29, %43
  %36 = phi ptr [ %44, %43 ], [ %33, %29 ]
  %37 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %36, i8 noundef zeroext 1) #18, !range !72
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %36, i8 noundef zeroext 2) #18, !range !72
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %36, i8 noundef zeroext 4) #18
  br label %43

43:                                               ; preds = %35, %39, %42
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %35, !llvm.loop !113

46:                                               ; preds = %26, %43, %15, %29
  call void @ED_uvedit_live_unwrap(ptr noundef %4, ptr noundef %5) #17
  call void @EDBM_update_generic(ptr noundef nonnull %8, i8 noundef zeroext 1, i8 noundef zeroext 0) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_mark_sharp(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.61, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.62, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.63, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_mark_sharp_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.59, i32 noundef 0, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.5) #17
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #17
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.41, i32 noundef 0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.64) #17
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268435456) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_mark_sharp_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !114 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.59) #17
  %12 = load ptr, ptr %9, align 8, !tbaa !49
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.41) #17
  %14 = and i32 %11, 255
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 36
  %18 = load i32, ptr %17, align 8, !tbaa !111
  %19 = or i32 %18, 256
  store i32 %19, ptr %17, align 8, !tbaa !111
  br label %20

20:                                               ; preds = %16, %2
  %21 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %8, i8 noundef zeroext 2, ptr noundef null) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %20
  %24 = and i32 %13, 255
  %25 = icmp eq i32 %24, 0
  br label %26

26:                                               ; preds = %23, %42
  %27 = phi ptr [ %21, %23 ], [ %43, %42 ]
  br i1 %25, label %38, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.BMEdge, ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !115
  %31 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %30, i8 noundef zeroext 1) #18, !range !72
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.BMEdge, ptr %27, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !118
  %36 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %35, i8 noundef zeroext 1) #18, !range !72
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %41

38:                                               ; preds = %26
  %39 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %27, i8 noundef zeroext 1) #18, !range !72
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38, %28, %33
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %27, i8 noundef zeroext 8, i32 noundef %14) #18
  br label %42

42:                                               ; preds = %38, %33, %41
  %43 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %26, !llvm.loop !119

45:                                               ; preds = %42, %20
  call void @EDBM_update_generic(ptr noundef nonnull %7, i8 noundef zeroext 1, i8 noundef zeroext 0) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_vert_connect(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.65, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.66, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.67, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_vert_connect_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @edbm_vert_connect_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !120 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #19
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !86
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.417, i32 noundef 1, i32 noundef 2, i32 noundef 2) #17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %30, label %16

13:                                               ; preds = %2
  %14 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.418, i32 noundef 1, i32 noundef 2, i32 noundef 1) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %13, %10
  call void @BMO_op_exec(ptr noundef nonnull %6, ptr noundef nonnull %3) #17
  %17 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  %18 = call ptr @BMO_slot_get(ptr noundef nonnull %17, ptr noundef nonnull @.str.416) #17
  %19 = getelementptr inbounds %struct.BMOpSlot, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !121
  %21 = icmp ne i32 %20, 0
  %22 = and i1 %9, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %24, ptr noundef nonnull %17, ptr noundef nonnull @.str.416, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %25

25:                                               ; preds = %23, %16
  %26 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #17
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %29 = select i1 %21, i32 4, i32 2
  br label %30

30:                                               ; preds = %25, %13, %10, %28
  %31 = phi i32 [ %29, %28 ], [ 2, %10 ], [ 2, %13 ], [ 2, %25 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #19
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_vert_connect_nonplanar(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.68, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.69, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.70, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_vert_connect_nonplaner_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_float_rotation(ptr noundef %8, ptr noundef nonnull @.str.71, i32 noundef 0, ptr noundef null, float noundef 0.000000e+00, float noundef 0x400921FB60000000, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, float noundef 0.000000e+00, float noundef 0x400921FB60000000) #17
  tail call void @RNA_def_property_float_default(ptr noundef %9, float noundef 0x3FB6571840000000) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_vert_connect_nonplaner_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !123 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #17
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call float @RNA_float_get(ptr noundef %6, ptr noundef nonnull @.str.71) #17
  %8 = fpext float %7 to double
  %9 = tail call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.415, i8 noundef zeroext 1, ptr noundef nonnull @.str.419, i32 noundef 1, double noundef %8) #17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %12

12:                                               ; preds = %2, %11
  %13 = phi i32 [ 4, %11 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: optsize
declare ptr @RNA_def_float_rotation(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_float_default(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_edge_split(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.74, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.75, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.76, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_edge_split_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_edge_split_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !124 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #17
  %5 = tail call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.416, i8 noundef zeroext 0, ptr noundef nonnull @.str.420, i32 noundef 1) #17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMEditMesh, ptr %4, i64 0, i32 12
  %9 = load i16, ptr %8, align 4, !tbaa !65
  %10 = icmp eq i16 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @EDBM_select_flush(ptr noundef nonnull %4) #17
  br label %12

12:                                               ; preds = %11, %7
  tail call void @EDBM_update_generic(ptr noundef nonnull %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %13

13:                                               ; preds = %2, %12
  %14 = phi i32 [ 4, %12 ], [ 2, %2 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_duplicate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.77, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.78, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.79, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_duplicate_invoke, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_duplicate_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.80, i32 noundef 1, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 2147483647) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_duplicate_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !125 {
  tail call void @WM_cursor_wait(i8 noundef zeroext 1) #17
  %4 = tail call i32 @edbm_duplicate_exec(ptr noundef %0, ptr noundef %1) #18, !range !126
  tail call void @WM_cursor_wait(i8 noundef zeroext 0) #17
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_duplicate_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !127 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #17
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #19
  %8 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.421, i32 noundef 1, i32 noundef 1) #17
  call void @BMO_op_exec(ptr noundef %7, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %9 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !128
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %9) #18
  call void @EDBM_flag_disable_all(ptr noundef nonnull %6, i8 noundef zeroext 1) #17
  %10 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %7, ptr noundef nonnull %10, ptr noundef nonnull @.str.422, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !128
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  %11 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  call void @EDBM_update_generic(ptr noundef nonnull %6, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %14

14:                                               ; preds = %2, %13
  %15 = phi i32 [ 4, %13 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #19
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_flip_normals(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.82, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.83, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.84, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_flip_normals_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_flip_normals_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !130 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #17
  %5 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.423, i32 noundef 1) #17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 0) #17
  br label %8

8:                                                ; preds = %2, %7
  %9 = phi i32 [ 4, %7 ], [ 2, %2 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_edge_rotate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.85, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.86, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.87, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_edge_rotate_selected_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_edge_rotate_selected_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !131 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %7) #17
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.88) #17
  %12 = load ptr, ptr %8, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !89
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  tail call void @BKE_report(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.424) #17
  br label %60

19:                                               ; preds = %2
  %20 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef nonnull %12, i8 noundef zeroext 2, ptr noundef null) #18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %46, label %22

22:                                               ; preds = %19, %40
  %23 = phi i32 [ %41, %40 ], [ 0, %19 ]
  %24 = phi ptr [ %42, %40 ], [ %20, %19 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %24, i8 noundef zeroext 16) #18
  %25 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %24, i8 noundef zeroext 1) #18, !range !72
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %28 = call zeroext i8 @BM_edge_face_pair(ptr noundef nonnull %24, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %5, align 8, !tbaa !129
  %32 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %31, i8 noundef zeroext 1) #18, !range !72
  %33 = load ptr, ptr %6, align 8, !tbaa !129
  %34 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %33, i8 noundef zeroext 1) #18, !range !72
  %35 = icmp eq i8 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %24, i8 noundef zeroext 16) #18
  %37 = add nsw i32 %23, 1
  br label %38

38:                                               ; preds = %30, %36, %27
  %39 = phi i32 [ %37, %36 ], [ %23, %30 ], [ %23, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %40

40:                                               ; preds = %22, %38
  %41 = phi i32 [ %39, %38 ], [ %23, %22 ]
  %42 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #18
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %22, !llvm.loop !132

44:                                               ; preds = %40
  %45 = icmp eq i32 %41, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %19, %44
  %47 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !99
  call void @BKE_report(ptr noundef %48, i32 noundef 32, ptr noundef nonnull @.str.425) #17
  br label %60

49:                                               ; preds = %44
  %50 = and i32 %11, 255
  %51 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.426, i32 noundef 16, i32 noundef %50) #17
  %52 = load ptr, ptr %8, align 8, !tbaa !51
  call void @BMO_slot_buffer_hflag_disable(ptr noundef %52, ptr noundef nonnull %3, ptr noundef nonnull @.str.427, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %53 = load ptr, ptr %8, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %53, ptr noundef nonnull %3) #17
  %54 = load ptr, ptr %8, align 8, !tbaa !51
  %55 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_disable(ptr noundef %54, ptr noundef nonnull %55, ptr noundef nonnull @.str.416, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 1) #17
  %56 = load ptr, ptr %8, align 8, !tbaa !51
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %56, ptr noundef nonnull %55, ptr noundef nonnull @.str.416, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  call void @EDBM_selectmode_flush(ptr noundef nonnull %8) #17
  %57 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #17
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  call void @EDBM_update_generic(ptr noundef nonnull %8, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %60

60:                                               ; preds = %49, %59, %46, %16
  %61 = phi i32 [ 2, %16 ], [ 2, %46 ], [ 4, %59 ], [ 2, %49 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #19
  ret i32 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_hide(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.90, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.91, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.92, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_hide_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.93, i32 noundef 0, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_hide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !133 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #17
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.93) #17
  %8 = trunc i32 %7 to i8
  tail call void @EDBM_mesh_hide(ptr noundef %4, i8 noundef zeroext %8) #17
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 0) #17
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_reveal(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.96, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.97, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.98, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_reveal_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_reveal_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !134 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #17
  tail call void @EDBM_mesh_reveal(ptr noundef %4) #17
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 0) #17
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_normals_make_consistent(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.99, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.100, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.101, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_normals_make_consistent_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.102, i32 noundef 0, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_normals_make_consistent_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !135 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #17
  %5 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.428, i32 noundef 1) #17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.102) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef nonnull %1, ptr noundef nonnull @.str.423, i32 noundef 1) #17
  br label %14

14:                                               ; preds = %12, %7
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 0) #17
  br label %15

15:                                               ; preds = %2, %14
  %16 = phi i32 [ 4, %14 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_vertices_smooth(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.104, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.105, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.106, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_do_smooth_vertex_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.107, float noundef 5.000000e-01, float noundef -1.000000e+01, float noundef 1.000000e+01, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, float noundef 0.000000e+00, float noundef 1.000000e+00) #17
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.110, i32 noundef 1, i32 noundef 1, i32 noundef 1000, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, i32 noundef 1, i32 noundef 100) #17
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.113, i32 noundef 1, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115) #17
  %14 = load ptr, ptr %7, align 8, !tbaa !47
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.116, i32 noundef 1, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118) #17
  %16 = load ptr, ptr %7, align 8, !tbaa !47
  %17 = tail call ptr @RNA_def_boolean(ptr noundef %16, ptr noundef nonnull @.str.119, i32 noundef 1, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_do_smooth_vertex_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !136 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #17
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call float @RNA_float_get(ptr noundef %8, ptr noundef nonnull @.str.107) #17
  %10 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 46
  %11 = load i8, ptr %10, align 1, !tbaa !137
  %12 = load ptr, ptr %7, align 8, !tbaa !49
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.113) #17
  %14 = load ptr, ptr %7, align 8, !tbaa !49
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.116) #17
  %16 = load ptr, ptr %7, align 8, !tbaa !49
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.119) #17
  %18 = load ptr, ptr %4, align 8, !tbaa !106
  %19 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 46
  %20 = load i8, ptr %19, align 1, !tbaa !137
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = lshr i8 %11, 4
  %25 = and i8 %24, 1
  tail call void @EDBM_verts_mirror_cache_begin(ptr noundef %6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext %25) #17
  br label %26

26:                                               ; preds = %23, %2
  %27 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 26
  %28 = load ptr, ptr %27, align 8, !tbaa !129
  %29 = icmp eq ptr %28, null
  br i1 %29, label %74, label %30

30:                                               ; preds = %26, %62
  %31 = phi ptr [ %67, %62 ], [ %28, %26 ]
  %32 = phi i8 [ %66, %62 ], [ 0, %26 ]
  %33 = phi i8 [ %65, %62 ], [ 0, %26 ]
  %34 = phi i8 [ %64, %62 ], [ 0, %26 ]
  %35 = phi float [ %63, %62 ], [ 0.000000e+00, %26 ]
  %36 = getelementptr inbounds %struct.ModifierData, ptr %31, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !138
  %38 = icmp eq i32 %37, 5
  br i1 %38, label %39, label %62

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.ModifierData, ptr %31, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !140
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.MirrorModifierData, ptr %31, i64 0, i32 2
  %46 = load i16, ptr %45, align 2, !tbaa !141
  %47 = zext i16 %46 to i32
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %44
  %51 = and i32 %47, 8
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i8 %32, i8 1
  %54 = and i16 %46, 16
  %55 = icmp eq i16 %54, 0
  %56 = select i1 %55, i8 %33, i8 1
  %57 = and i16 %46, 32
  %58 = icmp eq i16 %57, 0
  %59 = select i1 %58, i8 %34, i8 1
  %60 = getelementptr inbounds %struct.MirrorModifierData, ptr %31, i64 0, i32 3
  %61 = load float, ptr %60, align 4, !tbaa !143
  br label %62

62:                                               ; preds = %44, %50, %30, %39
  %63 = phi float [ %35, %39 ], [ %35, %30 ], [ %61, %50 ], [ %35, %44 ]
  %64 = phi i8 [ %34, %39 ], [ %34, %30 ], [ %59, %50 ], [ %34, %44 ]
  %65 = phi i8 [ %33, %39 ], [ %33, %30 ], [ %56, %50 ], [ %33, %44 ]
  %66 = phi i8 [ %32, %39 ], [ %32, %30 ], [ %53, %50 ], [ %32, %44 ]
  %67 = load ptr, ptr %31, align 8, !tbaa !129
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %30, !llvm.loop !144

69:                                               ; preds = %62
  %70 = zext nneg i8 %66 to i32
  %71 = zext nneg i8 %65 to i32
  %72 = zext nneg i8 %64 to i32
  %73 = fpext float %63 to double
  br label %74

74:                                               ; preds = %69, %26
  %75 = phi double [ 0.000000e+00, %26 ], [ %73, %69 ]
  %76 = phi i32 [ 0, %26 ], [ %72, %69 ]
  %77 = phi i32 [ 0, %26 ], [ %71, %69 ]
  %78 = phi i32 [ 0, %26 ], [ %70, %69 ]
  %79 = load ptr, ptr %7, align 8, !tbaa !49
  %80 = tail call i32 @RNA_int_get(ptr noundef %79, ptr noundef nonnull @.str.110) #17
  %81 = tail call i32 @llvm.umax.i32(i32 %80, i32 1)
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %74
  %84 = fpext float %9 to double
  %85 = and i32 %13, 255
  %86 = and i32 %15, 255
  %87 = and i32 %17, 255
  br label %91

88:                                               ; preds = %91
  %89 = add nuw nsw i32 %92, 1
  %90 = icmp eq i32 %89, %81
  br i1 %90, label %95, label %91, !llvm.loop !145

91:                                               ; preds = %83, %88
  %92 = phi i32 [ 0, %83 ], [ %89, %88 ]
  %93 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %6, ptr noundef %1, ptr noundef nonnull @.str.429, i32 noundef 1, double noundef %84, i32 noundef %78, i32 noundef %77, i32 noundef %76, double noundef %75, i32 noundef %85, i32 noundef %86, i32 noundef %87) #17
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %103, label %88

95:                                               ; preds = %88, %74
  %96 = load ptr, ptr %4, align 8, !tbaa !106
  %97 = getelementptr inbounds %struct.Mesh, ptr %96, i64 0, i32 46
  %98 = load i8, ptr %97, align 1, !tbaa !137
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  tail call void @EDBM_verts_mirror_apply(ptr noundef %6, i32 noundef 1, i32 noundef 0) #17
  tail call void @EDBM_verts_mirror_cache_end(ptr noundef %6) #17
  br label %102

102:                                              ; preds = %101, %95
  tail call void @EDBM_update_generic(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 0) #17
  br label %103

103:                                              ; preds = %91, %102
  %104 = phi i32 [ 4, %102 ], [ 2, %91 ]
  ret i32 %104
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_vertices_smooth_laplacian(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.122, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.123, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.124, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_do_smooth_laplacian_vertex_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.110, i32 noundef 1, i32 noundef 1, i32 noundef 200, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 200) #17
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.126, float noundef 0x3F0A36E2E0000000, float noundef 0x3E7AD7F2A0000000, float noundef 1.000000e+03, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.5, float noundef 0x3E7AD7F2A0000000, float noundef 1.000000e+03) #17
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.128, float noundef 0x3F0A36E2E0000000, float noundef 0x3E7AD7F2A0000000, float noundef 1.000000e+03, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.5, float noundef 0x3E7AD7F2A0000000, float noundef 1.000000e+03) #17
  %14 = load ptr, ptr %7, align 8, !tbaa !47
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.130, i32 noundef 1, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132) #17
  %16 = load ptr, ptr %7, align 8, !tbaa !47
  %17 = tail call ptr @RNA_def_boolean(ptr noundef %16, ptr noundef nonnull @.str.133, i32 noundef 1, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135) #17
  %18 = load ptr, ptr %7, align 8, !tbaa !47
  %19 = tail call ptr @RNA_def_boolean(ptr noundef %18, ptr noundef nonnull @.str.136, i32 noundef 1, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138) #17
  %20 = load ptr, ptr %7, align 8, !tbaa !47
  %21 = tail call ptr @RNA_def_boolean(ptr noundef %20, ptr noundef nonnull @.str.139, i32 noundef 1, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.141) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_do_smooth_laplacian_vertex_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !146 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 46
  %9 = load i8, ptr %8, align 1, !tbaa !137
  %10 = lshr i8 %9, 4
  %11 = and i8 %10, 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %12 = load ptr, ptr %5, align 8, !tbaa !51
  %13 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %12, i8 noundef zeroext 3, ptr noundef null) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %2, %26
  %16 = phi ptr [ %27, %26 ], [ %13, %2 ]
  %17 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %16, i8 noundef zeroext 1) #18, !range !72
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.BMFace, ptr %16, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !147
  %22 = icmp sgt i32 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  call void @BKE_report(ptr noundef %25, i32 noundef 16, ptr noundef nonnull @.str.430) #17
  br label %76

26:                                               ; preds = %15, %19
  %27 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !llvm.loop !149

29:                                               ; preds = %26, %2
  %30 = load ptr, ptr %6, align 8, !tbaa !106
  %31 = getelementptr inbounds %struct.Mesh, ptr %30, i64 0, i32 46
  %32 = load i8, ptr %31, align 1, !tbaa !137
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  call void @EDBM_verts_mirror_cache_begin(ptr noundef nonnull %5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext %11) #17
  br label %36

36:                                               ; preds = %35, %29
  %37 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !49
  %39 = call i32 @RNA_int_get(ptr noundef %38, ptr noundef nonnull @.str.110) #17
  %40 = load ptr, ptr %37, align 8, !tbaa !49
  %41 = call float @RNA_float_get(ptr noundef %40, ptr noundef nonnull @.str.126) #17
  %42 = load ptr, ptr %37, align 8, !tbaa !49
  %43 = call float @RNA_float_get(ptr noundef %42, ptr noundef nonnull @.str.128) #17
  %44 = load ptr, ptr %37, align 8, !tbaa !49
  %45 = call i32 @RNA_boolean_get(ptr noundef %44, ptr noundef nonnull @.str.130) #17
  %46 = load ptr, ptr %37, align 8, !tbaa !49
  %47 = call i32 @RNA_boolean_get(ptr noundef %46, ptr noundef nonnull @.str.133) #17
  %48 = load ptr, ptr %37, align 8, !tbaa !49
  %49 = call i32 @RNA_boolean_get(ptr noundef %48, ptr noundef nonnull @.str.136) #17
  %50 = load ptr, ptr %37, align 8, !tbaa !49
  %51 = call i32 @RNA_boolean_get(ptr noundef %50, ptr noundef nonnull @.str.139) #17
  %52 = call i32 @llvm.umax.i32(i32 %39, i32 1)
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %36
  %55 = fpext float %41 to double
  %56 = fpext float %43 to double
  %57 = and i32 %45, 255
  %58 = and i32 %47, 255
  %59 = and i32 %49, 255
  %60 = and i32 %51, 255
  br label %64

61:                                               ; preds = %64
  %62 = add nuw nsw i32 %65, 1
  %63 = icmp eq i32 %62, %52
  br i1 %63, label %68, label %64, !llvm.loop !150

64:                                               ; preds = %54, %61
  %65 = phi i32 [ 0, %54 ], [ %62, %61 ]
  %66 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.431, i32 noundef 1, double noundef %55, double noundef %56, i32 noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %60) #17
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %76, label %61

68:                                               ; preds = %61, %36
  %69 = load ptr, ptr %6, align 8, !tbaa !106
  %70 = getelementptr inbounds %struct.Mesh, ptr %69, i64 0, i32 46
  %71 = load i8, ptr %70, align 1, !tbaa !137
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  call void @EDBM_verts_mirror_apply(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #17
  call void @EDBM_verts_mirror_cache_end(ptr noundef nonnull %5) #17
  br label %75

75:                                               ; preds = %74, %68
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 0) #17
  br label %76

76:                                               ; preds = %64, %75, %23
  %77 = phi i32 [ 2, %23 ], [ 4, %75 ], [ 2, %64 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret i32 %77
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_faces_shade_smooth(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.142, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.143, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.144, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_faces_shade_smooth_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_faces_shade_smooth_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !151 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #17
  tail call fastcc void @mesh_set_smooth_faces(ptr noundef %4, i16 noundef signext 1) #18
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_faces_shade_flat(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.145, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.146, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.147, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_faces_shade_flat_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_faces_shade_flat_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !152 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #17
  tail call fastcc void @mesh_set_smooth_faces(ptr noundef %4, i16 noundef signext 0) #18
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_uvs_rotate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.148, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.149, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.150, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_rotate_uvs_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_rotate_uvs_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !153 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #19
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.88) #17
  %9 = and i32 %8, 255
  %10 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.432, i32 noundef 1, i32 noundef %9) #17
  %11 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %11, ptr noundef nonnull %3) #17
  %12 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  br label %15

15:                                               ; preds = %2, %14
  %16 = phi i32 [ 4, %14 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #19
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_uvs_reverse(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.151, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.152, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.153, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_reverse_uvs_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_reverse_uvs_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !154 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #19
  %6 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.433, i32 noundef 1) #17
  %7 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %7, ptr noundef nonnull %3) #17
  %8 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  br label %11

11:                                               ; preds = %2, %10
  %12 = phi i32 [ 4, %10 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #19
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_colors_rotate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.154, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.155, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.156, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_rotate_colors_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_rotate_colors_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !155 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #19
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.88) #17
  %9 = and i32 %8, 255
  %10 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.434, i32 noundef 1, i32 noundef %9) #17
  %11 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %11, ptr noundef nonnull %3) #17
  %12 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  br label %15

15:                                               ; preds = %2, %14
  %16 = phi i32 [ 4, %14 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #19
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_colors_reverse(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.157, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.158, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.159, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_reverse_colors_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_reverse_colors_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !156 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #19
  %6 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.435, i32 noundef 1) #17
  %7 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %7, ptr noundef nonnull %3) #17
  %8 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  br label %11

11:                                               ; preds = %2, %10
  %12 = phi i32 [ 4, %10 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #19
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_merge(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.160, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.161, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.162, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_merge_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.35, ptr noundef nonnull @merge_type_items, i32 noundef 3, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.163) #17
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !83
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @merge_type_itemf) #17
  %12 = load ptr, ptr %8, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.164, i32 noundef 0, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.166) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_merge_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !157 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #17
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #17
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.35) #17
  %10 = load ptr, ptr %7, align 8, !tbaa !49
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.164) #17
  %12 = trunc i32 %11 to i8
  switch i32 %9, label %28 [
    i32 3, label %13
    i32 4, label %15
    i32 1, label %17
    i32 6, label %19
    i32 5, label %21
  ]

13:                                               ; preds = %2
  %14 = tail call fastcc zeroext i8 @merge_target(ptr noundef %6, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext %12, ptr noundef nonnull %1) #18, !range !93
  br label %24

15:                                               ; preds = %2
  %16 = tail call fastcc zeroext i8 @merge_target(ptr noundef %6, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext %12, ptr noundef nonnull %1) #18, !range !93
  br label %24

17:                                               ; preds = %2
  %18 = tail call fastcc zeroext i8 @merge_firstlast(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext %12, ptr noundef nonnull %1) #18, !range !93
  br label %24

19:                                               ; preds = %2
  %20 = tail call fastcc zeroext i8 @merge_firstlast(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext %12, ptr noundef nonnull %1) #18, !range !93
  br label %24

21:                                               ; preds = %2
  %22 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %6, ptr noundef nonnull %1, ptr noundef nonnull @.str.413, i32 noundef 1) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %27

24:                                               ; preds = %19, %17, %15, %13
  %25 = phi i8 [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ]
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %24
  tail call void @EDBM_update_generic(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %28

28:                                               ; preds = %21, %2, %24, %27
  %29 = phi i32 [ 4, %27 ], [ 2, %24 ], [ 2, %2 ], [ 2, %21 ]
  ret i32 %29
}

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @merge_type_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !158 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !91
  %7 = icmp eq ptr %0, null
  br i1 %7, label %49, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef nonnull %0) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !159
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %49

15:                                               ; preds = %11
  %16 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %9) #17
  %17 = getelementptr inbounds %struct.BMEditMesh, ptr %16, i64 0, i32 12
  %18 = load i16, ptr %17, align 4, !tbaa !65
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %47, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %16, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.BMesh, ptr %22, i64 0, i32 32
  %24 = load ptr, ptr %23, align 8, !tbaa !160
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.BMesh, ptr %22, i64 0, i32 32, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !161
  %28 = icmp eq ptr %27, null
  br i1 %25, label %40, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.BMEditSelection, ptr %24, i64 0, i32 3
  %31 = load i8, ptr %30, align 8, !tbaa !162
  %32 = icmp eq i8 %31, 1
  br i1 %28, label %39, label %33

33:                                               ; preds = %29
  br i1 %32, label %34, label %41

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.BMEditSelection, ptr %27, i64 0, i32 3
  %36 = load i8, ptr %35, align 8, !tbaa !162
  %37 = icmp eq i8 %36, 1
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @merge_type_items, i32 noundef 6) #17
  br label %45

39:                                               ; preds = %29
  br i1 %32, label %45, label %47

40:                                               ; preds = %21
  br i1 %28, label %47, label %41

41:                                               ; preds = %33, %40
  %42 = getelementptr inbounds %struct.BMEditSelection, ptr %27, i64 0, i32 3
  %43 = load i8, ptr %42, align 8, !tbaa !162
  %44 = icmp eq i8 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %39, %34, %38
  %46 = phi i32 [ 1, %38 ], [ 6, %34 ], [ 6, %39 ], [ 1, %41 ]
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @merge_type_items, i32 noundef %46) #17
  br label %47

47:                                               ; preds = %45, %39, %40, %41, %15
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @merge_type_items, i32 noundef 3) #17
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @merge_type_items, i32 noundef 4) #17
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @merge_type_items, i32 noundef 5) #17
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  store i8 1, ptr %3, align 1, !tbaa !164
  %48 = load ptr, ptr %5, align 8, !tbaa !129
  br label %49

49:                                               ; preds = %8, %11, %4, %47
  %50 = phi ptr [ %48, %47 ], [ @merge_type_items, %4 ], [ null, %11 ], [ null, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret ptr %50
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_remove_doubles(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.167, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.168, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.169, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_remove_doubles_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.170, float noundef 0x3F1A36E2E0000000, float noundef 0x3EB0C6F7A0000000, float noundef 5.000000e+01, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.172, float noundef 0x3EE4F8B580000000, float noundef 1.000000e+01) #17
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.173, i32 noundef 0, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.174) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_remove_doubles_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !165 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #19
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.170) #17
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.173) #17
  %11 = load ptr, ptr %5, align 8, !tbaa !51
  %12 = load i32, ptr %11, align 8, !tbaa !166
  %13 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 12
  %14 = load i16, ptr %13, align 4, !tbaa !65
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %15, 2
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i8 8, i8 2
  %21 = select i1 %17, i8 %20, i8 1
  tail call void @BM_mesh_elem_hflag_enable_test(ptr noundef nonnull %11, i8 noundef zeroext %21, i8 noundef zeroext 16, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %22 = and i32 %10, 255
  %23 = icmp eq i32 %22, 0
  %24 = fpext float %8 to double
  br i1 %23, label %30, label %25

25:                                               ; preds = %2
  %26 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull @.str.449, i32 noundef 1, double noundef %24) #17
  %27 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %27, ptr noundef nonnull %3) #17
  %28 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %1, i8 noundef zeroext 1) #17
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %47, label %40

30:                                               ; preds = %2
  %31 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull @.str.450, i32 noundef 1, double noundef %24) #17
  %32 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %32, ptr noundef nonnull %3) #17
  %33 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef nonnull @.str.451, ptr noundef nonnull %3, ptr noundef nonnull @.str.452) #17
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BMO_op_finish(ptr noundef %36, ptr noundef nonnull %3) #17
  br label %47

37:                                               ; preds = %30
  %38 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %1, i8 noundef zeroext 1) #17
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37, %25
  %41 = load ptr, ptr %5, align 8, !tbaa !51
  %42 = load i32, ptr %41, align 8, !tbaa !166
  %43 = sub nsw i32 %12, %42
  %44 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !99
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %45, i32 noundef 2, ptr noundef nonnull @.str.453, i32 noundef %43) #17
  %46 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BM_mesh_elem_hflag_enable_test(ptr noundef %46, i8 noundef zeroext %21, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 16) #17
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #17
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %47

47:                                               ; preds = %37, %25, %40, %35
  %48 = phi i32 [ 4, %40 ], [ 2, %35 ], [ 2, %25 ], [ 2, %37 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #19
  ret i32 %48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_shape_propagate_to_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.175, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.176, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.177, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_shape_propagate_to_all_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_shape_propagate_to_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !167 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !168
  tail call fastcc void @shape_propagate(ptr noundef %7, ptr noundef %1) #18
  tail call void @EDBM_update_generic(ptr noundef %7, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_blend_from_shape(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.178, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.179, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.180, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_blend_from_shape_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 10
  store ptr @edbm_blend_from_shape_ui, ptr %5, align 8, !tbaa !169
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.181, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.183) #17
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @shape_itemf) #17
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !47
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.184, float noundef 1.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, float noundef -2.000000e+00, float noundef 2.000000e+00) #17
  %13 = load ptr, ptr %8, align 8, !tbaa !47
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.187, i32 noundef 1, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.189) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_blend_from_shape_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !170 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [3 x float], align 4
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !171
  %10 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = tail call float @RNA_float_get(ptr noundef %13, ptr noundef nonnull @.str.184) #17
  %15 = load ptr, ptr %12, align 8, !tbaa !49
  %16 = tail call i32 @RNA_enum_get(ptr noundef %15, ptr noundef nonnull @.str.181) #17
  %17 = load ptr, ptr %12, align 8, !tbaa !49
  %18 = tail call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.187) #17
  %19 = load ptr, ptr %11, align 8, !tbaa !51
  %20 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 24
  %21 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %20, i32 noundef 28) #17
  %22 = icmp ne i32 %21, 0
  %23 = icmp sgt i32 %16, -1
  %24 = select i1 %22, i1 %23, i1 false
  %25 = icmp slt i32 %16, %21
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %70

27:                                               ; preds = %2
  %28 = icmp eq ptr %9, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.Key, ptr %9, i64 0, i32 6
  %31 = tail call ptr @BLI_findlink(ptr noundef nonnull %30, i32 noundef %16) #17
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi ptr [ %31, %29 ], [ null, %27 ]
  %34 = load ptr, ptr %11, align 8, !tbaa !51
  %35 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %34, i8 noundef zeroext 1, ptr noundef null) #18
  %36 = icmp eq ptr %35, null
  br i1 %36, label %69, label %37

37:                                               ; preds = %32
  %38 = and i32 %18, 255
  %39 = icmp eq i32 %38, 0
  %40 = icmp eq ptr %33, null
  %41 = getelementptr inbounds %struct.KeyBlock, ptr %33, i64 0, i32 6
  br label %42

42:                                               ; preds = %37, %66
  %43 = phi ptr [ %35, %37 ], [ %67, %66 ]
  %44 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %43, i8 noundef zeroext 1) #18, !range !72
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %42
  %47 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %43, i8 noundef zeroext 2) #18, !range !72
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load ptr, ptr %11, align 8, !tbaa !51
  %51 = getelementptr inbounds %struct.BMesh, ptr %50, i64 0, i32 24
  %52 = load ptr, ptr %43, align 8, !tbaa !172
  %53 = call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %51, ptr noundef %52, i32 noundef 28, i32 noundef %16) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %53) #18
  br i1 %39, label %64, label %54

54:                                               ; preds = %49
  br i1 %40, label %62, label %55

55:                                               ; preds = %54
  %56 = load ptr, ptr %11, align 8, !tbaa !51
  %57 = getelementptr inbounds %struct.BMesh, ptr %56, i64 0, i32 24
  %58 = load ptr, ptr %43, align 8, !tbaa !172
  %59 = load i16, ptr %41, align 4, !tbaa !173
  %60 = sext i16 %59 to i32
  %61 = call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %57, ptr noundef %58, i32 noundef 28, i32 noundef %60) #17
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %61) #18
  br label %62

62:                                               ; preds = %55, %54
  %63 = getelementptr inbounds %struct.BMVert, ptr %43, i64 0, i32 2
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %63, ptr noundef nonnull %4, float noundef %14) #18
  br label %66

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.BMVert, ptr %43, i64 0, i32 2
  call void @interp_v3_v3v3(ptr noundef nonnull %65, ptr noundef nonnull %65, ptr noundef nonnull %4, float noundef %14) #17
  br label %66

66:                                               ; preds = %62, %64, %42, %46
  %67 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %42, !llvm.loop !175

69:                                               ; preds = %66, %32
  call void @EDBM_update_generic(ptr noundef nonnull %11, i8 noundef zeroext 1, i8 noundef zeroext 0) #17
  br label %70

70:                                               ; preds = %2, %69
  %71 = phi i32 [ 4, %69 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret i32 %71
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @edbm_blend_from_shape_ui(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !176 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !178
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !179
  call void @RNA_pointer_create(ptr noundef null, ptr noundef %13, ptr noundef %15, ptr noundef nonnull %3) #17
  %16 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !171
  call void @RNA_id_pointer_create(ptr noundef %17, ptr noundef nonnull %4) #17
  call void @uiItemPointerR(ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull @.str.181, ptr noundef nonnull %4, ptr noundef nonnull @.str.455, ptr noundef nonnull @.str.5, i32 noundef 176) #17
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull @.str.184, i32 noundef 0, ptr noundef null, i32 noundef 0) #17
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull @.str.187, i32 noundef 0, ptr noundef null, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @shape_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !180 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.EnumPropertyItem, align 8
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !91
  %9 = icmp eq ptr %8, null
  br i1 %9, label %50, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !159
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %50

14:                                               ; preds = %10
  %15 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %8) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %50, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %15, align 8, !tbaa !51
  %19 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 24
  %20 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %19, i32 noundef 28) #17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %50, label %22

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) @__const.shape_itemf.tmp, i64 40, i1 false)
  %23 = load ptr, ptr %15, align 8, !tbaa !51
  %24 = getelementptr inbounds %struct.BMesh, ptr %23, i64 0, i32 24, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !181
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.EnumPropertyItem, ptr %7, i64 0, i32 1
  %29 = getelementptr inbounds %struct.EnumPropertyItem, ptr %7, i64 0, i32 3
  br label %30

30:                                               ; preds = %27, %42
  %31 = phi ptr [ %23, %27 ], [ %43, %42 ]
  %32 = phi i64 [ 0, %27 ], [ %44, %42 ]
  %33 = getelementptr inbounds %struct.BMesh, ptr %31, i64 0, i32 24
  %34 = load ptr, ptr %33, align 8, !tbaa !182
  %35 = getelementptr inbounds %struct.CustomDataLayer, ptr %34, i64 %32
  %36 = load i32, ptr %35, align 8, !tbaa !183
  %37 = icmp eq i32 %36, 28
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, ptr %6, align 4, !tbaa !91
  store i32 %39, ptr %7, align 8, !tbaa !185
  %40 = getelementptr inbounds %struct.CustomDataLayer, ptr %34, i64 %32, i32 8
  store ptr %40, ptr %28, align 8, !tbaa !187
  store ptr %40, ptr %29, align 8, !tbaa !188
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  %41 = load ptr, ptr %15, align 8, !tbaa !51
  br label %42

42:                                               ; preds = %30, %38
  %43 = phi ptr [ %31, %30 ], [ %41, %38 ]
  %44 = add nuw nsw i64 %32, 1
  %45 = getelementptr inbounds %struct.BMesh, ptr %43, i64 0, i32 24, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !181
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %30, label %49, !llvm.loop !189

49:                                               ; preds = %42, %22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #19
  br label %50

50:                                               ; preds = %49, %17, %14, %10, %4
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  store i8 1, ptr %3, align 1, !tbaa !164
  %51 = load ptr, ptr %5, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret ptr %51
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_solidify(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.190, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.191, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.192, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_solidify_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.193, float noundef 0x3F847AE140000000, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.5, float noundef -1.000000e+01, float noundef 1.000000e+01) #17
  tail call void @RNA_def_property_ui_range(ptr noundef %9, double noundef -1.000000e+01, double noundef 1.000000e+01, double noundef 1.000000e-01, i32 noundef 4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_solidify_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !190 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !168
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #19
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = tail call float @RNA_float_get(ptr noundef %11, ptr noundef nonnull @.str.193) #17
  %13 = fpext float %12 to double
  %14 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.456, i32 noundef 1, double noundef %13) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  call void @BMO_slot_buffer_hflag_disable(ptr noundef %9, ptr noundef nonnull %3, ptr noundef nonnull @.str.457, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  call void @BMO_op_exec(ptr noundef %9, ptr noundef nonnull %3) #17
  %17 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %9, ptr noundef nonnull %17, ptr noundef nonnull @.str.422, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %18 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %1, i8 noundef zeroext 1) #17
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  call void @EDBM_update_generic(ptr noundef nonnull %8, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %21

21:                                               ; preds = %16, %2, %20
  %22 = phi i32 [ 4, %20 ], [ 2, %2 ], [ 2, %16 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #19
  ret i32 %22
}

; Function Attrs: optsize
declare void @RNA_def_property_ui_range(ptr noundef, double noundef, double noundef, double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_knife_cut(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.194, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.195, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.196, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lines_invoke, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lines_modal, ptr %5, align 8, !tbaa !191
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_knife_cut_exec, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @EDBM_view3d_poll, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.35, ptr noundef nonnull @knife_items, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.5) #17
  %12 = load ptr, ptr %9, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_property(ptr noundef %12, ptr noundef nonnull @.str.197, i32 noundef 6, i32 noundef 0) #17
  tail call void @RNA_def_property_struct_runtime(ptr noundef %13, ptr noundef nonnull @RNA_OperatorMousePath) #17
  %14 = load ptr, ptr %9, align 8, !tbaa !47
  %15 = tail call ptr @RNA_def_int(ptr noundef %14, ptr noundef nonnull @.str.198, i32 noundef 9, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 2147483647) #17
  ret void
}

; Function Attrs: optsize
declare i32 @WM_gesture_lines_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @WM_gesture_lines_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_knife_cut_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !192 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMOperator, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %9 = tail call ptr @BKE_editmesh_from_object(ptr noundef %8) #17
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = tail call i32 @RNA_int_get(ptr noundef %13, ptr noundef nonnull @.str.35) #17
  %15 = icmp eq ptr %8, null
  %16 = icmp eq ptr %11, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %126, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 30
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  %21 = icmp eq ptr %20, null
  br i1 %21, label %126, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !86
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !99
  tail call void @BKE_report(ptr noundef %28, i32 noundef 32, ptr noundef nonnull @.str.458) #17
  br label %126

29:                                               ; preds = %22
  %30 = load ptr, ptr %12, align 8, !tbaa !49
  %31 = tail call i32 @RNA_collection_length(ptr noundef %30, ptr noundef nonnull @.str.197) #17
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !99
  tail call void @BKE_report(ptr noundef %35, i32 noundef 32, ptr noundef nonnull @.str.459) #17
  br label %126

36:                                               ; preds = %29
  %37 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !129
  %38 = zext nneg i32 %31 to i64
  %39 = shl nuw nsw i64 %38, 3
  %40 = tail call ptr %37(i64 noundef %39, ptr noundef nonnull @__func__.edbm_knife_cut_exec) #17
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #19
  %41 = load ptr, ptr %12, align 8, !tbaa !49
  call void @RNA_collection_begin(ptr noundef %41, ptr noundef nonnull @.str.197, ptr noundef nonnull %6) #17
  %42 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !193
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %47 = getelementptr inbounds [2 x float], ptr %40, i64 %38
  br label %48

48:                                               ; preds = %45, %48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %46, i64 24, i1 false), !tbaa.struct !197
  call void @RNA_float_get_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.460, ptr noundef nonnull %47) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  call void @RNA_property_collection_next(ptr noundef nonnull %6) #17
  %49 = load i32, ptr %42, align 8, !tbaa !193
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %48, !llvm.loop !198

51:                                               ; preds = %48, %36
  call void @RNA_property_collection_end(ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #19
  %52 = load ptr, ptr %19, align 8, !tbaa !67
  call void @ED_view3d_init_mats_rv3d(ptr noundef %8, ptr noundef %52) #17
  %53 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !129
  %54 = load i32, ptr %10, align 8, !tbaa !166
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 3
  %57 = call ptr %53(i64 noundef %56, ptr noundef nonnull @__func__.edbm_knife_cut_exec) #17
  %58 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %10, i8 noundef zeroext 1, ptr noundef null) #18
  %59 = icmp eq ptr %58, null
  br i1 %59, label %73, label %60

60:                                               ; preds = %51, %68
  %61 = phi ptr [ %70, %68 ], [ %58, %51 ]
  %62 = phi ptr [ %69, %68 ], [ %57, %51 ]
  %63 = phi i32 [ %71, %68 ], [ 0, %51 ]
  %64 = getelementptr inbounds %struct.BMVert, ptr %61, i64 0, i32 2
  %65 = call i32 @ED_view3d_project_float_object(ptr noundef %11, ptr noundef nonnull %64, ptr noundef %62, i32 noundef 4) #17
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  call fastcc void @copy_v2_fl(ptr noundef %62) #18
  br label %68

68:                                               ; preds = %67, %60
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %61, i32 noundef %63) #18
  %69 = getelementptr inbounds [2 x float], ptr %62, i64 1
  %70 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %71 = add nuw nsw i32 %63, 1
  %72 = icmp eq ptr %70, null
  br i1 %72, label %73, label %60, !llvm.loop !199

73:                                               ; preds = %68, %51
  %74 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 7
  %75 = load i8, ptr %74, align 4, !tbaa !200
  %76 = and i8 %75, -2
  store i8 %76, ptr %74, align 4, !tbaa !200
  %77 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.461) #17
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !129
  call void %80(ptr noundef %40) #17
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !129
  call void %81(ptr noundef %57) #17
  br label %126

82:                                               ; preds = %73
  %83 = call ptr @BMO_slot_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.462) #17
  %84 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %10, i8 noundef zeroext 2, ptr noundef null) #18
  %85 = icmp eq ptr %84, null
  br i1 %85, label %120, label %86

86:                                               ; preds = %82
  %87 = trunc i32 %14 to i8
  %88 = and i32 %14, 65534
  %89 = icmp eq i32 %88, 2
  br label %90

90:                                               ; preds = %86, %115
  %91 = phi ptr [ %84, %86 ], [ %118, %115 ]
  %92 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %91, i8 noundef zeroext 1) #18, !range !72
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %115, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.BMEdge, ptr %91, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !115
  %97 = call fastcc i32 @_bm_elem_index_get(ptr noundef %96) #18
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [2 x float], ptr %57, i64 %98
  %100 = getelementptr inbounds %struct.BMEdge, ptr %91, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !118
  %102 = call fastcc i32 @_bm_elem_index_get(ptr noundef %101) #18
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [2 x float], ptr %57, i64 %103
  %105 = load float, ptr %99, align 4, !tbaa !201
  %106 = fcmp une float %105, 0x47EFFFFFE0000000
  br i1 %106, label %107, label %115

107:                                              ; preds = %94
  %108 = load float, ptr %104, align 4, !tbaa !201
  %109 = fcmp une float %108, 0x47EFFFFFE0000000
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = call fastcc float @bm_edge_seg_isect(ptr noundef nonnull %99, ptr noundef nonnull %104, ptr noundef %40, i32 noundef %31, i8 noundef zeroext %87, ptr noundef nonnull %5) #18
  %112 = fcmp oeq float %111, 0.000000e+00
  %113 = select i1 %112, i1 true, i1 %89
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  call fastcc void @BMO_slot_map_float_insert(ptr noundef nonnull %4, ptr noundef %83, ptr noundef nonnull %91, float noundef %111) #18
  br label %115

115:                                              ; preds = %94, %107, %114, %110, %90
  %116 = getelementptr inbounds %struct.BMEdge, ptr %91, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !202
  call fastcc void @_bmo_elem_flag_set(ptr noundef nonnull %10, ptr noundef %117) #18
  %118 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %90, !llvm.loop !203

120:                                              ; preds = %115, %82
  %121 = load ptr, ptr @MEM_freeN, align 8, !tbaa !129
  call void %121(ptr noundef %57) #17
  %122 = load ptr, ptr @MEM_freeN, align 8, !tbaa !129
  call void %122(ptr noundef %40) #17
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef nonnull %10, ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull @.str.427, i8 noundef zeroext 2, i16 noundef signext 1) #17
  call void @BMO_slot_int_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.463, i32 noundef 1) #17
  call void @BMO_slot_int_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.464, i32 noundef 3) #17
  call void @BMO_slot_bool_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.465, i8 noundef zeroext 0) #17
  call void @BMO_slot_bool_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.466, i8 noundef zeroext 0) #17
  call void @BMO_slot_float_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.467, float noundef 0.000000e+00) #17
  call void @BMO_op_exec(ptr noundef nonnull %10, ptr noundef nonnull %4) #17
  %123 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef %1, i8 noundef zeroext 1) #17
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %120
  call void @EDBM_update_generic(ptr noundef nonnull %9, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %126

126:                                              ; preds = %120, %2, %18, %125, %79, %33, %26
  %127 = phi i32 [ 2, %26 ], [ 2, %33 ], [ 4, %125 ], [ 2, %79 ], [ 2, %18 ], [ 2, %2 ], [ 2, %120 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret i32 %127
}

; Function Attrs: optsize
declare i32 @EDBM_view3d_poll(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_property(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_struct_runtime(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_separate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.200, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.201, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.202, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_separate_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.35, ptr noundef nonnull @prop_separate_types, i32 noundef 0, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.5) #17
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_separate_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !204 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #17
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.35) #17
  %9 = tail call i32 @ED_operator_editmesh(ptr noundef %0) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @CTX_data_active_base(ptr noundef %0) #17
  %13 = getelementptr inbounds %struct.Base, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !205
  %15 = tail call ptr @BKE_editmesh_from_object(ptr noundef %14) #17
  switch i32 %8, label %90 [
    i32 0, label %16
    i32 1, label %31
    i32 2, label %34
  ]

16:                                               ; preds = %11
  %17 = load ptr, ptr %15, align 8, !tbaa !51
  %18 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !86
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !89
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !90
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %25, %21, %16
  %30 = tail call fastcc zeroext i8 @mesh_separate_selected(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %12, ptr noundef nonnull %17) #18, !range !93
  br label %37

31:                                               ; preds = %11
  %32 = load ptr, ptr %15, align 8, !tbaa !51
  %33 = tail call fastcc zeroext i8 @mesh_separate_material(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %12, ptr noundef %32) #18, !range !93
  br label %37

34:                                               ; preds = %11
  %35 = load ptr, ptr %15, align 8, !tbaa !51
  %36 = tail call fastcc zeroext i8 @mesh_separate_loose(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %12, ptr noundef %35) #18, !range !93
  br label %37

37:                                               ; preds = %31, %34, %29
  %38 = phi i8 [ %30, %29 ], [ %33, %31 ], [ %36, %34 ]
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %90, label %40

40:                                               ; preds = %37
  tail call void @EDBM_update_generic(ptr noundef nonnull %15, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %89

41:                                               ; preds = %25
  %42 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !99
  tail call void @BKE_report(ptr noundef %43, i32 noundef 32, ptr noundef nonnull @.str.474) #17
  br label %90

44:                                               ; preds = %2
  %45 = icmp eq i32 %8, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !99
  tail call void @BKE_report(ptr noundef %48, i32 noundef 32, ptr noundef nonnull @.str.475) #17
  br label %90

49:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  %50 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #17
  %51 = load ptr, ptr %3, align 8, !tbaa !129
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  call void @BLI_freelistN(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  br label %90

54:                                               ; preds = %49, %83
  %55 = phi ptr [ %85, %83 ], [ %51, %49 ]
  %56 = phi i32 [ %84, %83 ], [ 0, %49 ]
  %57 = getelementptr inbounds %struct.CollectionPointerLink, ptr %55, i64 0, i32 2, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !207
  %59 = getelementptr inbounds %struct.Base, ptr %58, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !205
  %61 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 3
  %62 = load i16, ptr %61, align 8, !tbaa !159
  %63 = icmp eq i16 %62, 1
  br i1 %63, label %64, label %83

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 19
  %66 = load ptr, ptr %65, align 8, !tbaa !106
  %67 = getelementptr inbounds %struct.ID, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !209
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = call ptr @BM_mesh_create(ptr noundef nonnull @bm_mesh_allocsize_default) #17
  call void @BM_mesh_bm_from_me(ptr noundef %71, ptr noundef nonnull %66, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0) #17
  switch i32 %8, label %80 [
    i32 1, label %72
    i32 2, label %74
  ]

72:                                               ; preds = %70
  %73 = call fastcc zeroext i8 @mesh_separate_material(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %58, ptr noundef %71) #18, !range !93
  br label %76

74:                                               ; preds = %70
  %75 = call fastcc zeroext i8 @mesh_separate_loose(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %58, ptr noundef %71) #18, !range !93
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i8 [ %73, %72 ], [ %75, %74 ]
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  call void @BM_mesh_bm_to_me(ptr noundef %71, ptr noundef nonnull %66, i8 noundef zeroext 0) #17
  call void @DAG_id_tag_update(ptr noundef nonnull %66, i16 noundef signext 2) #17
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef nonnull %66) #17
  br label %80

80:                                               ; preds = %70, %79, %76
  %81 = phi i32 [ 1, %79 ], [ 0, %76 ], [ 0, %70 ]
  call void @BM_mesh_free(ptr noundef %71) #17
  %82 = or i32 %81, %56
  br label %83

83:                                               ; preds = %64, %80, %54
  %84 = phi i32 [ %56, %54 ], [ %82, %80 ], [ %56, %64 ]
  %85 = load ptr, ptr %55, align 8, !tbaa !129
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %54, !llvm.loop !210

87:                                               ; preds = %83
  %88 = icmp eq i32 %84, 0
  call void @BLI_freelistN(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  br i1 %88, label %90, label %89

89:                                               ; preds = %40, %87
  call void @DAG_relations_tag_update(ptr noundef %4) #17
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef null) #17
  br label %90

90:                                               ; preds = %53, %11, %37, %41, %87, %89, %46
  %91 = phi i32 [ 4, %89 ], [ 2, %41 ], [ 2, %46 ], [ 2, %87 ], [ 2, %37 ], [ 2, %11 ], [ 2, %53 ]
  ret i32 %91
}

; Function Attrs: optsize
declare i32 @ED_operator_scene_editable(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_fill(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.203, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.204, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.205, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_fill_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.206, i32 noundef 1, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.208) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_fill_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !211 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.206) #17
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #19
  %9 = and i32 %8, 255
  %10 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.482, i32 noundef 1, i32 noundef %9) #17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %13, ptr noundef nonnull %3) #17
  %14 = load ptr, ptr %5, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %14, ptr noundef nonnull %15, ptr noundef nonnull @.str.422, i8 noundef zeroext 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %16 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %1, i8 noundef zeroext 1) #17
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %19

19:                                               ; preds = %12, %2, %18
  %20 = phi i32 [ 4, %18 ], [ 2, %2 ], [ 2, %12 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #19
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_fill_grid(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.209, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.210, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.211, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_fill_grid_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.212, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.214, i32 noundef 1, i32 noundef 100) #17
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #17
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.215, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.214, i32 noundef -100, i32 noundef 100) #17
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268435456) #17
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.217, i32 noundef 0, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_fill_grid_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !212 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #19
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #17
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = tail call fastcc i32 @edbm_add_edge_face__smooth_get(ptr noundef %7) #18, !range !102
  %9 = load ptr, ptr %6, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !103
  %12 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !92
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.217) #17
  %17 = load ptr, ptr %14, align 8, !tbaa !49
  %18 = tail call ptr @RNA_struct_find_property(ptr noundef %17, ptr noundef nonnull @.str.212) #17
  %19 = load ptr, ptr %14, align 8, !tbaa !49
  %20 = tail call ptr @RNA_struct_find_property(ptr noundef %19, ptr noundef nonnull @.str.215) #17
  %21 = load ptr, ptr %6, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %24 = load ptr, ptr %14, align 8, !tbaa !49
  %25 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %24, ptr noundef %18) #17
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %2
  %28 = load ptr, ptr %14, align 8, !tbaa !49
  %29 = tail call i32 @RNA_property_int_get(ptr noundef %28, ptr noundef %18) #17
  %30 = sdiv i32 %23, 2
  %31 = add nsw i32 %30, -1
  %32 = tail call fastcc i32 @min_ii(i32 noundef %29, i32 noundef %31) #18
  br label %35

33:                                               ; preds = %2
  %34 = sdiv i32 %23, 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi i32 [ %34, %33 ], [ %32, %27 ]
  %37 = phi i8 [ 1, %33 ], [ 0, %27 ]
  store i32 %36, ptr %4, align 4, !tbaa !91
  %38 = load ptr, ptr %14, align 8, !tbaa !49
  %39 = tail call i32 @RNA_property_int_get(ptr noundef %38, ptr noundef %20) #17
  %40 = icmp eq i32 %23, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = tail call fastcc i32 @mod_i(i32 noundef %39, i32 noundef %23) #18, !range !213
  br label %43

43:                                               ; preds = %35, %41
  %44 = phi i32 [ %42, %41 ], [ 0, %35 ]
  %45 = load ptr, ptr %6, align 8, !tbaa !51
  call fastcc void @edbm_fill_grid_prepare(ptr noundef %45, i32 noundef %44, ptr noundef nonnull %4, i8 noundef zeroext %37) #18
  %46 = load ptr, ptr %14, align 8, !tbaa !49
  %47 = load i32, ptr %4, align 4, !tbaa !91
  tail call void @RNA_property_int_set(ptr noundef %46, ptr noundef %18, i32 noundef %47) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  %48 = getelementptr inbounds %struct.BMEditMesh, ptr %6, i64 0, i32 13
  %49 = load i16, ptr %48, align 2, !tbaa !104
  %50 = sext i16 %49 to i32
  %51 = and i32 %16, 255
  %52 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull @.str.483, i32 noundef 16, i32 noundef %50, i32 noundef %8, i32 noundef %51) #17
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %71, label %54

54:                                               ; preds = %43
  %55 = load ptr, ptr %6, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %55, ptr noundef nonnull %3) #17
  %56 = load ptr, ptr %6, align 8, !tbaa !51
  %57 = getelementptr inbounds %struct.BMesh, ptr %56, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !103
  %59 = icmp eq i32 %11, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.BMesh, ptr %56, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !92
  %63 = icmp eq i32 %13, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %1, i8 noundef zeroext 1) #17
  br label %71

66:                                               ; preds = %60, %54
  %67 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef nonnull %56, ptr noundef nonnull %67, ptr noundef nonnull @.str.415, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %68 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %1, i8 noundef zeroext 1) #17
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  call void @EDBM_update_generic(ptr noundef nonnull %6, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %71

71:                                               ; preds = %66, %43, %70, %64
  %72 = phi i32 [ 2, %64 ], [ 4, %70 ], [ 2, %43 ], [ 2, %66 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #19
  ret i32 %72
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_fill_holes(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.219, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.220, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.221, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_fill_holes_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.222, i32 noundef 4, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.224, i32 noundef 0, i32 noundef 100) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_fill_holes_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !214 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #17
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.222) #17
  %8 = tail call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.415, i8 noundef zeroext 1, ptr noundef nonnull @.str.484, i32 noundef 1, i32 noundef %7) #17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %11

11:                                               ; preds = %2, %10
  %12 = phi i32 [ 4, %10 ], [ 2, %2 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_beautify_fill(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.225, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.226, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.227, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_beautify_fill_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_float_rotation(ptr noundef %8, ptr noundef nonnull @.str.71, i32 noundef 0, ptr noundef null, float noundef 0.000000e+00, float noundef 0x400921FB60000000, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, float noundef 0.000000e+00, float noundef 0x400921FB60000000) #17
  tail call void @RNA_def_property_float_default(ptr noundef %9, float noundef 0x400921FB60000000) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_beautify_fill_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !215 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.71) #17
  %9 = fcmp ult float %8, 0x400921FB60000000
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %11 = load ptr, ptr %5, align 8, !tbaa !51
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %11, i8 noundef zeroext 2, ptr noundef null) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %10, %21
  %15 = phi ptr [ %24, %21 ], [ %12, %10 ]
  %16 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %15, i8 noundef zeroext 1) #18, !range !72
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = call float @BM_edge_calc_face_angle_ex(ptr noundef nonnull %15, float noundef 0x400921FB60000000) #17
  %20 = fcmp olt float %19, %8
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i1 [ false, %14 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %15, i8 noundef zeroext 16, i32 noundef %23) #18
  %24 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %14, !llvm.loop !216

26:                                               ; preds = %21, %10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  br label %27

27:                                               ; preds = %2, %26
  %28 = phi i32 [ 16, %26 ], [ 1, %2 ]
  %29 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %5, ptr noundef %1, ptr noundef nonnull @.str.422, i8 noundef zeroext 1, ptr noundef nonnull @.str.485, i32 noundef 1, i32 noundef %28) #17
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  call void @EDBM_update_generic(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %32

32:                                               ; preds = %27, %31
  %33 = phi i32 [ 4, %31 ], [ 2, %27 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_poke(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.237, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.238, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.239, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_poke_face_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.215, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.240, float noundef -1.000000e+00, float noundef 1.000000e+00) #17
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.241, i32 noundef 0, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.243) #17
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.244, ptr noundef nonnull @MESH_OT_poke.poke_center_modes, i32 noundef 0, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.246) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_poke_face_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !217 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #19
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.215) #17
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.241) #17
  %11 = load ptr, ptr %6, align 8, !tbaa !49
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.244) #17
  %13 = fpext float %8 to double
  %14 = and i32 %10, 255
  %15 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.486, i32 noundef 1, double noundef %13, i32 noundef %14, i32 noundef %12) #17
  %16 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %16, ptr noundef nonnull %3) #17
  call void @EDBM_flag_disable_all(ptr noundef nonnull %5, i8 noundef zeroext 1) #17
  %17 = load ptr, ptr %5, align 8, !tbaa !51
  %18 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %17, ptr noundef nonnull %18, ptr noundef nonnull @.str.487, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %19 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %19, ptr noundef nonnull %18, ptr noundef nonnull @.str.415, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %20 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  call void @EDBM_mesh_normals_update(ptr noundef nonnull %5) #17
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %23

23:                                               ; preds = %2, %22
  %24 = phi i32 [ 4, %22 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #19
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_quads_convert_to_tris(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.247, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.248, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.249, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_quads_convert_to_tris_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.250, ptr noundef nonnull @modifier_triangulate_quad_method_items, i32 noundef 0, ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.252) #17
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.253, ptr noundef nonnull @modifier_triangulate_ngon_method_items, i32 noundef 0, ptr noundef nonnull @.str.254, ptr noundef nonnull @.str.255) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_quads_convert_to_tris_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !218 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #19
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.250) #17
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.253) #17
  %11 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.488, i32 noundef 1, i32 noundef %8, i32 noundef %10) #17
  %12 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %12, ptr noundef nonnull %3) #17
  %13 = load ptr, ptr %5, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %13, ptr noundef nonnull %14, ptr noundef nonnull @.str.415, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #17
  %15 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #17
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %18

18:                                               ; preds = %2, %17
  %19 = phi i32 [ 4, %17 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #19
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_tris_convert_to_quads(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.256, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.257, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.258, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_tris_convert_to_quads_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  tail call fastcc void @join_triangle_props(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_tris_convert_to_quads_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !219 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #17
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call float @RNA_float_get(ptr noundef %6, ptr noundef nonnull @.str.489) #17
  %8 = load ptr, ptr %5, align 8, !tbaa !49
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.490) #17
  %10 = load ptr, ptr %5, align 8, !tbaa !49
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.164) #17
  %12 = load ptr, ptr %5, align 8, !tbaa !49
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.491) #17
  %14 = load ptr, ptr %5, align 8, !tbaa !49
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.492) #17
  %16 = fpext float %7 to double
  %17 = tail call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.415, i8 noundef zeroext 1, ptr noundef nonnull @.str.493, i32 noundef 1, double noundef %16, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %20

20:                                               ; preds = %2, %19
  %21 = phi i32 [ 4, %19 ], [ 2, %2 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @join_triangle_props(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !220 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = tail call ptr @RNA_def_float_rotation(ptr noundef %3, ptr noundef nonnull @.str.489, i32 noundef 0, ptr noundef null, float noundef 0.000000e+00, float noundef 0x400921FB60000000, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.494, float noundef 0.000000e+00, float noundef 0x400921FB60000000) #17
  tail call void @RNA_def_property_float_default(ptr noundef %4, float noundef 0x3FE6571840000000) #17
  %5 = load ptr, ptr %2, align 8, !tbaa !47
  %6 = tail call ptr @RNA_def_boolean(ptr noundef %5, ptr noundef nonnull @.str.164, i32 noundef 0, ptr noundef nonnull @.str.495, ptr noundef nonnull @.str.5) #17
  %7 = load ptr, ptr %2, align 8, !tbaa !47
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.491, i32 noundef 0, ptr noundef nonnull @.str.496, ptr noundef nonnull @.str.5) #17
  %9 = load ptr, ptr %2, align 8, !tbaa !47
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.490, i32 noundef 0, ptr noundef nonnull @.str.497, ptr noundef nonnull @.str.5) #17
  %11 = load ptr, ptr %2, align 8, !tbaa !47
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.492, i32 noundef 0, ptr noundef nonnull @.str.498, ptr noundef nonnull @.str.5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_dissolve_verts(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.259, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.260, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.261, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_dissolve_verts_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  tail call fastcc void @edbm_dissolve_prop__use_face_split(ptr noundef nonnull %0) #18
  tail call fastcc void @edbm_dissolve_prop__use_boundary_tear(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_dissolve_verts_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !221 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #17
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.286) #17
  %8 = load ptr, ptr %5, align 8, !tbaa !49
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.499) #17
  %10 = and i32 %7, 255
  %11 = and i32 %9, 255
  %12 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.500, i32 noundef 1, i32 noundef %10, i32 noundef %11) #17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %15

15:                                               ; preds = %2, %14
  %16 = phi i32 [ 4, %14 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_dissolve_prop__use_face_split(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !222 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = tail call ptr @RNA_def_boolean(ptr noundef %3, ptr noundef nonnull @.str.286, i32 noundef 0, ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.288) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_dissolve_prop__use_boundary_tear(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !223 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = tail call ptr @RNA_def_boolean(ptr noundef %3, ptr noundef nonnull @.str.499, i32 noundef 0, ptr noundef nonnull @.str.501, ptr noundef nonnull @.str.502) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_dissolve_edges(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.262, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.263, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.264, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_dissolve_edges_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  tail call fastcc void @edbm_dissolve_prop__use_verts(ptr noundef nonnull %0) #18
  tail call fastcc void @edbm_dissolve_prop__use_face_split(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_dissolve_edges_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !224 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #17
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.41) #17
  %8 = load ptr, ptr %5, align 8, !tbaa !49
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.286) #17
  %10 = and i32 %7, 255
  %11 = and i32 %9, 255
  %12 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.503, i32 noundef 1, i32 noundef %10, i32 noundef %11) #17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %15

15:                                               ; preds = %2, %14
  %16 = phi i32 [ 4, %14 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_dissolve_prop__use_verts(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !225 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = tail call ptr @RNA_def_boolean(ptr noundef %3, ptr noundef nonnull @.str.41, i32 noundef 0, ptr noundef nonnull @.str.504, ptr noundef nonnull @.str.505) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_dissolve_faces(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.265, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.266, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.267, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_dissolve_faces_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  tail call fastcc void @edbm_dissolve_prop__use_verts(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_dissolve_faces_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !226 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #17
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.41) #17
  %8 = and i32 %7, 255
  %9 = tail call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.506, i8 noundef zeroext 1, ptr noundef nonnull @.str.507, i32 noundef 1, i32 noundef %8) #17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %12

12:                                               ; preds = %2, %11
  %13 = phi i32 [ 4, %11 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_dissolve_mode(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.268, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.269, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.270, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_dissolve_mode_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  tail call fastcc void @edbm_dissolve_prop__use_verts(ptr noundef nonnull %0) #18
  tail call fastcc void @edbm_dissolve_prop__use_face_split(ptr noundef nonnull %0) #18
  tail call fastcc void @edbm_dissolve_prop__use_boundary_tear(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_dissolve_mode_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !227 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #17
  %5 = getelementptr inbounds %struct.BMEditMesh, ptr %4, i64 0, i32 12
  %6 = load i16, ptr %5, align 4, !tbaa !65
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @edbm_dissolve_verts_exec(ptr noundef %0, ptr noundef %1) #18, !range !126
  br label %19

12:                                               ; preds = %2
  %13 = and i32 %7, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @edbm_dissolve_edges_exec(ptr noundef %0, ptr noundef %1) #18, !range !126
  br label %19

17:                                               ; preds = %12
  %18 = tail call i32 @edbm_dissolve_faces_exec(ptr noundef %0, ptr noundef %1) #18, !range !126
  br label %19

19:                                               ; preds = %17, %15, %10
  %20 = phi i32 [ %11, %10 ], [ %16, %15 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_dissolve_limited(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.271, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.272, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.273, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_dissolve_limited_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_float_rotation(ptr noundef %8, ptr noundef nonnull @.str.71, i32 noundef 0, ptr noundef null, float noundef 0.000000e+00, float noundef 0x400921FB60000000, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, float noundef 0.000000e+00, float noundef 0x400921FB60000000) #17
  tail call void @RNA_def_property_float_default(ptr noundef %9, float noundef 0x3FB6571840000000) #17
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.274, i32 noundef 0, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.276) #17
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_enum_flag(ptr noundef %12, ptr noundef nonnull @.str.277, ptr noundef nonnull @mesh_delimit_mode_items, i32 noundef 0, ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.279) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_dissolve_limited_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !228 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #17
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.71) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !49
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.274) #17
  %13 = load ptr, ptr %8, align 8, !tbaa !49
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.277) #17
  %15 = getelementptr inbounds %struct.BMEditMesh, ptr %6, i64 0, i32 12
  %16 = load i16, ptr %15, align 4, !tbaa !65
  %17 = icmp eq i16 %16, 4
  br i1 %17, label %18, label %58

18:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  %19 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %7, i8 noundef zeroext 1, ptr noundef null) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18, %21
  %22 = phi ptr [ %25, %21 ], [ %19, %18 ]
  %23 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %22, i8 noundef zeroext 1) #18, !range !72
  %24 = zext nneg i8 %23 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %22, i8 noundef zeroext 16, i32 noundef %24) #18
  %25 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %21, !llvm.loop !229

27:                                               ; preds = %21, %18
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %7, i8 noundef zeroext 2, ptr noundef null) #18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27, %30
  %31 = phi ptr [ %34, %30 ], [ %28, %27 ]
  %32 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %31, i8 noundef zeroext 1) #18, !range !72
  %33 = zext nneg i8 %32 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %31, i8 noundef zeroext 16, i32 noundef %33) #18
  %34 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %30, !llvm.loop !230

36:                                               ; preds = %30, %27
  %37 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %7, i8 noundef zeroext 3, ptr noundef null) #18
  %38 = icmp eq ptr %37, null
  br i1 %38, label %57, label %39

39:                                               ; preds = %36, %54
  %40 = phi ptr [ %55, %54 ], [ %37, %36 ]
  %41 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %40, i8 noundef zeroext 1) #18, !range !72
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %40) #18
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %43, %46
  %47 = phi ptr [ %52, %46 ], [ %44, %43 ]
  %48 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !231
  call fastcc void @_bm_elem_flag_disable(ptr noundef %49, i8 noundef zeroext 16) #18
  %50 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !233
  call fastcc void @_bm_elem_flag_disable(ptr noundef %51, i8 noundef zeroext 16) #18
  %52 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #18
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %46, !llvm.loop !234

54:                                               ; preds = %46, %43, %39
  %55 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %39, !llvm.loop !235

57:                                               ; preds = %54, %36
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  br label %58

58:                                               ; preds = %2, %57
  %59 = phi i32 [ 16, %57 ], [ 1, %2 ]
  %60 = fpext float %10 to double
  %61 = and i32 %12, 255
  %62 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull @.str.506, i8 noundef zeroext 1, ptr noundef nonnull @.str.508, i32 noundef %59, i32 noundef %59, double noundef %60, i32 noundef %61, i32 noundef %14) #17
  call void @EDBM_update_generic(ptr noundef nonnull %6, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_enum_flag(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_dissolve_degenerate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.280, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.281, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.282, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_dissolve_degenerate_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.170, float noundef 0x3F1A36E2E0000000, float noundef 0x3EB0C6F7A0000000, float noundef 5.000000e+01, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.172, float noundef 0x3EE4F8B580000000, float noundef 1.000000e+01) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_dissolve_degenerate_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !236 {
  %3 = alloca [3 x i32], align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.170) #17
  %9 = load ptr, ptr %5, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  %10 = load <2 x i32>, ptr %9, align 8, !tbaa !91
  store <2 x i32> %10, ptr %3, align 8, !tbaa !91
  %11 = getelementptr inbounds i32, ptr %3, i64 2
  %12 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !92
  store i32 %13, ptr %11, align 8, !tbaa !91
  %14 = fpext float %8 to double
  %15 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.509, i32 noundef 1, double noundef %14) #17
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  tail call void @EDBM_select_flush(ptr noundef nonnull %5) #17
  tail call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !99
  call fastcc void @edbm_report_delete_info(ptr noundef %19, ptr noundef nonnull %9, ptr noundef nonnull %3) #18
  br label %20

20:                                               ; preds = %2, %17
  %21 = phi i32 [ 4, %17 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_delete_edgeloop(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.283, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.284, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.285, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_delete_edgeloop_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.286, i32 noundef 1, ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.288) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_delete_edgeloop_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !237 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.286) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %9 = load ptr, ptr %5, align 8, !tbaa !51
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %9, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #17
  %10 = load ptr, ptr %5, align 8, !tbaa !51
  %11 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %10, i8 noundef zeroext 2, ptr noundef null) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %2, %29
  %14 = phi ptr [ %30, %29 ], [ %11, %2 ]
  %15 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %14, i8 noundef zeroext 1) #18, !range !72
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !238
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17, %21
  %22 = phi ptr [ %26, %21 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !239
  call fastcc void @_bm_elem_flag_enable(ptr noundef %24, i8 noundef zeroext 16) #18
  %25 = getelementptr inbounds %struct.BMLoop, ptr %22, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !240
  %27 = load ptr, ptr %18, align 8, !tbaa !238
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %21, !llvm.loop !241

29:                                               ; preds = %21, %13, %17
  %30 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !llvm.loop !242

32:                                               ; preds = %29, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  %33 = and i32 %8, 255
  %34 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.503, i32 noundef 1, i32 noundef 1, i32 noundef %33) #17
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BM_mesh_elem_hflag_enable_test(ptr noundef %37, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 16) #17
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %38

38:                                               ; preds = %32, %36
  %39 = phi i32 [ 4, %36 ], [ 2, %32 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_split(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.289, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.290, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.291, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_split_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_split_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !243 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #19
  %6 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.510, i32 noundef 1, i32 noundef 0) #17
  %7 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %7, ptr noundef nonnull %3) #17
  %8 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %8, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0) #17
  %9 = load ptr, ptr %5, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %9, ptr noundef nonnull %10, ptr noundef nonnull @.str.422, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %11 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  call void @EDBM_mesh_normals_update(ptr noundef nonnull %5) #17
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %14

14:                                               ; preds = %2, %13
  %15 = phi i32 [ 4, %13 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #19
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_sort_elements(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.316, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.317, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.318, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_sort_elements_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 10
  store ptr @edbm_sort_elements_ui, ptr %7, align 8, !tbaa !169
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.35, ptr noundef nonnull @MESH_OT_sort_elements.type_items, i32 noundef 0, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.319) #17
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %11, ptr %12, align 8, !tbaa !83
  %13 = load ptr, ptr %9, align 8, !tbaa !47
  %14 = tail call ptr @RNA_def_enum_flag(ptr noundef %13, ptr noundef nonnull @.str.320, ptr noundef nonnull @MESH_OT_sort_elements.elem_items, i32 noundef 0, ptr noundef nonnull @.str.321, ptr noundef nonnull @.str.322) #17
  %15 = load ptr, ptr %9, align 8, !tbaa !47
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.323, i32 noundef 0, ptr noundef nonnull @.str.311, ptr noundef nonnull @.str.324) #17
  %17 = load ptr, ptr %9, align 8, !tbaa !47
  %18 = tail call ptr @RNA_def_int(ptr noundef %17, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.325, ptr noundef nonnull @.str.326, i32 noundef 0, i32 noundef 255) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_sort_elements_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !244 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #17
  %6 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #17
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.35) #17
  %10 = load ptr, ptr %7, align 8, !tbaa !49
  %11 = tail call ptr @RNA_struct_find_property(ptr noundef %10, ptr noundef nonnull @.str.320) #17
  %12 = load ptr, ptr %7, align 8, !tbaa !49
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.323) #17
  %14 = load ptr, ptr %7, align 8, !tbaa !49
  %15 = tail call i32 @RNA_int_get(ptr noundef %14, ptr noundef nonnull @.str.21) #17
  %16 = add i32 %9, -1
  %17 = icmp ult i32 %16, 2
  %18 = icmp eq ptr %6, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  tail call void @BKE_report(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.511) #17
  br label %43

23:                                               ; preds = %2
  %24 = load ptr, ptr %7, align 8, !tbaa !49
  %25 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %24, ptr noundef %11) #17
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !49
  %29 = tail call i32 @RNA_property_enum_get(ptr noundef %28, ptr noundef %11) #17
  br label %40

30:                                               ; preds = %23
  %31 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  %32 = getelementptr inbounds %struct.BMEditMesh, ptr %31, i64 0, i32 12
  %33 = load i16, ptr %32, align 4, !tbaa !65
  %34 = and i16 %33, 3
  %35 = shl i16 %33, 1
  %36 = and i16 %35, 8
  %37 = or disjoint i16 %36, %34
  %38 = zext nneg i16 %37 to i32
  %39 = load ptr, ptr %7, align 8, !tbaa !49
  tail call void @RNA_enum_set(ptr noundef %39, ptr noundef nonnull @.str.320, i32 noundef %38) #17
  br label %40

40:                                               ; preds = %30, %27
  %41 = phi i32 [ %29, %27 ], [ %38, %30 ]
  %42 = and i32 %13, 255
  tail call fastcc void @sort_bmelem_flag(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %41, i32 noundef %9, i32 noundef %42, i32 noundef %15) #18
  br label %43

43:                                               ; preds = %40, %20
  %44 = phi i32 [ 2, %20 ], [ 4, %40 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @edbm_sort_elements_ui(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !245 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !177
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !178
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !179
  call void @RNA_pointer_create(ptr noundef %6, ptr noundef %10, ptr noundef %12, ptr noundef nonnull %3) #17
  %13 = call i32 @uiDefAutoButsRNA(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull @edbm_sort_elements_draw_check_prop, i8 noundef zeroext 0) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_noise(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.327, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.328, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.329, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_noise_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.107, float noundef 0x3FB99999A0000000, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.330, ptr noundef nonnull @.str.5, float noundef 0.000000e+00, float noundef 1.000000e+00) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_noise_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !246 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [3 x float], align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %7) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = tail call float @RNA_float_get(ptr noundef %10, ptr noundef nonnull @.str.107) #17
  %12 = icmp eq ptr %8, null
  br i1 %12, label %114, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 32
  %15 = load i32, ptr %14, align 4, !tbaa !247
  %16 = trunc i32 %15 to i16
  %17 = tail call ptr @give_current_material(ptr noundef %7, i16 noundef signext %16) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = tail call ptr @give_current_material_texture(ptr noundef nonnull %17) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %13
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !99
  tail call void @BKE_report(ptr noundef %24, i32 noundef 16, ptr noundef nonnull @.str.525) #17
  br label %114

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.Tex, ptr %20, i64 0, i32 32
  %27 = load i16, ptr %26, align 8, !tbaa !248
  %28 = icmp eq i16 %27, 6
  br i1 %28, label %29, label %92

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  %30 = getelementptr inbounds %struct.Tex, ptr %20, i64 0, i32 3
  %31 = load float, ptr %30, align 4, !tbaa !251
  %32 = load ptr, ptr %8, align 8, !tbaa !51
  %33 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %32, i8 noundef zeroext 1, ptr noundef null) #18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %91, label %35

35:                                               ; preds = %29
  %36 = fdiv float %31, 2.000000e+02
  %37 = getelementptr inbounds %struct.Tex, ptr %20, i64 0, i32 2
  %38 = getelementptr inbounds %struct.Tex, ptr %20, i64 0, i32 33
  %39 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %40 = insertelement <2 x float> poison, float %11, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer
  br label %42

42:                                               ; preds = %35, %87
  %43 = phi float [ %36, %35 ], [ %88, %87 ]
  %44 = phi ptr [ %33, %35 ], [ %89, %87 ]
  %45 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %44, i8 noundef zeroext 1) #18, !range !72
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %87, label %47

47:                                               ; preds = %42
  %48 = load float, ptr %37, align 8, !tbaa !252
  %49 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 2
  %50 = load float, ptr %49, align 8, !tbaa !201
  %51 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 2, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !201
  %53 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 2, i64 2
  %54 = load float, ptr %53, align 8, !tbaa !201
  %55 = call float @BLI_hnoise(float noundef %48, float noundef %50, float noundef %52, float noundef %54) #17
  %56 = load i16, ptr %38, align 2, !tbaa !253
  %57 = icmp eq i16 %56, 0
  %58 = fmul float %55, %55
  %59 = select i1 %57, float 1.000000e+00, float %58
  %60 = fmul float %43, %59
  %61 = load float, ptr %37, align 8, !tbaa !252
  %62 = load float, ptr %49, align 8, !tbaa !201
  %63 = fadd float %62, %60
  %64 = load float, ptr %51, align 4, !tbaa !201
  %65 = load float, ptr %53, align 8, !tbaa !201
  %66 = call float @BLI_hnoise(float noundef %61, float noundef %63, float noundef %64, float noundef %65) #17
  %67 = load float, ptr %37, align 8, !tbaa !252
  %68 = load float, ptr %49, align 8, !tbaa !201
  %69 = load float, ptr %51, align 4, !tbaa !201
  %70 = fadd float %60, %69
  %71 = load float, ptr %53, align 8, !tbaa !201
  %72 = call float @BLI_hnoise(float noundef %67, float noundef %68, float noundef %70, float noundef %71) #17
  %73 = insertelement <2 x float> poison, float %55, i64 0
  %74 = shufflevector <2 x float> %73, <2 x float> poison, <2 x i32> zeroinitializer
  %75 = insertelement <2 x float> poison, float %66, i64 0
  %76 = insertelement <2 x float> %75, float %72, i64 1
  %77 = fsub <2 x float> %74, %76
  %78 = fmul <2 x float> %41, %77
  store <2 x float> %78, ptr %4, align 8, !tbaa !201
  %79 = load float, ptr %37, align 8, !tbaa !252
  %80 = load float, ptr %49, align 8, !tbaa !201
  %81 = load float, ptr %51, align 4, !tbaa !201
  %82 = load float, ptr %53, align 8, !tbaa !201
  %83 = fadd float %60, %82
  %84 = call float @BLI_hnoise(float noundef %79, float noundef %80, float noundef %81, float noundef %83) #17
  %85 = fsub float %55, %84
  %86 = fmul float %11, %85
  store float %86, ptr %39, align 8, !tbaa !201
  call fastcc void @add_v3_v3(ptr noundef nonnull %49, ptr noundef nonnull %4) #18
  br label %87

87:                                               ; preds = %42, %47
  %88 = phi float [ %60, %47 ], [ %43, %42 ]
  %89 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %42, !llvm.loop !254

91:                                               ; preds = %87, %29
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  br label %113

92:                                               ; preds = %25
  %93 = load ptr, ptr %8, align 8, !tbaa !51
  %94 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %93, i8 noundef zeroext 1, ptr noundef null) #18
  %95 = icmp eq ptr %94, null
  br i1 %95, label %113, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.Material, ptr %17, i64 0, i32 102
  br label %98

98:                                               ; preds = %96, %110
  %99 = phi ptr [ %94, %96 ], [ %111, %110 ]
  %100 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %99, i8 noundef zeroext 1) #18, !range !72
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  %103 = load ptr, ptr %97, align 8, !tbaa !129
  %104 = getelementptr inbounds %struct.BMVert, ptr %99, i64 0, i32 2
  %105 = call i32 @externtex(ptr noundef %103, ptr noundef nonnull %104, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %6, i32 noundef 0, ptr noundef null) #17
  %106 = load float, ptr %5, align 4, !tbaa !201
  %107 = getelementptr inbounds %struct.BMVert, ptr %99, i64 0, i32 2, i64 2
  %108 = load float, ptr %107, align 8, !tbaa !201
  %109 = call float @llvm.fmuladd.f32(float %11, float %106, float %108)
  store float %109, ptr %107, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  br label %110

110:                                              ; preds = %98, %102
  %111 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %98, !llvm.loop !255

113:                                              ; preds = %110, %92, %91
  call void @EDBM_mesh_normals_update(ptr noundef nonnull %8) #17
  call void @EDBM_update_generic(ptr noundef nonnull %8, i8 noundef zeroext 1, i8 noundef zeroext 0) #17
  br label %114

114:                                              ; preds = %2, %113, %22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_bridge_edge_loops(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.337, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.338, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.339, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_bridge_edge_loops_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.35, ptr noundef nonnull @MESH_OT_bridge_edge_loops.type_items, i32 noundef 0, ptr noundef nonnull @.str.340, ptr noundef nonnull @.str.341) #17
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !83
  %11 = load ptr, ptr %7, align 8, !tbaa !47
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.342, i32 noundef 0, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.343) #17
  %13 = load ptr, ptr %7, align 8, !tbaa !47
  %14 = tail call ptr @RNA_def_float(ptr noundef %13, ptr noundef nonnull @.str.344, float noundef 5.000000e-01, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.345, ptr noundef nonnull @.str.5, float noundef 0.000000e+00, float noundef 1.000000e+00) #17
  %15 = load ptr, ptr %7, align 8, !tbaa !47
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.346, i32 noundef 0, i32 noundef -1000, i32 noundef 1000, ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.348, i32 noundef -1000, i32 noundef 1000) #17
  tail call fastcc void @mesh_operator_edgering_props(ptr noundef nonnull %0, i32 noundef 0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_bridge_edge_loops_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !256 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.EdgeRingOpSubdProps, align 4
  %6 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #19
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %7) #17
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = tail call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.35) #17
  %12 = icmp eq i32 %11, 2
  %13 = icmp eq i32 %11, 1
  %14 = load ptr, ptr %9, align 8, !tbaa !49
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.342) #17
  %16 = load ptr, ptr %9, align 8, !tbaa !49
  %17 = tail call float @RNA_float_get(ptr noundef %16, ptr noundef nonnull @.str.344) #17
  %18 = load ptr, ptr %9, align 8, !tbaa !49
  %19 = tail call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.346) #17
  %20 = load ptr, ptr %8, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !90
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  %25 = tail call fastcc i32 @edbm_bridge_tag_boundary_edges(ptr noundef nonnull %20) #18
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !129
  %27 = sext i32 %25 to i64
  %28 = shl nsw i64 %27, 3
  %29 = tail call ptr %26(i64 noundef %28, ptr noundef nonnull @__func__.edbm_bridge_edge_loops_exec) #17
  %30 = load ptr, ptr %8, align 8, !tbaa !51
  %31 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %30, i8 noundef zeroext 3, ptr noundef null) #18
  %32 = icmp eq ptr %31, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %24, %42
  %34 = phi i32 [ %43, %42 ], [ 0, %24 ]
  %35 = phi ptr [ %44, %42 ], [ %31, %24 ]
  %36 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %35, i8 noundef zeroext 16) #18, !range !72
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = add nsw i32 %34, 1
  %40 = sext i32 %34 to i64
  %41 = getelementptr inbounds ptr, ptr %29, i64 %40
  store ptr %35, ptr %41, align 8, !tbaa !129
  br label %42

42:                                               ; preds = %33, %38
  %43 = phi i32 [ %39, %38 ], [ %34, %33 ]
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #18
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %33, !llvm.loop !257

46:                                               ; preds = %42, %24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  br label %47

47:                                               ; preds = %2, %46
  %48 = phi i32 [ 16, %46 ], [ 1, %2 ]
  %49 = phi i32 [ %25, %46 ], [ 0, %2 ]
  %50 = phi ptr [ %29, %46 ], [ null, %2 ]
  %51 = zext i1 %12 to i32
  %52 = zext i1 %13 to i32
  %53 = and i32 %15, 255
  %54 = fpext float %17 to double
  %55 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.526, i32 noundef %48, i32 noundef %51, i32 noundef %52, i32 noundef %53, double noundef %54, i32 noundef %19) #17
  %56 = load ptr, ptr %8, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %56, ptr noundef nonnull %3) #17
  %57 = load ptr, ptr %8, align 8, !tbaa !51
  %58 = call zeroext i8 @BMO_error_occurred(ptr noundef %57) #17
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %107

60:                                               ; preds = %47
  %61 = icmp eq i32 %53, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  call void @EDBM_flag_disable_all(ptr noundef nonnull %8, i8 noundef zeroext 1) #17
  %63 = load ptr, ptr %8, align 8, !tbaa !51
  %64 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %63, ptr noundef nonnull %64, ptr noundef nonnull @.str.415, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %65

65:                                               ; preds = %62, %60
  %66 = icmp ne i32 %49, 0
  %67 = and i1 %23, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = load ptr, ptr %8, align 8, !tbaa !51
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %69, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #17
  %70 = icmp sgt i32 %49, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = zext nneg i32 %49 to i64
  br label %73

73:                                               ; preds = %71, %73
  %74 = phi i64 [ 0, %71 ], [ %77, %73 ]
  %75 = getelementptr inbounds ptr, ptr %50, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !129
  call fastcc void @_bm_elem_flag_enable(ptr noundef %76, i8 noundef zeroext 16) #18
  %77 = add nuw nsw i64 %74, 1
  %78 = icmp eq i64 %77, %72
  br i1 %78, label %79, label %73, !llvm.loop !258

79:                                               ; preds = %73, %68
  %80 = load ptr, ptr %8, align 8, !tbaa !51
  %81 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %80, i32 noundef 1, ptr noundef nonnull @.str.406, i32 noundef 16, i32 noundef 5) #17
  br label %82

82:                                               ; preds = %79, %65
  br i1 %61, label %83, label %107

83:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #19
  call fastcc void @mesh_operator_edgering_props_get(ptr noundef %1, ptr noundef nonnull %5) #18
  %84 = getelementptr inbounds %struct.EdgeRingOpSubdProps, ptr %5, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !59
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %106, label %87

87:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %6) #19
  call void @EDBM_mesh_normals_update(ptr noundef nonnull %8) #17
  %88 = load ptr, ptr %8, align 8, !tbaa !51
  %89 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 12
  %90 = load i16, ptr %89, align 8, !tbaa !259
  %91 = sext i16 %90 to i32
  %92 = load i32, ptr %5, align 4, !tbaa !56
  %93 = getelementptr inbounds %struct.EdgeRingOpSubdProps, ptr %5, i64 0, i32 2
  %94 = load float, ptr %93, align 4, !tbaa !60
  %95 = fpext float %94 to double
  %96 = getelementptr inbounds %struct.EdgeRingOpSubdProps, ptr %5, i64 0, i32 3
  %97 = load i32, ptr %96, align 4, !tbaa !61
  %98 = getelementptr inbounds %struct.EdgeRingOpSubdProps, ptr %5, i64 0, i32 4
  %99 = load float, ptr %98, align 4, !tbaa !62
  %100 = fpext float %99 to double
  %101 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %88, ptr noundef nonnull %6, i32 noundef %91, ptr noundef nonnull @.str.527, ptr noundef nonnull %3, ptr noundef nonnull @.str.416, i32 noundef %92, i32 noundef %85, double noundef %95, i32 noundef %97, double noundef %100) #17
  %102 = load ptr, ptr %8, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %102, ptr noundef nonnull %6) #17
  %103 = load ptr, ptr %8, align 8, !tbaa !51
  %104 = getelementptr inbounds %struct.BMOperator, ptr %6, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %103, ptr noundef nonnull %104, ptr noundef nonnull @.str.415, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %105 = load ptr, ptr %8, align 8, !tbaa !51
  call void @BMO_op_finish(ptr noundef %105, ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %6) #19
  br label %106

106:                                              ; preds = %87, %83
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #19
  br label %107

107:                                              ; preds = %82, %106, %47
  %108 = icmp eq ptr %50, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %107
  %110 = load ptr, ptr @MEM_freeN, align 8, !tbaa !129
  call void %110(ptr noundef nonnull %50) #17
  br label %111

111:                                              ; preds = %109, %107
  %112 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #17
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  call void @EDBM_update_generic(ptr noundef nonnull %8, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %115

115:                                              ; preds = %111, %114
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #19
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_wireframe(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.349, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.350, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.351, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_wireframe_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.352, i32 noundef 1, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.354) #17
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.355, i32 noundef 1, ptr noundef nonnull @.str.356, ptr noundef nonnull @.str.357) #17
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.241, i32 noundef 0, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.243) #17
  %14 = load ptr, ptr %7, align 8, !tbaa !47
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.358, i32 noundef 1, ptr noundef nonnull @.str.359, ptr noundef nonnull @.str.360) #17
  %16 = load ptr, ptr %7, align 8, !tbaa !47
  %17 = tail call ptr @RNA_def_float(ptr noundef %16, ptr noundef nonnull @.str.193, float noundef 0x3F847AE140000000, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.361, ptr noundef nonnull @.str.5, float noundef 0.000000e+00, float noundef 1.000000e+01) #17
  tail call void @RNA_def_property_ui_range(ptr noundef %17, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e-02, i32 noundef 4) #17
  %18 = load ptr, ptr %7, align 8, !tbaa !47
  %19 = tail call ptr @RNA_def_float(ptr noundef %18, ptr noundef nonnull @.str.215, float noundef 0x3F847AE140000000, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.5, float noundef 0.000000e+00, float noundef 1.000000e+01) #17
  %20 = load ptr, ptr %7, align 8, !tbaa !47
  %21 = tail call ptr @RNA_def_boolean(ptr noundef %20, ptr noundef nonnull @.str.362, i32 noundef 0, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.364) #17
  %22 = load ptr, ptr %7, align 8, !tbaa !47
  %23 = tail call ptr @RNA_def_float(ptr noundef %22, ptr noundef nonnull @.str.365, float noundef 0x3F847AE140000000, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.366, ptr noundef nonnull @.str.5, float noundef 0.000000e+00, float noundef 1.000000e+00) #17
  tail call void @RNA_def_property_ui_range(ptr noundef %23, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e-01, i32 noundef 2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_wireframe_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !260 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #19
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.352) #17
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.355) #17
  %11 = load ptr, ptr %6, align 8, !tbaa !49
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.358) #17
  %13 = load ptr, ptr %6, align 8, !tbaa !49
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.241) #17
  %15 = load ptr, ptr %6, align 8, !tbaa !49
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.362) #17
  %17 = load ptr, ptr %6, align 8, !tbaa !49
  %18 = tail call float @RNA_float_get(ptr noundef %17, ptr noundef nonnull @.str.365) #17
  %19 = load ptr, ptr %6, align 8, !tbaa !49
  %20 = tail call float @RNA_float_get(ptr noundef %19, ptr noundef nonnull @.str.193) #17
  %21 = load ptr, ptr %6, align 8, !tbaa !49
  %22 = tail call float @RNA_float_get(ptr noundef %21, ptr noundef nonnull @.str.215) #17
  %23 = and i32 %12, 255
  %24 = and i32 %8, 255
  %25 = and i32 %10, 255
  %26 = and i32 %14, 255
  %27 = and i32 %16, 255
  %28 = fpext float %18 to double
  %29 = fpext float %20 to double
  %30 = fpext float %22 to double
  %31 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.528, i32 noundef 1, i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef %27, double noundef %28, double noundef %29, double noundef %30) #17
  %32 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %32, ptr noundef nonnull %3) #17
  %33 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %33, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0) #17
  %34 = load ptr, ptr %5, align 8, !tbaa !51
  %35 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %34, ptr noundef nonnull %35, ptr noundef nonnull @.str.415, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %36 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #17
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %39

39:                                               ; preds = %2, %38
  %40 = phi i32 [ 4, %38 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #19
  ret i32 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_symmetrize(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.367, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.368, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.369, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mesh_symmetrize_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.370, ptr noundef nonnull @symmetrize_direction_items, i32 noundef 0, ptr noundef nonnull @.str.371, ptr noundef nonnull @.str.372) #17
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !83
  %11 = load ptr, ptr %7, align 8, !tbaa !47
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.170, float noundef 0x3F1A36E2E0000000, float noundef 0.000000e+00, float noundef 1.000000e+01, ptr noundef nonnull @.str.373, ptr noundef nonnull @.str.5, float noundef 0x3EE4F8B580000000, float noundef 0x3FB99999A0000000) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mesh_symmetrize_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !261 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #17
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #19
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.170) #17
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.370) #17
  %11 = fpext float %8 to double
  %12 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.529, i32 noundef 1, i32 noundef %10, double noundef %11) #17
  %13 = load ptr, ptr %5, align 8, !tbaa !51
  call void @BMO_op_exec(ptr noundef %13, ptr noundef nonnull %3) #17
  call void @EDBM_flag_disable_all(ptr noundef nonnull %5, i8 noundef zeroext 1) #17
  %14 = load ptr, ptr %5, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %14, ptr noundef nonnull %15, ptr noundef nonnull @.str.422, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %16 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #17
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #17
  br label %19

19:                                               ; preds = %2, %18
  %20 = phi i32 [ 4, %18 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #19
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_symmetry_snap(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.374, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.375, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.376, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mesh_symmetry_snap_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.370, ptr noundef nonnull @symmetrize_direction_items, i32 noundef 0, ptr noundef nonnull @.str.371, ptr noundef nonnull @.str.372) #17
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !83
  %11 = load ptr, ptr %7, align 8, !tbaa !47
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.170, float noundef 0x3FA99999A0000000, float noundef 0.000000e+00, float noundef 1.000000e+01, ptr noundef nonnull @.str.373, ptr noundef nonnull @.str.5, float noundef 0x3F1A36E2E0000000, float noundef 1.000000e+00) #17
  %13 = load ptr, ptr %7, align 8, !tbaa !47
  %14 = tail call ptr @RNA_def_float(ptr noundef %13, ptr noundef nonnull @.str.107, float noundef 5.000000e-01, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.330, ptr noundef nonnull @.str.5, float noundef 0.000000e+00, float noundef 1.000000e+00) #17
  %15 = load ptr, ptr %7, align 8, !tbaa !47
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.377, i32 noundef 1, ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.379) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mesh_symmetry_snap_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !262 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #17
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #17
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !129
  %10 = load i32, ptr %8, align 8, !tbaa !166
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr %9(i64 noundef %12, ptr noundef nonnull @__func__.mesh_symmetry_snap_exec) #17
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = tail call float @RNA_float_get(ptr noundef %15, ptr noundef nonnull @.str.170) #17
  %17 = load ptr, ptr %14, align 8, !tbaa !49
  %18 = tail call float @RNA_float_get(ptr noundef %17, ptr noundef nonnull @.str.107) #17
  %19 = load ptr, ptr %14, align 8, !tbaa !49
  %20 = tail call i32 @RNA_boolean_get(ptr noundef %19, ptr noundef nonnull @.str.377) #17
  %21 = load ptr, ptr %14, align 8, !tbaa !49
  %22 = tail call i32 @RNA_enum_get(ptr noundef %21, ptr noundef nonnull @.str.370) #17
  %23 = srem i32 %22, 3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  tail call void @EDBM_verts_mirror_cache_begin_ex(ptr noundef nonnull %7, i32 noundef %23, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0, float noundef %16, ptr noundef %13) #17
  tail call void @BM_mesh_elem_table_ensure(ptr noundef nonnull %8, i8 noundef zeroext 1) #17
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef nonnull %8, i8 noundef zeroext 1, i8 noundef zeroext 16, i8 noundef zeroext 0) #17
  %24 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %8, i8 noundef zeroext 1, ptr noundef null) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %98, label %26

26:                                               ; preds = %2
  %27 = sext i32 %23 to i64
  %28 = icmp eq i32 %23, %22
  %29 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %27
  %30 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %27
  %31 = and i32 %20, 255
  %32 = icmp eq i32 %31, 0
  br label %33

33:                                               ; preds = %26, %85
  %34 = phi i64 [ 0, %26 ], [ %90, %85 ]
  %35 = phi i32 [ 0, %26 ], [ %88, %85 ]
  %36 = phi i32 [ 0, %26 ], [ %87, %85 ]
  %37 = phi ptr [ %24, %26 ], [ %89, %85 ]
  %38 = phi i32 [ 0, %26 ], [ %86, %85 ]
  %39 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %37, i8 noundef zeroext 1) #18, !range !72
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %85, label %41

41:                                               ; preds = %33
  %42 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %37, i8 noundef zeroext 16) #18, !range !72
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %85

44:                                               ; preds = %41
  %45 = getelementptr inbounds i32, ptr %13, i64 %34
  %46 = load i32, ptr %45, align 4, !tbaa !91
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %83, label %48

48:                                               ; preds = %44
  %49 = call ptr @BM_vert_at_index(ptr noundef nonnull %8, i32 noundef %46) #17
  %50 = icmp eq ptr %37, %49
  br i1 %50, label %70, label %51

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  %52 = getelementptr inbounds %struct.BMVert, ptr %37, i64 0, i32 2, i64 %27
  %53 = load float, ptr %52, align 4, !tbaa !201
  %54 = getelementptr inbounds %struct.BMVert, ptr %49, i64 0, i32 2, i64 %27
  %55 = load float, ptr %54, align 4, !tbaa !201
  %56 = fcmp ogt float %53, %55
  %57 = xor i1 %28, %56
  %58 = select i1 %57, ptr %49, ptr %37
  %59 = select i1 %57, ptr %37, ptr %49
  %60 = getelementptr inbounds %struct.BMVert, ptr %59, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %60) #18
  %61 = load float, ptr %29, align 4, !tbaa !201
  %62 = fneg float %61
  store float %62, ptr %29, align 4, !tbaa !201
  %63 = getelementptr inbounds %struct.BMVert, ptr %58, i64 0, i32 2
  %64 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %63, ptr noundef nonnull %5) #18
  %65 = fcmp ogt float %64, 0x3DDB7CDFC0000000
  %66 = zext i1 %65 to i32
  %67 = add nsw i32 %35, %66
  call void @interp_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %63, ptr noundef nonnull %5, float noundef %18) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %63, ptr noundef nonnull %4) #18
  %68 = load float, ptr %30, align 4, !tbaa !201
  %69 = fneg float %68
  store float %69, ptr %30, align 4, !tbaa !201
  call fastcc void @copy_v3_v3(ptr noundef nonnull %60, ptr noundef nonnull %4) #18
  call fastcc void @_bm_elem_flag_enable(ptr noundef %58, i8 noundef zeroext 16) #18
  call fastcc void @_bm_elem_flag_enable(ptr noundef %59, i8 noundef zeroext 16) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  br label %80

70:                                               ; preds = %48
  br i1 %32, label %78, label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.BMVert, ptr %37, i64 0, i32 2, i64 %27
  %73 = load float, ptr %72, align 4, !tbaa !201
  %74 = call float @llvm.fabs.f32(float %73)
  %75 = fcmp ogt float %74, 0x3EE4F8B580000000
  %76 = zext i1 %75 to i32
  %77 = add nsw i32 %35, %76
  store float 0.000000e+00, ptr %72, align 4, !tbaa !201
  br label %78

78:                                               ; preds = %71, %70
  %79 = phi i32 [ %77, %71 ], [ %35, %70 ]
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %37, i8 noundef zeroext 16) #18
  br label %80

80:                                               ; preds = %78, %51
  %81 = phi i32 [ %67, %51 ], [ %79, %78 ]
  %82 = add nsw i32 %38, 1
  br label %85

83:                                               ; preds = %44
  %84 = add nsw i32 %36, 1
  br label %85

85:                                               ; preds = %80, %83, %33, %41
  %86 = phi i32 [ %38, %41 ], [ %38, %33 ], [ %82, %80 ], [ %38, %83 ]
  %87 = phi i32 [ %36, %41 ], [ %36, %33 ], [ %36, %80 ], [ %84, %83 ]
  %88 = phi i32 [ %35, %41 ], [ %35, %33 ], [ %81, %80 ], [ %35, %83 ]
  %89 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %90 = add nuw i64 %34, 1
  %91 = icmp eq ptr %89, null
  br i1 %91, label %92, label %33, !llvm.loop !263

92:                                               ; preds = %85
  %93 = icmp eq i32 %87, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %96 = load ptr, ptr %95, align 8, !tbaa !99
  %97 = sub nsw i32 %86, %88
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %96, i32 noundef 16, ptr noundef nonnull @.str.530, i32 noundef %97, i32 noundef %88, i32 noundef %87) #17
  br label %104

98:                                               ; preds = %2, %92
  %99 = phi i32 [ %88, %92 ], [ 0, %2 ]
  %100 = phi i32 [ %86, %92 ], [ 0, %2 ]
  %101 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %102 = load ptr, ptr %101, align 8, !tbaa !99
  %103 = sub nsw i32 %100, %99
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %102, i32 noundef 2, ptr noundef nonnull @.str.531, i32 noundef %103, i32 noundef %99) #17
  br label %104

104:                                              ; preds = %98, %94
  %105 = load ptr, ptr @MEM_freeN, align 8, !tbaa !129
  call void %105(ptr noundef %13) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret i32 4
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_esubdivide(ptr noundef, i8 noundef zeroext, float noundef, i16 noundef signext, i8 noundef zeroext, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_operator_edgering_props_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !264 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.389) #17
  store i32 %5, ptr %1, align 4, !tbaa !56
  %6 = load ptr, ptr %3, align 8, !tbaa !49
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.3) #17
  %8 = getelementptr inbounds %struct.EdgeRingOpSubdProps, ptr %1, i64 0, i32 1
  store i32 %7, ptr %8, align 4, !tbaa !59
  %9 = load ptr, ptr %3, align 8, !tbaa !49
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.6) #17
  %11 = getelementptr inbounds %struct.EdgeRingOpSubdProps, ptr %1, i64 0, i32 2
  store float %10, ptr %11, align 4, !tbaa !60
  %12 = load ptr, ptr %3, align 8, !tbaa !49
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.390) #17
  %14 = getelementptr inbounds %struct.EdgeRingOpSubdProps, ptr %1, i64 0, i32 3
  store i32 %13, ptr %14, align 4, !tbaa !61
  %15 = load ptr, ptr %3, align 8, !tbaa !49
  %16 = tail call float @RNA_float_get(ptr noundef %15, ptr noundef nonnull @.str.391) #17
  %17 = getelementptr inbounds %struct.EdgeRingOpSubdProps, ptr %1, i64 0, i32 4
  store float %16, ptr %17, align 4, !tbaa !62
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @EDBM_op_callf(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_enum_items(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_enum_default(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_ui_text(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_translation_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @EDBM_op_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @EDBM_op_finish(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_selectmode_flush_ex(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_selectmode_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !265 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !266
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
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !267
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !80
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !268
  br label %26

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !267
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !80
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !269
  br label %26

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !267
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !80
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !270
  br label %26

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !267
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !80
  br label %26

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !267
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !80
  br label %26

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !267
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !80
  br label %26

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !267
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !80
  br label %26

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !267
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !80
  br label %26

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !267
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !80
  br label %26

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !267
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !80
  br label %26

24:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !267
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !80
  br label %26

25:                                               ; preds = %4
  unreachable

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %27 = phi ptr [ %3, %24 ], [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %28 = phi ptr [ @bmiter__loop_of_face_begin, %24 ], [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %27, ptr %0, align 8, !tbaa !164
  tail call void %28(ptr noundef nonnull %0) #17
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

; Function Attrs: optsize
declare void @EDBM_flag_disable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_set(ptr nocapture noundef %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #5 !PGOFuncName !271 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %0, i8 noundef zeroext %1) #18
  br label %7

6:                                                ; preds = %3
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %0, i8 noundef zeroext %1) #18
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bm_face_is_loose(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !272 {
  %2 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !273
  br label %4

4:                                                ; preds = %10, %1
  %5 = phi ptr [ %3, %1 ], [ %12, %10 ]
  %6 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !233
  %8 = tail call zeroext i8 @BM_edge_is_boundary(ptr noundef %7) #18, !range !93
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !274
  %13 = icmp eq ptr %12, %3
  br i1 %13, label %14, label %4, !llvm.loop !275

14:                                               ; preds = %10, %4
  %15 = phi i8 [ 0, %4 ], [ 1, %10 ]
  ret i8 %15
}

; Function Attrs: optsize
declare void @BM_mesh_delete_hflag_context(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @BM_edge_is_wire(ptr nocapture noundef readonly %0) #3 !PGOFuncName !276 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !238
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_report_delete_info(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !277 {
  %4 = load i32, ptr %2, align 4, !tbaa !91
  %5 = load i32, ptr %1, align 8, !tbaa !166
  %6 = sub nsw i32 %4, %5
  %7 = getelementptr inbounds i32, ptr %2, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !91
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !103
  %11 = sub nsw i32 %8, %10
  %12 = getelementptr inbounds i32, ptr %2, i64 2
  %13 = load i32, ptr %12, align 4, !tbaa !91
  %14 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !92
  %16 = sub nsw i32 %13, %15
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.412, i32 noundef %6, i32 noundef %11, i32 noundef %16) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #5 !PGOFuncName !278 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !77
  %5 = or i8 %4, %1
  store i8 %5, ptr %3, align 1, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #5 !PGOFuncName !279 {
  %3 = xor i8 %1, -1
  %4 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !77
  %6 = and i8 %5, %3
  store i8 %6, ptr %4, align 1, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) #7 !PGOFuncName !280 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !238
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !240
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @edbm_add_edge_face__smooth_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !281 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store i64 0, ptr %3, align 8
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %1, %22
  %7 = phi ptr [ %23, %22 ], [ %4, %1 ]
  %8 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %7, i8 noundef zeroext 1) #18, !range !72
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.BMEdge, ptr %7, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !238
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !239
  %17 = call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef %16, i8 noundef zeroext 8) #18, !range !93
  %18 = zext nneg i8 %17 to i64
  %19 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !91
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !91
  br label %22

22:                                               ; preds = %6, %10, %14
  %23 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %6, !llvm.loop !282

25:                                               ; preds = %22
  %26 = load i32, ptr %3, align 8, !tbaa !91
  %27 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !91
  br label %29

29:                                               ; preds = %25, %1
  %30 = phi i32 [ %28, %25 ], [ 0, %1 ]
  %31 = phi i32 [ %26, %25 ], [ 0, %1 ]
  %32 = icmp ult i32 %31, %30
  %33 = zext i1 %32 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #19
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @edbm_add_edge_face_exec__tricky_extend_sel(ptr noundef %0) unnamed_addr #0 !PGOFuncName !283 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca [3 x ptr], align 16
  %4 = alloca [2 x ptr], align 16
  %5 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #19
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !86
  switch i32 %7, label %158 [
    i32 1, label %8
    i32 2, label %54
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !89
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %158

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !90
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %158

16:                                               ; preds = %12
  %17 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %158, label %19

19:                                               ; preds = %16, %23
  %20 = phi ptr [ %24, %23 ], [ %17, %16 ]
  %21 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %20, i8 noundef zeroext 1) #18, !range !72
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %158, label %19, !llvm.loop !284

26:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  %27 = call fastcc i32 @edbm_add_edge_face_exec__vert_edge_lookup(ptr noundef nonnull %20, ptr noundef null, ptr noundef nonnull %3, i32 noundef 3, ptr noundef nonnull @BM_edge_is_wire) #18
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load ptr, ptr %3, align 16, !tbaa !129
  %31 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !129
  %33 = call zeroext i8 @BM_edge_share_face_check(ptr noundef %30, ptr noundef %32) #17
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %29, %26
  %36 = call fastcc i32 @edbm_add_edge_face_exec__vert_edge_lookup(ptr noundef nonnull %20, ptr noundef null, ptr noundef nonnull %3, i32 noundef 3, ptr noundef nonnull @BM_edge_is_boundary) #18
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load ptr, ptr %3, align 16, !tbaa !129
  %40 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !129
  %42 = call zeroext i8 @BM_edge_share_face_check(ptr noundef %39, ptr noundef %41) #17
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38, %29
  %45 = phi ptr [ %41, %38 ], [ %32, %29 ]
  %46 = phi ptr [ %39, %38 ], [ %30, %29 ]
  %47 = call fastcc ptr @BM_edge_other_vert(ptr noundef %46, ptr noundef nonnull %20) #18
  %48 = call fastcc ptr @BM_edge_other_vert(ptr noundef %45, ptr noundef nonnull %20) #18
  %49 = call ptr @BM_edge_exists(ptr noundef %47, ptr noundef %48) #17
  call void @BM_edge_select_set(ptr noundef %0, ptr noundef %46, i8 noundef zeroext 1) #17
  call void @BM_edge_select_set(ptr noundef %0, ptr noundef %45, i8 noundef zeroext 1) #17
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  call void @BM_edge_select_set(ptr noundef %0, ptr noundef nonnull %49, i8 noundef zeroext 1) #17
  br label %53

52:                                               ; preds = %35, %38
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %158

53:                                               ; preds = %44, %51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %158

54:                                               ; preds = %1
  %55 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 5
  %56 = load i32, ptr %55, align 4, !tbaa !89
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %158

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 6
  %60 = load i32, ptr %59, align 8, !tbaa !90
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %158

62:                                               ; preds = %58
  %63 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef null) #18
  %64 = icmp eq ptr %63, null
  br i1 %64, label %158, label %65

65:                                               ; preds = %62, %69
  %66 = phi ptr [ %70, %69 ], [ %63, %62 ]
  %67 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %66, i8 noundef zeroext 1) #18, !range !72
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #18
  %71 = icmp eq ptr %70, null
  br i1 %71, label %158, label %65, !llvm.loop !285

72:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  %73 = getelementptr inbounds %struct.BMEdge, ptr %66, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !115
  %75 = call fastcc i32 @edbm_add_edge_face_exec__vert_edge_lookup(ptr noundef %74, ptr noundef nonnull %66, ptr noundef nonnull %4, i32 noundef 2, ptr noundef nonnull @BM_edge_is_wire) #18
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.BMEdge, ptr %66, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !118
  %80 = call fastcc i32 @edbm_add_edge_face_exec__vert_edge_lookup(ptr noundef %79, ptr noundef nonnull %66, ptr noundef nonnull %5, i32 noundef 2, ptr noundef nonnull @BM_edge_is_wire) #18
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load ptr, ptr %4, align 16, !tbaa !129
  %84 = call zeroext i8 @BM_edge_share_face_check(ptr noundef nonnull %66, ptr noundef %83) #17
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load ptr, ptr %5, align 16, !tbaa !129
  %88 = call zeroext i8 @BM_edge_share_face_check(ptr noundef nonnull %66, ptr noundef %87) #17
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %141, label %90

90:                                               ; preds = %86, %82, %77, %72
  %91 = load ptr, ptr %73, align 8, !tbaa !115
  %92 = call fastcc i32 @edbm_add_edge_face_exec__vert_edge_lookup(ptr noundef %91, ptr noundef nonnull %66, ptr noundef nonnull %4, i32 noundef 2, ptr noundef nonnull @BM_edge_is_wire) #18
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.BMEdge, ptr %66, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !118
  %97 = call fastcc i32 @edbm_add_edge_face_exec__vert_edge_lookup(ptr noundef %96, ptr noundef nonnull %66, ptr noundef nonnull %5, i32 noundef 2, ptr noundef nonnull @BM_edge_is_boundary) #18
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load ptr, ptr %4, align 16, !tbaa !129
  %101 = call zeroext i8 @BM_edge_share_face_check(ptr noundef nonnull %66, ptr noundef %100) #17
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load ptr, ptr %5, align 16, !tbaa !129
  %105 = call zeroext i8 @BM_edge_share_face_check(ptr noundef nonnull %66, ptr noundef %104) #17
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %141, label %107

107:                                              ; preds = %103, %99, %94, %90
  %108 = load ptr, ptr %73, align 8, !tbaa !115
  %109 = call fastcc i32 @edbm_add_edge_face_exec__vert_edge_lookup(ptr noundef %108, ptr noundef nonnull %66, ptr noundef nonnull %4, i32 noundef 2, ptr noundef nonnull @BM_edge_is_boundary) #18
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %124

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.BMEdge, ptr %66, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !118
  %114 = call fastcc i32 @edbm_add_edge_face_exec__vert_edge_lookup(ptr noundef %113, ptr noundef nonnull %66, ptr noundef nonnull %5, i32 noundef 2, ptr noundef nonnull @BM_edge_is_wire) #18
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load ptr, ptr %4, align 16, !tbaa !129
  %118 = call zeroext i8 @BM_edge_share_face_check(ptr noundef nonnull %66, ptr noundef %117) #17
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load ptr, ptr %5, align 16, !tbaa !129
  %122 = call zeroext i8 @BM_edge_share_face_check(ptr noundef nonnull %66, ptr noundef %121) #17
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %141, label %124

124:                                              ; preds = %120, %116, %111, %107
  %125 = load ptr, ptr %73, align 8, !tbaa !115
  %126 = call fastcc i32 @edbm_add_edge_face_exec__vert_edge_lookup(ptr noundef %125, ptr noundef nonnull %66, ptr noundef nonnull %4, i32 noundef 2, ptr noundef nonnull @BM_edge_is_boundary) #18
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %156

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.BMEdge, ptr %66, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !118
  %131 = call fastcc i32 @edbm_add_edge_face_exec__vert_edge_lookup(ptr noundef %130, ptr noundef nonnull %66, ptr noundef nonnull %5, i32 noundef 2, ptr noundef nonnull @BM_edge_is_boundary) #18
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %156

133:                                              ; preds = %128
  %134 = load ptr, ptr %4, align 16, !tbaa !129
  %135 = call zeroext i8 @BM_edge_share_face_check(ptr noundef nonnull %66, ptr noundef %134) #17
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %133
  %138 = load ptr, ptr %5, align 16, !tbaa !129
  %139 = call zeroext i8 @BM_edge_share_face_check(ptr noundef nonnull %66, ptr noundef %138) #17
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %137, %120, %103, %86
  %142 = phi ptr [ %138, %137 ], [ %121, %120 ], [ %104, %103 ], [ %87, %86 ]
  %143 = phi ptr [ %134, %137 ], [ %117, %120 ], [ %100, %103 ], [ %83, %86 ]
  %144 = load ptr, ptr %73, align 8, !tbaa !115
  %145 = call fastcc ptr @BM_edge_other_vert(ptr noundef %143, ptr noundef %144) #18
  %146 = getelementptr inbounds %struct.BMEdge, ptr %66, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !118
  %148 = call fastcc ptr @BM_edge_other_vert(ptr noundef %142, ptr noundef %147) #18
  %149 = icmp eq ptr %145, %148
  br i1 %149, label %152, label %150

150:                                              ; preds = %141
  %151 = call ptr @BM_edge_exists(ptr noundef %145, ptr noundef %148) #17
  br label %152

152:                                              ; preds = %141, %150
  %153 = phi ptr [ %151, %150 ], [ null, %141 ]
  call void @BM_edge_select_set(ptr noundef %0, ptr noundef %143, i8 noundef zeroext 1) #17
  call void @BM_edge_select_set(ptr noundef %0, ptr noundef %142, i8 noundef zeroext 1) #17
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %152
  call void @BM_edge_select_set(ptr noundef %0, ptr noundef nonnull %153, i8 noundef zeroext 1) #17
  br label %157

156:                                              ; preds = %124, %128, %133, %137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  br label %158

157:                                              ; preds = %152, %155
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  br label %158

158:                                              ; preds = %69, %23, %62, %16, %1, %8, %12, %58, %54, %52, %156, %157, %53
  %159 = phi ptr [ %20, %53 ], [ %66, %157 ], [ null, %156 ], [ null, %52 ], [ null, %54 ], [ null, %58 ], [ null, %12 ], [ null, %8 ], [ null, %1 ], [ null, %16 ], [ null, %62 ], [ null, %23 ], [ null, %69 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #19
  ret ptr %159
}

; Function Attrs: optsize
declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_slot_buffer_get_first(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_add_edge_face_exec__tricky_finalize_sel(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !286 {
  tail call void @BM_select_history_clear(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !287
  %6 = icmp eq i8 %5, 1
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = tail call ptr @BM_face_vert_share_loop(ptr noundef %2, ptr noundef nonnull %1) #17
  tail call void @BM_face_select_set(ptr noundef %0, ptr noundef %2, i8 noundef zeroext 0) #17
  tail call void @BM_vert_select_set(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #17
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !274
  %11 = getelementptr inbounds %struct.BMLoop, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !233
  tail call void @BM_edge_select_set(ptr noundef %0, ptr noundef %12, i8 noundef zeroext 1) #17
  %13 = load ptr, ptr %9, align 8, !tbaa !274
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 2
  br label %38

15:                                               ; preds = %3
  %16 = tail call ptr @BM_face_edge_share_loop(ptr noundef %2, ptr noundef nonnull %1) #17
  tail call void @BM_face_select_set(ptr noundef %0, ptr noundef %2, i8 noundef zeroext 0) #17
  tail call void @BM_edge_select_set(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #17
  %17 = getelementptr inbounds %struct.BMFace, ptr %2, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !147
  %19 = icmp eq i32 %18, 4
  %20 = getelementptr inbounds %struct.BMLoop, ptr %16, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !274
  %22 = getelementptr inbounds %struct.BMLoop, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !274
  br i1 %19, label %24, label %31

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !233
  tail call void @BM_edge_select_set(ptr noundef %0, ptr noundef %26, i8 noundef zeroext 1) #17
  %27 = load ptr, ptr %20, align 8, !tbaa !274
  %28 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !274
  %30 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 2
  br label %38

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.BMLoop, ptr %23, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !231
  tail call void @BM_vert_select_set(ptr noundef %0, ptr noundef %33, i8 noundef zeroext 1) #17
  %34 = load ptr, ptr %20, align 8, !tbaa !274
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !274
  %37 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 1
  br label %38

38:                                               ; preds = %24, %31, %7
  %39 = phi ptr [ %30, %24 ], [ %37, %31 ], [ %14, %7 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !129
  tail call void @_bm_select_history_store(ptr noundef %0, ptr noundef %40) #17
  ret void
}

; Function Attrs: optsize
declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 !PGOFuncName !289 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !77
  %5 = and i8 %4, %1
  %6 = icmp ne i8 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @edbm_add_edge_face_exec__vert_edge_lookup(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef writeonly %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !PGOFuncName !290 {
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #19
  %7 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 4, ptr noundef %0) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %5, %24
  %10 = phi i32 [ %25, %24 ], [ 0, %5 ]
  %11 = phi ptr [ %26, %24 ], [ %7, %5 ]
  %12 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %11, i8 noundef zeroext 2) #18, !range !72
  %13 = icmp ne i8 %12, 0
  %14 = icmp eq ptr %11, %1
  %15 = or i1 %14, %13
  br i1 %15, label %24, label %16

16:                                               ; preds = %9
  %17 = call zeroext i8 %4(ptr noundef nonnull %11) #17, !callees !291
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = add nsw i32 %10, 1
  %21 = sext i32 %10 to i64
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  store ptr %11, ptr %22, align 8, !tbaa !129
  %23 = icmp slt i32 %20, %3
  br i1 %23, label %24, label %28

24:                                               ; preds = %9, %16, %19
  %25 = phi i32 [ %20, %19 ], [ %10, %16 ], [ %10, %9 ]
  %26 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #18
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %9, !llvm.loop !292

28:                                               ; preds = %24, %19, %5
  %29 = phi i32 [ 0, %5 ], [ %20, %19 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #19
  ret i32 %29
}

; Function Attrs: optsize
declare zeroext i8 @BM_edge_share_face_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !293 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: optsize
declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_select_history_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_bm_select_history_store(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_edge_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_uvedit_live_unwrap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @EDBM_op_call_and_selectf(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_select_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !294 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_edge_face_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_hflag_disable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_mesh_hide(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_mesh_reveal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_verts_mirror_cache_begin(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_verts_mirror_apply(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_verts_mirror_cache_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_set_smooth_faces(ptr noundef readonly %0, i16 noundef signext %1) unnamed_addr #0 !PGOFuncName !295 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !51
  %7 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %6, i8 noundef zeroext 3, ptr noundef null) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = zext nneg i16 %1 to i32
  br label %11

11:                                               ; preds = %9, %16
  %12 = phi ptr [ %7, %9 ], [ %17, %16 ]
  %13 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %12, i8 noundef zeroext 1) #18, !range !72
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %12, i8 noundef zeroext 8, i32 noundef %10) #18
  br label %16

16:                                               ; preds = %11, %15
  %17 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11, !llvm.loop !296

19:                                               ; preds = %16, %5, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @merge_target(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !297 {
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  %11 = icmp eq i8 %4, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 8, !tbaa !51
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef %13, i8 noundef zeroext 1, ptr noundef null) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %46, label %16

16:                                               ; preds = %12, %24
  %17 = phi i32 [ %25, %24 ], [ 0, %12 ]
  %18 = phi ptr [ %26, %24 ], [ %14, %12 ]
  %19 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %18, i8 noundef zeroext 1) #18, !range !72
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 2
  call fastcc void @add_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %22) #18
  %23 = add nsw i32 %17, 1
  br label %24

24:                                               ; preds = %16, %21
  %25 = phi i32 [ %23, %21 ], [ %17, %16 ]
  %26 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #18
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %16, !llvm.loop !298

28:                                               ; preds = %24
  %29 = icmp eq i32 %25, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %28
  %31 = sitofp i32 %25 to float
  %32 = fdiv float 1.000000e+00, %31
  call fastcc void @mul_v3_fl(ptr noundef nonnull %10, float noundef %32) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #18
  br label %37

33:                                               ; preds = %7
  %34 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %1, ptr noundef %2) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef %34) #18
  %35 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %35, ptr noundef nonnull %9) #17
  %36 = icmp eq ptr %34, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %30, %33
  %38 = icmp eq i8 %5, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %0, ptr noundef %6, ptr noundef nonnull @.str.436, i32 noundef 1) #17
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39, %37
  %43 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %0, ptr noundef %6, ptr noundef nonnull @.str.437, i32 noundef 1, ptr noundef nonnull %9) #17
  %44 = icmp ne i8 %43, 0
  %45 = zext i1 %44 to i8
  br label %46

46:                                               ; preds = %12, %28, %42, %39, %33
  %47 = phi i8 [ 0, %33 ], [ 0, %39 ], [ %45, %42 ], [ 0, %28 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #19
  ret i8 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @merge_firstlast(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !299 {
  %5 = icmp eq i8 %1, 0
  %6 = load ptr, ptr %0, align 8, !tbaa !51
  br i1 %5, label %7, label %15

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 32, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !161
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.BMEditSelection, ptr %9, i64 0, i32 3
  %13 = load i8, ptr %12, align 8, !tbaa !162
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %23, label %39

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 32
  %17 = load ptr, ptr %16, align 8, !tbaa !160
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.BMEditSelection, ptr %17, i64 0, i32 3
  %21 = load i8, ptr %20, align 8, !tbaa !162
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %23, label %39

23:                                               ; preds = %19, %11
  %24 = phi ptr [ %9, %11 ], [ %17, %19 ]
  %25 = getelementptr inbounds %struct.BMEditSelection, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !300
  %27 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %26, i8 noundef zeroext 1) #18, !range !72
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %23
  %30 = icmp eq i8 %2, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %29
  %32 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull @.str.438, i32 noundef 1, ptr noundef %26) #17
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31, %29
  %35 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  %36 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull @.str.437, i32 noundef 1, ptr noundef nonnull %35) #17
  %37 = icmp ne i8 %36, 0
  %38 = zext i1 %37 to i8
  br label %39

39:                                               ; preds = %34, %31, %23, %15, %19, %7, %11
  %40 = phi i8 [ 0, %11 ], [ 0, %7 ], [ 0, %19 ], [ 0, %15 ], [ 0, %23 ], [ 0, %31 ], [ %38, %34 ]
  ret i8 %40
}

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !301 {
  %3 = load float, ptr %1, align 4, !tbaa !201
  store float %3, ptr %0, align 4, !tbaa !201
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !201
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !201
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !201
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !201
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !302 {
  %3 = load float, ptr %1, align 4, !tbaa !201
  %4 = load float, ptr %0, align 4, !tbaa !201
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !201
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !201
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !201
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !201
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !201
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !201
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !303 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !201
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !201
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !201
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !201
  ret void
}

; Function Attrs: optsize
declare void @RNA_enum_items_add_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_enable_test(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shape_propagate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !304 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 24
  %6 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %5, i32 noundef 28) #17
  %7 = load ptr, ptr %0, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 24
  %9 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %8, i32 noundef 28) #17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !99
  tail call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.454) #17
  br label %41

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !51
  %16 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %15, i8 noundef zeroext 1, ptr noundef null) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  %19 = icmp slt i32 %6, 1
  br label %20

20:                                               ; preds = %18, %38
  %21 = phi ptr [ %16, %18 ], [ %39, %38 ]
  %22 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %21, i8 noundef zeroext 1) #18, !range !72
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %20
  %25 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %21, i8 noundef zeroext 2) #18, !range !72
  %26 = icmp ne i8 %25, 0
  %27 = select i1 %26, i1 true, i1 %19
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i32 [ 0, %28 ], [ %36, %30 ]
  %32 = load ptr, ptr %0, align 8, !tbaa !51
  %33 = getelementptr inbounds %struct.BMesh, ptr %32, i64 0, i32 24
  %34 = load ptr, ptr %21, align 8, !tbaa !172
  %35 = call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %33, ptr noundef %34, i32 noundef 28, i32 noundef %31) #17
  call fastcc void @copy_v3_v3(ptr noundef %35, ptr noundef nonnull %29) #18
  %36 = add nuw nsw i32 %31, 1
  %37 = icmp eq i32 %36, %6
  br i1 %37, label %38, label %30, !llvm.loop !305

38:                                               ; preds = %30, %24, %20
  %39 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %20, !llvm.loop !306

41:                                               ; preds = %38, %14, %11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !307 {
  %4 = load float, ptr %1, align 4, !tbaa !201
  %5 = load float, ptr %2, align 4, !tbaa !201
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !201
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !201
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !201
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !201
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !201
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !201
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !308 {
  %4 = load float, ptr %1, align 4, !tbaa !201
  %5 = load float, ptr %0, align 4, !tbaa !201
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !201
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !201
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !201
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !201
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !201
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !201
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !201
  ret void
}

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemPointerR(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_collection_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v2_fl(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !309 {
  store <2 x float> <float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000>, ptr %0, align 4, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !310 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !311
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !312 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !311
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc float @bm_edge_seg_isect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4, ptr nocapture noundef writeonly %5) unnamed_addr #11 !PGOFuncName !313 {
  %7 = load float, ptr %0, align 4, !tbaa !201
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !201
  %10 = load <2 x float>, ptr %1, align 4, !tbaa !201
  %11 = extractelement <2 x float> %10, i64 0
  %12 = fsub float %11, %7
  %13 = fcmp une float %12, 0.000000e+00
  %14 = insertelement <2 x float> %10, float 1.000000e+05, i64 1
  br i1 %13, label %15, label %26

15:                                               ; preds = %6
  %16 = extractelement <2 x float> %10, i64 1
  %17 = fsub float %16, %9
  %18 = fneg float %7
  %19 = fmul float %16, %18
  %20 = tail call float @llvm.fmuladd.f32(float %11, float %9, float %19)
  %21 = insertelement <2 x float> poison, float %20, i64 0
  %22 = insertelement <2 x float> %21, float %17, i64 1
  %23 = insertelement <2 x float> poison, float %12, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = fdiv <2 x float> %22, %24
  br label %26

26:                                               ; preds = %6, %15
  %27 = phi <2 x float> [ %25, %15 ], [ %14, %6 ]
  store i32 0, ptr %5, align 4, !tbaa !91
  %28 = icmp ne i8 %4, 3
  %29 = icmp sgt i32 %3, 0
  %30 = and i1 %28, %29
  br i1 %30, label %31, label %70

31:                                               ; preds = %26
  %32 = zext nneg i32 %3 to i64
  %33 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %34 = extractelement <2 x float> %10, i64 1
  br label %38

35:                                               ; preds = %65
  %36 = add nuw nsw i64 %39, 1
  %37 = icmp eq i64 %36, %32
  br i1 %37, label %70, label %38, !llvm.loop !314

38:                                               ; preds = %31, %35
  %39 = phi i64 [ 0, %31 ], [ %36, %35 ]
  %40 = phi float [ 0.000000e+00, %31 ], [ %50, %35 ]
  %41 = phi float [ 0.000000e+00, %31 ], [ %52, %35 ]
  %42 = icmp eq i64 %39, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load float, ptr %2, align 4, !tbaa !201
  %45 = load float, ptr %33, align 4, !tbaa !201
  br label %46

46:                                               ; preds = %38, %43
  %47 = phi float [ %45, %43 ], [ %41, %38 ]
  %48 = phi float [ %44, %43 ], [ %40, %38 ]
  %49 = getelementptr inbounds [2 x float], ptr %2, i64 %39
  %50 = load float, ptr %49, align 4, !tbaa !201
  %51 = getelementptr inbounds [2 x float], ptr %2, i64 %39, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !201
  %53 = fcmp oeq float %48, %7
  %54 = fcmp oeq float %47, %9
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %60, label %56

56:                                               ; preds = %46
  %57 = fcmp oeq float %50, %7
  %58 = fcmp oeq float %52, %9
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %46
  store i32 1, ptr %5, align 4, !tbaa !91
  br label %216

61:                                               ; preds = %56
  %62 = fcmp oeq float %48, %11
  %63 = fcmp oeq float %47, %34
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = fcmp oeq float %50, %11
  %67 = fcmp oeq float %52, %34
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %35

69:                                               ; preds = %65, %61
  store i32 2, ptr %5, align 4, !tbaa !91
  br label %216

70:                                               ; preds = %35, %26
  %71 = phi float [ 0.000000e+00, %26 ], [ %52, %35 ]
  %72 = phi float [ 0.000000e+00, %26 ], [ %50, %35 ]
  br i1 %29, label %73, label %216

73:                                               ; preds = %70
  %74 = extractelement <2 x float> %27, i64 1
  %75 = fcmp une float %74, 1.000000e+05
  %76 = fneg float %74
  %77 = fcmp oeq float %74, 1.000000e+05
  %78 = zext nneg i32 %3 to i64
  %79 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %80 = extractelement <2 x float> %10, i64 1
  %81 = extractelement <2 x float> %27, i64 0
  br label %82

82:                                               ; preds = %73, %213
  %83 = phi i64 [ 0, %73 ], [ %214, %213 ]
  %84 = phi float [ %72, %73 ], [ %95, %213 ]
  %85 = phi float [ %71, %73 ], [ %97, %213 ]
  %86 = phi float [ 0.000000e+00, %73 ], [ %101, %213 ]
  %87 = icmp eq i64 %83, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load float, ptr %2, align 4, !tbaa !201
  %90 = load float, ptr %79, align 4, !tbaa !201
  br label %91

91:                                               ; preds = %82, %88
  %92 = phi float [ %90, %88 ], [ %85, %82 ]
  %93 = phi float [ %89, %88 ], [ %84, %82 ]
  %94 = getelementptr inbounds [2 x float], ptr %2, i64 %83
  %95 = load float, ptr %94, align 4, !tbaa !201
  %96 = getelementptr inbounds [2 x float], ptr %2, i64 %83, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !201
  %98 = tail call float @llvm.fmuladd.f32(float %76, float %95, float %97)
  %99 = fsub float %98, %81
  %100 = fsub float %11, %95
  %101 = select i1 %75, float %99, float %100
  %102 = select i1 %87, float %101, float %86
  %103 = fmul float %101, %102
  %104 = fcmp ugt float %103, 0.000000e+00
  br i1 %104, label %213, label %105

105:                                              ; preds = %91
  %106 = fsub float %95, %93
  %107 = fcmp une float %106, 0.000000e+00
  %108 = insertelement <2 x float> <float poison, float 1.000000e+05>, float %95, i64 0
  br i1 %107, label %109, label %119

109:                                              ; preds = %105
  %110 = fsub float %97, %92
  %111 = fneg float %93
  %112 = fmul float %97, %111
  %113 = tail call float @llvm.fmuladd.f32(float %95, float %92, float %112)
  %114 = insertelement <2 x float> poison, float %113, i64 0
  %115 = insertelement <2 x float> %114, float %110, i64 1
  %116 = insertelement <2 x float> poison, float %106, i64 0
  %117 = shufflevector <2 x float> %116, <2 x float> poison, <2 x i32> zeroinitializer
  %118 = fdiv <2 x float> %115, %117
  br label %119

119:                                              ; preds = %105, %109
  %120 = phi <2 x float> [ %118, %109 ], [ %108, %105 ]
  %121 = tail call fastcc float @max_ff(float noundef %7, float noundef %11) #18
  %122 = fadd float %121, 0x3F50624DE0000000
  %123 = tail call fastcc float @min_ff(float noundef %7, float noundef %11) #18
  %124 = fadd float %123, 0xBF50624DE0000000
  %125 = tail call fastcc float @max_ff(float noundef %9, float noundef %80) #18
  %126 = fadd float %125, 0x3F50624DE0000000
  %127 = tail call fastcc float @min_ff(float noundef %9, float noundef %80) #18
  %128 = fadd float %127, 0xBF50624DE0000000
  %129 = extractelement <2 x float> %120, i64 1
  %130 = fcmp oeq float %129, %74
  br i1 %130, label %131, label %146

131:                                              ; preds = %119
  %132 = tail call fastcc float @max_ff(float noundef %93, float noundef %95) #18
  %133 = tail call fastcc float @min_ff(float noundef %93, float noundef %95) #18
  %134 = tail call fastcc float @min_ff(float noundef %122, float noundef %132) #18
  %135 = tail call fastcc float @max_ff(float noundef %124, float noundef %133) #18
  %136 = tail call fastcc float @max_ff(float noundef %92, float noundef %97) #18
  %137 = tail call fastcc float @min_ff(float noundef %92, float noundef %97) #18
  %138 = tail call fastcc float @min_ff(float noundef %126, float noundef %136) #18
  %139 = tail call fastcc float @max_ff(float noundef %128, float noundef %137) #18
  %140 = insertelement <2 x float> poison, float %134, i64 0
  %141 = insertelement <2 x float> %140, float %138, i64 1
  %142 = insertelement <2 x float> poison, float %135, i64 0
  %143 = insertelement <2 x float> %142, float %139, i64 1
  %144 = fadd <2 x float> %141, %143
  %145 = fmul <2 x float> %144, <float 5.000000e-01, float 5.000000e-01>
  br label %168

146:                                              ; preds = %119
  br i1 %77, label %147, label %151

147:                                              ; preds = %146
  %148 = extractelement <2 x float> %120, i64 0
  %149 = tail call float @llvm.fmuladd.f32(float %129, float %11, float %148)
  %150 = insertelement <2 x float> %10, float %149, i64 1
  br label %168

151:                                              ; preds = %146
  %152 = fcmp oeq float %129, 1.000000e+05
  br i1 %152, label %153, label %157

153:                                              ; preds = %151
  %154 = tail call float @llvm.fmuladd.f32(float %74, float %95, float %81)
  %155 = insertelement <2 x float> poison, float %95, i64 0
  %156 = insertelement <2 x float> %155, float %154, i64 1
  br label %168

157:                                              ; preds = %151
  %158 = extractelement <2 x float> %120, i64 0
  %159 = fsub <2 x float> %120, %27
  %160 = fsub float %74, %129
  %161 = fneg float %129
  %162 = fmul float %81, %161
  %163 = tail call float @llvm.fmuladd.f32(float %158, float %74, float %162)
  %164 = insertelement <2 x float> %159, float %163, i64 1
  %165 = insertelement <2 x float> poison, float %160, i64 0
  %166 = shufflevector <2 x float> %165, <2 x float> poison, <2 x i32> zeroinitializer
  %167 = fdiv <2 x float> %164, %166
  br label %168

168:                                              ; preds = %147, %157, %153, %131
  %169 = phi <2 x float> [ %145, %131 ], [ %150, %147 ], [ %156, %153 ], [ %167, %157 ]
  %170 = extractelement <2 x float> %169, i64 0
  %171 = fcmp ult float %170, %124
  %172 = fcmp ugt float %170, %122
  %173 = or i1 %171, %172
  %174 = extractelement <2 x float> %169, i64 1
  %175 = fcmp ugt float %174, %126
  %176 = select i1 %173, i1 true, i1 %175
  %177 = fcmp ult float %174, %128
  %178 = select i1 %176, i1 true, i1 %177
  br i1 %178, label %213, label %179

179:                                              ; preds = %168
  br i1 %28, label %180, label %202

180:                                              ; preds = %179
  %181 = fadd float %7, 0.000000e+00
  %182 = fcmp ugt float %170, %181
  %183 = fcmp ult float %170, %7
  %184 = or i1 %182, %183
  %185 = fadd float %9, 0.000000e+00
  %186 = fcmp ugt float %174, %185
  %187 = select i1 %184, i1 true, i1 %186
  %188 = fcmp ult float %174, %9
  %189 = select i1 %187, i1 true, i1 %188
  br i1 %189, label %191, label %190

190:                                              ; preds = %180
  store i32 1, ptr %5, align 4, !tbaa !91
  br label %216

191:                                              ; preds = %180
  %192 = fadd <2 x float> %10, zeroinitializer
  %193 = fcmp ult float %170, %11
  %194 = fcmp ugt <2 x float> %169, %192
  %195 = extractelement <2 x i1> %194, i64 0
  %196 = or i1 %195, %193
  %197 = extractelement <2 x i1> %194, i64 1
  %198 = select i1 %196, i1 true, i1 %197
  %199 = fcmp ult float %174, %80
  %200 = select i1 %198, i1 true, i1 %199
  br i1 %200, label %202, label %201

201:                                              ; preds = %191
  store i32 2, ptr %5, align 4, !tbaa !91
  br label %216

202:                                              ; preds = %191, %179
  %203 = fcmp ole float %74, 1.000000e+00
  %204 = fcmp oge float %74, -1.000000e+00
  %205 = and i1 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = fsub float %170, %7
  %208 = fdiv float %207, %12
  br label %216

209:                                              ; preds = %202
  %210 = fsub float %174, %9
  %211 = fsub float %80, %9
  %212 = fdiv float %210, %211
  br label %216

213:                                              ; preds = %168, %91
  %214 = add nuw nsw i64 %83, 1
  %215 = icmp eq i64 %214, %78
  br i1 %215, label %216, label %82, !llvm.loop !315

216:                                              ; preds = %213, %70, %190, %201, %209, %206, %69, %60
  %217 = phi float [ 0.000000e+00, %60 ], [ 0.000000e+00, %69 ], [ 0.000000e+00, %190 ], [ 0.000000e+00, %201 ], [ %208, %206 ], [ %212, %209 ], [ 0.000000e+00, %70 ], [ 0.000000e+00, %213 ]
  ret float %217
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BMO_slot_map_float_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) unnamed_addr #0 !PGOFuncName !316 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr null, ptr %5, align 8
  store float %3, ptr %5, align 8, !tbaa !164
  %6 = load ptr, ptr %5, align 8, !tbaa !164
  tail call void @BMO_slot_map_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_set(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #5 !PGOFuncName !317 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !318
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !319
  %9 = and i16 %8, -2
  store i16 %9, ptr %7, align 2, !tbaa !319
  ret void
}

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_bool_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #12 !PGOFuncName !321 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #12 !PGOFuncName !322 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare void @BMO_slot_map_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_base(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @mesh_separate_selected(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !323 {
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %3, i8 noundef zeroext 11, i8 noundef zeroext 16, i8 noundef zeroext 0) #17
  tail call void @BM_mesh_elem_hflag_enable_test(ptr noundef %3, i8 noundef zeroext 11, i8 noundef zeroext 16, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1) #17
  %5 = tail call fastcc ptr @mesh_separate_tagged(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @mesh_separate_material(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !324 {
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  %6 = tail call ptr @BM_iter_at_index(ptr noundef %3, i8 noundef zeroext 3, ptr noundef null, i32 noundef 0) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %66, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 3
  br label %10

10:                                               ; preds = %8, %61
  %11 = phi ptr [ %6, %8 ], [ %64, %61 ]
  %12 = phi i8 [ 0, %8 ], [ %63, %61 ]
  %13 = getelementptr inbounds %struct.BMFace, ptr %11, i64 0, i32 5
  %14 = load i16, ptr %13, align 8, !tbaa !325
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %3, i8 noundef zeroext 11, i8 noundef zeroext 16, i8 noundef zeroext 0) #17
  %15 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %3, i8 noundef zeroext 3, ptr noundef null) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %41, label %17

17:                                               ; preds = %10, %37
  %18 = phi ptr [ %39, %37 ], [ %15, %10 ]
  %19 = phi i32 [ %38, %37 ], [ 0, %10 ]
  %20 = getelementptr inbounds %struct.BMFace, ptr %18, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !325
  %22 = icmp eq i16 %21, %14
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %18, i8 noundef zeroext 16) #18
  %24 = getelementptr inbounds %struct.BMFace, ptr %18, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !273
  br label %26

26:                                               ; preds = %26, %23
  %27 = phi ptr [ %25, %23 ], [ %33, %26 ]
  %28 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !231
  call fastcc void @_bm_elem_flag_enable(ptr noundef %29, i8 noundef zeroext 16) #18
  %30 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !233
  call fastcc void @_bm_elem_flag_enable(ptr noundef %31, i8 noundef zeroext 16) #18
  %32 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !274
  %34 = icmp eq ptr %33, %25
  br i1 %34, label %35, label %26, !llvm.loop !326

35:                                               ; preds = %26
  %36 = add nsw i32 %19, 1
  br label %37

37:                                               ; preds = %17, %35
  %38 = phi i32 [ %36, %35 ], [ %19, %17 ]
  %39 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #18
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %17, !llvm.loop !327

41:                                               ; preds = %37, %10
  %42 = phi i32 [ 0, %10 ], [ %38, %37 ]
  %43 = load i32, ptr %9, align 4, !tbaa !92
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.Base, ptr %2, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !205
  call fastcc void @mesh_separate_material_assign_mat_nr(ptr noundef %47, i16 noundef signext %14) #18
  %48 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef nonnull %3, i8 noundef zeroext 3, ptr noundef null) #18
  %49 = icmp eq ptr %48, null
  br i1 %49, label %66, label %50

50:                                               ; preds = %45, %50
  %51 = phi ptr [ %53, %50 ], [ %48, %45 ]
  %52 = getelementptr inbounds %struct.BMFace, ptr %51, i64 0, i32 5
  store i16 0, ptr %52, align 8, !tbaa !325
  %53 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #18
  %54 = icmp eq ptr %53, null
  br i1 %54, label %66, label %50, !llvm.loop !328

55:                                               ; preds = %41
  %56 = call fastcc ptr @mesh_separate_tagged(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #18
  %57 = icmp ne ptr %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.Base, ptr %56, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !205
  call fastcc void @mesh_separate_material_assign_mat_nr(ptr noundef %60, i16 noundef signext %14) #18
  br label %61

61:                                               ; preds = %55, %58
  %62 = zext i1 %57 to i8
  %63 = or i8 %12, %62
  %64 = call ptr @BM_iter_at_index(ptr noundef nonnull %3, i8 noundef zeroext 3, ptr noundef null, i32 noundef 0) #17
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %10

66:                                               ; preds = %61, %50, %4, %45
  %67 = phi i8 [ %12, %45 ], [ 0, %4 ], [ %12, %50 ], [ %63, %61 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  ret i8 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @mesh_separate_loose(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !329 {
  %5 = alloca %struct.BMWalker, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #19
  %6 = load i32, ptr %3, align 8, !tbaa !166
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef nonnull %3, i8 noundef zeroext 11, i8 noundef zeroext 16, i8 noundef zeroext 0) #17
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %53

8:                                                ; preds = %4, %46
  %9 = phi i32 [ %51, %46 ], [ 0, %4 ]
  %10 = phi i8 [ %50, %46 ], [ 0, %4 ]
  %11 = call ptr @BM_iter_at_index(ptr noundef nonnull %3, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %53, label %13

13:                                               ; preds = %8
  %14 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %11, i8 noundef zeroext 16) #18, !range !72
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %11, i8 noundef zeroext 16) #18
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ 0, %13 ], [ 1, %16 ]
  call void @BMW_init(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 0, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i32 noundef 0, i32 noundef 0) #17
  %19 = call ptr @BMW_begin(ptr noundef nonnull %5, ptr noundef nonnull %11) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %42, label %21

21:                                               ; preds = %17, %38
  %22 = phi i32 [ %39, %38 ], [ %18, %17 ]
  %23 = phi ptr [ %40, %38 ], [ %19, %17 ]
  %24 = getelementptr inbounds %struct.BMEdge, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !115
  %26 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %25, i8 noundef zeroext 16) #18, !range !72
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  call fastcc void @_bm_elem_flag_enable(ptr noundef %25, i8 noundef zeroext 16) #18
  %29 = add nsw i32 %22, 1
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i32 [ %22, %21 ], [ %29, %28 ]
  %32 = getelementptr inbounds %struct.BMEdge, ptr %23, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !118
  %34 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %33, i8 noundef zeroext 16) #18, !range !72
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  call fastcc void @_bm_elem_flag_enable(ptr noundef %33, i8 noundef zeroext 16) #18
  %37 = add nsw i32 %31, 1
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi i32 [ %31, %30 ], [ %37, %36 ]
  %40 = call ptr @BMW_step(ptr noundef nonnull %5) #17
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %21, !llvm.loop !330

42:                                               ; preds = %38, %17
  %43 = phi i32 [ %18, %17 ], [ %39, %38 ]
  call void @BMW_end(ptr noundef nonnull %5) #17
  %44 = load i32, ptr %3, align 8, !tbaa !166
  %45 = icmp eq i32 %44, %43
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  call fastcc void @bm_mesh_hflag_flush_vert(ptr noundef nonnull %3) #18
  %47 = call fastcc ptr @mesh_separate_tagged(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #18
  %48 = icmp ne ptr %47, null
  %49 = zext i1 %48 to i8
  %50 = or i8 %10, %49
  %51 = add nuw nsw i32 %9, 1
  %52 = icmp eq i32 %51, %6
  br i1 %52, label %53, label %8, !llvm.loop !331

53:                                               ; preds = %46, %8, %42, %4
  %54 = phi i8 [ 0, %4 ], [ %10, %42 ], [ %10, %8 ], [ %50, %46 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #19
  ret i8 %54
}

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_mesh_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_bm_from_me(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_bm_to_me(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mesh_separate_tagged(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !332 {
  %5 = getelementptr inbounds %struct.Base, ptr %2, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !205
  %7 = tail call ptr @BM_mesh_create(ptr noundef nonnull @bm_mesh_allocsize_default) #17
  tail call void @BM_mesh_elem_toolflags_ensure(ptr noundef %7) #17
  %8 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 24
  %9 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 24
  %10 = load i64, ptr @CD_MASK_BMESH, align 8, !tbaa !333
  tail call void @CustomData_copy(ptr noundef nonnull %8, ptr noundef nonnull %9, i64 noundef %10, i32 noundef 1, i32 noundef 0) #17
  %11 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 25
  %12 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 25
  tail call void @CustomData_copy(ptr noundef nonnull %11, ptr noundef nonnull %12, i64 noundef %10, i32 noundef 1, i32 noundef 0) #17
  %13 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 26
  %14 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 26
  tail call void @CustomData_copy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef %10, i32 noundef 1, i32 noundef 0) #17
  %15 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 27
  %16 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 27
  tail call void @CustomData_copy(ptr noundef nonnull %15, ptr noundef nonnull %16, i64 noundef %10, i32 noundef 1, i32 noundef 0) #17
  %17 = load i32, ptr @bm_mesh_allocsize_default, align 4, !tbaa !334
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %9, i32 noundef %17, i8 noundef zeroext 1) #17
  %18 = load i32, ptr getelementptr inbounds (%struct.BMAllocTemplate, ptr @bm_mesh_allocsize_default, i64 0, i32 1), align 4, !tbaa !336
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %12, i32 noundef %18, i8 noundef zeroext 2) #17
  %19 = load i32, ptr getelementptr inbounds (%struct.BMAllocTemplate, ptr @bm_mesh_allocsize_default, i64 0, i32 2), align 4, !tbaa !337
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %14, i32 noundef %19, i8 noundef zeroext 4) #17
  %20 = load i32, ptr getelementptr inbounds (%struct.BMAllocTemplate, ptr @bm_mesh_allocsize_default, i64 0, i32 3), align 4, !tbaa !338
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %16, i32 noundef %20, i8 noundef zeroext 8) #17
  %21 = tail call ptr @ED_object_add_duplicate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1) #17
  %22 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !205
  %24 = tail call ptr @give_matarar(ptr noundef %6) #17
  %25 = tail call ptr @give_totcolp(ptr noundef %6) #17
  %26 = load i16, ptr %25, align 2, !tbaa !339
  tail call void @assign_matarar(ptr noundef %23, ptr noundef %24, i16 noundef signext %26) #17
  tail call void @ED_base_object_select(ptr noundef %21, i16 noundef signext 1) #17
  %27 = tail call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.476, i32 noundef 16, ptr noundef %7) #17
  %28 = tail call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.477, i32 noundef 16, i32 noundef 5) #17
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %3, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0) #17
  tail call void @BM_mesh_normals_update(ptr noundef %7) #17
  %29 = load ptr, ptr %22, align 8, !tbaa !205
  %30 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 19
  %31 = load ptr, ptr %30, align 8, !tbaa !106
  tail call void @BM_mesh_bm_to_me(ptr noundef %7, ptr noundef %31, i8 noundef zeroext 0) #17
  tail call void @BM_mesh_free(ptr noundef %7) #17
  %32 = load ptr, ptr %22, align 8, !tbaa !205
  %33 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !106
  %35 = getelementptr inbounds %struct.Mesh, ptr %34, i64 0, i32 20
  store ptr null, ptr %35, align 8, !tbaa !168
  ret ptr %21
}

; Function Attrs: optsize
declare void @BM_mesh_elem_toolflags_ensure(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_copy(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_bmesh_init_pool(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_object_add_duplicate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @assign_matarar(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_matarar(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_totcolp(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_base_object_select(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_normals_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_iter_at_index(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_separate_material_assign_mat_nr(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 !PGOFuncName !340 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = tail call ptr @give_totcolp_id(ptr noundef %4) #17
  %6 = tail call ptr @give_matarar_id(ptr noundef %4) #17
  %7 = icmp eq ptr %5, null
  %8 = icmp eq ptr %6, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %45, label %10

10:                                               ; preds = %2
  %11 = load i16, ptr %5, align 2, !tbaa !339
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %10
  %14 = sext i16 %1 to i32
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %16 = load i32, ptr %15, align 8, !tbaa !341
  %17 = icmp sgt i32 %16, %14
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %20 = load ptr, ptr %19, align 8, !tbaa !342
  %21 = sext i16 %1 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !129
  %24 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %25 = load ptr, ptr %24, align 8, !tbaa !343
  %26 = getelementptr inbounds i8, ptr %25, i64 %21
  %27 = load i8, ptr %26, align 1, !tbaa !164
  br label %28

28:                                               ; preds = %13, %18
  %29 = phi ptr [ %23, %18 ], [ null, %13 ]
  %30 = phi i8 [ %27, %18 ], [ 0, %13 ]
  %31 = icmp sgt i16 %11, %1
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load ptr, ptr %6, align 8, !tbaa !129
  %34 = sext i16 %1 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !129
  br label %37

37:                                               ; preds = %28, %32
  %38 = phi ptr [ %36, %32 ], [ null, %28 ]
  tail call void @BKE_material_clear_id(ptr noundef %4, i8 noundef zeroext 1) #17
  tail call void @BKE_material_resize_object(ptr noundef nonnull %0, i16 noundef signext 1, i8 noundef zeroext 1) #17
  tail call void @BKE_material_resize_id(ptr noundef %4, i16 noundef signext 1, i8 noundef zeroext 1) #17
  %39 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %40 = load ptr, ptr %39, align 8, !tbaa !342
  store ptr %29, ptr %40, align 8, !tbaa !129
  %41 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %42 = load ptr, ptr %41, align 8, !tbaa !343
  store i8 %30, ptr %42, align 1, !tbaa !164
  %43 = load ptr, ptr %6, align 8, !tbaa !129
  store ptr %38, ptr %43, align 8, !tbaa !129
  br label %45

44:                                               ; preds = %10
  tail call void @BKE_material_clear_id(ptr noundef %4, i8 noundef zeroext 1) #17
  tail call void @BKE_material_resize_object(ptr noundef nonnull %0, i16 noundef signext 0, i8 noundef zeroext 1) #17
  tail call void @BKE_material_resize_id(ptr noundef %4, i16 noundef signext 0, i8 noundef zeroext 1) #17
  br label %45

45:                                               ; preds = %37, %44, %2
  ret void
}

; Function Attrs: optsize
declare ptr @give_totcolp_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_matarar_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_material_clear_id(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_material_resize_object(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_material_resize_id(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMW_init(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMW_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMW_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMW_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_mesh_hflag_flush_vert(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !344 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %1, %19
  %7 = phi ptr [ %20, %19 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.BMEdge, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  %10 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %9, i8 noundef zeroext 16) #18, !range !72
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.BMEdge, ptr %7, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !118
  %15 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %14, i8 noundef zeroext 16) #18, !range !72
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %7, i8 noundef zeroext 16) #18
  br label %19

18:                                               ; preds = %12, %6
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %7, i8 noundef zeroext 16) #18
  br label %19

19:                                               ; preds = %17, %18
  %20 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %6, !llvm.loop !345

22:                                               ; preds = %19, %1
  %23 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %22, %39
  %26 = phi ptr [ %41, %39 ], [ %23, %22 ]
  %27 = getelementptr inbounds %struct.BMFace, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !273
  br label %29

29:                                               ; preds = %35, %25
  %30 = phi ptr [ %28, %25 ], [ %37, %35 ]
  %31 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !231
  %33 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %32, i8 noundef zeroext 16) #18, !range !72
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !274
  %38 = icmp eq ptr %37, %28
  br i1 %38, label %39, label %29, !llvm.loop !346

39:                                               ; preds = %29, %35
  %40 = phi i32 [ 1, %35 ], [ 0, %29 ]
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %26, i8 noundef zeroext 16, i32 noundef %40) #18
  %41 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %25, !llvm.loop !347

43:                                               ; preds = %39, %22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #12 !PGOFuncName !348 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @mod_i(i32 noundef %0, i32 noundef %1) unnamed_addr #12 !PGOFuncName !349 {
  %3 = srem i32 %0, %1
  %4 = add nsw i32 %3, %1
  %5 = srem i32 %4, %1
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_fill_grid_prepare(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !350 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  %7 = load i32, ptr %2, align 4, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %8 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %14, %10 ], [ %8, %4 ]
  %12 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %11, i8 noundef zeroext 1) #18, !range !72
  %13 = zext nneg i8 %12 to i32
  call fastcc void @_bm_elem_flag_set(ptr noundef nonnull %11, i8 noundef zeroext 16, i32 noundef %13) #18
  %14 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %10, !llvm.loop !351

16:                                               ; preds = %10, %4
  %17 = call i32 @BM_mesh_edgeloops_find(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull @bm_edge_test_fill_grid_cb, ptr noundef %0) #17
  %18 = load ptr, ptr %6, align 8, !tbaa !352
  %19 = icmp eq i32 %17, 1
  br i1 %19, label %20, label %131

20:                                               ; preds = %16
  %21 = call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %18) #17
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %131, label %23

23:                                               ; preds = %20
  %24 = call i32 @BM_edgeloop_length_get(ptr noundef %18) #17
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %131

27:                                               ; preds = %23
  %28 = call i32 @BM_edgeloop_length_get(ptr noundef %18) #17
  %29 = call ptr @BM_edgeloop_verts_get(ptr noundef %18) #17
  %30 = call ptr @BM_mesh_active_vert_get(ptr noundef %0) #17
  %31 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !129
  %32 = sext i32 %28 to i64
  %33 = shl nsw i64 %32, 3
  %34 = call ptr %31(i64 noundef %33, ptr noundef nonnull @__func__.edbm_fill_grid_prepare) #17
  %35 = icmp eq ptr %30, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = call ptr @BLI_findptr(ptr noundef %29, ptr noundef nonnull %30, i32 noundef 16) #17
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %58

39:                                               ; preds = %36, %27
  %40 = load ptr, ptr %29, align 8, !tbaa !129, !nonnull !353, !noundef !353
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi ptr [ %53, %41 ], [ %40, %39 ]
  %43 = phi float [ %52, %41 ], [ -1.000000e+00, %39 ]
  %44 = phi ptr [ %51, %41 ], [ null, %39 ]
  %45 = getelementptr inbounds %struct.LinkData, ptr %42, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !354
  %47 = call fastcc float @edbm_fill_grid_vert_tag_angle(ptr noundef %46) #18
  %48 = fcmp ogt float %47, %43
  %49 = icmp eq ptr %44, null
  %50 = select i1 %48, i1 true, i1 %49
  %51 = select i1 %50, ptr %42, ptr %44
  %52 = select i1 %50, float %47, float %43
  %53 = load ptr, ptr %42, align 8, !tbaa !129
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %41, !llvm.loop !356

55:                                               ; preds = %41
  %56 = getelementptr inbounds %struct.LinkData, ptr %51, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !354
  br label %58

58:                                               ; preds = %36, %55
  %59 = phi ptr [ %37, %36 ], [ %51, %55 ]
  %60 = phi ptr [ %30, %36 ], [ %57, %55 ]
  %61 = icmp eq i32 %1, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = call ptr @BLI_findlink(ptr noundef %29, i32 noundef %1) #17
  %64 = getelementptr inbounds %struct.LinkData, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !354
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi ptr [ %63, %62 ], [ %59, %58 ]
  %68 = phi ptr [ %65, %62 ], [ %60, %58 ]
  call void @BLI_listbase_rotate_first(ptr noundef %29, ptr noundef nonnull %67) #17
  call void @BM_edgeloop_edges_get(ptr noundef %18, ptr noundef %34) #17
  %69 = icmp eq i8 %3, 0
  br i1 %69, label %113, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !129
  %72 = shl nsw i64 %32, 4
  %73 = call ptr %71(i64 noundef %72, ptr noundef nonnull @__func__.edbm_fill_grid_prepare) #17
  %74 = load ptr, ptr %29, align 8, !tbaa !129
  %75 = icmp eq ptr %74, null
  br i1 %75, label %87, label %76

76:                                               ; preds = %70, %76
  %77 = phi i64 [ %84, %76 ], [ 0, %70 ]
  %78 = phi ptr [ %85, %76 ], [ %74, %70 ]
  %79 = getelementptr inbounds %struct.LinkData, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !354
  %81 = call fastcc float @edbm_fill_grid_vert_tag_angle(ptr noundef %80) #18
  %82 = getelementptr inbounds %struct.SortPointerByFloat, ptr %73, i64 %77
  store float %81, ptr %82, align 8, !tbaa !357
  %83 = getelementptr inbounds %struct.SortPointerByFloat, ptr %73, i64 %77, i32 1
  store ptr %80, ptr %83, align 8, !tbaa !359
  call fastcc void @_bm_elem_flag_disable(ptr noundef %80, i8 noundef zeroext 16) #18
  %84 = add nuw i64 %77, 1
  %85 = load ptr, ptr %78, align 8, !tbaa !129
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %76, !llvm.loop !360

87:                                               ; preds = %76, %70
  call void @qsort(ptr noundef %73, i64 noundef %32, i64 noundef 16, ptr noundef nonnull @BLI_sortutil_cmp_float_reverse) #17
  br label %91

88:                                               ; preds = %91
  %89 = sdiv i32 %28, 2
  %90 = icmp sgt i32 %28, 1
  br i1 %90, label %97, label %110

91:                                               ; preds = %87, %91
  %92 = phi i64 [ 0, %87 ], [ %95, %91 ]
  %93 = getelementptr inbounds %struct.SortPointerByFloat, ptr %73, i64 %92, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !359
  call fastcc void @_bm_elem_flag_enable(ptr noundef %94, i8 noundef zeroext 16) #18
  %95 = add nuw nsw i64 %92, 1
  %96 = icmp eq i64 %95, 4
  br i1 %96, label %88, label %91, !llvm.loop !361

97:                                               ; preds = %88, %107
  %98 = phi ptr [ %100, %107 ], [ %29, %88 ]
  %99 = phi i32 [ %108, %107 ], [ 0, %88 ]
  %100 = load ptr, ptr %98, align 8, !tbaa !129
  %101 = getelementptr inbounds %struct.LinkData, ptr %100, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !354
  %103 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %102, i8 noundef zeroext 16) #18, !range !72
  %104 = icmp eq i8 %103, 0
  %105 = icmp eq ptr %102, %68
  %106 = select i1 %104, i1 true, i1 %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = add nuw nsw i32 %99, 1
  %109 = icmp eq i32 %108, %89
  br i1 %109, label %110, label %97, !llvm.loop !362

110:                                              ; preds = %107, %97, %88
  %111 = phi i32 [ %7, %88 ], [ %99, %97 ], [ %7, %107 ]
  %112 = load ptr, ptr @MEM_freeN, align 8, !tbaa !129
  call void %112(ptr noundef %73) #17
  br label %113

113:                                              ; preds = %110, %66
  %114 = phi i32 [ %111, %110 ], [ %7, %66 ]
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = sdiv i32 %28, 2
  %118 = sext i32 %117 to i64
  %119 = zext nneg i32 %114 to i64
  %120 = getelementptr ptr, ptr %34, i64 %118
  br label %121

121:                                              ; preds = %116, %121
  %122 = phi i64 [ 0, %116 ], [ %127, %121 ]
  %123 = getelementptr inbounds ptr, ptr %34, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !129
  call fastcc void @_bm_elem_flag_disable(ptr noundef %124, i8 noundef zeroext 16) #18
  %125 = getelementptr ptr, ptr %120, i64 %122
  %126 = load ptr, ptr %125, align 8, !tbaa !129
  call fastcc void @_bm_elem_flag_disable(ptr noundef %126, i8 noundef zeroext 16) #18
  %127 = add nuw nsw i64 %122, 1
  %128 = icmp eq i64 %127, %119
  br i1 %128, label %129, label %121, !llvm.loop !363

129:                                              ; preds = %121, %113
  %130 = load ptr, ptr @MEM_freeN, align 8, !tbaa !129
  call void %130(ptr noundef %34) #17
  br label %131

131:                                              ; preds = %129, %23, %20, %16
  %132 = phi i32 [ %114, %129 ], [ %7, %23 ], [ %7, %20 ], [ %7, %16 ]
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %6) #17
  store i32 %132, ptr %2, align 4, !tbaa !91
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  ret void
}

; Function Attrs: optsize
declare void @RNA_property_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BM_mesh_edgeloops_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @bm_edge_test_fill_grid_cb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 !PGOFuncName !364 {
  %3 = tail call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef %0, i8 noundef zeroext 16) #18, !range !93
  ret i8 %3
}

; Function Attrs: optsize
declare zeroext i8 @BM_edgeloop_is_closed(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BM_edgeloop_length_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_edgeloop_verts_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_mesh_active_vert_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @edbm_fill_grid_vert_tag_angle(ptr noundef %0) unnamed_addr #0 !PGOFuncName !365 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 4, ptr noundef %0) #18
  %5 = icmp ne ptr %4, null
  call void @llvm.assume(i1 %5)
  br label %6

6:                                                ; preds = %1, %16
  %7 = phi i32 [ %17, %16 ], [ 0, %1 ]
  %8 = phi ptr [ %18, %16 ], [ %4, %1 ]
  %9 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %8, i8 noundef zeroext 16) #18, !range !72
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %8, ptr noundef %0) #18
  %13 = add nsw i32 %7, 1
  %14 = sext i32 %7 to i64
  %15 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 %14
  store ptr %12, ptr %15, align 8, !tbaa !129
  br label %16

16:                                               ; preds = %6, %11
  %17 = phi i32 [ %13, %11 ], [ %7, %6 ]
  %18 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %6, !llvm.loop !366

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 16, !tbaa !129
  %22 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !129
  %24 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  %25 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2
  %26 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 2
  %27 = call float @angle_v3v3v3(ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef nonnull %26) #17
  %28 = fsub float 0x400921FB60000000, %27
  %29 = call float @llvm.fabs.f32(float %28)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #19
  ret float %29
}

; Function Attrs: optsize
declare void @BLI_listbase_rotate_first(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_edgeloop_edges_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare i32 @BLI_sortutil_cmp_float_reverse(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @BM_mesh_edgeloops_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @angle_v3v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: optsize
declare float @BM_edge_calc_face_angle_ex(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_context_rv3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sort_bmelem_flag(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 !PGOFuncName !367 {
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca [3 x ptr], align 16
  %11 = alloca [3 x ptr], align 16
  %12 = alloca [3 x ptr], align 16
  %13 = alloca [3 x i32], align 4
  %14 = alloca [3 x i32], align 4
  %15 = alloca [4 x [4 x float]], align 16
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [4 x [4 x float]], align 16
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x ptr], align 16
  %24 = tail call ptr @BKE_editmesh_from_object(ptr noundef %1) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, i8 0, i64 12, i1 false)
  %25 = icmp ne i32 %4, 0
  %26 = icmp ne i32 %5, 0
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %886

28:                                               ; preds = %8
  %29 = and i32 %4, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %24, align 8, !tbaa !51
  %33 = load i32, ptr %32, align 8, !tbaa !166
  store i32 %33, ptr %13, align 4, !tbaa !91
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i32 [ %33, %31 ], [ 0, %28 ]
  %36 = and i32 %4, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %24, align 8, !tbaa !51
  %40 = getelementptr inbounds %struct.BMesh, ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !103
  %42 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 1
  store i32 %41, ptr %42, align 4, !tbaa !91
  br label %43

43:                                               ; preds = %38, %34
  %44 = phi i32 [ %41, %38 ], [ 0, %34 ]
  %45 = and i32 %4, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %24, align 8, !tbaa !51
  %49 = getelementptr inbounds %struct.BMesh, ptr %48, i64 0, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !92
  %51 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 2
  store i32 %50, ptr %51, align 4, !tbaa !91
  br label %52

52:                                               ; preds = %47, %43
  %53 = phi i32 [ %50, %47 ], [ 0, %43 ]
  %54 = icmp ult i32 %5, 3
  br i1 %54, label %55, label %198

55:                                               ; preds = %52
  %56 = icmp eq i32 %5, 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #19
  %57 = icmp eq i32 %6, 0
  %58 = select i1 %57, float 1.000000e+00, float -1.000000e+00
  %59 = select i1 %56, i32 2, i32 0
  %60 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 1
  %61 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %15, ptr noundef nonnull %60, ptr noundef nonnull %61) #17
  %62 = icmp eq i32 %35, 0
  br i1 %62, label %103, label %63

63:                                               ; preds = %55
  %64 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %65 = sext i32 %35 to i64
  %66 = call ptr %64(i64 noundef %65, ptr noundef nonnull @.str.512) #17
  store ptr %66, ptr %10, align 16, !tbaa !129
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %68 = shl nsw i64 %65, 3
  %69 = call ptr %67(i64 noundef %68, ptr noundef nonnull @.str.513) #17
  store ptr %69, ptr %11, align 16, !tbaa !129
  %70 = load ptr, ptr %24, align 8, !tbaa !51
  %71 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef %70, i8 noundef zeroext 1, ptr noundef null) #18
  %72 = icmp eq ptr %71, null
  br i1 %72, label %103, label %73

73:                                               ; preds = %63
  %74 = zext nneg i32 %59 to i64
  %75 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 %74
  br label %76

76:                                               ; preds = %73, %95
  %77 = phi i32 [ 0, %73 ], [ %96, %95 ]
  %78 = phi i64 [ 0, %73 ], [ %98, %95 ]
  %79 = phi ptr [ %71, %73 ], [ %97, %95 ]
  %80 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %79, i8 noundef zeroext 1) #18, !range !72
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #19
  %83 = getelementptr inbounds %struct.BMVert, ptr %79, i64 0, i32 2
  call void @mul_v3_m4v3(ptr noundef nonnull %16, ptr noundef nonnull %15, ptr noundef nonnull %83) #17
  %84 = getelementptr inbounds i8, ptr %66, i64 %78
  store i8 0, ptr %84, align 1, !tbaa !164
  %85 = load i32, ptr %14, align 4, !tbaa !91
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.BMElemSort, ptr %69, i64 %86, i32 1
  %88 = trunc i64 %78 to i32
  store i32 %88, ptr %87, align 4, !tbaa !368
  %89 = load float, ptr %75, align 4, !tbaa !201
  %90 = fmul float %58, %89
  %91 = add nsw i32 %85, 1
  store i32 %91, ptr %14, align 4, !tbaa !91
  %92 = getelementptr inbounds %struct.BMElemSort, ptr %69, i64 %86
  store float %90, ptr %92, align 4, !tbaa !370
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #19
  br label %95

93:                                               ; preds = %76
  %94 = getelementptr inbounds i8, ptr %66, i64 %78
  store i8 1, ptr %94, align 1, !tbaa !164
  br label %95

95:                                               ; preds = %82, %93
  %96 = phi i32 [ %91, %82 ], [ %77, %93 ]
  %97 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #18
  %98 = add nuw i64 %78, 1
  %99 = icmp eq ptr %97, null
  br i1 %99, label %100, label %76, !llvm.loop !371

100:                                              ; preds = %95
  %101 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 1
  %102 = load i32, ptr %101, align 4, !tbaa !91
  br label %103

103:                                              ; preds = %100, %63, %55
  %104 = phi i32 [ %96, %100 ], [ 0, %63 ], [ 0, %55 ]
  %105 = phi i32 [ %102, %100 ], [ %44, %63 ], [ %44, %55 ]
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %153, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %109 = sext i32 %105 to i64
  %110 = call ptr %108(i64 noundef %109, ptr noundef nonnull @.str.514) #17
  %111 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 1
  store ptr %110, ptr %111, align 8, !tbaa !129
  %112 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %113 = shl nsw i64 %109, 3
  %114 = call ptr %112(i64 noundef %113, ptr noundef nonnull @.str.515) #17
  %115 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 1
  store ptr %114, ptr %115, align 8, !tbaa !129
  %116 = load ptr, ptr %24, align 8, !tbaa !51
  %117 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef %116, i8 noundef zeroext 2, ptr noundef null) #18
  %118 = icmp eq ptr %117, null
  br i1 %118, label %153, label %119

119:                                              ; preds = %107
  %120 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 1
  %121 = zext nneg i32 %59 to i64
  %122 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 %121
  %123 = load i32, ptr %120, align 4, !tbaa !91
  br label %124

124:                                              ; preds = %119, %147
  %125 = phi i64 [ 0, %119 ], [ %150, %147 ]
  %126 = phi i32 [ %123, %119 ], [ %148, %147 ]
  %127 = phi ptr [ %117, %119 ], [ %149, %147 ]
  %128 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %127, i8 noundef zeroext 1) #18, !range !72
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %145, label %130

130:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #19
  %131 = getelementptr inbounds %struct.BMEdge, ptr %127, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !115
  %133 = getelementptr inbounds %struct.BMVert, ptr %132, i64 0, i32 2
  %134 = getelementptr inbounds %struct.BMEdge, ptr %127, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !118
  %136 = getelementptr inbounds %struct.BMVert, ptr %135, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %17, ptr noundef nonnull %133, ptr noundef nonnull %136) #17
  call void @mul_m4_v3(ptr noundef nonnull %15, ptr noundef nonnull %17) #17
  %137 = getelementptr inbounds i8, ptr %110, i64 %125
  store i8 0, ptr %137, align 1, !tbaa !164
  %138 = sext i32 %126 to i64
  %139 = getelementptr inbounds %struct.BMElemSort, ptr %114, i64 %138, i32 1
  %140 = trunc i64 %125 to i32
  store i32 %140, ptr %139, align 4, !tbaa !368
  %141 = load float, ptr %122, align 4, !tbaa !201
  %142 = fmul float %58, %141
  %143 = add nsw i32 %126, 1
  %144 = getelementptr inbounds %struct.BMElemSort, ptr %114, i64 %138
  store float %142, ptr %144, align 4, !tbaa !370
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #19
  br label %147

145:                                              ; preds = %124
  %146 = getelementptr inbounds i8, ptr %110, i64 %125
  store i8 1, ptr %146, align 1, !tbaa !164
  br label %147

147:                                              ; preds = %130, %145
  %148 = phi i32 [ %143, %130 ], [ %126, %145 ]
  %149 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #18
  %150 = add nuw i64 %125, 1
  %151 = icmp eq ptr %149, null
  br i1 %151, label %152, label %124, !llvm.loop !372

152:                                              ; preds = %147
  store i32 %148, ptr %120, align 4, !tbaa !91
  br label %153

153:                                              ; preds = %107, %152, %103
  %154 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 2
  %155 = load i32, ptr %154, align 4, !tbaa !91
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %197, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %159 = sext i32 %155 to i64
  %160 = call ptr %158(i64 noundef %159, ptr noundef nonnull @.str.516) #17
  %161 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 2
  store ptr %160, ptr %161, align 16, !tbaa !129
  %162 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %163 = shl nsw i64 %159, 3
  %164 = call ptr %162(i64 noundef %163, ptr noundef nonnull @.str.517) #17
  %165 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 2
  store ptr %164, ptr %165, align 16, !tbaa !129
  %166 = load ptr, ptr %24, align 8, !tbaa !51
  %167 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef %166, i8 noundef zeroext 3, ptr noundef null) #18
  %168 = icmp eq ptr %167, null
  br i1 %168, label %197, label %169

169:                                              ; preds = %157
  %170 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 2
  %171 = zext nneg i32 %59 to i64
  %172 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 %171
  %173 = load i32, ptr %170, align 4, !tbaa !91
  br label %174

174:                                              ; preds = %169, %191
  %175 = phi i64 [ 0, %169 ], [ %194, %191 ]
  %176 = phi i32 [ %173, %169 ], [ %192, %191 ]
  %177 = phi ptr [ %167, %169 ], [ %193, %191 ]
  %178 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %177, i8 noundef zeroext 1) #18, !range !72
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %189, label %180

180:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #19
  call void @BM_face_calc_center_mean(ptr noundef nonnull %177, ptr noundef nonnull %18) #17
  call void @mul_m4_v3(ptr noundef nonnull %15, ptr noundef nonnull %18) #17
  %181 = getelementptr inbounds i8, ptr %160, i64 %175
  store i8 0, ptr %181, align 1, !tbaa !164
  %182 = sext i32 %176 to i64
  %183 = getelementptr inbounds %struct.BMElemSort, ptr %164, i64 %182, i32 1
  %184 = trunc i64 %175 to i32
  store i32 %184, ptr %183, align 4, !tbaa !368
  %185 = load float, ptr %172, align 4, !tbaa !201
  %186 = fmul float %58, %185
  %187 = add nsw i32 %176, 1
  %188 = getelementptr inbounds %struct.BMElemSort, ptr %164, i64 %182
  store float %186, ptr %188, align 4, !tbaa !370
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #19
  br label %191

189:                                              ; preds = %174
  %190 = getelementptr inbounds i8, ptr %160, i64 %175
  store i8 1, ptr %190, align 1, !tbaa !164
  br label %191

191:                                              ; preds = %180, %189
  %192 = phi i32 [ %187, %180 ], [ %176, %189 ]
  %193 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #18
  %194 = add nuw i64 %175, 1
  %195 = icmp eq ptr %193, null
  br i1 %195, label %196, label %174, !llvm.loop !373

196:                                              ; preds = %191
  store i32 %192, ptr %170, align 4, !tbaa !91
  br label %197

197:                                              ; preds = %157, %196, %153
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #19
  br label %777

198:                                              ; preds = %52
  %199 = icmp eq i32 %5, 3
  br i1 %199, label %200, label %335

200:                                              ; preds = %198
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %20) #19
  %201 = icmp eq i32 %6, 0
  %202 = select i1 %201, float 1.000000e+00, float -1.000000e+00
  %203 = icmp eq ptr %2, null
  br i1 %203, label %210, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 20
  %206 = load ptr, ptr %205, align 8, !tbaa !374
  %207 = icmp eq ptr %206, null
  br i1 %207, label %210, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 35
  br label %212

210:                                              ; preds = %204, %200
  %211 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 8
  br label %212

212:                                              ; preds = %210, %208
  %213 = phi ptr [ %211, %210 ], [ %209, %208 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %19, ptr noundef nonnull %213) #18
  %214 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %215 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %20, ptr noundef nonnull %214) #17
  call void @mul_m4_v3(ptr noundef nonnull %20, ptr noundef nonnull %19) #17
  %216 = icmp eq i32 %35, 0
  br i1 %216, label %249, label %217

217:                                              ; preds = %212
  %218 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %219 = sext i32 %35 to i64
  %220 = call ptr %218(i64 noundef %219, ptr noundef nonnull @.str.512) #17
  store ptr %220, ptr %10, align 16, !tbaa !129
  %221 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %222 = shl nsw i64 %219, 3
  %223 = call ptr %221(i64 noundef %222, ptr noundef nonnull @.str.513) #17
  store ptr %223, ptr %11, align 16, !tbaa !129
  %224 = load ptr, ptr %24, align 8, !tbaa !51
  %225 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef %224, i8 noundef zeroext 1, ptr noundef null) #18
  %226 = icmp eq ptr %225, null
  br i1 %226, label %249, label %227

227:                                              ; preds = %217, %244
  %228 = phi i64 [ %247, %244 ], [ 0, %217 ]
  %229 = phi ptr [ %246, %244 ], [ %225, %217 ]
  %230 = phi i32 [ %245, %244 ], [ 0, %217 ]
  %231 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %229, i8 noundef zeroext 1) #18, !range !72
  %232 = icmp eq i8 %231, 0
  %233 = getelementptr inbounds i8, ptr %220, i64 %228
  br i1 %232, label %243, label %234

234:                                              ; preds = %227
  store i8 0, ptr %233, align 1, !tbaa !164
  %235 = sext i32 %230 to i64
  %236 = getelementptr inbounds %struct.BMElemSort, ptr %223, i64 %235, i32 1
  %237 = trunc i64 %228 to i32
  store i32 %237, ptr %236, align 4, !tbaa !368
  %238 = getelementptr inbounds %struct.BMVert, ptr %229, i64 0, i32 2
  %239 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %238) #18
  %240 = fmul float %202, %239
  %241 = add nsw i32 %230, 1
  store i32 %241, ptr %14, align 4, !tbaa !91
  %242 = getelementptr inbounds %struct.BMElemSort, ptr %223, i64 %235
  store float %240, ptr %242, align 4, !tbaa !370
  br label %244

243:                                              ; preds = %227
  store i8 1, ptr %233, align 1, !tbaa !164
  br label %244

244:                                              ; preds = %234, %243
  %245 = phi i32 [ %241, %234 ], [ %230, %243 ]
  %246 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #18
  %247 = add nuw i64 %228, 1
  %248 = icmp eq ptr %246, null
  br i1 %248, label %249, label %227, !llvm.loop !376

249:                                              ; preds = %244, %217, %212
  %250 = phi i32 [ 0, %217 ], [ 0, %212 ], [ %245, %244 ]
  %251 = icmp eq i32 %44, 0
  br i1 %251, label %295, label %252

252:                                              ; preds = %249
  %253 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %254 = sext i32 %44 to i64
  %255 = call ptr %253(i64 noundef %254, ptr noundef nonnull @.str.514) #17
  %256 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 1
  store ptr %255, ptr %256, align 8, !tbaa !129
  %257 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %258 = shl nsw i64 %254, 3
  %259 = call ptr %257(i64 noundef %258, ptr noundef nonnull @.str.515) #17
  %260 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 1
  store ptr %259, ptr %260, align 8, !tbaa !129
  %261 = load ptr, ptr %24, align 8, !tbaa !51
  %262 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef %261, i8 noundef zeroext 2, ptr noundef null) #18
  %263 = icmp eq ptr %262, null
  br i1 %263, label %295, label %264

264:                                              ; preds = %252
  %265 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 1
  br label %266

266:                                              ; preds = %264, %289
  %267 = phi i64 [ 0, %264 ], [ %292, %289 ]
  %268 = phi i32 [ 0, %264 ], [ %290, %289 ]
  %269 = phi ptr [ %262, %264 ], [ %291, %289 ]
  %270 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %269, i8 noundef zeroext 1) #18, !range !72
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %287, label %272

272:                                              ; preds = %266
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #19
  %273 = getelementptr inbounds %struct.BMEdge, ptr %269, i64 0, i32 2
  %274 = load ptr, ptr %273, align 8, !tbaa !115
  %275 = getelementptr inbounds %struct.BMVert, ptr %274, i64 0, i32 2
  %276 = getelementptr inbounds %struct.BMEdge, ptr %269, i64 0, i32 3
  %277 = load ptr, ptr %276, align 8, !tbaa !118
  %278 = getelementptr inbounds %struct.BMVert, ptr %277, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %21, ptr noundef nonnull %275, ptr noundef nonnull %278) #17
  %279 = getelementptr inbounds i8, ptr %255, i64 %267
  store i8 0, ptr %279, align 1, !tbaa !164
  %280 = sext i32 %268 to i64
  %281 = getelementptr inbounds %struct.BMElemSort, ptr %259, i64 %280, i32 1
  %282 = trunc i64 %267 to i32
  store i32 %282, ptr %281, align 4, !tbaa !368
  %283 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %21) #18
  %284 = fmul float %202, %283
  %285 = add nsw i32 %268, 1
  %286 = getelementptr inbounds %struct.BMElemSort, ptr %259, i64 %280
  store float %284, ptr %286, align 4, !tbaa !370
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #19
  br label %289

287:                                              ; preds = %266
  %288 = getelementptr inbounds i8, ptr %255, i64 %267
  store i8 1, ptr %288, align 1, !tbaa !164
  br label %289

289:                                              ; preds = %272, %287
  %290 = phi i32 [ %285, %272 ], [ %268, %287 ]
  %291 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #18
  %292 = add nuw i64 %267, 1
  %293 = icmp eq ptr %291, null
  br i1 %293, label %294, label %266, !llvm.loop !377

294:                                              ; preds = %289
  store i32 %290, ptr %265, align 4, !tbaa !91
  br label %295

295:                                              ; preds = %252, %294, %249
  %296 = icmp eq i32 %53, 0
  br i1 %296, label %334, label %297

297:                                              ; preds = %295
  %298 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %299 = sext i32 %53 to i64
  %300 = call ptr %298(i64 noundef %299, ptr noundef nonnull @.str.516) #17
  %301 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 2
  store ptr %300, ptr %301, align 16, !tbaa !129
  %302 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %303 = shl nsw i64 %299, 3
  %304 = call ptr %302(i64 noundef %303, ptr noundef nonnull @.str.517) #17
  %305 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 2
  store ptr %304, ptr %305, align 16, !tbaa !129
  %306 = load ptr, ptr %24, align 8, !tbaa !51
  %307 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef %306, i8 noundef zeroext 3, ptr noundef null) #18
  %308 = icmp eq ptr %307, null
  br i1 %308, label %334, label %309

309:                                              ; preds = %297
  %310 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 2
  br label %311

311:                                              ; preds = %309, %328
  %312 = phi i64 [ 0, %309 ], [ %331, %328 ]
  %313 = phi i32 [ 0, %309 ], [ %329, %328 ]
  %314 = phi ptr [ %307, %309 ], [ %330, %328 ]
  %315 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %314, i8 noundef zeroext 1) #18, !range !72
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %326, label %317

317:                                              ; preds = %311
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #19
  call void @BM_face_calc_center_mean(ptr noundef nonnull %314, ptr noundef nonnull %22) #17
  %318 = getelementptr inbounds i8, ptr %300, i64 %312
  store i8 0, ptr %318, align 1, !tbaa !164
  %319 = sext i32 %313 to i64
  %320 = getelementptr inbounds %struct.BMElemSort, ptr %304, i64 %319, i32 1
  %321 = trunc i64 %312 to i32
  store i32 %321, ptr %320, align 4, !tbaa !368
  %322 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %22) #18
  %323 = fmul float %202, %322
  %324 = add nsw i32 %313, 1
  %325 = getelementptr inbounds %struct.BMElemSort, ptr %304, i64 %319
  store float %323, ptr %325, align 4, !tbaa !370
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #19
  br label %328

326:                                              ; preds = %311
  %327 = getelementptr inbounds i8, ptr %300, i64 %312
  store i8 1, ptr %327, align 1, !tbaa !164
  br label %328

328:                                              ; preds = %317, %326
  %329 = phi i32 [ %324, %317 ], [ %313, %326 ]
  %330 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #18
  %331 = add nuw i64 %312, 1
  %332 = icmp eq ptr %330, null
  br i1 %332, label %333, label %311, !llvm.loop !378

333:                                              ; preds = %328
  store i32 %329, ptr %310, align 4, !tbaa !91
  br label %334

334:                                              ; preds = %297, %333, %295
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #19
  br label %777

335:                                              ; preds = %198
  %336 = icmp eq i32 %5, 4
  %337 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 2
  %338 = icmp ne i32 %53, 0
  %339 = select i1 %336, i1 %338, i1 false
  br i1 %339, label %340, label %385

340:                                              ; preds = %335
  %341 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %342 = sext i32 %53 to i64
  %343 = tail call ptr %341(i64 noundef %342, ptr noundef nonnull @.str.516) #17
  %344 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 2
  store ptr %343, ptr %344, align 16, !tbaa !129
  %345 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %346 = shl nsw i64 %342, 3
  %347 = tail call ptr %345(i64 noundef %346, ptr noundef nonnull @.str.517) #17
  %348 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 2
  store ptr %347, ptr %348, align 16, !tbaa !129
  %349 = load ptr, ptr %24, align 8, !tbaa !51
  %350 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef %349, i8 noundef zeroext 3, ptr noundef null) #18
  %351 = icmp eq ptr %350, null
  br i1 %351, label %777, label %352

352:                                              ; preds = %340
  %353 = icmp eq i32 %6, 0
  %354 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 2
  %355 = sitofp i32 %53 to float
  br label %356

356:                                              ; preds = %352, %380
  %357 = phi i64 [ 0, %352 ], [ %383, %380 ]
  %358 = phi i32 [ 0, %352 ], [ %381, %380 ]
  %359 = phi ptr [ %350, %352 ], [ %382, %380 ]
  %360 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %359, i8 noundef zeroext 1) #18, !range !72
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %378, label %362

362:                                              ; preds = %356
  %363 = getelementptr inbounds %struct.BMFace, ptr %359, i64 0, i32 5
  %364 = load i16, ptr %363, align 8, !tbaa !325
  %365 = sext i16 %364 to i32
  %366 = sub nsw i32 32766, %365
  %367 = sitofp i32 %366 to float
  %368 = sitofp i16 %364 to float
  %369 = select i1 %353, float %368, float %367
  %370 = getelementptr inbounds i8, ptr %343, i64 %357
  store i8 0, ptr %370, align 1, !tbaa !164
  %371 = sext i32 %358 to i64
  %372 = getelementptr inbounds %struct.BMElemSort, ptr %347, i64 %371, i32 1
  %373 = trunc i64 %357 to i32
  store i32 %373, ptr %372, align 4, !tbaa !368
  %374 = sitofp i32 %373 to float
  %375 = call float @llvm.fmuladd.f32(float %369, float %355, float %374)
  %376 = add nsw i32 %358, 1
  %377 = getelementptr inbounds %struct.BMElemSort, ptr %347, i64 %371
  store float %375, ptr %377, align 4, !tbaa !370
  br label %380

378:                                              ; preds = %356
  %379 = getelementptr inbounds i8, ptr %343, i64 %357
  store i8 1, ptr %379, align 1, !tbaa !164
  br label %380

380:                                              ; preds = %362, %378
  %381 = phi i32 [ %376, %362 ], [ %358, %378 ]
  %382 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #18
  %383 = add nuw i64 %357, 1
  %384 = icmp eq ptr %382, null
  br i1 %384, label %775, label %356, !llvm.loop !379

385:                                              ; preds = %335
  switch i32 %5, label %777 [
    i32 5, label %386
    i32 6, label %547
    i32 7, label %661
  ]

386:                                              ; preds = %385
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %23) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %387 = icmp eq i32 %35, 0
  br i1 %387, label %419, label %388

388:                                              ; preds = %386
  %389 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %390 = sext i32 %35 to i64
  %391 = shl nsw i64 %390, 2
  %392 = tail call ptr %389(i64 noundef %391, ptr noundef nonnull @.str.518) #17
  store ptr %392, ptr %23, align 16, !tbaa !129
  %393 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %394 = tail call ptr %393(i64 noundef %391, ptr noundef nonnull @.str.519) #17
  store ptr %394, ptr %12, align 16, !tbaa !129
  %395 = load ptr, ptr %24, align 8, !tbaa !51
  %396 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef %395, i8 noundef zeroext 1, ptr noundef null) #18
  %397 = icmp eq ptr %396, null
  br i1 %397, label %419, label %398

398:                                              ; preds = %388, %411
  %399 = phi ptr [ %413, %411 ], [ %396, %388 ]
  %400 = phi i32 [ %414, %411 ], [ 0, %388 ]
  %401 = phi ptr [ %412, %411 ], [ %392, %388 ]
  %402 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %399, i8 noundef zeroext 1) #18, !range !72
  %403 = icmp eq i8 %402, 0
  br i1 %403, label %409, label %404

404:                                              ; preds = %398
  %405 = load i32, ptr %14, align 4, !tbaa !91
  %406 = add nsw i32 %405, 1
  store i32 %406, ptr %14, align 4, !tbaa !91
  %407 = sext i32 %405 to i64
  %408 = getelementptr inbounds i32, ptr %394, i64 %407
  store i32 %400, ptr %408, align 4, !tbaa !91
  br label %411

409:                                              ; preds = %398
  store i32 %400, ptr %401, align 4, !tbaa !91
  %410 = getelementptr inbounds i32, ptr %401, i64 1
  br label %411

411:                                              ; preds = %404, %409
  %412 = phi ptr [ %401, %404 ], [ %410, %409 ]
  %413 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #18
  %414 = add nuw nsw i32 %400, 1
  %415 = icmp eq ptr %413, null
  br i1 %415, label %416, label %398, !llvm.loop !380

416:                                              ; preds = %411
  %417 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 1
  %418 = load i32, ptr %417, align 4, !tbaa !91
  br label %419

419:                                              ; preds = %416, %388, %386
  %420 = phi i32 [ %418, %416 ], [ %44, %388 ], [ %44, %386 ]
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %454, label %422

422:                                              ; preds = %419
  %423 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %424 = sext i32 %420 to i64
  %425 = shl nsw i64 %424, 2
  %426 = call ptr %423(i64 noundef %425, ptr noundef nonnull @.str.520) #17
  %427 = getelementptr inbounds [3 x ptr], ptr %23, i64 0, i64 1
  store ptr %426, ptr %427, align 8, !tbaa !129
  %428 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %429 = call ptr %428(i64 noundef %425, ptr noundef nonnull @.str.521) #17
  %430 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 1
  store ptr %429, ptr %430, align 8, !tbaa !129
  %431 = load ptr, ptr %24, align 8, !tbaa !51
  %432 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef %431, i8 noundef zeroext 2, ptr noundef null) #18
  %433 = icmp eq ptr %432, null
  br i1 %433, label %454, label %434

434:                                              ; preds = %422
  %435 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 1
  br label %436

436:                                              ; preds = %434, %449
  %437 = phi ptr [ %432, %434 ], [ %451, %449 ]
  %438 = phi i32 [ 0, %434 ], [ %452, %449 ]
  %439 = phi ptr [ %426, %434 ], [ %450, %449 ]
  %440 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %437, i8 noundef zeroext 1) #18, !range !72
  %441 = icmp eq i8 %440, 0
  br i1 %441, label %447, label %442

442:                                              ; preds = %436
  %443 = load i32, ptr %435, align 4, !tbaa !91
  %444 = add nsw i32 %443, 1
  store i32 %444, ptr %435, align 4, !tbaa !91
  %445 = sext i32 %443 to i64
  %446 = getelementptr inbounds i32, ptr %429, i64 %445
  store i32 %438, ptr %446, align 4, !tbaa !91
  br label %449

447:                                              ; preds = %436
  store i32 %438, ptr %439, align 4, !tbaa !91
  %448 = getelementptr inbounds i32, ptr %439, i64 1
  br label %449

449:                                              ; preds = %442, %447
  %450 = phi ptr [ %439, %442 ], [ %448, %447 ]
  %451 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #18
  %452 = add nuw nsw i32 %438, 1
  %453 = icmp eq ptr %451, null
  br i1 %453, label %454, label %436, !llvm.loop !381

454:                                              ; preds = %449, %422, %419
  %455 = load i32, ptr %337, align 4, !tbaa !91
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %489, label %457

457:                                              ; preds = %454
  %458 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %459 = sext i32 %455 to i64
  %460 = shl nsw i64 %459, 2
  %461 = call ptr %458(i64 noundef %460, ptr noundef nonnull @.str.522) #17
  %462 = getelementptr inbounds [3 x ptr], ptr %23, i64 0, i64 2
  store ptr %461, ptr %462, align 16, !tbaa !129
  %463 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %464 = call ptr %463(i64 noundef %460, ptr noundef nonnull @.str.523) #17
  %465 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 2
  store ptr %464, ptr %465, align 16, !tbaa !129
  %466 = load ptr, ptr %24, align 8, !tbaa !51
  %467 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef %466, i8 noundef zeroext 3, ptr noundef null) #18
  %468 = icmp eq ptr %467, null
  br i1 %468, label %489, label %469

469:                                              ; preds = %457
  %470 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 2
  br label %471

471:                                              ; preds = %469, %484
  %472 = phi ptr [ %467, %469 ], [ %486, %484 ]
  %473 = phi i32 [ 0, %469 ], [ %487, %484 ]
  %474 = phi ptr [ %461, %469 ], [ %485, %484 ]
  %475 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %472, i8 noundef zeroext 1) #18, !range !72
  %476 = icmp eq i8 %475, 0
  br i1 %476, label %482, label %477

477:                                              ; preds = %471
  %478 = load i32, ptr %470, align 4, !tbaa !91
  %479 = add nsw i32 %478, 1
  store i32 %479, ptr %470, align 4, !tbaa !91
  %480 = sext i32 %478 to i64
  %481 = getelementptr inbounds i32, ptr %464, i64 %480
  store i32 %473, ptr %481, align 4, !tbaa !91
  br label %484

482:                                              ; preds = %471
  store i32 %473, ptr %474, align 4, !tbaa !91
  %483 = getelementptr inbounds i32, ptr %474, i64 1
  br label %484

484:                                              ; preds = %477, %482
  %485 = phi ptr [ %474, %477 ], [ %483, %482 ]
  %486 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #18
  %487 = add nuw nsw i32 %473, 1
  %488 = icmp eq ptr %486, null
  br i1 %488, label %489, label %471, !llvm.loop !382

489:                                              ; preds = %484, %457, %454
  %490 = icmp eq i32 %6, 0
  br label %491

491:                                              ; preds = %489, %542
  %492 = phi i64 [ 2, %489 ], [ %543, %542 ]
  %493 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 %492
  %494 = load i32, ptr %493, align 4, !tbaa !91
  %495 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 %492
  %496 = load i32, ptr %495, align 4, !tbaa !91
  %497 = getelementptr inbounds [3 x ptr], ptr %23, i64 0, i64 %492
  %498 = load ptr, ptr %497, align 8, !tbaa !129
  %499 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 %492
  %500 = load ptr, ptr %499, align 8, !tbaa !129
  %501 = icmp ne ptr %498, null
  %502 = icmp ne ptr %500, null
  %503 = select i1 %501, i1 %502, i1 false
  br i1 %503, label %504, label %542, !llvm.loop !383

504:                                              ; preds = %491
  %505 = icmp eq i32 %496, 0
  %506 = icmp eq i32 %496, %494
  %507 = select i1 %505, i1 true, i1 %506
  br i1 %507, label %508, label %511

508:                                              ; preds = %504
  %509 = load ptr, ptr @MEM_freeN, align 8, !tbaa !129
  call void %509(ptr noundef nonnull %498) #17
  %510 = load ptr, ptr @MEM_freeN, align 8, !tbaa !129
  call void %510(ptr noundef nonnull %500) #17
  store ptr null, ptr %499, align 8, !tbaa !129
  br label %542, !llvm.loop !383

511:                                              ; preds = %504
  br i1 %490, label %518, label %512

512:                                              ; preds = %511
  %513 = sub nsw i32 %494, %496
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, ptr %498, i64 %514
  %516 = sext i32 %496 to i64
  %517 = shl nsw i64 %516, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %515, ptr nonnull align 4 %500, i64 %517, i1 false)
  br label %524

518:                                              ; preds = %511
  %519 = sext i32 %496 to i64
  %520 = getelementptr inbounds i32, ptr %500, i64 %519
  %521 = sub nsw i32 %494, %496
  %522 = sext i32 %521 to i64
  %523 = shl nsw i64 %522, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %520, ptr nonnull align 4 %498, i64 %523, i1 false)
  store ptr %498, ptr %499, align 8, !tbaa !129
  store ptr %500, ptr %497, align 8, !tbaa !129
  br label %524

524:                                              ; preds = %518, %512
  %525 = phi ptr [ %498, %512 ], [ %500, %518 ]
  %526 = phi ptr [ %500, %512 ], [ %498, %518 ]
  %527 = icmp eq i32 %494, 0
  br i1 %527, label %540, label %528

528:                                              ; preds = %524
  %529 = sext i32 %494 to i64
  %530 = getelementptr inbounds i32, ptr %525, i64 %529
  br label %531

531:                                              ; preds = %528, %531
  %532 = phi i32 [ %535, %531 ], [ %494, %528 ]
  %533 = phi ptr [ %534, %531 ], [ %530, %528 ]
  %534 = getelementptr inbounds i32, ptr %533, i64 -1
  %535 = add nsw i32 %532, -1
  %536 = load i32, ptr %534, align 4, !tbaa !91
  %537 = zext i32 %536 to i64
  %538 = getelementptr inbounds i32, ptr %526, i64 %537
  store i32 %535, ptr %538, align 4, !tbaa !91
  %539 = icmp eq i32 %535, 0
  br i1 %539, label %540, label %531, !llvm.loop !384

540:                                              ; preds = %531, %524
  %541 = load ptr, ptr @MEM_freeN, align 8, !tbaa !129
  call void %541(ptr noundef nonnull %525) #17
  br label %542

542:                                              ; preds = %491, %540, %508
  %543 = add nsw i64 %492, -1
  %544 = icmp eq i64 %492, 0
  br i1 %544, label %545, label %491

545:                                              ; preds = %542
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #19
  %546 = load i32, ptr %14, align 4, !tbaa !91
  br label %777

547:                                              ; preds = %385
  %548 = icmp eq i32 %35, 0
  br i1 %548, label %582, label %549

549:                                              ; preds = %547
  %550 = tail call ptr @BLI_rng_new_srandom(i32 noundef %7) #17
  %551 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %552 = sext i32 %35 to i64
  %553 = tail call ptr %551(i64 noundef %552, ptr noundef nonnull @.str.512) #17
  store ptr %553, ptr %10, align 16, !tbaa !129
  %554 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %555 = shl nsw i64 %552, 3
  %556 = tail call ptr %554(i64 noundef %555, ptr noundef nonnull @.str.513) #17
  store ptr %556, ptr %11, align 16, !tbaa !129
  %557 = load ptr, ptr %24, align 8, !tbaa !51
  %558 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef %557, i8 noundef zeroext 1, ptr noundef null) #18
  %559 = icmp eq ptr %558, null
  br i1 %559, label %580, label %560

560:                                              ; preds = %549, %575
  %561 = phi i64 [ %578, %575 ], [ 0, %549 ]
  %562 = phi ptr [ %577, %575 ], [ %558, %549 ]
  %563 = phi i32 [ %576, %575 ], [ 0, %549 ]
  %564 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %562, i8 noundef zeroext 1) #18, !range !72
  %565 = icmp eq i8 %564, 0
  %566 = getelementptr inbounds i8, ptr %553, i64 %561
  br i1 %565, label %574, label %567

567:                                              ; preds = %560
  store i8 0, ptr %566, align 1, !tbaa !164
  %568 = sext i32 %563 to i64
  %569 = getelementptr inbounds %struct.BMElemSort, ptr %556, i64 %568, i32 1
  %570 = trunc i64 %561 to i32
  store i32 %570, ptr %569, align 4, !tbaa !368
  %571 = call float @BLI_rng_get_float(ptr noundef %550) #17
  %572 = add nsw i32 %563, 1
  %573 = getelementptr inbounds %struct.BMElemSort, ptr %556, i64 %568
  store float %571, ptr %573, align 4, !tbaa !370
  br label %575

574:                                              ; preds = %560
  store i8 1, ptr %566, align 1, !tbaa !164
  br label %575

575:                                              ; preds = %567, %574
  %576 = phi i32 [ %572, %567 ], [ %563, %574 ]
  %577 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #18
  %578 = add nuw i64 %561, 1
  %579 = icmp eq ptr %577, null
  br i1 %579, label %580, label %560, !llvm.loop !385

580:                                              ; preds = %575, %549
  %581 = phi i32 [ 0, %549 ], [ %576, %575 ]
  store i32 %581, ptr %14, align 4, !tbaa !91
  call void @BLI_rng_free(ptr noundef %550) #17
  br label %582

582:                                              ; preds = %580, %547
  %583 = phi i32 [ %581, %580 ], [ 0, %547 ]
  %584 = icmp eq i32 %44, 0
  br i1 %584, label %622, label %585

585:                                              ; preds = %582
  %586 = call ptr @BLI_rng_new_srandom(i32 noundef %7) #17
  %587 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %588 = sext i32 %44 to i64
  %589 = call ptr %587(i64 noundef %588, ptr noundef nonnull @.str.514) #17
  %590 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 1
  store ptr %589, ptr %590, align 8, !tbaa !129
  %591 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %592 = shl nsw i64 %588, 3
  %593 = call ptr %591(i64 noundef %592, ptr noundef nonnull @.str.515) #17
  %594 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 1
  store ptr %593, ptr %594, align 8, !tbaa !129
  %595 = load ptr, ptr %24, align 8, !tbaa !51
  %596 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef %595, i8 noundef zeroext 2, ptr noundef null) #18
  %597 = icmp eq ptr %596, null
  br i1 %597, label %621, label %598

598:                                              ; preds = %585
  %599 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 1
  br label %600

600:                                              ; preds = %598, %615
  %601 = phi i64 [ 0, %598 ], [ %618, %615 ]
  %602 = phi i32 [ 0, %598 ], [ %616, %615 ]
  %603 = phi ptr [ %596, %598 ], [ %617, %615 ]
  %604 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %603, i8 noundef zeroext 1) #18, !range !72
  %605 = icmp eq i8 %604, 0
  %606 = getelementptr inbounds i8, ptr %589, i64 %601
  br i1 %605, label %614, label %607

607:                                              ; preds = %600
  store i8 0, ptr %606, align 1, !tbaa !164
  %608 = sext i32 %602 to i64
  %609 = getelementptr inbounds %struct.BMElemSort, ptr %593, i64 %608, i32 1
  %610 = trunc i64 %601 to i32
  store i32 %610, ptr %609, align 4, !tbaa !368
  %611 = call float @BLI_rng_get_float(ptr noundef %586) #17
  %612 = add nsw i32 %602, 1
  %613 = getelementptr inbounds %struct.BMElemSort, ptr %593, i64 %608
  store float %611, ptr %613, align 4, !tbaa !370
  br label %615

614:                                              ; preds = %600
  store i8 1, ptr %606, align 1, !tbaa !164
  br label %615

615:                                              ; preds = %607, %614
  %616 = phi i32 [ %612, %607 ], [ %602, %614 ]
  %617 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #18
  %618 = add nuw i64 %601, 1
  %619 = icmp eq ptr %617, null
  br i1 %619, label %620, label %600, !llvm.loop !386

620:                                              ; preds = %615
  store i32 %616, ptr %599, align 4, !tbaa !91
  br label %621

621:                                              ; preds = %620, %585
  call void @BLI_rng_free(ptr noundef %586) #17
  br label %622

622:                                              ; preds = %621, %582
  %623 = icmp eq i32 %53, 0
  br i1 %623, label %777, label %624

624:                                              ; preds = %622
  %625 = call ptr @BLI_rng_new_srandom(i32 noundef %7) #17
  %626 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %627 = sext i32 %53 to i64
  %628 = call ptr %626(i64 noundef %627, ptr noundef nonnull @.str.516) #17
  %629 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 2
  store ptr %628, ptr %629, align 16, !tbaa !129
  %630 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %631 = shl nsw i64 %627, 3
  %632 = call ptr %630(i64 noundef %631, ptr noundef nonnull @.str.517) #17
  %633 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 2
  store ptr %632, ptr %633, align 16, !tbaa !129
  %634 = load ptr, ptr %24, align 8, !tbaa !51
  %635 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef %634, i8 noundef zeroext 3, ptr noundef null) #18
  %636 = icmp eq ptr %635, null
  br i1 %636, label %660, label %637

637:                                              ; preds = %624
  %638 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 2
  br label %639

639:                                              ; preds = %637, %654
  %640 = phi i64 [ 0, %637 ], [ %657, %654 ]
  %641 = phi i32 [ 0, %637 ], [ %655, %654 ]
  %642 = phi ptr [ %635, %637 ], [ %656, %654 ]
  %643 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %642, i8 noundef zeroext 1) #18, !range !72
  %644 = icmp eq i8 %643, 0
  %645 = getelementptr inbounds i8, ptr %628, i64 %640
  br i1 %644, label %653, label %646

646:                                              ; preds = %639
  store i8 0, ptr %645, align 1, !tbaa !164
  %647 = sext i32 %641 to i64
  %648 = getelementptr inbounds %struct.BMElemSort, ptr %632, i64 %647, i32 1
  %649 = trunc i64 %640 to i32
  store i32 %649, ptr %648, align 4, !tbaa !368
  %650 = call float @BLI_rng_get_float(ptr noundef %625) #17
  %651 = add nsw i32 %641, 1
  %652 = getelementptr inbounds %struct.BMElemSort, ptr %632, i64 %647
  store float %650, ptr %652, align 4, !tbaa !370
  br label %654

653:                                              ; preds = %639
  store i8 1, ptr %645, align 1, !tbaa !164
  br label %654

654:                                              ; preds = %646, %653
  %655 = phi i32 [ %651, %646 ], [ %641, %653 ]
  %656 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #18
  %657 = add nuw i64 %640, 1
  %658 = icmp eq ptr %656, null
  br i1 %658, label %659, label %639, !llvm.loop !387

659:                                              ; preds = %654
  store i32 %655, ptr %638, align 4, !tbaa !91
  br label %660

660:                                              ; preds = %659, %624
  call void @BLI_rng_free(ptr noundef %625) #17
  br label %777

661:                                              ; preds = %385
  %662 = icmp eq i32 %35, 0
  br i1 %662, label %697, label %663

663:                                              ; preds = %661
  %664 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %665 = sext i32 %35 to i64
  %666 = tail call ptr %664(i64 noundef %665, ptr noundef nonnull @.str.512) #17
  store ptr %666, ptr %10, align 16, !tbaa !129
  %667 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %668 = shl nsw i64 %665, 3
  %669 = tail call ptr %667(i64 noundef %668, ptr noundef nonnull @.str.513) #17
  store ptr %669, ptr %11, align 16, !tbaa !129
  %670 = load ptr, ptr %24, align 8, !tbaa !51
  %671 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef %670, i8 noundef zeroext 1, ptr noundef null) #18
  %672 = icmp eq ptr %671, null
  br i1 %672, label %695, label %673

673:                                              ; preds = %663, %690
  %674 = phi i64 [ %693, %690 ], [ 0, %663 ]
  %675 = phi ptr [ %692, %690 ], [ %671, %663 ]
  %676 = phi i32 [ %691, %690 ], [ 0, %663 ]
  %677 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %675, i8 noundef zeroext 1) #18, !range !72
  %678 = icmp eq i8 %677, 0
  %679 = getelementptr inbounds i8, ptr %666, i64 %674
  br i1 %678, label %689, label %680

680:                                              ; preds = %673
  store i8 0, ptr %679, align 1, !tbaa !164
  %681 = sext i32 %676 to i64
  %682 = getelementptr inbounds %struct.BMElemSort, ptr %669, i64 %681, i32 1
  %683 = trunc i64 %674 to i32
  store i32 %683, ptr %682, align 4, !tbaa !368
  %684 = trunc i64 %674 to i32
  %685 = sub i32 0, %684
  %686 = sitofp i32 %685 to float
  %687 = add nsw i32 %676, 1
  %688 = getelementptr inbounds %struct.BMElemSort, ptr %669, i64 %681
  store float %686, ptr %688, align 4, !tbaa !370
  br label %690

689:                                              ; preds = %673
  store i8 1, ptr %679, align 1, !tbaa !164
  br label %690

690:                                              ; preds = %680, %689
  %691 = phi i32 [ %687, %680 ], [ %676, %689 ]
  %692 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #18
  %693 = add nuw i64 %674, 1
  %694 = icmp eq ptr %692, null
  br i1 %694, label %695, label %673, !llvm.loop !388

695:                                              ; preds = %690, %663
  %696 = phi i32 [ 0, %663 ], [ %691, %690 ]
  store i32 %696, ptr %14, align 4, !tbaa !91
  br label %697

697:                                              ; preds = %695, %661
  %698 = phi i32 [ %696, %695 ], [ 0, %661 ]
  %699 = icmp eq i32 %44, 0
  br i1 %699, label %737, label %700

700:                                              ; preds = %697
  %701 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %702 = sext i32 %44 to i64
  %703 = call ptr %701(i64 noundef %702, ptr noundef nonnull @.str.514) #17
  %704 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 1
  store ptr %703, ptr %704, align 8, !tbaa !129
  %705 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %706 = shl nsw i64 %702, 3
  %707 = call ptr %705(i64 noundef %706, ptr noundef nonnull @.str.515) #17
  %708 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 1
  store ptr %707, ptr %708, align 8, !tbaa !129
  %709 = load ptr, ptr %24, align 8, !tbaa !51
  %710 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef %709, i8 noundef zeroext 2, ptr noundef null) #18
  %711 = icmp eq ptr %710, null
  br i1 %711, label %737, label %712

712:                                              ; preds = %700
  %713 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 1
  br label %714

714:                                              ; preds = %712, %731
  %715 = phi i64 [ 0, %712 ], [ %734, %731 ]
  %716 = phi i32 [ 0, %712 ], [ %732, %731 ]
  %717 = phi ptr [ %710, %712 ], [ %733, %731 ]
  %718 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %717, i8 noundef zeroext 1) #18, !range !72
  %719 = icmp eq i8 %718, 0
  %720 = getelementptr inbounds i8, ptr %703, i64 %715
  br i1 %719, label %730, label %721

721:                                              ; preds = %714
  store i8 0, ptr %720, align 1, !tbaa !164
  %722 = sext i32 %716 to i64
  %723 = getelementptr inbounds %struct.BMElemSort, ptr %707, i64 %722, i32 1
  %724 = trunc i64 %715 to i32
  store i32 %724, ptr %723, align 4, !tbaa !368
  %725 = trunc i64 %715 to i32
  %726 = sub i32 0, %725
  %727 = sitofp i32 %726 to float
  %728 = add nsw i32 %716, 1
  %729 = getelementptr inbounds %struct.BMElemSort, ptr %707, i64 %722
  store float %727, ptr %729, align 4, !tbaa !370
  br label %731

730:                                              ; preds = %714
  store i8 1, ptr %720, align 1, !tbaa !164
  br label %731

731:                                              ; preds = %721, %730
  %732 = phi i32 [ %728, %721 ], [ %716, %730 ]
  %733 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #18
  %734 = add nuw i64 %715, 1
  %735 = icmp eq ptr %733, null
  br i1 %735, label %736, label %714, !llvm.loop !389

736:                                              ; preds = %731
  store i32 %732, ptr %713, align 4, !tbaa !91
  br label %737

737:                                              ; preds = %700, %736, %697
  %738 = icmp eq i32 %53, 0
  br i1 %738, label %777, label %739

739:                                              ; preds = %737
  %740 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %741 = sext i32 %53 to i64
  %742 = call ptr %740(i64 noundef %741, ptr noundef nonnull @.str.516) #17
  %743 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 2
  store ptr %742, ptr %743, align 16, !tbaa !129
  %744 = load ptr, ptr @MEM_callocN, align 8, !tbaa !129
  %745 = shl nsw i64 %741, 3
  %746 = call ptr %744(i64 noundef %745, ptr noundef nonnull @.str.517) #17
  %747 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 2
  store ptr %746, ptr %747, align 16, !tbaa !129
  %748 = load ptr, ptr %24, align 8, !tbaa !51
  %749 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef %748, i8 noundef zeroext 3, ptr noundef null) #18
  %750 = icmp eq ptr %749, null
  br i1 %750, label %777, label %751

751:                                              ; preds = %739
  %752 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 2
  br label %753

753:                                              ; preds = %751, %770
  %754 = phi i64 [ 0, %751 ], [ %773, %770 ]
  %755 = phi i32 [ 0, %751 ], [ %771, %770 ]
  %756 = phi ptr [ %749, %751 ], [ %772, %770 ]
  %757 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %756, i8 noundef zeroext 1) #18, !range !72
  %758 = icmp eq i8 %757, 0
  %759 = getelementptr inbounds i8, ptr %742, i64 %754
  br i1 %758, label %769, label %760

760:                                              ; preds = %753
  store i8 0, ptr %759, align 1, !tbaa !164
  %761 = sext i32 %755 to i64
  %762 = getelementptr inbounds %struct.BMElemSort, ptr %746, i64 %761, i32 1
  %763 = trunc i64 %754 to i32
  store i32 %763, ptr %762, align 4, !tbaa !368
  %764 = trunc i64 %754 to i32
  %765 = sub i32 0, %764
  %766 = sitofp i32 %765 to float
  %767 = add nsw i32 %755, 1
  %768 = getelementptr inbounds %struct.BMElemSort, ptr %746, i64 %761
  store float %766, ptr %768, align 4, !tbaa !370
  br label %770

769:                                              ; preds = %753
  store i8 1, ptr %759, align 1, !tbaa !164
  br label %770

770:                                              ; preds = %760, %769
  %771 = phi i32 [ %767, %760 ], [ %755, %769 ]
  %772 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #18
  %773 = add nuw i64 %754, 1
  %774 = icmp eq ptr %772, null
  br i1 %774, label %776, label %753, !llvm.loop !390

775:                                              ; preds = %380
  store i32 %381, ptr %354, align 4, !tbaa !91
  br label %777

776:                                              ; preds = %770
  store i32 %771, ptr %752, align 4, !tbaa !91
  br label %777

777:                                              ; preds = %739, %776, %340, %775, %385, %334, %545, %737, %622, %660, %197
  %778 = phi i32 [ %698, %739 ], [ %698, %776 ], [ 0, %340 ], [ 0, %775 ], [ 0, %385 ], [ %250, %334 ], [ %546, %545 ], [ %698, %737 ], [ %583, %622 ], [ %583, %660 ], [ %104, %197 ]
  %779 = icmp eq i32 %778, 0
  %780 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 1
  %781 = load i32, ptr %780, align 4
  %782 = icmp eq i32 %781, 0
  %783 = select i1 %779, i1 %782, i1 false
  %784 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 2
  %785 = load i32, ptr %784, align 4
  %786 = icmp eq i32 %785, 0
  %787 = select i1 %783, i1 %786, i1 false
  br i1 %787, label %788, label %810

788:                                              ; preds = %777, %807
  %789 = phi i64 [ %808, %807 ], [ 2, %777 ]
  %790 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 %789
  %791 = load ptr, ptr %790, align 8, !tbaa !129
  %792 = icmp eq ptr %791, null
  br i1 %792, label %795, label %793

793:                                              ; preds = %788
  %794 = load ptr, ptr @MEM_freeN, align 8, !tbaa !129
  call void %794(ptr noundef nonnull %791) #17
  br label %795

795:                                              ; preds = %793, %788
  %796 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 %789
  %797 = load ptr, ptr %796, align 8, !tbaa !129
  %798 = icmp eq ptr %797, null
  br i1 %798, label %801, label %799

799:                                              ; preds = %795
  %800 = load ptr, ptr @MEM_freeN, align 8, !tbaa !129
  call void %800(ptr noundef nonnull %797) #17
  br label %801

801:                                              ; preds = %799, %795
  %802 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 %789
  %803 = load ptr, ptr %802, align 8, !tbaa !129
  %804 = icmp eq ptr %803, null
  br i1 %804, label %807, label %805

805:                                              ; preds = %801
  %806 = load ptr, ptr @MEM_freeN, align 8, !tbaa !129
  call void %806(ptr noundef nonnull %803) #17
  br label %807

807:                                              ; preds = %805, %801
  %808 = add nsw i64 %789, -1
  %809 = icmp eq i64 %789, 0
  br i1 %809, label %886, label %788, !llvm.loop !391

810:                                              ; preds = %777, %866
  %811 = phi i64 [ %867, %866 ], [ 2, %777 ]
  %812 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 %811
  %813 = load ptr, ptr %812, align 8, !tbaa !129
  %814 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 %811
  %815 = load ptr, ptr %814, align 8, !tbaa !129
  %816 = icmp ne ptr %813, null
  %817 = icmp ne ptr %815, null
  %818 = select i1 %816, i1 %817, i1 false
  br i1 %818, label %819, label %860

819:                                              ; preds = %810
  %820 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 %811
  %821 = load ptr, ptr %820, align 8, !tbaa !129
  %822 = icmp eq ptr %821, null
  br i1 %822, label %823, label %861

823:                                              ; preds = %819
  %824 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 %811
  %825 = load i32, ptr %824, align 4, !tbaa !91
  %826 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 %811
  %827 = load i32, ptr %826, align 4, !tbaa !91
  %828 = sext i32 %827 to i64
  call void @qsort(ptr noundef nonnull %815, i64 noundef %828, i64 noundef 8, ptr noundef nonnull @bmelemsort_comp) #17
  %829 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !129
  %830 = sext i32 %825 to i64
  %831 = shl nsw i64 %830, 2
  %832 = call ptr %829(i64 noundef %831, ptr noundef nonnull @.str.524) #17
  store ptr %832, ptr %820, align 8, !tbaa !129
  %833 = icmp eq i32 %825, 0
  br i1 %833, label %861, label %834

834:                                              ; preds = %823
  %835 = getelementptr inbounds %struct.BMElemSort, ptr %815, i64 %828
  %836 = getelementptr inbounds %struct.BMElemSort, ptr %835, i64 -1
  %837 = getelementptr inbounds i8, ptr %813, i64 %830
  br label %838

838:                                              ; preds = %834, %856
  %839 = phi i64 [ %830, %834 ], [ %843, %856 ]
  %840 = phi ptr [ %837, %834 ], [ %842, %856 ]
  %841 = phi ptr [ %836, %834 ], [ %858, %856 ]
  %842 = getelementptr inbounds i8, ptr %840, i64 -1
  %843 = add nsw i64 %839, -1
  %844 = load i8, ptr %842, align 1, !tbaa !164
  %845 = icmp eq i8 %844, 0
  br i1 %845, label %849, label %846

846:                                              ; preds = %838
  %847 = getelementptr inbounds i32, ptr %832, i64 %843
  %848 = trunc i64 %843 to i32
  store i32 %848, ptr %847, align 4, !tbaa !91
  br label %856

849:                                              ; preds = %838
  %850 = getelementptr inbounds %struct.BMElemSort, ptr %841, i64 0, i32 1
  %851 = load i32, ptr %850, align 4, !tbaa !368
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds i32, ptr %832, i64 %852
  %854 = trunc i64 %843 to i32
  store i32 %854, ptr %853, align 4, !tbaa !91
  %855 = getelementptr inbounds %struct.BMElemSort, ptr %841, i64 -1
  br label %856

856:                                              ; preds = %846, %849
  %857 = phi i32 [ %848, %846 ], [ %854, %849 ]
  %858 = phi ptr [ %841, %846 ], [ %855, %849 ]
  %859 = icmp eq i32 %857, 0
  br i1 %859, label %860, label %838, !llvm.loop !392

860:                                              ; preds = %856, %810
  br i1 %816, label %861, label %863

861:                                              ; preds = %823, %819, %860
  %862 = load ptr, ptr @MEM_freeN, align 8, !tbaa !129
  call void %862(ptr noundef nonnull %813) #17
  br label %863

863:                                              ; preds = %861, %860
  br i1 %817, label %864, label %866

864:                                              ; preds = %863
  %865 = load ptr, ptr @MEM_freeN, align 8, !tbaa !129
  call void %865(ptr noundef nonnull %815) #17
  br label %866

866:                                              ; preds = %864, %863
  %867 = add nsw i64 %811, -1
  %868 = icmp eq i64 %811, 0
  br i1 %868, label %869, label %810, !llvm.loop !393

869:                                              ; preds = %866
  %870 = load ptr, ptr %24, align 8, !tbaa !51
  %871 = load ptr, ptr %12, align 16, !tbaa !129
  %872 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 1
  %873 = load ptr, ptr %872, align 8, !tbaa !129
  %874 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 2
  %875 = load ptr, ptr %874, align 16, !tbaa !129
  call void @BM_mesh_remap(ptr noundef %870, ptr noundef %871, ptr noundef %873, ptr noundef %875) #17
  br label %876

876:                                              ; preds = %869, %883
  %877 = phi i64 [ 2, %869 ], [ %884, %883 ]
  %878 = getelementptr inbounds [3 x ptr], ptr %12, i64 0, i64 %877
  %879 = load ptr, ptr %878, align 8, !tbaa !129
  %880 = icmp eq ptr %879, null
  br i1 %880, label %883, label %881

881:                                              ; preds = %876
  %882 = load ptr, ptr @MEM_freeN, align 8, !tbaa !129
  call void %882(ptr noundef nonnull %879) #17
  br label %883

883:                                              ; preds = %881, %876
  %884 = add nsw i64 %877, -1
  %885 = icmp eq i64 %877, 0
  br i1 %885, label %886, label %876, !llvm.loop !394

886:                                              ; preds = %883, %807, %8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #19
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_calc_center_mean(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !395 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #18
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  ret float %4
}

; Function Attrs: optsize
declare ptr @BLI_rng_new_srandom(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @bmelemsort_comp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !PGOFuncName !396 {
  %3 = load float, ptr %0, align 4, !tbaa !370
  %4 = load float, ptr %1, align 4, !tbaa !370
  %5 = fcmp ogt float %3, %4
  %6 = zext i1 %5 to i32
  %7 = fcmp olt float %3, %4
  %8 = sext i1 %7 to i32
  %9 = add nsw i32 %8, %6
  ret i32 %9
}

; Function Attrs: optsize
declare void @BM_mesh_remap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !397 {
  %3 = load float, ptr %0, align 4, !tbaa !201
  %4 = load float, ptr %1, align 4, !tbaa !201
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !201
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !201
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !201
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !201
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @uiDefAutoButsRNA(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @edbm_sort_elements_draw_check_prop(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !398 {
  %3 = tail call ptr @RNA_property_identifier(ptr noundef %1) #17
  %4 = tail call i32 @RNA_enum_get(ptr noundef %0, ptr noundef nonnull @.str.35) #17
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(5) @.str.21) #20
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = icmp eq i32 %4, 6
  br label %15

9:                                                ; preds = %2
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(8) @.str.323) #20
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = and i32 %4, -2
  %14 = icmp ne i32 %13, 6
  br label %15

15:                                               ; preds = %9, %12, %7
  %16 = phi i1 [ %8, %7 ], [ %14, %12 ], [ true, %9 ]
  %17 = zext i1 %16 to i8
  ret i8 %17
}

; Function Attrs: optsize
declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_current_material_texture(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BLI_hnoise(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @externtex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @edbm_bridge_tag_boundary_edges(ptr noundef %0) unnamed_addr #0 !PGOFuncName !399 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #19
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 10, i8 noundef zeroext 16, i8 noundef zeroext 0) #17
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %0, i8 noundef zeroext 2, ptr noundef null) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %46, label %6

6:                                                ; preds = %1, %42
  %7 = phi i32 [ %43, %42 ], [ 0, %1 ]
  %8 = phi ptr [ %44, %42 ], [ %4, %1 ]
  %9 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %8, i8 noundef zeroext 1) #18, !range !72
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %6
  %12 = call zeroext i8 @BM_edge_is_wire(ptr noundef nonnull %8) #18, !range !93
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = call zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %8) #18, !range !93
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %11
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %8, i8 noundef zeroext 16) #18
  br label %42

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  %19 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 8, ptr noundef nonnull %8) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %32
  %22 = phi i8 [ %34, %32 ], [ 1, %18 ]
  %23 = phi i32 [ %33, %32 ], [ %7, %18 ]
  %24 = phi ptr [ %35, %32 ], [ %19, %18 ]
  %25 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %24, i8 noundef zeroext 1) #18, !range !72
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %24, i8 noundef zeroext 16) #18, !range !72
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %24, i8 noundef zeroext 16) #18
  %31 = add nsw i32 %23, 1
  br label %32

32:                                               ; preds = %21, %30, %27
  %33 = phi i32 [ %23, %27 ], [ %31, %30 ], [ %23, %21 ]
  %34 = phi i8 [ %22, %27 ], [ %22, %30 ], [ 0, %21 ]
  %35 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #18
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %21, !llvm.loop !400

37:                                               ; preds = %32
  %38 = icmp eq i8 %34, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %8, i8 noundef zeroext 16) #18
  br label %40

40:                                               ; preds = %18, %39, %37
  %41 = phi i32 [ %33, %39 ], [ %33, %37 ], [ %7, %18 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  br label %42

42:                                               ; preds = %6, %40, %17
  %43 = phi i32 [ %7, %17 ], [ %41, %40 ], [ %7, %6 ]
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #18
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %6, !llvm.loop !401

46:                                               ; preds = %42, %1
  %47 = phi i32 [ 0, %1 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #19
  ret i32 %47
}

; Function Attrs: optsize
declare zeroext i8 @BMO_error_occurred(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_verts_mirror_cache_begin_ex(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_vert_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!35, !36, i64 88}
!48 = !{!"editmesh_tools.c:edbm_subdivide_exec"}
!49 = !{!50, !36, i64 112}
!50 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!51 = !{!52, !36, i64 0}
!52 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !53, i64 16, !36, i64 24, !53, i64 32, !36, i64 40, !36, i64 48, !54, i64 56, !36, i64 64, !53, i64 72, !36, i64 80, !53, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !53, i64 104}
!53 = !{!"int", !37, i64 0}
!54 = !{!"long", !37, i64 0}
!55 = !{!"editmesh_tools.c:edbm_subdivide_edge_ring_exec"}
!56 = !{!57, !53, i64 0}
!57 = !{!"EdgeRingOpSubdProps", !53, i64 0, !53, i64 4, !58, i64 8, !53, i64 12, !58, i64 16}
!58 = !{!"float", !37, i64 0}
!59 = !{!57, !53, i64 4}
!60 = !{!57, !58, i64 8}
!61 = !{!57, !53, i64 12}
!62 = !{!57, !58, i64 16}
!63 = !{!"editmesh_tools.c:mesh_operator_edgering_props"}
!64 = !{!"editmesh_tools.c:edbm_unsubdivide_exec"}
!65 = !{!52, !41, i64 92}
!66 = !{!52, !36, i64 96}
!67 = !{!68, !36, i64 376}
!68 = !{!"ARegion", !36, i64 0, !36, i64 8, !69, i64 16, !71, i64 176, !71, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !58, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!69 = !{!"View2D", !70, i64 0, !70, i64 16, !71, i64 32, !71, i64 48, !71, i64 64, !37, i64 80, !37, i64 88, !58, i64 96, !58, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!70 = !{!"rctf", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12}
!71 = !{!"rcti", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!72 = !{i8 0, i8 17}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"editmesh_tools.c:BM_iter_new"}
!76 = !{!"editmesh_tools.c:_bm_elem_flag_test"}
!77 = !{!78, !37, i64 13}
!78 = !{!"BMHeader", !36, i64 0, !53, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!79 = !{!"editmesh_tools.c:BM_iter_step"}
!80 = !{!81, !36, i64 48}
!81 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !53, i64 56, !37, i64 60}
!82 = !{!35, !36, i64 48}
!83 = !{!35, !36, i64 104}
!84 = !{!"editmesh_tools.c:edbm_delete_exec"}
!85 = !{!"editmesh_tools.c:edbm_delete_loose_exec"}
!86 = !{!87, !53, i64 16}
!87 = !{!"BMesh", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !53, i64 88, !53, i64 92, !53, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !53, i64 128, !36, i64 136, !88, i64 144, !88, i64 344, !88, i64 544, !88, i64 744, !41, i64 944, !53, i64 948, !53, i64 952, !53, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!88 = !{!"CustomData", !36, i64 0, !37, i64 8, !53, i64 172, !53, i64 176, !53, i64 180, !36, i64 184, !36, i64 192}
!89 = !{!87, !53, i64 20}
!90 = !{!87, !53, i64 24}
!91 = !{!53, !53, i64 0}
!92 = !{!87, !53, i64 12}
!93 = !{i8 0, i8 2}
!94 = distinct !{!94, !74}
!95 = distinct !{!95, !74}
!96 = !{!97, !36, i64 48}
!97 = !{!"BMVert", !78, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!98 = distinct !{!98, !74}
!99 = !{!50, !36, i64 120}
!100 = !{!"editmesh_tools.c:edbm_collapse_edge_exec"}
!101 = !{!"editmesh_tools.c:edbm_add_edge_face_exec"}
!102 = !{i32 0, i32 2}
!103 = !{!87, !53, i64 4}
!104 = !{!52, !41, i64 94}
!105 = !{!"editmesh_tools.c:edbm_mark_seam_exec"}
!106 = !{!107, !36, i64 296}
!107 = !{!"Object", !108, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !53, i64 140, !53, i64 144, !53, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !109, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !53, i64 432, !53, i64 436, !36, i64 440, !36, i64 448, !53, i64 456, !53, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !58, i64 616, !58, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !53, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !53, i64 968, !53, i64 972, !53, i64 976, !53, i64 980, !53, i64 984, !58, i64 988, !58, i64 992, !58, i64 996, !58, i64 1000, !58, i64 1004, !58, i64 1008, !58, i64 1012, !58, i64 1016, !58, i64 1020, !58, i64 1024, !58, i64 1028, !58, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !58, i64 1048, !58, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !58, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !53, i64 1144, !53, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !58, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !54, i64 1304, !54, i64 1312, !53, i64 1320, !53, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!108 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !53, i64 100, !53, i64 104, !53, i64 108, !36, i64 112}
!109 = !{!"bAnimVizSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44}
!110 = distinct !{!110, !74}
!111 = !{!112, !53, i64 1344}
!112 = !{!"Mesh", !108, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !88, i64 280, !88, i64 480, !88, i64 680, !88, i64 880, !88, i64 1080, !53, i64 1280, !53, i64 1284, !53, i64 1288, !53, i64 1292, !53, i64 1296, !53, i64 1300, !53, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !53, i64 1344, !41, i64 1348, !41, i64 1350, !58, i64 1352, !53, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !41, i64 1366, !36, i64 1368}
!113 = distinct !{!113, !74}
!114 = !{!"editmesh_tools.c:edbm_mark_sharp_exec"}
!115 = !{!116, !36, i64 24}
!116 = !{!"BMEdge", !78, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !117, i64 48, !117, i64 64}
!117 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!118 = !{!116, !36, i64 32}
!119 = distinct !{!119, !74}
!120 = !{!"editmesh_tools.c:edbm_vert_connect_exec"}
!121 = !{!122, !53, i64 16}
!122 = !{!"BMOpSlot", !36, i64 0, !53, i64 8, !37, i64 12, !53, i64 16, !37, i64 24}
!123 = !{!"editmesh_tools.c:edbm_vert_connect_nonplaner_exec"}
!124 = !{!"editmesh_tools.c:edbm_edge_split_exec"}
!125 = !{!"editmesh_tools.c:edbm_duplicate_invoke"}
!126 = !{i32 2, i32 5}
!127 = !{!"editmesh_tools.c:edbm_duplicate_exec"}
!128 = !{i64 0, i64 8, !129, i64 8, i64 8, !129}
!129 = !{!36, !36, i64 0}
!130 = !{!"editmesh_tools.c:edbm_flip_normals_exec"}
!131 = !{!"editmesh_tools.c:edbm_edge_rotate_selected_exec"}
!132 = distinct !{!132, !74}
!133 = !{!"editmesh_tools.c:edbm_hide_exec"}
!134 = !{!"editmesh_tools.c:edbm_reveal_exec"}
!135 = !{!"editmesh_tools.c:edbm_normals_make_consistent_exec"}
!136 = !{!"editmesh_tools.c:edbm_do_smooth_vertex_exec"}
!137 = !{!112, !37, i64 1365}
!138 = !{!139, !53, i64 16}
!139 = !{!"ModifierData", !36, i64 0, !36, i64 8, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!140 = !{!139, !53, i64 20}
!141 = !{!142, !41, i64 114}
!142 = !{!"MirrorModifierData", !139, i64 0, !41, i64 112, !41, i64 114, !58, i64 116, !36, i64 120}
!143 = !{!142, !58, i64 116}
!144 = distinct !{!144, !74}
!145 = distinct !{!145, !74}
!146 = !{!"editmesh_tools.c:edbm_do_smooth_laplacian_vertex_exec"}
!147 = !{!148, !53, i64 32}
!148 = !{!"BMFace", !78, i64 0, !36, i64 16, !36, i64 24, !53, i64 32, !37, i64 36, !41, i64 48}
!149 = distinct !{!149, !74}
!150 = distinct !{!150, !74}
!151 = !{!"editmesh_tools.c:edbm_faces_shade_smooth_exec"}
!152 = !{!"editmesh_tools.c:edbm_faces_shade_flat_exec"}
!153 = !{!"editmesh_tools.c:edbm_rotate_uvs_exec"}
!154 = !{!"editmesh_tools.c:edbm_reverse_uvs_exec"}
!155 = !{!"editmesh_tools.c:edbm_rotate_colors_exec"}
!156 = !{!"editmesh_tools.c:edbm_reverse_colors_exec"}
!157 = !{!"editmesh_tools.c:edbm_merge_exec"}
!158 = !{!"editmesh_tools.c:merge_type_itemf"}
!159 = !{!107, !41, i64 136}
!160 = !{!87, !36, i64 960}
!161 = !{!87, !36, i64 968}
!162 = !{!163, !37, i64 24}
!163 = !{!"BMEditSelection", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!164 = !{!37, !37, i64 0}
!165 = !{!"editmesh_tools.c:edbm_remove_doubles_exec"}
!166 = !{!87, !53, i64 0}
!167 = !{!"editmesh_tools.c:edbm_shape_propagate_to_all_exec"}
!168 = !{!112, !36, i64 272}
!169 = !{!35, !36, i64 80}
!170 = !{!"editmesh_tools.c:edbm_blend_from_shape_exec"}
!171 = !{!112, !36, i64 144}
!172 = !{!97, !36, i64 0}
!173 = !{!174, !41, i64 28}
!174 = !{!"KeyBlock", !36, i64 0, !36, i64 8, !58, i64 16, !58, i64 20, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !53, i64 32, !53, i64 36, !36, i64 40, !37, i64 48, !37, i64 112, !58, i64 176, !58, i64 180}
!175 = distinct !{!175, !74}
!176 = !{!"editmesh_tools.c:edbm_blend_from_shape_ui"}
!177 = !{!50, !36, i64 152}
!178 = !{!50, !36, i64 88}
!179 = !{!50, !36, i64 80}
!180 = !{!"editmesh_tools.c:shape_itemf"}
!181 = !{!87, !53, i64 316}
!182 = !{!87, !36, i64 144}
!183 = !{!184, !53, i64 0}
!184 = !{!"CustomDataLayer", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !37, i64 32, !36, i64 96}
!185 = !{!186, !53, i64 0}
!186 = !{!"EnumPropertyItem", !53, i64 0, !36, i64 8, !53, i64 16, !36, i64 24, !36, i64 32}
!187 = !{!186, !36, i64 8}
!188 = !{!186, !36, i64 24}
!189 = distinct !{!189, !74}
!190 = !{!"editmesh_tools.c:edbm_solidify_exec"}
!191 = !{!35, !36, i64 64}
!192 = !{!"editmesh_tools.c:edbm_knife_cut_exec"}
!193 = !{!194, !53, i64 128}
!194 = !{!"CollectionPropertyIterator", !195, i64 0, !195, i64 24, !36, i64 48, !37, i64 56, !53, i64 96, !53, i64 100, !195, i64 104, !53, i64 128}
!195 = !{!"PointerRNA", !196, i64 0, !36, i64 8, !36, i64 16}
!196 = !{!"", !36, i64 0}
!197 = !{i64 0, i64 8, !129, i64 8, i64 8, !129, i64 16, i64 8, !129}
!198 = distinct !{!198, !74}
!199 = distinct !{!199, !74}
!200 = !{!87, !37, i64 28}
!201 = !{!58, !58, i64 0}
!202 = !{!116, !36, i64 16}
!203 = distinct !{!203, !74}
!204 = !{!"editmesh_tools.c:edbm_separate_exec"}
!205 = !{!206, !36, i64 32}
!206 = !{!"Base", !36, i64 0, !36, i64 8, !53, i64 16, !53, i64 20, !53, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!207 = !{!208, !36, i64 32}
!208 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !195, i64 16}
!209 = !{!112, !36, i64 24}
!210 = distinct !{!210, !74}
!211 = !{!"editmesh_tools.c:edbm_fill_exec"}
!212 = !{!"editmesh_tools.c:edbm_fill_grid_exec"}
!213 = !{i32 -2147483647, i32 -2147483648}
!214 = !{!"editmesh_tools.c:edbm_fill_holes_exec"}
!215 = !{!"editmesh_tools.c:edbm_beautify_fill_exec"}
!216 = distinct !{!216, !74}
!217 = !{!"editmesh_tools.c:edbm_poke_face_exec"}
!218 = !{!"editmesh_tools.c:edbm_quads_convert_to_tris_exec"}
!219 = !{!"editmesh_tools.c:edbm_tris_convert_to_quads_exec"}
!220 = !{!"editmesh_tools.c:join_triangle_props"}
!221 = !{!"editmesh_tools.c:edbm_dissolve_verts_exec"}
!222 = !{!"editmesh_tools.c:edbm_dissolve_prop__use_face_split"}
!223 = !{!"editmesh_tools.c:edbm_dissolve_prop__use_boundary_tear"}
!224 = !{!"editmesh_tools.c:edbm_dissolve_edges_exec"}
!225 = !{!"editmesh_tools.c:edbm_dissolve_prop__use_verts"}
!226 = !{!"editmesh_tools.c:edbm_dissolve_faces_exec"}
!227 = !{!"editmesh_tools.c:edbm_dissolve_mode_exec"}
!228 = !{!"editmesh_tools.c:edbm_dissolve_limited_exec"}
!229 = distinct !{!229, !74}
!230 = distinct !{!230, !74}
!231 = !{!232, !36, i64 16}
!232 = !{!"BMLoop", !78, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!233 = !{!232, !36, i64 24}
!234 = distinct !{!234, !74}
!235 = distinct !{!235, !74}
!236 = !{!"editmesh_tools.c:edbm_dissolve_degenerate_exec"}
!237 = !{!"editmesh_tools.c:edbm_delete_edgeloop_exec"}
!238 = !{!116, !36, i64 40}
!239 = !{!232, !36, i64 32}
!240 = !{!232, !36, i64 40}
!241 = distinct !{!241, !74}
!242 = distinct !{!242, !74}
!243 = !{!"editmesh_tools.c:edbm_split_exec"}
!244 = !{!"editmesh_tools.c:edbm_sort_elements_exec"}
!245 = !{!"editmesh_tools.c:edbm_sort_elements_ui"}
!246 = !{!"editmesh_tools.c:edbm_noise_exec"}
!247 = !{!107, !53, i64 460}
!248 = !{!249, !41, i64 232}
!249 = !{!"Tex", !108, i64 0, !36, i64 120, !58, i64 128, !58, i64 132, !58, i64 136, !58, i64 140, !58, i64 144, !58, i64 148, !58, i64 152, !58, i64 156, !58, i64 160, !58, i64 164, !58, i64 168, !58, i64 172, !58, i64 176, !58, i64 180, !58, i64 184, !58, i64 188, !58, i64 192, !58, i64 196, !58, i64 200, !58, i64 204, !58, i64 208, !58, i64 212, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !58, i64 236, !58, i64 240, !58, i64 244, !58, i64 248, !53, i64 252, !53, i64 256, !41, i64 260, !41, i64 262, !41, i64 264, !41, i64 266, !53, i64 268, !53, i64 272, !53, i64 276, !53, i64 280, !58, i64 284, !58, i64 288, !58, i64 292, !250, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!250 = !{!"ImageUser", !36, i64 0, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !53, i64 36}
!251 = !{!249, !58, i64 132}
!252 = !{!249, !58, i64 128}
!253 = !{!249, !41, i64 234}
!254 = distinct !{!254, !74}
!255 = distinct !{!255, !74}
!256 = !{!"editmesh_tools.c:edbm_bridge_edge_loops_exec"}
!257 = distinct !{!257, !74}
!258 = distinct !{!258, !74}
!259 = !{!50, !41, i64 160}
!260 = !{!"editmesh_tools.c:edbm_wireframe_exec"}
!261 = !{!"editmesh_tools.c:mesh_symmetrize_exec"}
!262 = !{!"editmesh_tools.c:mesh_symmetry_snap_exec"}
!263 = distinct !{!263, !74}
!264 = !{!"editmesh_tools.c:mesh_operator_edgering_props_get"}
!265 = !{!"editmesh_tools.c:BM_iter_init"}
!266 = !{!81, !37, i64 60}
!267 = !{!81, !36, i64 40}
!268 = !{!87, !36, i64 32}
!269 = !{!87, !36, i64 40}
!270 = !{!87, !36, i64 56}
!271 = !{!"editmesh_tools.c:_bm_elem_flag_set"}
!272 = !{!"editmesh_tools.c:bm_face_is_loose"}
!273 = !{!148, !36, i64 24}
!274 = !{!232, !36, i64 56}
!275 = distinct !{!275, !74}
!276 = !{!"editmesh_tools.c:BM_edge_is_wire"}
!277 = !{!"editmesh_tools.c:edbm_report_delete_info"}
!278 = !{!"editmesh_tools.c:_bm_elem_flag_enable"}
!279 = !{!"editmesh_tools.c:_bm_elem_flag_disable"}
!280 = !{!"editmesh_tools.c:BM_edge_is_boundary"}
!281 = !{!"editmesh_tools.c:edbm_add_edge_face__smooth_get"}
!282 = distinct !{!282, !74}
!283 = !{!"editmesh_tools.c:edbm_add_edge_face_exec__tricky_extend_sel"}
!284 = distinct !{!284, !74}
!285 = distinct !{!285, !74}
!286 = !{!"editmesh_tools.c:edbm_add_edge_face_exec__tricky_finalize_sel"}
!287 = !{!288, !37, i64 12}
!288 = !{!"BMElem", !78, i64 0}
!289 = !{!"editmesh_tools.c:_bm_elem_flag_test_bool"}
!290 = !{!"editmesh_tools.c:edbm_add_edge_face_exec__vert_edge_lookup"}
!291 = !{ptr @BM_edge_is_boundary, ptr @BM_edge_is_wire}
!292 = distinct !{!292, !74}
!293 = !{!"editmesh_tools.c:BM_edge_other_vert"}
!294 = !{!"editmesh_tools.c:BLI_listbase_clear"}
!295 = !{!"editmesh_tools.c:mesh_set_smooth_faces"}
!296 = distinct !{!296, !74}
!297 = !{!"editmesh_tools.c:merge_target"}
!298 = distinct !{!298, !74}
!299 = !{!"editmesh_tools.c:merge_firstlast"}
!300 = !{!163, !36, i64 16}
!301 = !{!"editmesh_tools.c:copy_v3_v3"}
!302 = !{!"editmesh_tools.c:add_v3_v3"}
!303 = !{!"editmesh_tools.c:mul_v3_fl"}
!304 = !{!"editmesh_tools.c:shape_propagate"}
!305 = distinct !{!305, !74}
!306 = distinct !{!306, !74}
!307 = !{!"editmesh_tools.c:sub_v3_v3v3"}
!308 = !{!"editmesh_tools.c:madd_v3_v3fl"}
!309 = !{!"editmesh_tools.c:copy_v2_fl"}
!310 = !{!"editmesh_tools.c:_bm_elem_index_set"}
!311 = !{!78, !53, i64 8}
!312 = !{!"editmesh_tools.c:_bm_elem_index_get"}
!313 = !{!"editmesh_tools.c:bm_edge_seg_isect"}
!314 = distinct !{!314, !74}
!315 = distinct !{!315, !74}
!316 = !{!"editmesh_tools.c:BMO_slot_map_float_insert"}
!317 = !{!"editmesh_tools.c:_bmo_elem_flag_set"}
!318 = !{!87, !53, i64 128}
!319 = !{!320, !41, i64 0}
!320 = !{!"BMFlagLayer", !41, i64 0}
!321 = !{!"editmesh_tools.c:max_ff"}
!322 = !{!"editmesh_tools.c:min_ff"}
!323 = !{!"editmesh_tools.c:mesh_separate_selected"}
!324 = !{!"editmesh_tools.c:mesh_separate_material"}
!325 = !{!148, !41, i64 48}
!326 = distinct !{!326, !74}
!327 = distinct !{!327, !74}
!328 = distinct !{!328, !74}
!329 = !{!"editmesh_tools.c:mesh_separate_loose"}
!330 = distinct !{!330, !74}
!331 = distinct !{!331, !74}
!332 = !{!"editmesh_tools.c:mesh_separate_tagged"}
!333 = !{!54, !54, i64 0}
!334 = !{!335, !53, i64 0}
!335 = !{!"BMAllocTemplate", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!336 = !{!335, !53, i64 4}
!337 = !{!335, !53, i64 8}
!338 = !{!335, !53, i64 12}
!339 = !{!41, !41, i64 0}
!340 = !{!"editmesh_tools.c:mesh_separate_material_assign_mat_nr"}
!341 = !{!107, !53, i64 456}
!342 = !{!107, !36, i64 440}
!343 = !{!107, !36, i64 448}
!344 = !{!"editmesh_tools.c:bm_mesh_hflag_flush_vert"}
!345 = distinct !{!345, !74}
!346 = distinct !{!346, !74}
!347 = distinct !{!347, !74}
!348 = !{!"editmesh_tools.c:min_ii"}
!349 = !{!"editmesh_tools.c:mod_i"}
!350 = !{!"editmesh_tools.c:edbm_fill_grid_prepare"}
!351 = distinct !{!351, !74}
!352 = !{!39, !36, i64 0}
!353 = !{}
!354 = !{!355, !36, i64 16}
!355 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!356 = distinct !{!356, !74}
!357 = !{!358, !58, i64 0}
!358 = !{!"SortPointerByFloat", !58, i64 0, !36, i64 8}
!359 = !{!358, !36, i64 8}
!360 = distinct !{!360, !74}
!361 = distinct !{!361, !74}
!362 = distinct !{!362, !74}
!363 = distinct !{!363, !74}
!364 = !{!"editmesh_tools.c:bm_edge_test_fill_grid_cb"}
!365 = !{!"editmesh_tools.c:edbm_fill_grid_vert_tag_angle"}
!366 = distinct !{!366, !74}
!367 = !{!"editmesh_tools.c:sort_bmelem_flag"}
!368 = !{!369, !53, i64 4}
!369 = !{!"BMElemSort", !58, i64 0, !53, i64 4}
!370 = !{!369, !58, i64 0}
!371 = distinct !{!371, !74}
!372 = distinct !{!372, !74}
!373 = distinct !{!373, !74}
!374 = !{!375, !36, i64 152}
!375 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !53, i64 32, !58, i64 36, !37, i64 40, !37, i64 56, !58, i64 72, !58, i64 76, !37, i64 80, !37, i64 81, !53, i64 84, !53, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !70, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !53, i64 224, !53, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !58, i64 244, !58, i64 248, !58, i64 252, !58, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!376 = distinct !{!376, !74}
!377 = distinct !{!377, !74}
!378 = distinct !{!378, !74}
!379 = distinct !{!379, !74}
!380 = distinct !{!380, !74}
!381 = distinct !{!381, !74}
!382 = distinct !{!382, !74}
!383 = distinct !{!383, !74}
!384 = distinct !{!384, !74}
!385 = distinct !{!385, !74}
!386 = distinct !{!386, !74}
!387 = distinct !{!387, !74}
!388 = distinct !{!388, !74}
!389 = distinct !{!389, !74}
!390 = distinct !{!390, !74}
!391 = distinct !{!391, !74}
!392 = distinct !{!392, !74}
!393 = distinct !{!393, !74}
!394 = distinct !{!394, !74}
!395 = !{!"editmesh_tools.c:len_squared_v3v3"}
!396 = !{!"editmesh_tools.c:bmelemsort_comp"}
!397 = !{!"editmesh_tools.c:dot_v3v3"}
!398 = !{!"editmesh_tools.c:edbm_sort_elements_draw_check_prop"}
!399 = !{!"editmesh_tools.c:edbm_bridge_tag_boundary_edges"}
!400 = distinct !{!400, !74}
!401 = distinct !{!401, !74}
