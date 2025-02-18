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
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.MirrorModifierData = type { %struct.ModifierData, i16, i16, float, ptr }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon.1, i32, i32, %struct.PointerRNA, i32 }
%union.anon.1 = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
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
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.BMWalker = type { i8, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %struct.ListBase, i16, i16, i16, i32, ptr, ptr, i32 }

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

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 10) #11
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.6, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef 0.000000e+00, float noundef 1.000000e+00) #11
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #11
  %14 = load ptr, ptr %7, align 8, !tbaa !47
  %15 = tail call ptr @RNA_def_enum(ptr noundef %14, ptr noundef nonnull @.str.12, ptr noundef nonnull @prop_mesh_cornervert_types, i32 noundef 3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #11
  %16 = load ptr, ptr %7, align 8, !tbaa !47
  %17 = tail call ptr @RNA_def_float(ptr noundef %16, ptr noundef nonnull @.str.15, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, float noundef 0.000000e+00, float noundef 1.000000e+03) #11
  %18 = load ptr, ptr %7, align 8, !tbaa !47
  %19 = tail call ptr @RNA_def_float(ptr noundef %18, ptr noundef nonnull @.str.18, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, float noundef 0.000000e+00, float noundef 1.000000e+00) #11
  %20 = load ptr, ptr %7, align 8, !tbaa !47
  %21 = tail call ptr @RNA_def_int(ptr noundef %20, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 0, i32 noundef 10000, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 50) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_subdivide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.3) #11
  %8 = load ptr, ptr %5, align 8, !tbaa !48
  %9 = tail call float @RNA_float_get(ptr noundef %8, ptr noundef nonnull @.str.6) #11
  %10 = load ptr, ptr %5, align 8, !tbaa !48
  %11 = tail call float @RNA_float_get(ptr noundef %10, ptr noundef nonnull @.str.15) #11
  %12 = load ptr, ptr %5, align 8, !tbaa !48
  %13 = tail call float @RNA_float_get(ptr noundef %12, ptr noundef nonnull @.str.18) #11
  %14 = load ptr, ptr %5, align 8, !tbaa !48
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.9) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %5, align 8, !tbaa !48
  %19 = tail call i32 @RNA_enum_get(ptr noundef %18, ptr noundef nonnull @.str.12) #11
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %5, align 8, !tbaa !48
  tail call void @RNA_enum_set(ptr noundef %22, ptr noundef nonnull @.str.12, i32 noundef 0) #11
  br label %23

23:                                               ; preds = %21, %17, %2
  %24 = fdiv float %11, 2.500000e+00
  %25 = fmul float %9, 0x3FD2B020C0000000
  %26 = load ptr, ptr %4, align 8, !tbaa !50
  %27 = load ptr, ptr %5, align 8, !tbaa !48
  %28 = tail call i32 @RNA_enum_get(ptr noundef %27, ptr noundef nonnull @.str.12) #11
  %29 = load ptr, ptr %5, align 8, !tbaa !48
  %30 = tail call i32 @RNA_boolean_get(ptr noundef %29, ptr noundef nonnull @.str.9) #11
  %31 = trunc i32 %30 to i16
  %32 = load ptr, ptr %5, align 8, !tbaa !48
  %33 = tail call i32 @RNA_int_get(ptr noundef %32, ptr noundef nonnull @.str.21) #11
  tail call void @BM_mesh_esubdivide(ptr noundef %26, i8 noundef zeroext 1, float noundef %25, i16 noundef signext 2, i8 noundef zeroext 0, float noundef %24, float noundef %13, i32 noundef %7, i32 noundef 1, i32 noundef %28, i16 noundef signext %31, i16 noundef signext 1, i16 noundef signext 0, i32 noundef %33) #11
  tail call void @EDBM_update_generic(ptr noundef nonnull %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  ret i32 4
}

declare i32 @ED_operator_editmesh(ptr noundef) #2

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
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
  tail call fastcc void @mesh_operator_edgering_props(ptr noundef nonnull %0, i32 noundef 10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_subdivide_edge_ring_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.389) #11
  %8 = load ptr, ptr %5, align 8, !tbaa !48
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.3) #11
  %10 = load ptr, ptr %5, align 8, !tbaa !48
  %11 = tail call float @RNA_float_get(ptr noundef %10, ptr noundef nonnull @.str.6) #11
  %12 = load ptr, ptr %5, align 8, !tbaa !48
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.390) #11
  %14 = load ptr, ptr %5, align 8, !tbaa !48
  %15 = tail call float @RNA_float_get(ptr noundef %14, ptr noundef nonnull @.str.391) #11
  %16 = fpext float %11 to double
  %17 = fpext float %15 to double
  %18 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.388, i32 noundef 1, i32 noundef %7, i32 noundef %9, double noundef %16, i32 noundef %13, double noundef %17) #11
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %21

21:                                               ; preds = %2, %20
  %22 = phi i32 [ 4, %20 ], [ 2, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mesh_operator_edgering_props(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = tail call ptr @RNA_def_int(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %1, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 64) #11
  tail call void @RNA_def_property_flag(ptr noundef %5, i32 noundef 268435456) #11
  %6 = load ptr, ptr %3, align 8, !tbaa !47
  %7 = tail call ptr @RNA_def_enum(ptr noundef %6, ptr noundef nonnull @.str.389, ptr noundef nonnull @mesh_operator_edgering_props.prop_subd_edgering_types, i32 noundef 1, ptr noundef nonnull @.str.397, ptr noundef nonnull @.str.398) #11
  %8 = load ptr, ptr %3, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.6, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef 0.000000e+00, float noundef 2.000000e+00) #11
  %10 = load ptr, ptr %3, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.391, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.399, ptr noundef nonnull @.str.5, float noundef -2.000000e+00, float noundef 2.000000e+00) #11
  %12 = load ptr, ptr %3, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_property(ptr noundef %12, ptr noundef nonnull @.str.390, i32 noundef 4, i32 noundef 0) #11
  tail call void @RNA_def_property_enum_items(ptr noundef %13, ptr noundef nonnull @proportional_falloff_curve_only_items) #11
  tail call void @RNA_def_property_enum_default(ptr noundef %13, i32 noundef 0) #11
  tail call void @RNA_def_property_ui_text(ptr noundef %13, ptr noundef nonnull @.str.400, ptr noundef nonnull @.str.401) #11
  tail call void @RNA_def_property_translation_context(ptr noundef %13, ptr noundef nonnull @.str.402) #11
  ret void
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.29, i32 noundef 2, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1, i32 noundef 100) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_unsubdivide_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.29) #11
  %9 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.403, i32 noundef 1, i32 noundef %8) #11
  %10 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BMO_op_exec(ptr noundef %10, ptr noundef nonnull %3) #11
  %11 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 12
  %15 = load i16, ptr %14, align 4, !tbaa !54
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  call void @EDBM_selectmode_flush_ex(ptr noundef nonnull %5, i16 noundef signext 1) #11
  br label %19

19:                                               ; preds = %18, %13
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #11
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %20

20:                                               ; preds = %2, %19
  %21 = phi i32 [ 4, %19 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define dso_local void @EMBM_project_snap_verts(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [2 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca float, align 4
  %9 = getelementptr inbounds %struct.BMEditMesh, ptr %2, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %10, ptr noundef %12) #11
  %13 = load ptr, ptr %2, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %14, align 4, !tbaa !62
  %15 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %15, align 8, !tbaa !64
  %16 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %16, align 8, !tbaa !65
  %17 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  store ptr %18, ptr %4, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #11
  %19 = load ptr, ptr %16, align 8, !tbaa !65
  %20 = call ptr %19(ptr noundef nonnull %4) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 50
  br label %24

24:                                               ; preds = %22, %39
  %25 = phi ptr [ %20, %22 ], [ %41, %39 ]
  %26 = getelementptr inbounds %struct.BMHeader, ptr %25, i64 0, i32 3
  %27 = load i8, ptr %26, align 1, !tbaa !70
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  %31 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 2
  %32 = call i32 @ED_view3d_project_float_object(ptr noundef %1, ptr noundef nonnull %31, ptr noundef nonnull %5, i32 noundef 0) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = call zeroext i8 @snapObjectsContext(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 2) #11
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  call void @mul_v3_m4v3(ptr noundef nonnull %31, ptr noundef nonnull %23, ptr noundef nonnull %6) #11
  br label %38

38:                                               ; preds = %34, %37, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %39

39:                                               ; preds = %24, %38
  %40 = load ptr, ptr %16, align 8, !tbaa !65
  %41 = call ptr %40(ptr noundef nonnull %4) #11
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %24, !llvm.loop !72

43:                                               ; preds = %39, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret void
}

declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ED_view3d_project_float_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @snapObjectsContext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_delete(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_delete_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.35, ptr noundef nonnull @prop_mesh_delete_types, i32 noundef 0, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #11
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !76
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_delete_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.35) #11
  switch i32 %7, label %23 [
    i32 0, label %8
    i32 1, label %11
    i32 2, label %14
    i32 3, label %17
    i32 4, label %20
  ]

8:                                                ; preds = %2
  %9 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.404, i32 noundef 1, i32 noundef 1) #11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %24, label %23

11:                                               ; preds = %2
  %12 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.405, i32 noundef 1, i32 noundef 2) #11
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %23

14:                                               ; preds = %2
  %15 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.406, i32 noundef 1, i32 noundef 5) #11
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %24, label %23

17:                                               ; preds = %2
  %18 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.407, i32 noundef 1, i32 noundef 4) #11
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %23

20:                                               ; preds = %2
  %21 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.406, i32 noundef 1, i32 noundef 3) #11
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2, %11, %17, %20, %14, %8
  tail call void @EDBM_flag_disable_all(ptr noundef %4, i8 noundef zeroext 1) #11
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %24

24:                                               ; preds = %20, %17, %14, %11, %8, %23
  %25 = phi i32 [ 4, %23 ], [ 2, %8 ], [ 2, %11 ], [ 2, %14 ], [ 2, %17 ], [ 2, %20 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.41, i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.44, i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #11
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_delete_loose_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.41) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !77
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ true, %2 ], [ %14, %11 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !48
  %18 = tail call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.44) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !78
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i1 [ true, %15 ], [ %23, %20 ]
  %26 = load ptr, ptr %7, align 8, !tbaa !48
  %27 = tail call i32 @RNA_boolean_get(ptr noundef %26, ptr noundef nonnull @.str.47) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 6
  %31 = load i32, ptr %30, align 8, !tbaa !79
  %32 = icmp eq i32 %31, 0
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i1 [ true, %24 ], [ %32, %29 ]
  %35 = load i32, ptr %6, align 8, !tbaa !80
  %36 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !81
  %38 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !82
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef nonnull %6, i8 noundef zeroext 11, i8 noundef zeroext 16, i8 noundef zeroext 0) #11
  br i1 %34, label %89, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %41, align 4, !tbaa !62
  %42 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %42, align 8, !tbaa !64
  %43 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %43, align 8, !tbaa !65
  %44 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 12
  %45 = load ptr, ptr %44, align 8, !tbaa !83
  store ptr %45, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %46 = load ptr, ptr %43, align 8, !tbaa !65
  %47 = call ptr %46(ptr noundef nonnull %3) #11
  %48 = icmp eq ptr %47, null
  br i1 %48, label %88, label %49

49:                                               ; preds = %40, %84
  %50 = phi ptr [ %86, %84 ], [ %47, %40 ]
  %51 = getelementptr inbounds %struct.BMHeader, ptr %50, i64 0, i32 3
  %52 = load i8, ptr %51, align 1, !tbaa !70
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %84, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.BMFace, ptr %50, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !84
  br label %58

58:                                               ; preds = %73, %55
  %59 = phi ptr [ %57, %55 ], [ %75, %73 ]
  %60 = getelementptr inbounds %struct.BMLoop, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !86
  %62 = getelementptr inbounds %struct.BMEdge, ptr %61, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !88
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.BMLoop, ptr %63, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !91
  %68 = icmp eq ptr %67, %63
  %69 = zext i1 %68 to i8
  br label %70

70:                                               ; preds = %65, %58
  %71 = phi i8 [ 0, %58 ], [ %69, %65 ]
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.BMLoop, ptr %59, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !92
  %76 = icmp eq ptr %75, %57
  br i1 %76, label %77, label %58, !llvm.loop !93

77:                                               ; preds = %73
  br i1 %72, label %80, label %78

78:                                               ; preds = %77
  %79 = or i8 %52, 16
  br label %82

80:                                               ; preds = %70, %77
  %81 = and i8 %52, -17
  br label %82

82:                                               ; preds = %78, %80
  %83 = phi i8 [ %81, %80 ], [ %79, %78 ]
  store i8 %83, ptr %51, align 1, !tbaa !70
  br label %84

84:                                               ; preds = %82, %49
  %85 = load ptr, ptr %43, align 8, !tbaa !65
  %86 = call ptr %85(ptr noundef nonnull %3) #11
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %49, !llvm.loop !94

88:                                               ; preds = %84, %40
  call void @BM_mesh_delete_hflag_context(ptr noundef nonnull %6, i8 noundef zeroext 16, i32 noundef 5) #11
  br label %89

89:                                               ; preds = %88, %33
  br i1 %25, label %117, label %90

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %91, align 4, !tbaa !62
  %92 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %92, align 8, !tbaa !64
  %93 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %93, align 8, !tbaa !65
  %94 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 10
  %95 = load ptr, ptr %94, align 8, !tbaa !95
  store ptr %95, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %96 = load ptr, ptr %93, align 8, !tbaa !65
  %97 = call ptr %96(ptr noundef nonnull %3) #11
  %98 = icmp eq ptr %97, null
  br i1 %98, label %116, label %99

99:                                               ; preds = %90, %112
  %100 = phi ptr [ %114, %112 ], [ %97, %90 ]
  %101 = getelementptr inbounds %struct.BMHeader, ptr %100, i64 0, i32 3
  %102 = load i8, ptr %101, align 1, !tbaa !70
  %103 = and i8 %102, 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.BMEdge, ptr %100, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !88
  %108 = icmp eq ptr %107, null
  %109 = and i8 %102, -17
  %110 = select i1 %108, i8 16, i8 0
  %111 = or disjoint i8 %109, %110
  store i8 %111, ptr %101, align 1, !tbaa !70
  br label %112

112:                                              ; preds = %105, %99
  %113 = load ptr, ptr %93, align 8, !tbaa !65
  %114 = call ptr %113(ptr noundef nonnull %3) #11
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %99, !llvm.loop !96

116:                                              ; preds = %112, %90
  call void @BM_mesh_delete_hflag_context(ptr noundef nonnull %6, i8 noundef zeroext 16, i32 noundef 2) #11
  br label %117

117:                                              ; preds = %116, %89
  br i1 %16, label %145, label %118

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %119, align 4, !tbaa !62
  %120 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %120, align 8, !tbaa !64
  %121 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %121, align 8, !tbaa !65
  %122 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 9
  %123 = load ptr, ptr %122, align 8, !tbaa !66
  store ptr %123, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %124 = load ptr, ptr %121, align 8, !tbaa !65
  %125 = call ptr %124(ptr noundef nonnull %3) #11
  %126 = icmp eq ptr %125, null
  br i1 %126, label %144, label %127

127:                                              ; preds = %118, %140
  %128 = phi ptr [ %142, %140 ], [ %125, %118 ]
  %129 = getelementptr inbounds %struct.BMHeader, ptr %128, i64 0, i32 3
  %130 = load i8, ptr %129, align 1, !tbaa !70
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.BMVert, ptr %128, i64 0, i32 4
  %135 = load ptr, ptr %134, align 8, !tbaa !97
  %136 = icmp eq ptr %135, null
  %137 = and i8 %130, -17
  %138 = select i1 %136, i8 16, i8 0
  %139 = or disjoint i8 %137, %138
  store i8 %139, ptr %129, align 1, !tbaa !70
  br label %140

140:                                              ; preds = %133, %127
  %141 = load ptr, ptr %121, align 8, !tbaa !65
  %142 = call ptr %141(ptr noundef nonnull %3) #11
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %127, !llvm.loop !99

144:                                              ; preds = %140, %118
  call void @BM_mesh_delete_hflag_context(ptr noundef nonnull %6, i8 noundef zeroext 16, i32 noundef 1) #11
  br label %145

145:                                              ; preds = %144, %117
  call void @EDBM_flag_disable_all(ptr noundef nonnull %5, i8 noundef zeroext 1) #11
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  %146 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %147 = load ptr, ptr %146, align 8, !tbaa !100
  %148 = load i32, ptr %6, align 8, !tbaa !80
  %149 = sub nsw i32 %35, %148
  %150 = load i32, ptr %36, align 4, !tbaa !81
  %151 = sub nsw i32 %37, %150
  %152 = load i32, ptr %38, align 4, !tbaa !82
  %153 = sub nsw i32 %39, %152
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %147, i32 noundef 2, ptr noundef nonnull @.str.412, i32 noundef %149, i32 noundef %151, i32 noundef %153) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_edge_collapse(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_collapse_edge_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #11
  %5 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.413, i32 noundef 1) #11
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %8

8:                                                ; preds = %2, %7
  %9 = phi i32 [ 4, %7 ], [ 2, %2 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_edge_face_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_add_edge_face_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [2 x i32], align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca %struct.BMIter, align 8
  %12 = alloca %struct.BMIter, align 8
  %13 = alloca %struct.BMIter, align 8
  %14 = alloca %struct.BMIter, align 8
  %15 = alloca %struct.BMIter, align 8
  %16 = alloca [3 x ptr], align 16
  %17 = alloca [2 x ptr], align 16
  %18 = alloca [2 x ptr], align 16
  %19 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %19) #11
  %20 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %21 = tail call ptr @BKE_editmesh_from_object(ptr noundef %20) #11
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  store i64 0, ptr %6, align 8
  %23 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 2, ptr %23, align 4, !tbaa !62
  %24 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %24, align 8, !tbaa !64
  %25 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %25, align 8, !tbaa !65
  %26 = getelementptr inbounds %struct.BMesh, ptr %22, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !95
  store ptr %27, ptr %5, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #11
  %28 = load ptr, ptr %25, align 8, !tbaa !65
  %29 = call ptr %28(ptr noundef nonnull %5) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %56, label %31

31:                                               ; preds = %2, %52
  %32 = phi ptr [ %54, %52 ], [ %29, %2 ]
  %33 = getelementptr inbounds %struct.BMHeader, ptr %32, i64 0, i32 3
  %34 = load i8, ptr %33, align 1, !tbaa !70
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !88
  %40 = icmp eq ptr %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !101
  %44 = getelementptr inbounds %struct.BMHeader, ptr %43, i64 0, i32 3
  %45 = load i8, ptr %44, align 1, !tbaa !70
  %46 = lshr i8 %45, 3
  %47 = and i8 %46, 1
  %48 = zext nneg i8 %47 to i64
  %49 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !102
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4, !tbaa !102
  br label %52

52:                                               ; preds = %41, %37, %31
  %53 = load ptr, ptr %25, align 8, !tbaa !65
  %54 = call ptr %53(ptr noundef nonnull %5) #11
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %31, !llvm.loop !103

56:                                               ; preds = %52, %2
  %57 = load i32, ptr %6, align 8, !tbaa !102
  %58 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  %59 = load i32, ptr %58, align 4, !tbaa !102
  %60 = icmp ult i32 %57, %59
  %61 = zext i1 %60 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  %62 = load ptr, ptr %21, align 8, !tbaa !50
  %63 = getelementptr inbounds %struct.BMesh, ptr %62, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !81
  %65 = getelementptr inbounds %struct.BMesh, ptr %62, i64 0, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #11
  %67 = getelementptr inbounds %struct.BMesh, ptr %62, i64 0, i32 4
  %68 = load i32, ptr %67, align 8, !tbaa !77
  switch i32 %68, label %608 [
    i32 1, label %69
    i32 2, label %207
  ]

69:                                               ; preds = %56
  %70 = getelementptr inbounds %struct.BMesh, ptr %62, i64 0, i32 5
  %71 = load i32, ptr %70, align 4, !tbaa !78
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %205

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.BMesh, ptr %62, i64 0, i32 6
  %75 = load i32, ptr %74, align 8, !tbaa !79
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %205

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 4
  store i8 1, ptr %78, align 4, !tbaa !62
  %79 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %79, align 8, !tbaa !64
  %80 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %80, align 8, !tbaa !65
  %81 = getelementptr inbounds %struct.BMesh, ptr %62, i64 0, i32 9
  %82 = load ptr, ptr %81, align 8, !tbaa !66
  store ptr %82, ptr %15, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %15) #11
  %83 = load ptr, ptr %80, align 8, !tbaa !65
  %84 = call ptr %83(ptr noundef nonnull %15) #11
  %85 = icmp eq ptr %84, null
  br i1 %85, label %608, label %86

86:                                               ; preds = %77, %92
  %87 = phi ptr [ %94, %92 ], [ %84, %77 ]
  %88 = getelementptr inbounds %struct.BMHeader, ptr %87, i64 0, i32 3
  %89 = load i8, ptr %88, align 1, !tbaa !70
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load ptr, ptr %80, align 8, !tbaa !65
  %94 = call ptr %93(ptr noundef nonnull %15) #11
  %95 = icmp eq ptr %94, null
  br i1 %95, label %608, label %86, !llvm.loop !104

96:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #11
  %97 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 4
  store i8 4, ptr %97, align 4, !tbaa !62
  %98 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %98, align 8, !tbaa !64
  %99 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %99, align 8, !tbaa !65
  store ptr %87, ptr %14, align 8, !tbaa !69
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %14) #11
  %100 = load ptr, ptr %99, align 8, !tbaa !65
  %101 = call ptr %100(ptr noundef nonnull %14) #11
  %102 = icmp eq ptr %101, null
  br i1 %102, label %133, label %103

103:                                              ; preds = %96, %119
  %104 = phi i32 [ %120, %119 ], [ 0, %96 ]
  %105 = phi ptr [ %122, %119 ], [ %101, %96 ]
  %106 = getelementptr inbounds %struct.BMHeader, ptr %105, i64 0, i32 3
  %107 = load i8, ptr %106, align 1, !tbaa !70
  %108 = and i8 %107, 2
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.BMEdge, ptr %105, i64 0, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !88
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = add nsw i32 %104, 1
  %116 = sext i32 %104 to i64
  %117 = getelementptr inbounds ptr, ptr %16, i64 %116
  store ptr %105, ptr %117, align 8, !tbaa !105
  %118 = icmp slt i32 %104, 2
  br i1 %118, label %119, label %124

119:                                              ; preds = %114, %110, %103
  %120 = phi i32 [ %115, %114 ], [ %104, %110 ], [ %104, %103 ]
  %121 = load ptr, ptr %99, align 8, !tbaa !65
  %122 = call ptr %121(ptr noundef nonnull %14) #11
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %103, !llvm.loop !106

124:                                              ; preds = %114, %119
  %125 = phi i32 [ %120, %119 ], [ %115, %114 ]
  %126 = icmp eq i32 %125, 2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #11
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load ptr, ptr %16, align 16, !tbaa !105
  %129 = getelementptr inbounds [3 x ptr], ptr %16, i64 0, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !105
  %131 = call zeroext i8 @BM_edge_share_face_check(ptr noundef %128, ptr noundef %130) #11
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %179, label %134

133:                                              ; preds = %96
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #11
  br label %134

134:                                              ; preds = %133, %127, %124
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  %135 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 4, ptr %135, align 4, !tbaa !62
  %136 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %136, align 8, !tbaa !64
  %137 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %137, align 8, !tbaa !65
  store ptr %87, ptr %7, align 8, !tbaa !69
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %7) #11
  %138 = load ptr, ptr %137, align 8, !tbaa !65
  %139 = call ptr %138(ptr noundef nonnull %7) #11
  %140 = icmp eq ptr %139, null
  br i1 %140, label %202, label %141

141:                                              ; preds = %134, %165
  %142 = phi i32 [ %166, %165 ], [ 0, %134 ]
  %143 = phi ptr [ %168, %165 ], [ %139, %134 ]
  %144 = getelementptr inbounds %struct.BMHeader, ptr %143, i64 0, i32 3
  %145 = load i8, ptr %144, align 1, !tbaa !70
  %146 = and i8 %145, 2
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %165

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.BMEdge, ptr %143, i64 0, i32 4
  %150 = load ptr, ptr %149, align 8, !tbaa !88
  %151 = icmp eq ptr %150, null
  br i1 %151, label %157, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.BMLoop, ptr %150, i64 0, i32 4
  %154 = load ptr, ptr %153, align 8, !tbaa !91
  %155 = icmp eq ptr %154, %150
  %156 = zext i1 %155 to i8
  br label %157

157:                                              ; preds = %148, %152
  %158 = phi i8 [ 0, %148 ], [ %156, %152 ]
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %157
  %161 = add nsw i32 %142, 1
  %162 = sext i32 %142 to i64
  %163 = getelementptr inbounds ptr, ptr %16, i64 %162
  store ptr %143, ptr %163, align 8, !tbaa !105
  %164 = icmp slt i32 %142, 2
  br i1 %164, label %165, label %170

165:                                              ; preds = %160, %157, %141
  %166 = phi i32 [ %161, %160 ], [ %142, %157 ], [ %142, %141 ]
  %167 = load ptr, ptr %137, align 8, !tbaa !65
  %168 = call ptr %167(ptr noundef nonnull %7) #11
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %141, !llvm.loop !106

170:                                              ; preds = %165, %160
  %171 = phi i32 [ %161, %160 ], [ %166, %165 ]
  %172 = icmp eq i32 %171, 2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  br i1 %172, label %173, label %203

173:                                              ; preds = %170
  %174 = load ptr, ptr %16, align 16, !tbaa !105
  %175 = getelementptr inbounds [3 x ptr], ptr %16, i64 0, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !105
  %177 = call zeroext i8 @BM_edge_share_face_check(ptr noundef %174, ptr noundef %176) #11
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %203

179:                                              ; preds = %173, %127
  %180 = load ptr, ptr %16, align 16, !tbaa !105
  %181 = getelementptr inbounds %struct.BMEdge, ptr %180, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !107
  %183 = icmp eq ptr %182, %87
  %184 = getelementptr inbounds %struct.BMEdge, ptr %180, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !108
  %186 = icmp eq ptr %185, %87
  %187 = select i1 %186, ptr %182, ptr null
  %188 = select i1 %183, ptr %185, ptr %187
  %189 = getelementptr inbounds [3 x ptr], ptr %16, i64 0, i64 1
  %190 = load ptr, ptr %189, align 8, !tbaa !105
  %191 = getelementptr inbounds %struct.BMEdge, ptr %190, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !107
  %193 = icmp eq ptr %192, %87
  %194 = getelementptr inbounds %struct.BMEdge, ptr %190, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !108
  %196 = icmp eq ptr %195, %87
  %197 = select i1 %196, ptr %192, ptr null
  %198 = select i1 %193, ptr %195, ptr %197
  %199 = call ptr @BM_edge_exists(ptr noundef %188, ptr noundef %198) #11
  call void @BM_edge_select_set(ptr noundef %62, ptr noundef %180, i8 noundef zeroext 1) #11
  call void @BM_edge_select_set(ptr noundef %62, ptr noundef %190, i8 noundef zeroext 1) #11
  %200 = icmp eq ptr %199, null
  br i1 %200, label %204, label %201

201:                                              ; preds = %179
  call void @BM_edge_select_set(ptr noundef %62, ptr noundef nonnull %199, i8 noundef zeroext 1) #11
  br label %204

202:                                              ; preds = %134
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  br label %203

203:                                              ; preds = %202, %173, %170
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #11
  br label %608

204:                                              ; preds = %201, %179
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #11
  br label %608

205:                                              ; preds = %73, %69
  %206 = icmp eq i32 %68, 2
  br i1 %206, label %207, label %608

207:                                              ; preds = %56, %205
  %208 = getelementptr inbounds %struct.BMesh, ptr %62, i64 0, i32 5
  %209 = load i32, ptr %208, align 4, !tbaa !78
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %608

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.BMesh, ptr %62, i64 0, i32 6
  %213 = load i32, ptr %212, align 8, !tbaa !79
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %608

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 4
  store i8 2, ptr %216, align 4, !tbaa !62
  %217 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %217, align 8, !tbaa !64
  %218 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %218, align 8, !tbaa !65
  %219 = getelementptr inbounds %struct.BMesh, ptr %62, i64 0, i32 10
  %220 = load ptr, ptr %219, align 8, !tbaa !95
  store ptr %220, ptr %15, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %15) #11
  %221 = load ptr, ptr %218, align 8, !tbaa !65
  %222 = call ptr %221(ptr noundef nonnull %15) #11
  %223 = icmp eq ptr %222, null
  br i1 %223, label %608, label %224

224:                                              ; preds = %215, %230
  %225 = phi ptr [ %232, %230 ], [ %222, %215 ]
  %226 = getelementptr inbounds %struct.BMHeader, ptr %225, i64 0, i32 3
  %227 = load i8, ptr %226, align 1, !tbaa !70
  %228 = and i8 %227, 1
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %224
  %231 = load ptr, ptr %218, align 8, !tbaa !65
  %232 = call ptr %231(ptr noundef nonnull %15) #11
  %233 = icmp eq ptr %232, null
  br i1 %233, label %608, label %224, !llvm.loop !109

234:                                              ; preds = %224
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #11
  %235 = getelementptr inbounds %struct.BMEdge, ptr %225, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #11
  %237 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 4
  store i8 4, ptr %237, align 4, !tbaa !62
  %238 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %238, align 8, !tbaa !64
  %239 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %239, align 8, !tbaa !65
  store ptr %236, ptr %13, align 8, !tbaa !69
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %13) #11
  %240 = load ptr, ptr %239, align 8, !tbaa !65
  %241 = call ptr %240(ptr noundef nonnull %13) #11
  %242 = icmp eq ptr %241, null
  br i1 %242, label %266, label %243

243:                                              ; preds = %234, %261
  %244 = phi i32 [ %262, %261 ], [ 0, %234 ]
  %245 = phi ptr [ %264, %261 ], [ %241, %234 ]
  %246 = getelementptr inbounds %struct.BMHeader, ptr %245, i64 0, i32 3
  %247 = load i8, ptr %246, align 1, !tbaa !70
  %248 = and i8 %247, 2
  %249 = icmp ne i8 %248, 0
  %250 = icmp eq ptr %245, %225
  %251 = or i1 %250, %249
  br i1 %251, label %261, label %252

252:                                              ; preds = %243
  %253 = getelementptr inbounds %struct.BMEdge, ptr %245, i64 0, i32 4
  %254 = load ptr, ptr %253, align 8, !tbaa !88
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %261

256:                                              ; preds = %252
  %257 = add nsw i32 %244, 1
  %258 = sext i32 %244 to i64
  %259 = getelementptr inbounds ptr, ptr %17, i64 %258
  store ptr %245, ptr %259, align 8, !tbaa !105
  %260 = icmp slt i32 %244, 1
  br i1 %260, label %261, label %266

261:                                              ; preds = %256, %252, %243
  %262 = phi i32 [ %257, %256 ], [ %244, %252 ], [ %244, %243 ]
  %263 = load ptr, ptr %239, align 8, !tbaa !65
  %264 = call ptr %263(ptr noundef nonnull %13) #11
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %243, !llvm.loop !106

266:                                              ; preds = %261, %256, %234
  %267 = phi i32 [ 0, %234 ], [ %262, %261 ], [ %257, %256 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #11
  %268 = icmp eq i32 %267, 1
  br i1 %268, label %269, label %312

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.BMEdge, ptr %225, i64 0, i32 3
  %271 = load ptr, ptr %270, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  %272 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 4, ptr %272, align 4, !tbaa !62
  %273 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %273, align 8, !tbaa !64
  %274 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %274, align 8, !tbaa !65
  store ptr %271, ptr %8, align 8, !tbaa !69
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %8) #11
  %275 = load ptr, ptr %274, align 8, !tbaa !65
  %276 = call ptr %275(ptr noundef nonnull %8) #11
  %277 = icmp eq ptr %276, null
  br i1 %277, label %301, label %278

278:                                              ; preds = %269, %296
  %279 = phi i32 [ %297, %296 ], [ 0, %269 ]
  %280 = phi ptr [ %299, %296 ], [ %276, %269 ]
  %281 = getelementptr inbounds %struct.BMHeader, ptr %280, i64 0, i32 3
  %282 = load i8, ptr %281, align 1, !tbaa !70
  %283 = and i8 %282, 2
  %284 = icmp ne i8 %283, 0
  %285 = icmp eq ptr %280, %225
  %286 = or i1 %285, %284
  br i1 %286, label %296, label %287

287:                                              ; preds = %278
  %288 = getelementptr inbounds %struct.BMEdge, ptr %280, i64 0, i32 4
  %289 = load ptr, ptr %288, align 8, !tbaa !88
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %296

291:                                              ; preds = %287
  %292 = add nsw i32 %279, 1
  %293 = sext i32 %279 to i64
  %294 = getelementptr inbounds ptr, ptr %18, i64 %293
  store ptr %280, ptr %294, align 8, !tbaa !105
  %295 = icmp slt i32 %279, 1
  br i1 %295, label %296, label %301

296:                                              ; preds = %291, %287, %278
  %297 = phi i32 [ %292, %291 ], [ %279, %287 ], [ %279, %278 ]
  %298 = load ptr, ptr %274, align 8, !tbaa !65
  %299 = call ptr %298(ptr noundef nonnull %8) #11
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %278, !llvm.loop !106

301:                                              ; preds = %291, %296, %269
  %302 = phi i32 [ 0, %269 ], [ %292, %291 ], [ %297, %296 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  %303 = icmp eq i32 %302, 1
  br i1 %303, label %304, label %312

304:                                              ; preds = %301
  %305 = load ptr, ptr %17, align 16, !tbaa !105
  %306 = call zeroext i8 @BM_edge_share_face_check(ptr noundef nonnull %225, ptr noundef %305) #11
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %304
  %309 = load ptr, ptr %18, align 16, !tbaa !105
  %310 = call zeroext i8 @BM_edge_share_face_check(ptr noundef nonnull %225, ptr noundef %309) #11
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %575, label %312

312:                                              ; preds = %308, %304, %301, %266
  %313 = load ptr, ptr %235, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #11
  %314 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 4
  store i8 4, ptr %314, align 4, !tbaa !62
  %315 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %315, align 8, !tbaa !64
  %316 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %316, align 8, !tbaa !65
  store ptr %313, ptr %12, align 8, !tbaa !69
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %12) #11
  %317 = load ptr, ptr %316, align 8, !tbaa !65
  %318 = call ptr %317(ptr noundef nonnull %12) #11
  %319 = icmp eq ptr %318, null
  br i1 %319, label %343, label %320

320:                                              ; preds = %312, %338
  %321 = phi i32 [ %339, %338 ], [ 0, %312 ]
  %322 = phi ptr [ %341, %338 ], [ %318, %312 ]
  %323 = getelementptr inbounds %struct.BMHeader, ptr %322, i64 0, i32 3
  %324 = load i8, ptr %323, align 1, !tbaa !70
  %325 = and i8 %324, 2
  %326 = icmp ne i8 %325, 0
  %327 = icmp eq ptr %322, %225
  %328 = or i1 %327, %326
  br i1 %328, label %338, label %329

329:                                              ; preds = %320
  %330 = getelementptr inbounds %struct.BMEdge, ptr %322, i64 0, i32 4
  %331 = load ptr, ptr %330, align 8, !tbaa !88
  %332 = icmp eq ptr %331, null
  br i1 %332, label %333, label %338

333:                                              ; preds = %329
  %334 = add nsw i32 %321, 1
  %335 = sext i32 %321 to i64
  %336 = getelementptr inbounds ptr, ptr %17, i64 %335
  store ptr %322, ptr %336, align 8, !tbaa !105
  %337 = icmp slt i32 %321, 1
  br i1 %337, label %338, label %343

338:                                              ; preds = %333, %329, %320
  %339 = phi i32 [ %334, %333 ], [ %321, %329 ], [ %321, %320 ]
  %340 = load ptr, ptr %316, align 8, !tbaa !65
  %341 = call ptr %340(ptr noundef nonnull %12) #11
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %320, !llvm.loop !106

343:                                              ; preds = %338, %333, %312
  %344 = phi i32 [ 0, %312 ], [ %339, %338 ], [ %334, %333 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #11
  %345 = icmp eq i32 %344, 1
  br i1 %345, label %346, label %397

346:                                              ; preds = %343
  %347 = getelementptr inbounds %struct.BMEdge, ptr %225, i64 0, i32 3
  %348 = load ptr, ptr %347, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #11
  %349 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  store i8 4, ptr %349, align 4, !tbaa !62
  %350 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %350, align 8, !tbaa !64
  %351 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %351, align 8, !tbaa !65
  store ptr %348, ptr %9, align 8, !tbaa !69
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %9) #11
  %352 = load ptr, ptr %351, align 8, !tbaa !65
  %353 = call ptr %352(ptr noundef nonnull %9) #11
  %354 = icmp eq ptr %353, null
  br i1 %354, label %386, label %355

355:                                              ; preds = %346, %381
  %356 = phi i32 [ %382, %381 ], [ 0, %346 ]
  %357 = phi ptr [ %384, %381 ], [ %353, %346 ]
  %358 = getelementptr inbounds %struct.BMHeader, ptr %357, i64 0, i32 3
  %359 = load i8, ptr %358, align 1, !tbaa !70
  %360 = and i8 %359, 2
  %361 = icmp ne i8 %360, 0
  %362 = icmp eq ptr %357, %225
  %363 = or i1 %362, %361
  br i1 %363, label %381, label %364

364:                                              ; preds = %355
  %365 = getelementptr inbounds %struct.BMEdge, ptr %357, i64 0, i32 4
  %366 = load ptr, ptr %365, align 8, !tbaa !88
  %367 = icmp eq ptr %366, null
  br i1 %367, label %373, label %368

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.BMLoop, ptr %366, i64 0, i32 4
  %370 = load ptr, ptr %369, align 8, !tbaa !91
  %371 = icmp eq ptr %370, %366
  %372 = zext i1 %371 to i8
  br label %373

373:                                              ; preds = %364, %368
  %374 = phi i8 [ 0, %364 ], [ %372, %368 ]
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %381, label %376

376:                                              ; preds = %373
  %377 = add nsw i32 %356, 1
  %378 = sext i32 %356 to i64
  %379 = getelementptr inbounds ptr, ptr %18, i64 %378
  store ptr %357, ptr %379, align 8, !tbaa !105
  %380 = icmp slt i32 %356, 1
  br i1 %380, label %381, label %386

381:                                              ; preds = %376, %373, %355
  %382 = phi i32 [ %377, %376 ], [ %356, %373 ], [ %356, %355 ]
  %383 = load ptr, ptr %351, align 8, !tbaa !65
  %384 = call ptr %383(ptr noundef nonnull %9) #11
  %385 = icmp eq ptr %384, null
  br i1 %385, label %386, label %355, !llvm.loop !106

386:                                              ; preds = %376, %381, %346
  %387 = phi i32 [ 0, %346 ], [ %377, %376 ], [ %382, %381 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #11
  %388 = icmp eq i32 %387, 1
  br i1 %388, label %389, label %397

389:                                              ; preds = %386
  %390 = load ptr, ptr %17, align 16, !tbaa !105
  %391 = call zeroext i8 @BM_edge_share_face_check(ptr noundef nonnull %225, ptr noundef %390) #11
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %393, label %397

393:                                              ; preds = %389
  %394 = load ptr, ptr %18, align 16, !tbaa !105
  %395 = call zeroext i8 @BM_edge_share_face_check(ptr noundef nonnull %225, ptr noundef %394) #11
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %575, label %397

397:                                              ; preds = %393, %389, %386, %343
  %398 = load ptr, ptr %235, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #11
  %399 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  store i8 4, ptr %399, align 4, !tbaa !62
  %400 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %400, align 8, !tbaa !64
  %401 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %401, align 8, !tbaa !65
  store ptr %398, ptr %11, align 8, !tbaa !69
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %11) #11
  %402 = load ptr, ptr %401, align 8, !tbaa !65
  %403 = call ptr %402(ptr noundef nonnull %11) #11
  %404 = icmp eq ptr %403, null
  br i1 %404, label %436, label %405

405:                                              ; preds = %397, %431
  %406 = phi i32 [ %432, %431 ], [ 0, %397 ]
  %407 = phi ptr [ %434, %431 ], [ %403, %397 ]
  %408 = getelementptr inbounds %struct.BMHeader, ptr %407, i64 0, i32 3
  %409 = load i8, ptr %408, align 1, !tbaa !70
  %410 = and i8 %409, 2
  %411 = icmp ne i8 %410, 0
  %412 = icmp eq ptr %407, %225
  %413 = or i1 %412, %411
  br i1 %413, label %431, label %414

414:                                              ; preds = %405
  %415 = getelementptr inbounds %struct.BMEdge, ptr %407, i64 0, i32 4
  %416 = load ptr, ptr %415, align 8, !tbaa !88
  %417 = icmp eq ptr %416, null
  br i1 %417, label %423, label %418

418:                                              ; preds = %414
  %419 = getelementptr inbounds %struct.BMLoop, ptr %416, i64 0, i32 4
  %420 = load ptr, ptr %419, align 8, !tbaa !91
  %421 = icmp eq ptr %420, %416
  %422 = zext i1 %421 to i8
  br label %423

423:                                              ; preds = %418, %414
  %424 = phi i8 [ 0, %414 ], [ %422, %418 ]
  %425 = icmp eq i8 %424, 0
  br i1 %425, label %431, label %426

426:                                              ; preds = %423
  %427 = add nsw i32 %406, 1
  %428 = sext i32 %406 to i64
  %429 = getelementptr inbounds ptr, ptr %17, i64 %428
  store ptr %407, ptr %429, align 8, !tbaa !105
  %430 = icmp slt i32 %406, 1
  br i1 %430, label %431, label %436

431:                                              ; preds = %426, %423, %405
  %432 = phi i32 [ %427, %426 ], [ %406, %423 ], [ %406, %405 ]
  %433 = load ptr, ptr %401, align 8, !tbaa !65
  %434 = call ptr %433(ptr noundef nonnull %11) #11
  %435 = icmp eq ptr %434, null
  br i1 %435, label %436, label %405, !llvm.loop !106

436:                                              ; preds = %431, %426, %397
  %437 = phi i32 [ 0, %397 ], [ %432, %431 ], [ %427, %426 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #11
  %438 = icmp eq i32 %437, 1
  br i1 %438, label %439, label %482

439:                                              ; preds = %436
  %440 = getelementptr inbounds %struct.BMEdge, ptr %225, i64 0, i32 3
  %441 = load ptr, ptr %440, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %442 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 4, ptr %442, align 4, !tbaa !62
  %443 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %443, align 8, !tbaa !64
  %444 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %444, align 8, !tbaa !65
  store ptr %441, ptr %4, align 8, !tbaa !69
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %4) #11
  %445 = load ptr, ptr %444, align 8, !tbaa !65
  %446 = call ptr %445(ptr noundef nonnull %4) #11
  %447 = icmp eq ptr %446, null
  br i1 %447, label %471, label %448

448:                                              ; preds = %439, %466
  %449 = phi i32 [ %467, %466 ], [ 0, %439 ]
  %450 = phi ptr [ %469, %466 ], [ %446, %439 ]
  %451 = getelementptr inbounds %struct.BMHeader, ptr %450, i64 0, i32 3
  %452 = load i8, ptr %451, align 1, !tbaa !70
  %453 = and i8 %452, 2
  %454 = icmp ne i8 %453, 0
  %455 = icmp eq ptr %450, %225
  %456 = or i1 %455, %454
  br i1 %456, label %466, label %457

457:                                              ; preds = %448
  %458 = getelementptr inbounds %struct.BMEdge, ptr %450, i64 0, i32 4
  %459 = load ptr, ptr %458, align 8, !tbaa !88
  %460 = icmp eq ptr %459, null
  br i1 %460, label %461, label %466

461:                                              ; preds = %457
  %462 = add nsw i32 %449, 1
  %463 = sext i32 %449 to i64
  %464 = getelementptr inbounds ptr, ptr %18, i64 %463
  store ptr %450, ptr %464, align 8, !tbaa !105
  %465 = icmp slt i32 %449, 1
  br i1 %465, label %466, label %471

466:                                              ; preds = %461, %457, %448
  %467 = phi i32 [ %462, %461 ], [ %449, %457 ], [ %449, %448 ]
  %468 = load ptr, ptr %444, align 8, !tbaa !65
  %469 = call ptr %468(ptr noundef nonnull %4) #11
  %470 = icmp eq ptr %469, null
  br i1 %470, label %471, label %448, !llvm.loop !106

471:                                              ; preds = %461, %466, %439
  %472 = phi i32 [ 0, %439 ], [ %467, %466 ], [ %462, %461 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  %473 = icmp eq i32 %472, 1
  br i1 %473, label %474, label %482

474:                                              ; preds = %471
  %475 = load ptr, ptr %17, align 16, !tbaa !105
  %476 = call zeroext i8 @BM_edge_share_face_check(ptr noundef nonnull %225, ptr noundef %475) #11
  %477 = icmp eq i8 %476, 0
  br i1 %477, label %478, label %482

478:                                              ; preds = %474
  %479 = load ptr, ptr %18, align 16, !tbaa !105
  %480 = call zeroext i8 @BM_edge_share_face_check(ptr noundef nonnull %225, ptr noundef %479) #11
  %481 = icmp eq i8 %480, 0
  br i1 %481, label %575, label %482

482:                                              ; preds = %478, %474, %471, %436
  %483 = load ptr, ptr %235, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #11
  %484 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  store i8 4, ptr %484, align 4, !tbaa !62
  %485 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %485, align 8, !tbaa !64
  %486 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %486, align 8, !tbaa !65
  store ptr %483, ptr %10, align 8, !tbaa !69
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %10) #11
  %487 = load ptr, ptr %486, align 8, !tbaa !65
  %488 = call ptr %487(ptr noundef nonnull %10) #11
  %489 = icmp eq ptr %488, null
  br i1 %489, label %605, label %490

490:                                              ; preds = %482, %516
  %491 = phi i32 [ %517, %516 ], [ 0, %482 ]
  %492 = phi ptr [ %519, %516 ], [ %488, %482 ]
  %493 = getelementptr inbounds %struct.BMHeader, ptr %492, i64 0, i32 3
  %494 = load i8, ptr %493, align 1, !tbaa !70
  %495 = and i8 %494, 2
  %496 = icmp ne i8 %495, 0
  %497 = icmp eq ptr %492, %225
  %498 = or i1 %497, %496
  br i1 %498, label %516, label %499

499:                                              ; preds = %490
  %500 = getelementptr inbounds %struct.BMEdge, ptr %492, i64 0, i32 4
  %501 = load ptr, ptr %500, align 8, !tbaa !88
  %502 = icmp eq ptr %501, null
  br i1 %502, label %508, label %503

503:                                              ; preds = %499
  %504 = getelementptr inbounds %struct.BMLoop, ptr %501, i64 0, i32 4
  %505 = load ptr, ptr %504, align 8, !tbaa !91
  %506 = icmp eq ptr %505, %501
  %507 = zext i1 %506 to i8
  br label %508

508:                                              ; preds = %503, %499
  %509 = phi i8 [ 0, %499 ], [ %507, %503 ]
  %510 = icmp eq i8 %509, 0
  br i1 %510, label %516, label %511

511:                                              ; preds = %508
  %512 = add nsw i32 %491, 1
  %513 = sext i32 %491 to i64
  %514 = getelementptr inbounds ptr, ptr %17, i64 %513
  store ptr %492, ptr %514, align 8, !tbaa !105
  %515 = icmp slt i32 %491, 1
  br i1 %515, label %516, label %521

516:                                              ; preds = %511, %508, %490
  %517 = phi i32 [ %512, %511 ], [ %491, %508 ], [ %491, %490 ]
  %518 = load ptr, ptr %486, align 8, !tbaa !65
  %519 = call ptr %518(ptr noundef nonnull %10) #11
  %520 = icmp eq ptr %519, null
  br i1 %520, label %521, label %490, !llvm.loop !106

521:                                              ; preds = %511, %516
  %522 = phi i32 [ %517, %516 ], [ %512, %511 ]
  %523 = icmp eq i32 %522, 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #11
  br i1 %523, label %524, label %606

524:                                              ; preds = %521
  %525 = getelementptr inbounds %struct.BMEdge, ptr %225, i64 0, i32 3
  %526 = load ptr, ptr %525, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %527 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 4, ptr %527, align 4, !tbaa !62
  %528 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %528, align 8, !tbaa !64
  %529 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %529, align 8, !tbaa !65
  store ptr %526, ptr %3, align 8, !tbaa !69
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %3) #11
  %530 = load ptr, ptr %529, align 8, !tbaa !65
  %531 = call ptr %530(ptr noundef nonnull %3) #11
  %532 = icmp eq ptr %531, null
  br i1 %532, label %604, label %533

533:                                              ; preds = %524, %559
  %534 = phi i32 [ %560, %559 ], [ 0, %524 ]
  %535 = phi ptr [ %562, %559 ], [ %531, %524 ]
  %536 = getelementptr inbounds %struct.BMHeader, ptr %535, i64 0, i32 3
  %537 = load i8, ptr %536, align 1, !tbaa !70
  %538 = and i8 %537, 2
  %539 = icmp ne i8 %538, 0
  %540 = icmp eq ptr %535, %225
  %541 = or i1 %540, %539
  br i1 %541, label %559, label %542

542:                                              ; preds = %533
  %543 = getelementptr inbounds %struct.BMEdge, ptr %535, i64 0, i32 4
  %544 = load ptr, ptr %543, align 8, !tbaa !88
  %545 = icmp eq ptr %544, null
  br i1 %545, label %551, label %546

546:                                              ; preds = %542
  %547 = getelementptr inbounds %struct.BMLoop, ptr %544, i64 0, i32 4
  %548 = load ptr, ptr %547, align 8, !tbaa !91
  %549 = icmp eq ptr %548, %544
  %550 = zext i1 %549 to i8
  br label %551

551:                                              ; preds = %542, %546
  %552 = phi i8 [ 0, %542 ], [ %550, %546 ]
  %553 = icmp eq i8 %552, 0
  br i1 %553, label %559, label %554

554:                                              ; preds = %551
  %555 = add nsw i32 %534, 1
  %556 = sext i32 %534 to i64
  %557 = getelementptr inbounds ptr, ptr %18, i64 %556
  store ptr %535, ptr %557, align 8, !tbaa !105
  %558 = icmp slt i32 %534, 1
  br i1 %558, label %559, label %564

559:                                              ; preds = %554, %551, %533
  %560 = phi i32 [ %555, %554 ], [ %534, %551 ], [ %534, %533 ]
  %561 = load ptr, ptr %529, align 8, !tbaa !65
  %562 = call ptr %561(ptr noundef nonnull %3) #11
  %563 = icmp eq ptr %562, null
  br i1 %563, label %564, label %533, !llvm.loop !106

564:                                              ; preds = %559, %554
  %565 = phi i32 [ %560, %559 ], [ %555, %554 ]
  %566 = icmp eq i32 %565, 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  br i1 %566, label %567, label %606

567:                                              ; preds = %564
  %568 = load ptr, ptr %17, align 16, !tbaa !105
  %569 = call zeroext i8 @BM_edge_share_face_check(ptr noundef nonnull %225, ptr noundef %568) #11
  %570 = icmp eq i8 %569, 0
  br i1 %570, label %571, label %606

571:                                              ; preds = %567
  %572 = load ptr, ptr %18, align 16, !tbaa !105
  %573 = call zeroext i8 @BM_edge_share_face_check(ptr noundef nonnull %225, ptr noundef %572) #11
  %574 = icmp eq i8 %573, 0
  br i1 %574, label %575, label %606

575:                                              ; preds = %571, %478, %393, %308
  %576 = load ptr, ptr %17, align 16, !tbaa !105
  %577 = load ptr, ptr %235, align 8, !tbaa !107
  %578 = getelementptr inbounds %struct.BMEdge, ptr %576, i64 0, i32 2
  %579 = load ptr, ptr %578, align 8, !tbaa !107
  %580 = icmp eq ptr %579, %577
  %581 = getelementptr inbounds %struct.BMEdge, ptr %576, i64 0, i32 3
  %582 = load ptr, ptr %581, align 8, !tbaa !108
  %583 = icmp eq ptr %582, %577
  %584 = select i1 %583, ptr %579, ptr null
  %585 = select i1 %580, ptr %582, ptr %584
  %586 = load ptr, ptr %18, align 16, !tbaa !105
  %587 = getelementptr inbounds %struct.BMEdge, ptr %225, i64 0, i32 3
  %588 = load ptr, ptr %587, align 8, !tbaa !108
  %589 = getelementptr inbounds %struct.BMEdge, ptr %586, i64 0, i32 2
  %590 = load ptr, ptr %589, align 8, !tbaa !107
  %591 = icmp eq ptr %590, %588
  %592 = getelementptr inbounds %struct.BMEdge, ptr %586, i64 0, i32 3
  %593 = load ptr, ptr %592, align 8, !tbaa !108
  %594 = icmp eq ptr %593, %588
  %595 = select i1 %594, ptr %590, ptr null
  %596 = select i1 %591, ptr %593, ptr %595
  %597 = icmp eq ptr %585, %596
  br i1 %597, label %600, label %598

598:                                              ; preds = %575
  %599 = call ptr @BM_edge_exists(ptr noundef %585, ptr noundef %596) #11
  br label %600

600:                                              ; preds = %598, %575
  %601 = phi ptr [ %599, %598 ], [ null, %575 ]
  call void @BM_edge_select_set(ptr noundef %62, ptr noundef %576, i8 noundef zeroext 1) #11
  call void @BM_edge_select_set(ptr noundef %62, ptr noundef %586, i8 noundef zeroext 1) #11
  %602 = icmp eq ptr %601, null
  br i1 %602, label %607, label %603

603:                                              ; preds = %600
  call void @BM_edge_select_set(ptr noundef %62, ptr noundef nonnull %601, i8 noundef zeroext 1) #11
  br label %607

604:                                              ; preds = %524
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  br label %606

605:                                              ; preds = %482
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #11
  br label %606

606:                                              ; preds = %605, %604, %571, %567, %564, %521
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #11
  br label %608

607:                                              ; preds = %603, %600
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #11
  br label %608

608:                                              ; preds = %230, %92, %215, %77, %56, %203, %204, %205, %207, %211, %606, %607
  %609 = phi ptr [ %87, %204 ], [ %225, %607 ], [ null, %606 ], [ null, %203 ], [ null, %205 ], [ null, %207 ], [ null, %211 ], [ null, %56 ], [ null, %77 ], [ null, %215 ], [ null, %92 ], [ null, %230 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #11
  %610 = getelementptr inbounds %struct.BMEditMesh, ptr %21, i64 0, i32 13
  %611 = load i16, ptr %610, align 2, !tbaa !110
  %612 = sext i16 %611 to i32
  %613 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %21, ptr noundef nonnull %19, ptr noundef %1, ptr noundef nonnull @.str.414, i32 noundef 1, i32 noundef %612, i32 noundef %61) #11
  %614 = icmp eq i8 %613, 0
  br i1 %614, label %683, label %615

615:                                              ; preds = %608
  %616 = load ptr, ptr %21, align 8, !tbaa !50
  call void @BMO_op_exec(ptr noundef %616, ptr noundef nonnull %19) #11
  %617 = load ptr, ptr %21, align 8, !tbaa !50
  %618 = getelementptr inbounds %struct.BMesh, ptr %617, i64 0, i32 1
  %619 = load i32, ptr %618, align 4, !tbaa !81
  %620 = icmp eq i32 %64, %619
  br i1 %620, label %621, label %627

621:                                              ; preds = %615
  %622 = getelementptr inbounds %struct.BMesh, ptr %617, i64 0, i32 3
  %623 = load i32, ptr %622, align 4, !tbaa !82
  %624 = icmp eq i32 %66, %623
  br i1 %624, label %625, label %627

625:                                              ; preds = %621
  %626 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %21, ptr noundef nonnull %19, ptr noundef %1, i8 noundef zeroext 1) #11
  br label %683

627:                                              ; preds = %621, %615
  %628 = icmp eq ptr %609, null
  br i1 %628, label %675, label %629

629:                                              ; preds = %627
  %630 = getelementptr inbounds %struct.BMOperator, ptr %19, i64 0, i32 1
  %631 = call i32 @BMO_slot_buffer_count(ptr noundef nonnull %630, ptr noundef nonnull @.str.415) #11
  %632 = icmp eq i32 %631, 1
  br i1 %632, label %633, label %675

633:                                              ; preds = %629
  %634 = call ptr @BMO_slot_buffer_get_first(ptr noundef nonnull %630, ptr noundef nonnull @.str.415) #11
  %635 = icmp eq ptr %634, null
  br i1 %635, label %675, label %636

636:                                              ; preds = %633
  %637 = load ptr, ptr %21, align 8, !tbaa !50
  call void @BM_select_history_clear(ptr noundef %637) #11
  %638 = getelementptr inbounds %struct.BMHeader, ptr %609, i64 0, i32 2
  %639 = load i8, ptr %638, align 4, !tbaa !111
  %640 = icmp eq i8 %639, 1
  br i1 %640, label %641, label %650

641:                                              ; preds = %636
  %642 = call ptr @BM_face_vert_share_loop(ptr noundef nonnull %634, ptr noundef nonnull %609) #11
  call void @BM_face_select_set(ptr noundef %637, ptr noundef nonnull %634, i8 noundef zeroext 0) #11
  call void @BM_vert_select_set(ptr noundef %637, ptr noundef nonnull %609, i8 noundef zeroext 0) #11
  %643 = getelementptr inbounds %struct.BMLoop, ptr %642, i64 0, i32 6
  %644 = load ptr, ptr %643, align 8, !tbaa !92
  %645 = getelementptr inbounds %struct.BMLoop, ptr %644, i64 0, i32 2
  %646 = load ptr, ptr %645, align 8, !tbaa !86
  call void @BM_edge_select_set(ptr noundef %637, ptr noundef %646, i8 noundef zeroext 1) #11
  %647 = load ptr, ptr %643, align 8, !tbaa !92
  %648 = getelementptr inbounds %struct.BMLoop, ptr %647, i64 0, i32 2
  %649 = load ptr, ptr %648, align 8, !tbaa !86
  call void @_bm_select_history_store(ptr noundef %637, ptr noundef %649) #11
  br label %679

650:                                              ; preds = %636
  %651 = call ptr @BM_face_edge_share_loop(ptr noundef nonnull %634, ptr noundef nonnull %609) #11
  call void @BM_face_select_set(ptr noundef %637, ptr noundef nonnull %634, i8 noundef zeroext 0) #11
  call void @BM_edge_select_set(ptr noundef %637, ptr noundef nonnull %609, i8 noundef zeroext 0) #11
  %652 = getelementptr inbounds %struct.BMFace, ptr %634, i64 0, i32 3
  %653 = load i32, ptr %652, align 8, !tbaa !113
  %654 = icmp eq i32 %653, 4
  %655 = getelementptr inbounds %struct.BMLoop, ptr %651, i64 0, i32 6
  %656 = load ptr, ptr %655, align 8, !tbaa !92
  %657 = getelementptr inbounds %struct.BMLoop, ptr %656, i64 0, i32 6
  %658 = load ptr, ptr %657, align 8, !tbaa !92
  br i1 %654, label %659, label %667

659:                                              ; preds = %650
  %660 = getelementptr inbounds %struct.BMLoop, ptr %658, i64 0, i32 2
  %661 = load ptr, ptr %660, align 8, !tbaa !86
  call void @BM_edge_select_set(ptr noundef %637, ptr noundef %661, i8 noundef zeroext 1) #11
  %662 = load ptr, ptr %655, align 8, !tbaa !92
  %663 = getelementptr inbounds %struct.BMLoop, ptr %662, i64 0, i32 6
  %664 = load ptr, ptr %663, align 8, !tbaa !92
  %665 = getelementptr inbounds %struct.BMLoop, ptr %664, i64 0, i32 2
  %666 = load ptr, ptr %665, align 8, !tbaa !86
  call void @_bm_select_history_store(ptr noundef %637, ptr noundef %666) #11
  br label %679

667:                                              ; preds = %650
  %668 = getelementptr inbounds %struct.BMLoop, ptr %658, i64 0, i32 1
  %669 = load ptr, ptr %668, align 8, !tbaa !114
  call void @BM_vert_select_set(ptr noundef %637, ptr noundef %669, i8 noundef zeroext 1) #11
  %670 = load ptr, ptr %655, align 8, !tbaa !92
  %671 = getelementptr inbounds %struct.BMLoop, ptr %670, i64 0, i32 6
  %672 = load ptr, ptr %671, align 8, !tbaa !92
  %673 = getelementptr inbounds %struct.BMLoop, ptr %672, i64 0, i32 1
  %674 = load ptr, ptr %673, align 8, !tbaa !114
  call void @_bm_select_history_store(ptr noundef %637, ptr noundef %674) #11
  br label %679

675:                                              ; preds = %633, %629, %627
  %676 = load ptr, ptr %21, align 8, !tbaa !50
  %677 = getelementptr inbounds %struct.BMOperator, ptr %19, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %676, ptr noundef nonnull %677, ptr noundef nonnull @.str.415, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  %678 = load ptr, ptr %21, align 8, !tbaa !50
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %678, ptr noundef nonnull %677, ptr noundef nonnull @.str.416, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %679

679:                                              ; preds = %667, %659, %641, %675
  %680 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %21, ptr noundef nonnull %19, ptr noundef %1, i8 noundef zeroext 1) #11
  %681 = icmp eq i8 %680, 0
  br i1 %681, label %683, label %682

682:                                              ; preds = %679
  call void @EDBM_update_generic(ptr noundef nonnull %21, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %683

683:                                              ; preds = %679, %608, %682, %625
  %684 = phi i32 [ 2, %625 ], [ 4, %682 ], [ 2, %608 ], [ 2, %679 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %19) #11
  ret i32 %684
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.59, i32 noundef 0, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.5) #11
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_mark_seam_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #11
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.59) #11
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 36
  %17 = load i32, ptr %16, align 8, !tbaa !119
  %18 = or i32 %17, 128
  store i32 %18, ptr %16, align 8, !tbaa !119
  %19 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %19, align 4, !tbaa !62
  %20 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %20, align 8, !tbaa !64
  %21 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %21, align 8, !tbaa !65
  %22 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !95
  store ptr %23, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %24 = load ptr, ptr %21, align 8, !tbaa !65
  %25 = call ptr %24(ptr noundef nonnull %3) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %60, label %48

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %28, align 4, !tbaa !62
  %29 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %29, align 8, !tbaa !64
  %30 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %30, align 8, !tbaa !65
  %31 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !95
  store ptr %32, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %33 = load ptr, ptr %30, align 8, !tbaa !65
  %34 = call ptr %33(ptr noundef nonnull %3) #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %60, label %36

36:                                               ; preds = %27, %44
  %37 = phi ptr [ %46, %44 ], [ %34, %27 ]
  %38 = getelementptr inbounds %struct.BMHeader, ptr %37, i64 0, i32 3
  %39 = load i8, ptr %38, align 1, !tbaa !70
  %40 = and i8 %39, 3
  %41 = icmp eq i8 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = and i8 %39, -7
  store i8 %43, ptr %38, align 1, !tbaa !70
  br label %44

44:                                               ; preds = %36, %42
  %45 = load ptr, ptr %30, align 8, !tbaa !65
  %46 = call ptr %45(ptr noundef nonnull %3) #11
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %36, !llvm.loop !121

48:                                               ; preds = %15, %56
  %49 = phi ptr [ %58, %56 ], [ %25, %15 ]
  %50 = getelementptr inbounds %struct.BMHeader, ptr %49, i64 0, i32 3
  %51 = load i8, ptr %50, align 1, !tbaa !70
  %52 = and i8 %51, 3
  %53 = icmp eq i8 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = or i8 %51, 4
  store i8 %55, ptr %50, align 1, !tbaa !70
  br label %56

56:                                               ; preds = %48, %54
  %57 = load ptr, ptr %21, align 8, !tbaa !65
  %58 = call ptr %57(ptr noundef nonnull %3) #11
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %48, !llvm.loop !122

60:                                               ; preds = %44, %56, %27, %15
  call void @ED_uvedit_live_unwrap(ptr noundef %4, ptr noundef %5) #11
  call void @EDBM_update_generic(ptr noundef nonnull %8, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret i32 4
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.59, i32 noundef 0, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.5) #11
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.41, i32 noundef 0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.64) #11
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268435456) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_mark_sharp_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.59) #11
  %12 = load ptr, ptr %9, align 8, !tbaa !48
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.41) #11
  %14 = and i32 %11, 255
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 36
  %18 = load i32, ptr %17, align 8, !tbaa !119
  %19 = or i32 %18, 256
  store i32 %19, ptr %17, align 8, !tbaa !119
  br label %20

20:                                               ; preds = %16, %2
  %21 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %21, align 4, !tbaa !62
  %22 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %22, align 8, !tbaa !64
  %23 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %23, align 8, !tbaa !65
  %24 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !95
  store ptr %25, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %26 = load ptr, ptr %23, align 8, !tbaa !65
  %27 = call ptr %26(ptr noundef nonnull %3) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %63, label %29

29:                                               ; preds = %20
  %30 = and i32 %13, 255
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %15, i8 0, i8 8
  br label %33

33:                                               ; preds = %29, %59
  %34 = phi ptr [ %27, %29 ], [ %61, %59 ]
  br i1 %31, label %49, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.BMEdge, ptr %34, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !107
  %38 = getelementptr inbounds %struct.BMHeader, ptr %37, i64 0, i32 3
  %39 = load i8, ptr %38, align 1, !tbaa !70
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.BMEdge, ptr %34, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !108
  %45 = getelementptr inbounds %struct.BMHeader, ptr %44, i64 0, i32 3
  %46 = load i8, ptr %45, align 1, !tbaa !70
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %59, label %54

49:                                               ; preds = %33
  %50 = getelementptr inbounds %struct.BMHeader, ptr %34, i64 0, i32 3
  %51 = load i8, ptr %50, align 1, !tbaa !70
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49, %35, %42
  %55 = getelementptr inbounds %struct.BMHeader, ptr %34, i64 0, i32 3
  %56 = load i8, ptr %55, align 1, !tbaa !70
  %57 = and i8 %56, -9
  %58 = or disjoint i8 %57, %32
  store i8 %58, ptr %55, align 1, !tbaa !70
  br label %59

59:                                               ; preds = %54, %49, %42
  %60 = load ptr, ptr %23, align 8, !tbaa !65
  %61 = call ptr %60(ptr noundef nonnull %3) #11
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %33, !llvm.loop !123

63:                                               ; preds = %59, %20
  call void @EDBM_update_generic(ptr noundef nonnull %7, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_vert_connect(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
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

; Function Attrs: nounwind uwtable
define internal i32 @edbm_vert_connect_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !77
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.417, i32 noundef 1, i32 noundef 2, i32 noundef 2) #11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %30, label %16

13:                                               ; preds = %2
  %14 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.418, i32 noundef 1, i32 noundef 2, i32 noundef 1) #11
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %13, %10
  call void @BMO_op_exec(ptr noundef %6, ptr noundef nonnull %3) #11
  %17 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  %18 = call ptr @BMO_slot_get(ptr noundef nonnull %17, ptr noundef nonnull @.str.416) #11
  %19 = getelementptr inbounds %struct.BMOpSlot, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !124
  %21 = icmp ne i32 %20, 0
  %22 = and i1 %9, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %24, ptr noundef nonnull %17, ptr noundef nonnull @.str.416, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %25

25:                                               ; preds = %23, %16
  %26 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #11
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #11
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  %29 = select i1 %21, i32 4, i32 2
  br label %30

30:                                               ; preds = %25, %13, %10, %28
  %31 = phi i32 [ %29, %28 ], [ 2, %10 ], [ 2, %13 ], [ 2, %25 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret i32 %31
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_float_rotation(ptr noundef %8, ptr noundef nonnull @.str.71, i32 noundef 0, ptr noundef null, float noundef 0.000000e+00, float noundef 0x400921FB60000000, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, float noundef 0.000000e+00, float noundef 0x400921FB60000000) #11
  tail call void @RNA_def_property_float_default(ptr noundef %9, float noundef 0x3FB6571840000000) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_vert_connect_nonplaner_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = tail call float @RNA_float_get(ptr noundef %6, ptr noundef nonnull @.str.71) #11
  %8 = fpext float %7 to double
  %9 = tail call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.415, i8 noundef zeroext 1, ptr noundef nonnull @.str.419, i32 noundef 1, double noundef %8) #11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %12

12:                                               ; preds = %2, %11
  %13 = phi i32 [ 4, %11 ], [ 2, %2 ]
  ret i32 %13
}

declare ptr @RNA_def_float_rotation(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @RNA_def_property_float_default(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_edge_split(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_edge_split_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #11
  %5 = tail call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.416, i8 noundef zeroext 0, ptr noundef nonnull @.str.420, i32 noundef 1) #11
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMEditMesh, ptr %4, i64 0, i32 12
  %9 = load i16, ptr %8, align 4, !tbaa !54
  %10 = icmp eq i16 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @EDBM_select_flush(ptr noundef %4) #11
  br label %12

12:                                               ; preds = %11, %7
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %13

13:                                               ; preds = %2, %12
  %14 = phi i32 [ 4, %12 ], [ 2, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_duplicate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.77, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.78, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.79, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_duplicate_invoke, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_duplicate_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.80, i32 noundef 1, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 2147483647) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_duplicate_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  tail call void @WM_cursor_wait(i8 noundef zeroext 1) #11
  %4 = tail call i32 @edbm_duplicate_exec(ptr noundef %0, ptr noundef %1), !range !126
  tail call void @WM_cursor_wait(i8 noundef zeroext 0) #11
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_duplicate_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #11
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  %8 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.421, i32 noundef 1, i32 noundef 1) #11
  call void @BMO_op_exec(ptr noundef %7, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %9 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @EDBM_flag_disable_all(ptr noundef nonnull %6, i8 noundef zeroext 1) #11
  %10 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %7, ptr noundef nonnull %10, ptr noundef nonnull @.str.422, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  %11 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  call void @EDBM_update_generic(ptr noundef nonnull %6, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %14

14:                                               ; preds = %2, %13
  %15 = phi i32 [ 4, %13 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_flip_normals(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_flip_normals_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #11
  %5 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.423, i32 noundef 1) #11
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  br label %8

8:                                                ; preds = %2, %7
  %9 = phi i32 [ 4, %7 ], [ 2, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_edge_rotate_selected_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %7) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.88) #11
  %12 = load ptr, ptr %8, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !78
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !100
  tail call void @BKE_report(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.424) #11
  br label %76

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 2, ptr %20, align 4, !tbaa !62
  %21 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %21, align 8, !tbaa !64
  %22 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %22, align 8, !tbaa !65
  %23 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !95
  store ptr %24, ptr %4, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #11
  %25 = load ptr, ptr %22, align 8, !tbaa !65
  %26 = call ptr %25(ptr noundef nonnull %4) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %62, label %28

28:                                               ; preds = %19, %55
  %29 = phi i32 [ %56, %55 ], [ 0, %19 ]
  %30 = phi ptr [ %58, %55 ], [ %26, %19 ]
  %31 = getelementptr inbounds %struct.BMHeader, ptr %30, i64 0, i32 3
  %32 = load i8, ptr %31, align 1, !tbaa !70
  %33 = and i8 %32, -17
  store i8 %33, ptr %31, align 1, !tbaa !70
  %34 = and i8 %32, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %37 = call zeroext i8 @BM_edge_face_pair(ptr noundef nonnull %30, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %5, align 8, !tbaa !105
  %41 = getelementptr inbounds %struct.BMHeader, ptr %40, i64 0, i32 3
  %42 = load i8, ptr %41, align 1, !tbaa !70
  %43 = load ptr, ptr %6, align 8, !tbaa !105
  %44 = getelementptr inbounds %struct.BMHeader, ptr %43, i64 0, i32 3
  %45 = load i8, ptr %44, align 1, !tbaa !70
  %46 = xor i8 %45, %42
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i8, ptr %31, align 1, !tbaa !70
  %51 = or i8 %50, 16
  store i8 %51, ptr %31, align 1, !tbaa !70
  %52 = add nsw i32 %29, 1
  br label %53

53:                                               ; preds = %39, %49, %36
  %54 = phi i32 [ %52, %49 ], [ %29, %39 ], [ %29, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %55

55:                                               ; preds = %28, %53
  %56 = phi i32 [ %54, %53 ], [ %29, %28 ]
  %57 = load ptr, ptr %22, align 8, !tbaa !65
  %58 = call ptr %57(ptr noundef nonnull %4) #11
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %28, !llvm.loop !128

60:                                               ; preds = %55
  %61 = icmp eq i32 %56, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %19, %60
  %63 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %64 = load ptr, ptr %63, align 8, !tbaa !100
  call void @BKE_report(ptr noundef %64, i32 noundef 32, ptr noundef nonnull @.str.425) #11
  br label %76

65:                                               ; preds = %60
  %66 = and i32 %11, 255
  %67 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.426, i32 noundef 16, i32 noundef %66) #11
  %68 = load ptr, ptr %8, align 8, !tbaa !50
  call void @BMO_slot_buffer_hflag_disable(ptr noundef %68, ptr noundef nonnull %3, ptr noundef nonnull @.str.427, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  %69 = load ptr, ptr %8, align 8, !tbaa !50
  call void @BMO_op_exec(ptr noundef %69, ptr noundef nonnull %3) #11
  %70 = load ptr, ptr %8, align 8, !tbaa !50
  %71 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_disable(ptr noundef %70, ptr noundef nonnull %71, ptr noundef nonnull @.str.416, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 1) #11
  %72 = load ptr, ptr %8, align 8, !tbaa !50
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %72, ptr noundef nonnull %71, ptr noundef nonnull @.str.416, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  call void @EDBM_selectmode_flush(ptr noundef nonnull %8) #11
  %73 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #11
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %65
  call void @EDBM_update_generic(ptr noundef nonnull %8, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %76

76:                                               ; preds = %65, %75, %62, %16
  %77 = phi i32 [ 2, %16 ], [ 2, %62 ], [ 4, %75 ], [ 2, %65 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret i32 %77
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.93, i32 noundef 0, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_hide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.93) #11
  %8 = trunc i32 %7 to i8
  tail call void @EDBM_mesh_hide(ptr noundef %4, i8 noundef zeroext %8) #11
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_reveal(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_reveal_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #11
  tail call void @EDBM_mesh_reveal(ptr noundef %4) #11
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  ret i32 4
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.102, i32 noundef 0, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_normals_make_consistent_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #11
  %5 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.428, i32 noundef 1) #11
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.102) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.423, i32 noundef 1) #11
  br label %14

14:                                               ; preds = %12, %7
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  br label %15

15:                                               ; preds = %2, %14
  %16 = phi i32 [ 4, %14 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.107, float noundef 5.000000e-01, float noundef -1.000000e+01, float noundef 1.000000e+01, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, float noundef 0.000000e+00, float noundef 1.000000e+00) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.110, i32 noundef 1, i32 noundef 1, i32 noundef 1000, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, i32 noundef 1, i32 noundef 100) #11
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.113, i32 noundef 1, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115) #11
  %14 = load ptr, ptr %7, align 8, !tbaa !47
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.116, i32 noundef 1, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118) #11
  %16 = load ptr, ptr %7, align 8, !tbaa !47
  %17 = tail call ptr @RNA_def_boolean(ptr noundef %16, ptr noundef nonnull @.str.119, i32 noundef 1, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_do_smooth_vertex_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !115
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #11
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call float @RNA_float_get(ptr noundef %8, ptr noundef nonnull @.str.107) #11
  %10 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 46
  %11 = load i8, ptr %10, align 1, !tbaa !129
  %12 = load ptr, ptr %7, align 8, !tbaa !48
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.113) #11
  %14 = load ptr, ptr %7, align 8, !tbaa !48
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.116) #11
  %16 = load ptr, ptr %7, align 8, !tbaa !48
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.119) #11
  %18 = load ptr, ptr %4, align 8, !tbaa !115
  %19 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 46
  %20 = load i8, ptr %19, align 1, !tbaa !129
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = lshr i8 %11, 4
  %25 = and i8 %24, 1
  tail call void @EDBM_verts_mirror_cache_begin(ptr noundef %6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext %25) #11
  br label %26

26:                                               ; preds = %23, %2
  %27 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 26
  %28 = load ptr, ptr %27, align 8, !tbaa !105
  %29 = icmp eq ptr %28, null
  br i1 %29, label %74, label %30

30:                                               ; preds = %26, %62
  %31 = phi ptr [ %67, %62 ], [ %28, %26 ]
  %32 = phi i8 [ %66, %62 ], [ 0, %26 ]
  %33 = phi i8 [ %65, %62 ], [ 0, %26 ]
  %34 = phi i8 [ %64, %62 ], [ 0, %26 ]
  %35 = phi float [ %63, %62 ], [ 0.000000e+00, %26 ]
  %36 = getelementptr inbounds %struct.ModifierData, ptr %31, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !130
  %38 = icmp eq i32 %37, 5
  br i1 %38, label %39, label %62

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.ModifierData, ptr %31, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !132
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.MirrorModifierData, ptr %31, i64 0, i32 2
  %46 = load i16, ptr %45, align 2, !tbaa !133
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
  %61 = load float, ptr %60, align 4, !tbaa !135
  br label %62

62:                                               ; preds = %44, %50, %30, %39
  %63 = phi float [ %35, %39 ], [ %35, %30 ], [ %61, %50 ], [ %35, %44 ]
  %64 = phi i8 [ %34, %39 ], [ %34, %30 ], [ %59, %50 ], [ %34, %44 ]
  %65 = phi i8 [ %33, %39 ], [ %33, %30 ], [ %56, %50 ], [ %33, %44 ]
  %66 = phi i8 [ %32, %39 ], [ %32, %30 ], [ %53, %50 ], [ %32, %44 ]
  %67 = load ptr, ptr %31, align 8, !tbaa !105
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %30, !llvm.loop !136

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
  %79 = load ptr, ptr %7, align 8, !tbaa !48
  %80 = tail call i32 @RNA_int_get(ptr noundef %79, ptr noundef nonnull @.str.110) #11
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
  br i1 %90, label %95, label %91, !llvm.loop !137

91:                                               ; preds = %83, %88
  %92 = phi i32 [ 0, %83 ], [ %89, %88 ]
  %93 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %6, ptr noundef %1, ptr noundef nonnull @.str.429, i32 noundef 1, double noundef %84, i32 noundef %78, i32 noundef %77, i32 noundef %76, double noundef %75, i32 noundef %85, i32 noundef %86, i32 noundef %87) #11
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %103, label %88

95:                                               ; preds = %88, %74
  %96 = load ptr, ptr %4, align 8, !tbaa !115
  %97 = getelementptr inbounds %struct.Mesh, ptr %96, i64 0, i32 46
  %98 = load i8, ptr %97, align 1, !tbaa !129
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  tail call void @EDBM_verts_mirror_apply(ptr noundef %6, i32 noundef 1, i32 noundef 0) #11
  tail call void @EDBM_verts_mirror_cache_end(ptr noundef %6) #11
  br label %102

102:                                              ; preds = %101, %95
  tail call void @EDBM_update_generic(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  br label %103

103:                                              ; preds = %91, %102
  %104 = phi i32 [ 4, %102 ], [ 2, %91 ]
  ret i32 %104
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.110, i32 noundef 1, i32 noundef 1, i32 noundef 200, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 200) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.126, float noundef 0x3F0A36E2E0000000, float noundef 0x3E7AD7F2A0000000, float noundef 1.000000e+03, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.5, float noundef 0x3E7AD7F2A0000000, float noundef 1.000000e+03) #11
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.128, float noundef 0x3F0A36E2E0000000, float noundef 0x3E7AD7F2A0000000, float noundef 1.000000e+03, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.5, float noundef 0x3E7AD7F2A0000000, float noundef 1.000000e+03) #11
  %14 = load ptr, ptr %7, align 8, !tbaa !47
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.130, i32 noundef 1, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132) #11
  %16 = load ptr, ptr %7, align 8, !tbaa !47
  %17 = tail call ptr @RNA_def_boolean(ptr noundef %16, ptr noundef nonnull @.str.133, i32 noundef 1, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135) #11
  %18 = load ptr, ptr %7, align 8, !tbaa !47
  %19 = tail call ptr @RNA_def_boolean(ptr noundef %18, ptr noundef nonnull @.str.136, i32 noundef 1, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138) #11
  %20 = load ptr, ptr %7, align 8, !tbaa !47
  %21 = tail call ptr @RNA_def_boolean(ptr noundef %20, ptr noundef nonnull @.str.139, i32 noundef 1, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.141) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_do_smooth_laplacian_vertex_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  %8 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 46
  %9 = load i8, ptr %8, align 1, !tbaa !129
  %10 = lshr i8 %9, 4
  %11 = and i8 %10, 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %12 = load ptr, ptr %5, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %13, align 4, !tbaa !62
  %14 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %14, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %15, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !83
  store ptr %17, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %18 = load ptr, ptr %15, align 8, !tbaa !65
  %19 = call ptr %18(ptr noundef nonnull %3) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %2, %34
  %22 = phi ptr [ %36, %34 ], [ %19, %2 ]
  %23 = getelementptr inbounds %struct.BMHeader, ptr %22, i64 0, i32 3
  %24 = load i8, ptr %23, align 1, !tbaa !70
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !113
  %30 = icmp sgt i32 %29, 4
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !100
  call void @BKE_report(ptr noundef %33, i32 noundef 16, ptr noundef nonnull @.str.430) #11
  br label %85

34:                                               ; preds = %21, %27
  %35 = load ptr, ptr %15, align 8, !tbaa !65
  %36 = call ptr %35(ptr noundef nonnull %3) #11
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %21, !llvm.loop !138

38:                                               ; preds = %34, %2
  %39 = load ptr, ptr %6, align 8, !tbaa !115
  %40 = getelementptr inbounds %struct.Mesh, ptr %39, i64 0, i32 46
  %41 = load i8, ptr %40, align 1, !tbaa !129
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  call void @EDBM_verts_mirror_cache_begin(ptr noundef nonnull %5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext %11) #11
  br label %45

45:                                               ; preds = %44, %38
  %46 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  %48 = call i32 @RNA_int_get(ptr noundef %47, ptr noundef nonnull @.str.110) #11
  %49 = load ptr, ptr %46, align 8, !tbaa !48
  %50 = call float @RNA_float_get(ptr noundef %49, ptr noundef nonnull @.str.126) #11
  %51 = load ptr, ptr %46, align 8, !tbaa !48
  %52 = call float @RNA_float_get(ptr noundef %51, ptr noundef nonnull @.str.128) #11
  %53 = load ptr, ptr %46, align 8, !tbaa !48
  %54 = call i32 @RNA_boolean_get(ptr noundef %53, ptr noundef nonnull @.str.130) #11
  %55 = load ptr, ptr %46, align 8, !tbaa !48
  %56 = call i32 @RNA_boolean_get(ptr noundef %55, ptr noundef nonnull @.str.133) #11
  %57 = load ptr, ptr %46, align 8, !tbaa !48
  %58 = call i32 @RNA_boolean_get(ptr noundef %57, ptr noundef nonnull @.str.136) #11
  %59 = load ptr, ptr %46, align 8, !tbaa !48
  %60 = call i32 @RNA_boolean_get(ptr noundef %59, ptr noundef nonnull @.str.139) #11
  %61 = call i32 @llvm.umax.i32(i32 %48, i32 1)
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %45
  %64 = fpext float %50 to double
  %65 = fpext float %52 to double
  %66 = and i32 %54, 255
  %67 = and i32 %56, 255
  %68 = and i32 %58, 255
  %69 = and i32 %60, 255
  br label %73

70:                                               ; preds = %73
  %71 = add nuw nsw i32 %74, 1
  %72 = icmp eq i32 %71, %61
  br i1 %72, label %77, label %73, !llvm.loop !139

73:                                               ; preds = %63, %70
  %74 = phi i32 [ 0, %63 ], [ %71, %70 ]
  %75 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.431, i32 noundef 1, double noundef %64, double noundef %65, i32 noundef %66, i32 noundef %67, i32 noundef %68, i32 noundef %69) #11
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %85, label %70

77:                                               ; preds = %70, %45
  %78 = load ptr, ptr %6, align 8, !tbaa !115
  %79 = getelementptr inbounds %struct.Mesh, ptr %78, i64 0, i32 46
  %80 = load i8, ptr %79, align 1, !tbaa !129
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  call void @EDBM_verts_mirror_apply(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #11
  call void @EDBM_verts_mirror_cache_end(ptr noundef nonnull %5) #11
  br label %84

84:                                               ; preds = %83, %77
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  br label %85

85:                                               ; preds = %73, %84, %31
  %86 = phi i32 [ 2, %31 ], [ 4, %84 ], [ 2, %73 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret i32 %86
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_faces_shade_smooth(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_faces_shade_smooth_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %9, align 4, !tbaa !62
  %10 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %10, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %11, align 8, !tbaa !65
  %12 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  store ptr %13, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %14 = load ptr, ptr %11, align 8, !tbaa !65
  %15 = call ptr %14(ptr noundef nonnull %3) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %7, %25
  %18 = phi ptr [ %27, %25 ], [ %15, %7 ]
  %19 = getelementptr inbounds %struct.BMHeader, ptr %18, i64 0, i32 3
  %20 = load i8, ptr %19, align 1, !tbaa !70
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = or i8 %20, 8
  store i8 %24, ptr %19, align 1, !tbaa !70
  br label %25

25:                                               ; preds = %23, %17
  %26 = load ptr, ptr %11, align 8, !tbaa !65
  %27 = call ptr %26(ptr noundef nonnull %3) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %17, !llvm.loop !140

29:                                               ; preds = %25, %2, %7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  call void @EDBM_update_generic(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_faces_shade_flat(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_faces_shade_flat_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %9, align 4, !tbaa !62
  %10 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %10, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %11, align 8, !tbaa !65
  %12 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  store ptr %13, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %14 = load ptr, ptr %11, align 8, !tbaa !65
  %15 = call ptr %14(ptr noundef nonnull %3) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %7, %25
  %18 = phi ptr [ %27, %25 ], [ %15, %7 ]
  %19 = getelementptr inbounds %struct.BMHeader, ptr %18, i64 0, i32 3
  %20 = load i8, ptr %19, align 1, !tbaa !70
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = and i8 %20, -9
  store i8 %24, ptr %19, align 1, !tbaa !70
  br label %25

25:                                               ; preds = %23, %17
  %26 = load ptr, ptr %11, align 8, !tbaa !65
  %27 = call ptr %26(ptr noundef nonnull %3) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %17, !llvm.loop !140

29:                                               ; preds = %25, %2, %7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  call void @EDBM_update_generic(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  ret i32 4
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_rotate_uvs_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.88) #11
  %9 = and i32 %8, 255
  %10 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.432, i32 noundef 1, i32 noundef %9) #11
  %11 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BMO_op_exec(ptr noundef %11, ptr noundef nonnull %3) #11
  %12 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #11
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  br label %15

15:                                               ; preds = %2, %14
  %16 = phi i32 [ 4, %14 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_uvs_reverse(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_reverse_uvs_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  %6 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.433, i32 noundef 1) #11
  %7 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BMO_op_exec(ptr noundef %7, ptr noundef nonnull %3) #11
  %8 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  br label %11

11:                                               ; preds = %2, %10
  %12 = phi i32 [ 4, %10 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret i32 %12
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_rotate_colors_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.88) #11
  %9 = and i32 %8, 255
  %10 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.434, i32 noundef 1, i32 noundef %9) #11
  %11 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BMO_op_exec(ptr noundef %11, ptr noundef nonnull %3) #11
  %12 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #11
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  br label %15

15:                                               ; preds = %2, %14
  %16 = phi i32 [ 4, %14 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_colors_reverse(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_reverse_colors_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  %6 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.435, i32 noundef 1) #11
  %7 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BMO_op_exec(ptr noundef %7, ptr noundef nonnull %3) #11
  %8 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  br label %11

11:                                               ; preds = %2, %10
  %12 = phi i32 [ 4, %10 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_merge(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.160, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.161, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.162, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_merge_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.35, ptr noundef nonnull @merge_type_items, i32 noundef 3, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.163) #11
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !76
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @merge_type_itemf) #11
  %12 = load ptr, ptr %8, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.164, i32 noundef 0, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.166) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_merge_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #11
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.35) #11
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.164) #11
  %13 = trunc i32 %12 to i8
  switch i32 %10, label %92 [
    i32 3, label %14
    i32 4, label %16
    i32 1, label %36
    i32 6, label %62
    i32 5, label %88
  ]

14:                                               ; preds = %2
  %15 = tail call fastcc zeroext i8 @merge_target(ptr noundef %7, ptr noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext %13, ptr noundef %1), !range !141
  br label %92

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %17 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %4, ptr noundef %5) #11
  %18 = load float, ptr %17, align 4, !tbaa !142
  store float %18, ptr %3, align 4, !tbaa !142
  %19 = getelementptr inbounds float, ptr %17, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !142
  %21 = getelementptr inbounds float, ptr %3, i64 1
  store float %20, ptr %21, align 4, !tbaa !142
  %22 = getelementptr inbounds float, ptr %17, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !142
  %24 = getelementptr inbounds float, ptr %3, i64 2
  store float %23, ptr %24, align 4, !tbaa !142
  %25 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %25, ptr noundef nonnull %3) #11
  %26 = icmp eq i8 %13, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %16
  %28 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %7, ptr noundef %1, ptr noundef nonnull @.str.436, i32 noundef 1) #11
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27, %16
  %31 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %7, ptr noundef %1, ptr noundef nonnull @.str.437, i32 noundef 1, ptr noundef nonnull %3) #11
  %32 = icmp ne i8 %31, 0
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %27, %30
  %35 = phi i8 [ 0, %27 ], [ %33, %30 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  br label %92

36:                                               ; preds = %2
  %37 = load ptr, ptr %7, align 8, !tbaa !50
  %38 = getelementptr inbounds %struct.BMesh, ptr %37, i64 0, i32 32, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !143
  %40 = icmp eq ptr %39, null
  br i1 %40, label %92, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.BMEditSelection, ptr %39, i64 0, i32 3
  %43 = load i8, ptr %42, align 8, !tbaa !144
  %44 = icmp eq i8 %43, 1
  br i1 %44, label %45, label %92

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.BMEditSelection, ptr %39, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !146
  %48 = getelementptr inbounds %struct.BMHeader, ptr %47, i64 0, i32 3
  %49 = load i8, ptr %48, align 1, !tbaa !70
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %92, label %52

52:                                               ; preds = %45
  %53 = icmp eq i8 %13, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %52
  %55 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull @.str.438, i32 noundef 1, ptr noundef %47) #11
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %92, label %57

57:                                               ; preds = %54, %52
  %58 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 2
  %59 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull @.str.437, i32 noundef 1, ptr noundef nonnull %58) #11
  %60 = icmp ne i8 %59, 0
  %61 = zext i1 %60 to i8
  br label %92

62:                                               ; preds = %2
  %63 = load ptr, ptr %7, align 8, !tbaa !50
  %64 = getelementptr inbounds %struct.BMesh, ptr %63, i64 0, i32 32
  %65 = load ptr, ptr %64, align 8, !tbaa !147
  %66 = icmp eq ptr %65, null
  br i1 %66, label %92, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.BMEditSelection, ptr %65, i64 0, i32 3
  %69 = load i8, ptr %68, align 8, !tbaa !144
  %70 = icmp eq i8 %69, 1
  br i1 %70, label %71, label %92

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.BMEditSelection, ptr %65, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !146
  %74 = getelementptr inbounds %struct.BMHeader, ptr %73, i64 0, i32 3
  %75 = load i8, ptr %74, align 1, !tbaa !70
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %71
  %79 = icmp eq i8 %13, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %78
  %81 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull @.str.438, i32 noundef 1, ptr noundef %73) #11
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %80, %78
  %84 = getelementptr inbounds %struct.BMVert, ptr %73, i64 0, i32 2
  %85 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull @.str.437, i32 noundef 1, ptr noundef nonnull %84) #11
  %86 = icmp ne i8 %85, 0
  %87 = zext i1 %86 to i8
  br label %92

88:                                               ; preds = %2
  %89 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %7, ptr noundef %1, ptr noundef nonnull @.str.413, i32 noundef 1) #11
  %90 = icmp ne i8 %89, 0
  %91 = zext i1 %90 to i8
  br label %92

92:                                               ; preds = %83, %80, %71, %67, %62, %57, %54, %45, %41, %36, %88, %2, %34, %14
  %93 = phi i8 [ 0, %2 ], [ %35, %34 ], [ %15, %14 ], [ %91, %88 ], [ 0, %41 ], [ 0, %36 ], [ 0, %45 ], [ 0, %54 ], [ %61, %57 ], [ 0, %67 ], [ 0, %62 ], [ 0, %71 ], [ 0, %80 ], [ %87, %83 ]
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  call void @EDBM_update_generic(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %96

96:                                               ; preds = %92, %95
  %97 = phi i32 [ 4, %95 ], [ 2, %92 ]
  ret i32 %97
}

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @merge_type_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store ptr null, ptr %5, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !tbaa !102
  %7 = icmp eq ptr %0, null
  br i1 %7, label %56, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef nonnull %0) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %56, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !148
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %56

15:                                               ; preds = %11
  %16 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %9) #11
  %17 = getelementptr inbounds %struct.BMEditMesh, ptr %16, i64 0, i32 12
  %18 = load i16, ptr %17, align 4, !tbaa !54
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %54, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %16, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct.BMesh, ptr %22, i64 0, i32 32
  %24 = load ptr, ptr %23, align 8, !tbaa !147
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.BMesh, ptr %22, i64 0, i32 32, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !143
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.BMEditSelection, ptr %24, i64 0, i32 3
  %32 = load i8, ptr %31, align 8, !tbaa !144
  %33 = icmp eq i8 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.BMEditSelection, ptr %28, i64 0, i32 3
  %36 = load i8, ptr %35, align 8, !tbaa !144
  %37 = icmp eq i8 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @merge_type_items, i32 noundef 6) #11
  br label %52

39:                                               ; preds = %34, %30, %26
  br i1 %25, label %44, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.BMEditSelection, ptr %24, i64 0, i32 3
  %42 = load i8, ptr %41, align 8, !tbaa !144
  %43 = icmp eq i8 %42, 1
  br i1 %43, label %52, label %44

44:                                               ; preds = %21, %40, %39
  %45 = getelementptr inbounds %struct.BMesh, ptr %22, i64 0, i32 32, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !143
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.BMEditSelection, ptr %46, i64 0, i32 3
  %50 = load i8, ptr %49, align 8, !tbaa !144
  %51 = icmp eq i8 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %40, %38
  %53 = phi i32 [ 1, %38 ], [ 6, %40 ], [ 1, %48 ]
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @merge_type_items, i32 noundef %53) #11
  br label %54

54:                                               ; preds = %52, %44, %48, %15
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @merge_type_items, i32 noundef 3) #11
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @merge_type_items, i32 noundef 4) #11
  call void @RNA_enum_items_add_value(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @merge_type_items, i32 noundef 5) #11
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  store i8 1, ptr %3, align 1, !tbaa !69
  %55 = load ptr, ptr %5, align 8, !tbaa !105
  br label %56

56:                                               ; preds = %8, %11, %4, %54
  %57 = phi ptr [ %55, %54 ], [ @merge_type_items, %4 ], [ null, %11 ], [ null, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret ptr %57
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.170, float noundef 0x3F1A36E2E0000000, float noundef 0x3EB0C6F7A0000000, float noundef 5.000000e+01, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.172, float noundef 0x3EE4F8B580000000, float noundef 1.000000e+01) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.173, i32 noundef 0, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.174) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_remove_doubles_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.170) #11
  %9 = load ptr, ptr %6, align 8, !tbaa !48
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.173) #11
  %11 = load ptr, ptr %5, align 8, !tbaa !50
  %12 = load i32, ptr %11, align 8, !tbaa !80
  %13 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 12
  %14 = load i16, ptr %13, align 4, !tbaa !54
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %15, 2
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i8 8, i8 2
  %21 = select i1 %17, i8 %20, i8 1
  tail call void @BM_mesh_elem_hflag_enable_test(ptr noundef nonnull %11, i8 noundef zeroext %21, i8 noundef zeroext 16, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  %22 = and i32 %10, 255
  %23 = icmp eq i32 %22, 0
  %24 = fpext float %8 to double
  br i1 %23, label %30, label %25

25:                                               ; preds = %2
  %26 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.449, i32 noundef 1, double noundef %24) #11
  %27 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BMO_op_exec(ptr noundef %27, ptr noundef nonnull %3) #11
  %28 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #11
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %47, label %40

30:                                               ; preds = %2
  %31 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.450, i32 noundef 1, double noundef %24) #11
  %32 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BMO_op_exec(ptr noundef %32, ptr noundef nonnull %3) #11
  %33 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.451, ptr noundef nonnull %3, ptr noundef nonnull @.str.452) #11
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BMO_op_finish(ptr noundef %36, ptr noundef nonnull %3) #11
  br label %47

37:                                               ; preds = %30
  %38 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #11
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37, %25
  %41 = load ptr, ptr %5, align 8, !tbaa !50
  %42 = load i32, ptr %41, align 8, !tbaa !80
  %43 = sub nsw i32 %12, %42
  %44 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !100
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %45, i32 noundef 2, ptr noundef nonnull @.str.453, i32 noundef %43) #11
  %46 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BM_mesh_elem_hflag_enable_test(ptr noundef %46, i8 noundef zeroext %21, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 16) #11
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #11
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %47

47:                                               ; preds = %37, %25, %40, %35
  %48 = phi i32 [ 4, %40 ], [ 2, %35 ], [ 2, %25 ], [ 2, %37 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret i32 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_shape_propagate_to_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_shape_propagate_to_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.BMesh, ptr %9, i64 0, i32 24
  %11 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %10, i32 noundef 28) #11
  %12 = load ptr, ptr %8, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 24
  %14 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %13, i32 noundef 28) #11
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !100
  tail call void @BKE_report(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.454) #11
  br label %59

19:                                               ; preds = %2
  %20 = load ptr, ptr %8, align 8, !tbaa !50
  %21 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %21, align 4, !tbaa !62
  %22 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %22, align 8, !tbaa !64
  %23 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %23, align 8, !tbaa !65
  %24 = getelementptr inbounds %struct.BMesh, ptr %20, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !66
  store ptr %25, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %26 = load ptr, ptr %23, align 8, !tbaa !65
  %27 = call ptr %26(ptr noundef nonnull %3) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %59, label %29

29:                                               ; preds = %19
  %30 = icmp slt i32 %11, 1
  br label %31

31:                                               ; preds = %29, %55
  %32 = phi ptr [ %27, %29 ], [ %57, %55 ]
  %33 = getelementptr inbounds %struct.BMHeader, ptr %32, i64 0, i32 3
  %34 = load i8, ptr %33, align 1, !tbaa !70
  %35 = and i8 %34, 3
  %36 = icmp ne i8 %35, 1
  %37 = select i1 %36, i1 true, i1 %30
  br i1 %37, label %55, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 2
  %40 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 2, i64 1
  %41 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 2, i64 2
  br label %42

42:                                               ; preds = %38, %42
  %43 = phi i32 [ 0, %38 ], [ %53, %42 ]
  %44 = load ptr, ptr %8, align 8, !tbaa !50
  %45 = getelementptr inbounds %struct.BMesh, ptr %44, i64 0, i32 24
  %46 = load ptr, ptr %32, align 8, !tbaa !150
  %47 = call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %45, ptr noundef %46, i32 noundef 28, i32 noundef %43) #11
  %48 = load float, ptr %39, align 4, !tbaa !142
  store float %48, ptr %47, align 4, !tbaa !142
  %49 = load float, ptr %40, align 4, !tbaa !142
  %50 = getelementptr inbounds float, ptr %47, i64 1
  store float %49, ptr %50, align 4, !tbaa !142
  %51 = load float, ptr %41, align 4, !tbaa !142
  %52 = getelementptr inbounds float, ptr %47, i64 2
  store float %51, ptr %52, align 4, !tbaa !142
  %53 = add nuw nsw i32 %43, 1
  %54 = icmp eq i32 %53, %11
  br i1 %54, label %55, label %42, !llvm.loop !151

55:                                               ; preds = %42, %31
  %56 = load ptr, ptr %23, align 8, !tbaa !65
  %57 = call ptr %56(ptr noundef nonnull %3) #11
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %31, !llvm.loop !152

59:                                               ; preds = %55, %19, %16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  call void @EDBM_update_generic(ptr noundef nonnull %8, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_blend_from_shape(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.178, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.179, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.180, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_blend_from_shape_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 10
  store ptr @edbm_blend_from_shape_ui, ptr %5, align 8, !tbaa !153
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.181, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.183) #11
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @shape_itemf) #11
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #11
  %11 = load ptr, ptr %8, align 8, !tbaa !47
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.184, float noundef 1.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, float noundef -2.000000e+00, float noundef 2.000000e+00) #11
  %13 = load ptr, ptr %8, align 8, !tbaa !47
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.187, i32 noundef 1, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.189) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_blend_from_shape_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [3 x float], align 4
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  %8 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !154
  %10 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = tail call float @RNA_float_get(ptr noundef %13, ptr noundef nonnull @.str.184) #11
  %15 = load ptr, ptr %12, align 8, !tbaa !48
  %16 = tail call i32 @RNA_enum_get(ptr noundef %15, ptr noundef nonnull @.str.181) #11
  %17 = load ptr, ptr %12, align 8, !tbaa !48
  %18 = tail call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.187) #11
  %19 = load ptr, ptr %11, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 24
  %21 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %20, i32 noundef 28) #11
  %22 = icmp ne i32 %21, 0
  %23 = icmp sgt i32 %16, -1
  %24 = select i1 %22, i1 %23, i1 false
  %25 = icmp slt i32 %16, %21
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %105

27:                                               ; preds = %2
  %28 = icmp eq ptr %9, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.Key, ptr %9, i64 0, i32 6
  %31 = tail call ptr @BLI_findlink(ptr noundef nonnull %30, i32 noundef %16) #11
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi ptr [ %31, %29 ], [ null, %27 ]
  %34 = load ptr, ptr %11, align 8, !tbaa !50
  %35 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %35, align 4, !tbaa !62
  %36 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %36, align 8, !tbaa !64
  %37 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %37, align 8, !tbaa !65
  %38 = getelementptr inbounds %struct.BMesh, ptr %34, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !66
  store ptr %39, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %40 = load ptr, ptr %37, align 8, !tbaa !65
  %41 = call ptr %40(ptr noundef nonnull %3) #11
  %42 = icmp eq ptr %41, null
  br i1 %42, label %104, label %43

43:                                               ; preds = %32
  %44 = getelementptr inbounds float, ptr %4, i64 1
  %45 = getelementptr inbounds float, ptr %4, i64 2
  %46 = and i32 %18, 255
  %47 = icmp eq i32 %46, 0
  %48 = icmp eq ptr %33, null
  %49 = getelementptr inbounds %struct.KeyBlock, ptr %33, i64 0, i32 6
  br label %50

50:                                               ; preds = %43, %100
  %51 = phi ptr [ %41, %43 ], [ %102, %100 ]
  %52 = getelementptr inbounds %struct.BMHeader, ptr %51, i64 0, i32 3
  %53 = load i8, ptr %52, align 1, !tbaa !70
  %54 = and i8 %53, 3
  %55 = icmp eq i8 %54, 1
  br i1 %55, label %56, label %100

56:                                               ; preds = %50
  %57 = load ptr, ptr %11, align 8, !tbaa !50
  %58 = getelementptr inbounds %struct.BMesh, ptr %57, i64 0, i32 24
  %59 = load ptr, ptr %51, align 8, !tbaa !150
  %60 = call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %58, ptr noundef %59, i32 noundef 28, i32 noundef %16) #11
  %61 = load float, ptr %60, align 4, !tbaa !142
  store float %61, ptr %4, align 4, !tbaa !142
  %62 = getelementptr inbounds float, ptr %60, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !142
  store float %63, ptr %44, align 4, !tbaa !142
  %64 = getelementptr inbounds float, ptr %60, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !142
  store float %65, ptr %45, align 4, !tbaa !142
  br i1 %47, label %98, label %66

66:                                               ; preds = %56
  br i1 %48, label %85, label %67

67:                                               ; preds = %66
  %68 = load ptr, ptr %11, align 8, !tbaa !50
  %69 = getelementptr inbounds %struct.BMesh, ptr %68, i64 0, i32 24
  %70 = load ptr, ptr %51, align 8, !tbaa !150
  %71 = load i16, ptr %49, align 4, !tbaa !155
  %72 = sext i16 %71 to i32
  %73 = call ptr @CustomData_bmesh_get_n(ptr noundef nonnull %69, ptr noundef %70, i32 noundef 28, i32 noundef %72) #11
  %74 = load float, ptr %4, align 4, !tbaa !142
  %75 = load float, ptr %73, align 4, !tbaa !142
  %76 = fsub float %74, %75
  store float %76, ptr %4, align 4, !tbaa !142
  %77 = load float, ptr %44, align 4, !tbaa !142
  %78 = getelementptr inbounds float, ptr %73, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !142
  %80 = fsub float %77, %79
  store float %80, ptr %44, align 4, !tbaa !142
  %81 = load float, ptr %45, align 4, !tbaa !142
  %82 = getelementptr inbounds float, ptr %73, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !142
  %84 = fsub float %81, %83
  store float %84, ptr %45, align 4, !tbaa !142
  br label %85

85:                                               ; preds = %67, %66
  %86 = getelementptr inbounds %struct.BMVert, ptr %51, i64 0, i32 2
  %87 = load float, ptr %4, align 4, !tbaa !142
  %88 = load float, ptr %86, align 4, !tbaa !142
  %89 = call float @llvm.fmuladd.f32(float %87, float %14, float %88)
  store float %89, ptr %86, align 4, !tbaa !142
  %90 = load float, ptr %44, align 4, !tbaa !142
  %91 = getelementptr inbounds %struct.BMVert, ptr %51, i64 0, i32 2, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !142
  %93 = call float @llvm.fmuladd.f32(float %90, float %14, float %92)
  store float %93, ptr %91, align 4, !tbaa !142
  %94 = load float, ptr %45, align 4, !tbaa !142
  %95 = getelementptr inbounds %struct.BMVert, ptr %51, i64 0, i32 2, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !142
  %97 = call float @llvm.fmuladd.f32(float %94, float %14, float %96)
  store float %97, ptr %95, align 4, !tbaa !142
  br label %100

98:                                               ; preds = %56
  %99 = getelementptr inbounds %struct.BMVert, ptr %51, i64 0, i32 2
  call void @interp_v3_v3v3(ptr noundef nonnull %99, ptr noundef nonnull %99, ptr noundef nonnull %4, float noundef %14) #11
  br label %100

100:                                              ; preds = %85, %98, %50
  %101 = load ptr, ptr %37, align 8, !tbaa !65
  %102 = call ptr %101(ptr noundef nonnull %3) #11
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %50, !llvm.loop !157

104:                                              ; preds = %100, %32
  call void @EDBM_update_generic(ptr noundef nonnull %11, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  br label %105

105:                                              ; preds = %2, %104
  %106 = phi i32 [ 4, %104 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret i32 %106
}

; Function Attrs: nounwind uwtable
define internal void @edbm_blend_from_shape_ui(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !159
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !160
  call void @RNA_pointer_create(ptr noundef null, ptr noundef %13, ptr noundef %15, ptr noundef nonnull %3) #11
  %16 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !154
  call void @RNA_id_pointer_create(ptr noundef %17, ptr noundef nonnull %4) #11
  call void @uiItemPointerR(ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull @.str.181, ptr noundef nonnull %4, ptr noundef nonnull @.str.455, ptr noundef nonnull @.str.5, i32 noundef 176) #11
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull @.str.184, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull @.str.187, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @shape_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.EnumPropertyItem, align 8
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store ptr null, ptr %5, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !tbaa !102
  %9 = icmp eq ptr %8, null
  br i1 %9, label %49, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !148
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %49

14:                                               ; preds = %10
  %15 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %8) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %15, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 24
  %20 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %19, i32 noundef 28) #11
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %49, label %22

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) @__const.shape_itemf.tmp, i64 40, i1 false)
  %23 = load ptr, ptr %15, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.BMesh, ptr %23, i64 0, i32 24, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !161
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.EnumPropertyItem, ptr %7, i64 0, i32 1
  %29 = getelementptr inbounds %struct.EnumPropertyItem, ptr %7, i64 0, i32 3
  br label %30

30:                                               ; preds = %27, %41
  %31 = phi i64 [ 0, %27 ], [ %42, %41 ]
  %32 = phi ptr [ %23, %27 ], [ %43, %41 ]
  %33 = getelementptr inbounds %struct.BMesh, ptr %32, i64 0, i32 24
  %34 = load ptr, ptr %33, align 8, !tbaa !162
  %35 = getelementptr inbounds %struct.CustomDataLayer, ptr %34, i64 %31
  %36 = load i32, ptr %35, align 8, !tbaa !163
  %37 = icmp eq i32 %36, 28
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, ptr %6, align 4, !tbaa !102
  store i32 %39, ptr %7, align 8, !tbaa !165
  %40 = getelementptr inbounds %struct.CustomDataLayer, ptr %34, i64 %31, i32 8
  store ptr %40, ptr %28, align 8, !tbaa !167
  store ptr %40, ptr %29, align 8, !tbaa !168
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  br label %41

41:                                               ; preds = %30, %38
  %42 = add nuw nsw i64 %31, 1
  %43 = load ptr, ptr %15, align 8, !tbaa !50
  %44 = getelementptr inbounds %struct.BMesh, ptr %43, i64 0, i32 24, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !161
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %42, %46
  br i1 %47, label %30, label %48, !llvm.loop !169

48:                                               ; preds = %41, %22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #11
  br label %49

49:                                               ; preds = %48, %17, %14, %10, %4
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  store i8 1, ptr %3, align 1, !tbaa !69
  %50 = load ptr, ptr %5, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret ptr %50
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.193, float noundef 0x3F847AE140000000, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.5, float noundef -1.000000e+01, float noundef 1.000000e+01) #11
  tail call void @RNA_def_property_ui_range(ptr noundef %9, double noundef -1.000000e+01, double noundef 1.000000e+01, double noundef 1.000000e-01, i32 noundef 4) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_solidify_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !149
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = tail call float @RNA_float_get(ptr noundef %11, ptr noundef nonnull @.str.193) #11
  %13 = fpext float %12 to double
  %14 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.456, i32 noundef 1, double noundef %13) #11
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  call void @BMO_slot_buffer_hflag_disable(ptr noundef %9, ptr noundef nonnull %3, ptr noundef nonnull @.str.457, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  call void @BMO_op_exec(ptr noundef %9, ptr noundef nonnull %3) #11
  %17 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %9, ptr noundef nonnull %17, ptr noundef nonnull @.str.422, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  %18 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #11
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  call void @EDBM_update_generic(ptr noundef nonnull %8, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %21

21:                                               ; preds = %16, %2, %20
  %22 = phi i32 [ 4, %20 ], [ 2, %2 ], [ 2, %16 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret i32 %22
}

declare void @RNA_def_property_ui_range(ptr noundef, double noundef, double noundef, double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_knife_cut(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.194, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.195, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.196, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lines_invoke, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lines_modal, ptr %5, align 8, !tbaa !170
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_knife_cut_exec, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @EDBM_view3d_poll, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.35, ptr noundef nonnull @knife_items, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.5) #11
  %12 = load ptr, ptr %9, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_property(ptr noundef %12, ptr noundef nonnull @.str.197, i32 noundef 6, i32 noundef 0) #11
  tail call void @RNA_def_property_struct_runtime(ptr noundef %13, ptr noundef nonnull @RNA_OperatorMousePath) #11
  %14 = load ptr, ptr %9, align 8, !tbaa !47
  %15 = tail call ptr @RNA_def_int(ptr noundef %14, ptr noundef nonnull @.str.198, i32 noundef 9, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 2147483647) #11
  ret void
}

declare i32 @WM_gesture_lines_invoke(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @WM_gesture_lines_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_knife_cut_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMOperator, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %9 = tail call ptr @BKE_editmesh_from_object(ptr noundef %8) #11
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %5) #11
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = tail call i32 @RNA_int_get(ptr noundef %13, ptr noundef nonnull @.str.35) #11
  %15 = icmp eq ptr %8, null
  %16 = icmp eq ptr %11, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %346, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 30
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = icmp eq ptr %20, null
  br i1 %21, label %346, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !77
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !100
  tail call void @BKE_report(ptr noundef %28, i32 noundef 32, ptr noundef nonnull @.str.458) #11
  br label %346

29:                                               ; preds = %22
  %30 = load ptr, ptr %12, align 8, !tbaa !48
  %31 = tail call i32 @RNA_collection_length(ptr noundef %30, ptr noundef nonnull @.str.197) #11
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !100
  tail call void @BKE_report(ptr noundef %35, i32 noundef 32, ptr noundef nonnull @.str.459) #11
  br label %346

36:                                               ; preds = %29
  %37 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !105
  %38 = zext nneg i32 %31 to i64
  %39 = shl nuw nsw i64 %38, 3
  %40 = tail call ptr %37(i64 noundef %39, ptr noundef nonnull @__func__.edbm_knife_cut_exec) #11
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #11
  %41 = load ptr, ptr %12, align 8, !tbaa !48
  call void @RNA_collection_begin(ptr noundef %41, ptr noundef nonnull @.str.197, ptr noundef nonnull %6) #11
  %42 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !171
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %47 = getelementptr inbounds [2 x float], ptr %40, i64 %38
  br label %48

48:                                               ; preds = %45, %48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %46, i64 24, i1 false), !tbaa.struct !175
  call void @RNA_float_get_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.460, ptr noundef nonnull %47) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  call void @RNA_property_collection_next(ptr noundef nonnull %6) #11
  %49 = load i32, ptr %42, align 8, !tbaa !171
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %48, !llvm.loop !176

51:                                               ; preds = %48, %36
  call void @RNA_property_collection_end(ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #11
  %52 = load ptr, ptr %19, align 8, !tbaa !56
  call void @ED_view3d_init_mats_rv3d(ptr noundef %8, ptr noundef %52) #11
  %53 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !105
  %54 = load i32, ptr %10, align 8, !tbaa !80
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 3
  %57 = call ptr %53(i64 noundef %56, ptr noundef nonnull @__func__.edbm_knife_cut_exec) #11
  %58 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %58, align 4, !tbaa !62
  %59 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %59, align 8, !tbaa !64
  %60 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %60, align 8, !tbaa !65
  %61 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !66
  store ptr %62, ptr %4, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #11
  %63 = load ptr, ptr %60, align 8, !tbaa !65
  %64 = call ptr %63(ptr noundef nonnull %4) #11
  %65 = icmp eq ptr %64, null
  br i1 %65, label %82, label %66

66:                                               ; preds = %51, %75
  %67 = phi ptr [ %79, %75 ], [ %64, %51 ]
  %68 = phi ptr [ %77, %75 ], [ %57, %51 ]
  %69 = phi i32 [ %80, %75 ], [ 0, %51 ]
  %70 = getelementptr inbounds %struct.BMVert, ptr %67, i64 0, i32 2
  %71 = call i32 @ED_view3d_project_float_object(ptr noundef %11, ptr noundef nonnull %70, ptr noundef %68, i32 noundef 4) #11
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %66
  store float 0x47EFFFFFE0000000, ptr %68, align 4, !tbaa !142
  %74 = getelementptr inbounds float, ptr %68, i64 1
  store float 0x47EFFFFFE0000000, ptr %74, align 4, !tbaa !142
  br label %75

75:                                               ; preds = %73, %66
  %76 = getelementptr inbounds %struct.BMHeader, ptr %67, i64 0, i32 1
  store i32 %69, ptr %76, align 8, !tbaa !177
  %77 = getelementptr inbounds [2 x float], ptr %68, i64 1
  %78 = load ptr, ptr %60, align 8, !tbaa !65
  %79 = call ptr %78(ptr noundef nonnull %4) #11
  %80 = add nuw nsw i32 %69, 1
  %81 = icmp eq ptr %79, null
  br i1 %81, label %82, label %66, !llvm.loop !178

82:                                               ; preds = %75, %51
  %83 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 7
  %84 = load i8, ptr %83, align 4, !tbaa !179
  %85 = and i8 %84, -2
  store i8 %85, ptr %83, align 4, !tbaa !179
  %86 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.461) #11
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %89(ptr noundef %40) #11
  %90 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %90(ptr noundef %57) #11
  br label %346

91:                                               ; preds = %82
  %92 = call ptr @BMO_slot_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.462) #11
  store i8 2, ptr %58, align 4, !tbaa !62
  store ptr @bmiter__elem_of_mesh_begin, ptr %59, align 8, !tbaa !64
  store ptr @bmiter__elem_of_mesh_step, ptr %60, align 8, !tbaa !65
  %93 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 10
  %94 = load ptr, ptr %93, align 8, !tbaa !95
  store ptr %94, ptr %4, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #11
  %95 = load ptr, ptr %60, align 8, !tbaa !65
  %96 = call ptr %95(ptr noundef nonnull %4) #11
  %97 = icmp eq ptr %96, null
  br i1 %97, label %340, label %98

98:                                               ; preds = %91
  %99 = and i32 %14, 255
  %100 = icmp eq i32 %99, 3
  %101 = and i32 %14, 65534
  %102 = icmp eq i32 %101, 2
  %103 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 22
  %104 = call i32 @llvm.smax.i32(i32 %31, i32 1)
  %105 = call i32 @llvm.smax.i32(i32 %31, i32 1)
  %106 = zext nneg i32 %104 to i64
  %107 = zext nneg i32 %105 to i64
  br label %108

108:                                              ; preds = %98, %328
  %109 = phi ptr [ %96, %98 ], [ %338, %328 ]
  %110 = getelementptr inbounds %struct.BMHeader, ptr %109, i64 0, i32 3
  %111 = load i8, ptr %110, align 1, !tbaa !70
  %112 = and i8 %111, 1
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %328, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.BMEdge, ptr %109, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !107
  %117 = getelementptr inbounds %struct.BMHeader, ptr %116, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !177
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [2 x float], ptr %57, i64 %119
  %121 = getelementptr inbounds %struct.BMEdge, ptr %109, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !108
  %123 = getelementptr inbounds %struct.BMHeader, ptr %122, i64 0, i32 1
  %124 = load i32, ptr %123, align 8, !tbaa !177
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [2 x float], ptr %57, i64 %125
  %127 = load float, ptr %120, align 4, !tbaa !142
  %128 = fcmp une float %127, 0x47EFFFFFE0000000
  br i1 %128, label %129, label %328

129:                                              ; preds = %114
  %130 = load float, ptr %126, align 4, !tbaa !142
  %131 = fcmp une float %130, 0x47EFFFFFE0000000
  br i1 %131, label %132, label %328

132:                                              ; preds = %129
  %133 = getelementptr inbounds float, ptr %120, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !142
  %135 = getelementptr inbounds float, ptr %126, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !142
  %137 = fsub float %130, %127
  %138 = fcmp une float %137, 0.000000e+00
  br i1 %138, label %139, label %146

139:                                              ; preds = %132
  %140 = fsub float %136, %134
  %141 = fdiv float %140, %137
  %142 = fneg float %127
  %143 = fmul float %136, %142
  %144 = call float @llvm.fmuladd.f32(float %130, float %134, float %143)
  %145 = fdiv float %144, %137
  br label %146

146:                                              ; preds = %139, %132
  %147 = phi float [ %141, %139 ], [ 1.000000e+05, %132 ]
  %148 = phi float [ %145, %139 ], [ %130, %132 ]
  br i1 %100, label %184, label %152

149:                                              ; preds = %180
  %150 = add nuw nsw i64 %153, 1
  %151 = icmp eq i64 %150, %106
  br i1 %151, label %184, label %152, !llvm.loop !180

152:                                              ; preds = %146, %149
  %153 = phi i64 [ %150, %149 ], [ 0, %146 ]
  %154 = phi float [ %166, %149 ], [ 0.000000e+00, %146 ]
  %155 = phi float [ %168, %149 ], [ 0.000000e+00, %146 ]
  %156 = icmp eq i64 %153, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = getelementptr inbounds [2 x float], ptr %40, i64 %153
  %159 = load float, ptr %158, align 4, !tbaa !142
  %160 = getelementptr inbounds [2 x float], ptr %40, i64 %153, i64 1
  %161 = load float, ptr %160, align 4, !tbaa !142
  br label %162

162:                                              ; preds = %157, %152
  %163 = phi float [ %161, %157 ], [ %155, %152 ]
  %164 = phi float [ %159, %157 ], [ %154, %152 ]
  %165 = getelementptr inbounds [2 x float], ptr %40, i64 %153
  %166 = load float, ptr %165, align 4, !tbaa !142
  %167 = getelementptr inbounds [2 x float], ptr %40, i64 %153, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !142
  %169 = fcmp oeq float %164, %127
  %170 = fcmp oeq float %163, %134
  %171 = select i1 %169, i1 %170, i1 false
  br i1 %171, label %322, label %172

172:                                              ; preds = %162
  %173 = fcmp oeq float %166, %127
  %174 = fcmp oeq float %168, %134
  %175 = select i1 %173, i1 %174, i1 false
  br i1 %175, label %322, label %176

176:                                              ; preds = %172
  %177 = fcmp oeq float %164, %130
  %178 = fcmp oeq float %163, %136
  %179 = select i1 %177, i1 %178, i1 false
  br i1 %179, label %322, label %180

180:                                              ; preds = %176
  %181 = fcmp oeq float %166, %130
  %182 = fcmp oeq float %168, %136
  %183 = select i1 %181, i1 %182, i1 false
  br i1 %183, label %322, label %149

184:                                              ; preds = %149, %146
  %185 = phi float [ 0.000000e+00, %146 ], [ %168, %149 ]
  %186 = phi float [ 0.000000e+00, %146 ], [ %166, %149 ]
  %187 = fcmp une float %147, 1.000000e+05
  %188 = fneg float %147
  %189 = fcmp ogt float %127, %130
  %190 = select i1 %189, float %127, float %130
  %191 = fadd float %190, 0x3F50624DE0000000
  %192 = fcmp olt float %127, %130
  %193 = select i1 %192, float %127, float %130
  %194 = fadd float %193, 0xBF50624DE0000000
  %195 = fcmp ogt float %134, %136
  %196 = select i1 %195, float %134, float %136
  %197 = fadd float %196, 0x3F50624DE0000000
  %198 = fcmp olt float %134, %136
  %199 = select i1 %198, float %134, float %136
  %200 = fadd float %199, 0xBF50624DE0000000
  %201 = fcmp oeq float %147, 1.000000e+05
  br label %202

202:                                              ; preds = %184, %319
  %203 = phi i64 [ 0, %184 ], [ %320, %319 ]
  %204 = phi float [ %186, %184 ], [ %217, %319 ]
  %205 = phi float [ %185, %184 ], [ %219, %319 ]
  %206 = phi float [ 0.000000e+00, %184 ], [ %223, %319 ]
  %207 = icmp eq i64 %203, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %202
  %209 = getelementptr inbounds [2 x float], ptr %40, i64 %203
  %210 = load float, ptr %209, align 4, !tbaa !142
  %211 = getelementptr inbounds [2 x float], ptr %40, i64 %203, i64 1
  %212 = load float, ptr %211, align 4, !tbaa !142
  br label %213

213:                                              ; preds = %208, %202
  %214 = phi float [ %212, %208 ], [ %205, %202 ]
  %215 = phi float [ %210, %208 ], [ %204, %202 ]
  %216 = getelementptr inbounds [2 x float], ptr %40, i64 %203
  %217 = load float, ptr %216, align 4, !tbaa !142
  %218 = getelementptr inbounds [2 x float], ptr %40, i64 %203, i64 1
  %219 = load float, ptr %218, align 4, !tbaa !142
  %220 = call float @llvm.fmuladd.f32(float %188, float %217, float %219)
  %221 = fsub float %220, %148
  %222 = fsub float %130, %217
  %223 = select i1 %187, float %221, float %222
  %224 = select i1 %207, float %223, float %206
  %225 = fmul float %223, %224
  %226 = fcmp ugt float %225, 0.000000e+00
  br i1 %226, label %319, label %227

227:                                              ; preds = %213
  %228 = fsub float %217, %215
  %229 = fcmp une float %228, 0.000000e+00
  br i1 %229, label %230, label %237

230:                                              ; preds = %227
  %231 = fsub float %219, %214
  %232 = fdiv float %231, %228
  %233 = fneg float %215
  %234 = fmul float %219, %233
  %235 = call float @llvm.fmuladd.f32(float %217, float %214, float %234)
  %236 = fdiv float %235, %228
  br label %237

237:                                              ; preds = %230, %227
  %238 = phi float [ %236, %230 ], [ %217, %227 ]
  %239 = phi float [ %232, %230 ], [ 1.000000e+05, %227 ]
  %240 = fcmp oeq float %239, %147
  br i1 %240, label %241, label %262

241:                                              ; preds = %237
  %242 = fcmp ogt float %215, %217
  %243 = select i1 %242, float %215, float %217
  %244 = fcmp olt float %215, %217
  %245 = select i1 %244, float %215, float %217
  %246 = fcmp olt float %191, %243
  %247 = select i1 %246, float %191, float %243
  %248 = fcmp ogt float %194, %245
  %249 = select i1 %248, float %194, float %245
  %250 = fadd float %247, %249
  %251 = fmul float %250, 5.000000e-01
  %252 = fcmp ogt float %214, %219
  %253 = select i1 %252, float %214, float %219
  %254 = fcmp olt float %214, %219
  %255 = select i1 %254, float %214, float %219
  %256 = fcmp olt float %197, %253
  %257 = select i1 %256, float %197, float %253
  %258 = fcmp ogt float %200, %255
  %259 = select i1 %258, float %200, float %255
  %260 = fadd float %257, %259
  %261 = fmul float %260, 5.000000e-01
  br label %277

262:                                              ; preds = %237
  br i1 %201, label %263, label %265

263:                                              ; preds = %262
  %264 = call float @llvm.fmuladd.f32(float %239, float %130, float %238)
  br label %277

265:                                              ; preds = %262
  %266 = fcmp oeq float %239, 1.000000e+05
  br i1 %266, label %267, label %269

267:                                              ; preds = %265
  %268 = call float @llvm.fmuladd.f32(float %147, float %217, float %148)
  br label %277

269:                                              ; preds = %265
  %270 = fsub float %238, %148
  %271 = fsub float %147, %239
  %272 = fdiv float %270, %271
  %273 = fneg float %239
  %274 = fmul float %148, %273
  %275 = call float @llvm.fmuladd.f32(float %238, float %147, float %274)
  %276 = fdiv float %275, %271
  br label %277

277:                                              ; preds = %269, %267, %263, %241
  %278 = phi float [ %251, %241 ], [ %130, %263 ], [ %217, %267 ], [ %272, %269 ]
  %279 = phi float [ %261, %241 ], [ %264, %263 ], [ %268, %267 ], [ %276, %269 ]
  %280 = fcmp ult float %278, %194
  %281 = fcmp ugt float %278, %191
  %282 = or i1 %280, %281
  %283 = fcmp ugt float %279, %197
  %284 = select i1 %282, i1 true, i1 %283
  %285 = fcmp ult float %279, %200
  %286 = select i1 %284, i1 true, i1 %285
  br i1 %286, label %319, label %287

287:                                              ; preds = %277
  br i1 %100, label %308, label %288

288:                                              ; preds = %287
  %289 = fadd float %127, 0.000000e+00
  %290 = fcmp ugt float %278, %289
  %291 = fcmp ult float %278, %127
  %292 = or i1 %290, %291
  %293 = fadd float %134, 0.000000e+00
  %294 = fcmp ugt float %279, %293
  %295 = select i1 %292, i1 true, i1 %294
  %296 = fcmp ult float %279, %134
  %297 = select i1 %295, i1 true, i1 %296
  br i1 %297, label %298, label %322

298:                                              ; preds = %288
  %299 = fadd float %130, 0.000000e+00
  %300 = fcmp ugt float %278, %299
  %301 = fcmp ult float %278, %130
  %302 = or i1 %300, %301
  %303 = fadd float %136, 0.000000e+00
  %304 = fcmp ugt float %279, %303
  %305 = select i1 %302, i1 true, i1 %304
  %306 = fcmp ult float %279, %136
  %307 = select i1 %305, i1 true, i1 %306
  br i1 %307, label %308, label %322

308:                                              ; preds = %298, %287
  %309 = fcmp ole float %147, 1.000000e+00
  %310 = fcmp oge float %147, -1.000000e+00
  %311 = and i1 %309, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %308
  %313 = fsub float %278, %127
  %314 = fdiv float %313, %137
  br label %322

315:                                              ; preds = %308
  %316 = fsub float %279, %134
  %317 = fsub float %136, %134
  %318 = fdiv float %316, %317
  br label %322

319:                                              ; preds = %277, %213
  %320 = add nuw nsw i64 %203, 1
  %321 = icmp eq i64 %320, %107
  br i1 %321, label %322, label %202, !llvm.loop !181

322:                                              ; preds = %176, %180, %162, %172, %319, %298, %288, %312, %315
  %323 = phi float [ %314, %312 ], [ %318, %315 ], [ 0.000000e+00, %288 ], [ 0.000000e+00, %298 ], [ 0.000000e+00, %319 ], [ 0.000000e+00, %172 ], [ 0.000000e+00, %162 ], [ 0.000000e+00, %180 ], [ 0.000000e+00, %176 ]
  %324 = fcmp oeq float %323, 0.000000e+00
  %325 = select i1 %324, i1 true, i1 %102
  br i1 %325, label %328, label %326

326:                                              ; preds = %322
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr null, ptr %3, align 8
  store float %323, ptr %3, align 8, !tbaa !69
  %327 = load ptr, ptr %3, align 8, !tbaa !69
  call void @BMO_slot_map_insert(ptr noundef nonnull %5, ptr noundef %92, ptr noundef nonnull %109, ptr noundef %327) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  br label %328

328:                                              ; preds = %114, %129, %326, %322, %108
  %329 = getelementptr inbounds %struct.BMEdge, ptr %109, i64 0, i32 1
  %330 = load ptr, ptr %329, align 8, !tbaa !182
  %331 = load i32, ptr %103, align 8, !tbaa !183
  %332 = sext i32 %331 to i64
  %333 = getelementptr %struct.BMFlagLayer, ptr %330, i64 %332
  %334 = getelementptr %struct.BMFlagLayer, ptr %333, i64 -1
  %335 = load i16, ptr %334, align 2, !tbaa !184
  %336 = and i16 %335, -2
  store i16 %336, ptr %334, align 2, !tbaa !184
  %337 = load ptr, ptr %60, align 8, !tbaa !65
  %338 = call ptr %337(ptr noundef nonnull %4) #11
  %339 = icmp eq ptr %338, null
  br i1 %339, label %340, label %108, !llvm.loop !186

340:                                              ; preds = %328, %91
  %341 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %341(ptr noundef %57) #11
  %342 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %342(ptr noundef %40) #11
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull @.str.427, i8 noundef zeroext 2, i16 noundef signext 1) #11
  call void @BMO_slot_int_set(ptr noundef nonnull %5, ptr noundef nonnull @.str.463, i32 noundef 1) #11
  call void @BMO_slot_int_set(ptr noundef nonnull %5, ptr noundef nonnull @.str.464, i32 noundef 3) #11
  call void @BMO_slot_bool_set(ptr noundef nonnull %5, ptr noundef nonnull @.str.465, i8 noundef zeroext 0) #11
  call void @BMO_slot_bool_set(ptr noundef nonnull %5, ptr noundef nonnull @.str.466, i8 noundef zeroext 0) #11
  call void @BMO_slot_float_set(ptr noundef nonnull %5, ptr noundef nonnull @.str.467, float noundef 0.000000e+00) #11
  call void @BMO_op_exec(ptr noundef nonnull %10, ptr noundef nonnull %5) #11
  %343 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef %1, i8 noundef zeroext 1) #11
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %340
  call void @EDBM_update_generic(ptr noundef nonnull %9, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %346

346:                                              ; preds = %340, %2, %18, %345, %88, %33, %26
  %347 = phi i32 [ 2, %26 ], [ 2, %33 ], [ 4, %345 ], [ 2, %88 ], [ 2, %18 ], [ 2, %2 ], [ 2, %340 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret i32 %347
}

declare i32 @EDBM_view3d_poll(ptr noundef) #2

declare ptr @RNA_def_property(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_def_property_struct_runtime(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_separate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.200, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.201, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.202, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_separate_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.35, ptr noundef nonnull @prop_separate_types, i32 noundef 0, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.5) #11
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !76
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_separate_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.35) #11
  %9 = tail call i32 @ED_operator_editmesh(ptr noundef %0) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %50, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @CTX_data_active_base(ptr noundef %0) #11
  %13 = getelementptr inbounds %struct.Base, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !187
  %15 = tail call ptr @BKE_editmesh_from_object(ptr noundef %14) #11
  switch i32 %8, label %42 [
    i32 0, label %16
    i32 1, label %36
    i32 2, label %39
  ]

16:                                               ; preds = %11
  %17 = load ptr, ptr %15, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !77
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !78
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !79
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !100
  tail call void @BKE_report(ptr noundef %31, i32 noundef 32, ptr noundef nonnull @.str.474) #11
  br label %46

32:                                               ; preds = %25, %21, %16
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %17, i8 noundef zeroext 11, i8 noundef zeroext 16, i8 noundef zeroext 0) #11
  tail call void @BM_mesh_elem_hflag_enable_test(ptr noundef %17, i8 noundef zeroext 11, i8 noundef zeroext 16, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1) #11
  %33 = tail call fastcc ptr @mesh_separate_tagged(ptr noundef %4, ptr noundef %5, ptr noundef %12, ptr noundef %17)
  %34 = icmp ne ptr %33, null
  %35 = zext i1 %34 to i8
  br label %42

36:                                               ; preds = %11
  %37 = load ptr, ptr %15, align 8, !tbaa !50
  %38 = tail call fastcc zeroext i8 @mesh_separate_material(ptr noundef %4, ptr noundef %5, ptr noundef %12, ptr noundef %37), !range !141
  br label %42

39:                                               ; preds = %11
  %40 = load ptr, ptr %15, align 8, !tbaa !50
  %41 = tail call fastcc zeroext i8 @mesh_separate_loose(ptr noundef %4, ptr noundef %5, ptr noundef %12, ptr noundef %40), !range !141
  br label %42

42:                                               ; preds = %11, %36, %39, %32
  %43 = phi i8 [ %35, %32 ], [ %38, %36 ], [ %41, %39 ], [ 0, %11 ]
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @EDBM_update_generic(ptr noundef %15, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %46

46:                                               ; preds = %42, %45, %29
  %47 = phi i1 [ false, %29 ], [ true, %45 ], [ true, %42 ]
  %48 = phi i8 [ 0, %29 ], [ %43, %45 ], [ %43, %42 ]
  %49 = zext nneg i8 %48 to i32
  br i1 %47, label %94, label %98

50:                                               ; preds = %2
  %51 = icmp eq i32 %8, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %54 = load ptr, ptr %53, align 8, !tbaa !100
  tail call void @BKE_report(ptr noundef %54, i32 noundef 32, ptr noundef nonnull @.str.475) #11
  br label %98

55:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %56 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #11
  %57 = load ptr, ptr %3, align 8, !tbaa !105
  %58 = icmp eq ptr %57, null
  br i1 %58, label %92, label %59

59:                                               ; preds = %55, %88
  %60 = phi ptr [ %90, %88 ], [ %57, %55 ]
  %61 = phi i32 [ %89, %88 ], [ 0, %55 ]
  %62 = getelementptr inbounds %struct.CollectionPointerLink, ptr %60, i64 0, i32 2, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !189
  %64 = getelementptr inbounds %struct.Base, ptr %63, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !187
  %66 = getelementptr inbounds %struct.Object, ptr %65, i64 0, i32 3
  %67 = load i16, ptr %66, align 8, !tbaa !148
  %68 = icmp eq i16 %67, 1
  br i1 %68, label %69, label %88

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.Object, ptr %65, i64 0, i32 19
  %71 = load ptr, ptr %70, align 8, !tbaa !115
  %72 = getelementptr inbounds %struct.ID, ptr %71, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !191
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = call ptr @BM_mesh_create(ptr noundef nonnull @bm_mesh_allocsize_default) #11
  call void @BM_mesh_bm_from_me(ptr noundef %76, ptr noundef %71, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0) #11
  switch i32 %8, label %81 [
    i32 1, label %77
    i32 2, label %79
  ]

77:                                               ; preds = %75
  %78 = call fastcc zeroext i8 @mesh_separate_material(ptr noundef %4, ptr noundef %5, ptr noundef %63, ptr noundef %76), !range !141
  br label %81

79:                                               ; preds = %75
  %80 = call fastcc zeroext i8 @mesh_separate_loose(ptr noundef %4, ptr noundef %5, ptr noundef %63, ptr noundef %76), !range !141
  br label %81

81:                                               ; preds = %75, %79, %77
  %82 = phi i8 [ %78, %77 ], [ %80, %79 ], [ 0, %75 ]
  %83 = zext nneg i8 %82 to i32
  %84 = icmp eq i8 %82, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  call void @BM_mesh_bm_to_me(ptr noundef %76, ptr noundef %71, i8 noundef zeroext 0) #11
  call void @DAG_id_tag_update(ptr noundef %71, i16 noundef signext 2) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %71) #11
  br label %86

86:                                               ; preds = %85, %81
  call void @BM_mesh_free(ptr noundef %76) #11
  %87 = or i32 %61, %83
  br label %88

88:                                               ; preds = %69, %86, %59
  %89 = phi i32 [ %61, %59 ], [ %87, %86 ], [ %61, %69 ]
  %90 = load ptr, ptr %60, align 8, !tbaa !105
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %59, !llvm.loop !192

92:                                               ; preds = %88, %55
  %93 = phi i32 [ 0, %55 ], [ %89, %88 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %94

94:                                               ; preds = %46, %92
  %95 = phi i32 [ %49, %46 ], [ %93, %92 ]
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  call void @DAG_relations_tag_update(ptr noundef %4) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef null) #11
  br label %98

98:                                               ; preds = %94, %46, %97, %52
  %99 = phi i32 [ 4, %97 ], [ 2, %46 ], [ 2, %52 ], [ 2, %94 ]
  ret i32 %99
}

declare i32 @ED_operator_scene_editable(ptr noundef) #2

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.206, i32 noundef 1, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.208) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_fill_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.206) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  %9 = and i32 %8, 255
  %10 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.482, i32 noundef 1, i32 noundef %9) #11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BMO_op_exec(ptr noundef %13, ptr noundef nonnull %3) #11
  %14 = load ptr, ptr %5, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %14, ptr noundef nonnull %15, ptr noundef nonnull @.str.422, i8 noundef zeroext 10, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  %16 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #11
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %19

19:                                               ; preds = %12, %2, %18
  %20 = phi i32 [ 4, %18 ], [ 2, %2 ], [ 2, %12 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret i32 %20
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.212, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.214, i32 noundef 1, i32 noundef 100) #11
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.215, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.214, i32 noundef -100, i32 noundef 100) #11
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268435456) #11
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.217, i32 noundef 0, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_fill_grid_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [2 x ptr], align 16
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [2 x ptr], align 16
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca [2 x i32], align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca %struct.ListBase, align 8
  %11 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %11) #11
  %12 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %13 = tail call ptr @BKE_editmesh_from_object(ptr noundef %12) #11
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  store i64 0, ptr %8, align 8
  %15 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 2, ptr %15, align 4, !tbaa !62
  %16 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %16, align 8, !tbaa !64
  %17 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %17, align 8, !tbaa !65
  %18 = getelementptr inbounds %struct.BMesh, ptr %14, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  store ptr %19, ptr %7, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #11
  %20 = load ptr, ptr %17, align 8, !tbaa !65
  %21 = call ptr %20(ptr noundef nonnull %7) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %48, label %23

23:                                               ; preds = %2, %44
  %24 = phi ptr [ %46, %44 ], [ %21, %2 ]
  %25 = getelementptr inbounds %struct.BMHeader, ptr %24, i64 0, i32 3
  %26 = load i8, ptr %25, align 1, !tbaa !70
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.BMEdge, ptr %24, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !88
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !101
  %36 = getelementptr inbounds %struct.BMHeader, ptr %35, i64 0, i32 3
  %37 = load i8, ptr %36, align 1, !tbaa !70
  %38 = lshr i8 %37, 3
  %39 = and i8 %38, 1
  %40 = zext nneg i8 %39 to i64
  %41 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !102
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4, !tbaa !102
  br label %44

44:                                               ; preds = %33, %29, %23
  %45 = load ptr, ptr %17, align 8, !tbaa !65
  %46 = call ptr %45(ptr noundef nonnull %7) #11
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %23, !llvm.loop !103

48:                                               ; preds = %44, %2
  %49 = load i32, ptr %8, align 8, !tbaa !102
  %50 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  %51 = load i32, ptr %50, align 4, !tbaa !102
  %52 = icmp ult i32 %49, %51
  %53 = zext i1 %52 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  %54 = load ptr, ptr %13, align 8, !tbaa !50
  %55 = getelementptr inbounds %struct.BMesh, ptr %54, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !81
  %57 = getelementptr inbounds %struct.BMesh, ptr %54, i64 0, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !82
  %59 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !48
  %61 = call i32 @RNA_boolean_get(ptr noundef %60, ptr noundef nonnull @.str.217) #11
  %62 = load ptr, ptr %59, align 8, !tbaa !48
  %63 = call ptr @RNA_struct_find_property(ptr noundef %62, ptr noundef nonnull @.str.212) #11
  %64 = load ptr, ptr %59, align 8, !tbaa !48
  %65 = call ptr @RNA_struct_find_property(ptr noundef %64, ptr noundef nonnull @.str.215) #11
  %66 = load ptr, ptr %13, align 8, !tbaa !50
  %67 = getelementptr inbounds %struct.BMesh, ptr %66, i64 0, i32 4
  %68 = load i32, ptr %67, align 8, !tbaa !77
  %69 = load ptr, ptr %59, align 8, !tbaa !48
  %70 = call zeroext i8 @RNA_property_is_set(ptr noundef %69, ptr noundef %63) #11
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %48
  %73 = load ptr, ptr %59, align 8, !tbaa !48
  %74 = call i32 @RNA_property_int_get(ptr noundef %73, ptr noundef %63) #11
  %75 = sdiv i32 %68, 2
  %76 = add nsw i32 %75, -1
  %77 = call i32 @llvm.smin.i32(i32 %74, i32 %76)
  br label %80

78:                                               ; preds = %48
  %79 = sdiv i32 %68, 4
  br label %80

80:                                               ; preds = %78, %72
  %81 = phi i32 [ %79, %78 ], [ %77, %72 ]
  %82 = load ptr, ptr %59, align 8, !tbaa !48
  %83 = call i32 @RNA_property_int_get(ptr noundef %82, ptr noundef %65) #11
  %84 = icmp eq i32 %68, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = srem i32 %83, %68
  %87 = add nsw i32 %86, %68
  %88 = srem i32 %87, %68
  br label %89

89:                                               ; preds = %80, %85
  %90 = phi i32 [ %88, %85 ], [ 0, %80 ]
  %91 = load ptr, ptr %13, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %92 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  store i8 2, ptr %92, align 4, !tbaa !62
  %93 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %93, align 8, !tbaa !64
  %94 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %94, align 8, !tbaa !65
  %95 = getelementptr inbounds %struct.BMesh, ptr %91, i64 0, i32 10
  %96 = load ptr, ptr %95, align 8, !tbaa !95
  store ptr %96, ptr %9, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #11
  %97 = load ptr, ptr %94, align 8, !tbaa !65
  %98 = call ptr %97(ptr noundef nonnull %9) #11
  %99 = icmp eq ptr %98, null
  br i1 %99, label %112, label %100

100:                                              ; preds = %89, %100
  %101 = phi ptr [ %110, %100 ], [ %98, %89 ]
  %102 = getelementptr inbounds %struct.BMHeader, ptr %101, i64 0, i32 3
  %103 = load i8, ptr %102, align 1, !tbaa !70
  %104 = and i8 %103, 1
  %105 = icmp eq i8 %104, 0
  %106 = or i8 %103, 16
  %107 = and i8 %103, -18
  %108 = select i1 %105, i8 %107, i8 %106
  store i8 %108, ptr %102, align 1, !tbaa !70
  %109 = load ptr, ptr %94, align 8, !tbaa !65
  %110 = call ptr %109(ptr noundef nonnull %9) #11
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %100, !llvm.loop !193

112:                                              ; preds = %100, %89
  %113 = call i32 @BM_mesh_edgeloops_find(ptr noundef %91, ptr noundef nonnull %10, ptr noundef nonnull @bm_edge_test_fill_grid_cb, ptr noundef %91) #11
  %114 = load ptr, ptr %10, align 8, !tbaa !194
  %115 = icmp eq i32 %113, 1
  br i1 %115, label %116, label %321

116:                                              ; preds = %112
  %117 = call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %114) #11
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %321, label %119

119:                                              ; preds = %116
  %120 = call i32 @BM_edgeloop_length_get(ptr noundef %114) #11
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %321

123:                                              ; preds = %119
  %124 = call i32 @BM_edgeloop_length_get(ptr noundef %114) #11
  %125 = call ptr @BM_edgeloop_verts_get(ptr noundef %114) #11
  %126 = call ptr @BM_mesh_active_vert_get(ptr noundef %91) #11
  %127 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !105
  %128 = sext i32 %124 to i64
  %129 = shl nsw i64 %128, 3
  %130 = call ptr %127(i64 noundef %129, ptr noundef nonnull @__func__.edbm_fill_grid_prepare) #11
  %131 = icmp eq ptr %126, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %123
  %133 = call ptr @BLI_findptr(ptr noundef %125, ptr noundef nonnull %126, i32 noundef 16) #11
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %193

135:                                              ; preds = %132, %123
  %136 = load ptr, ptr %125, align 8, !tbaa !105, !nonnull !195, !noundef !195
  %137 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %138 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %139 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %140 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 1
  br label %141

141:                                              ; preds = %135, %174
  %142 = phi ptr [ %136, %135 ], [ %188, %174 ]
  %143 = phi float [ -1.000000e+00, %135 ], [ %187, %174 ]
  %144 = phi ptr [ null, %135 ], [ %186, %174 ]
  %145 = getelementptr inbounds %struct.LinkData, ptr %142, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  store i8 4, ptr %137, align 4, !tbaa !62
  store ptr @bmiter__edge_of_vert_begin, ptr %138, align 8, !tbaa !64
  store ptr @bmiter__edge_of_vert_step, ptr %139, align 8, !tbaa !65
  store ptr %146, ptr %5, align 8, !tbaa !69
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %5) #11
  %147 = load ptr, ptr %139, align 8, !tbaa !65
  %148 = call ptr %147(ptr noundef nonnull %5) #11
  %149 = icmp eq ptr %148, null
  br i1 %149, label %174, label %150

150:                                              ; preds = %141, %169
  %151 = phi i32 [ %170, %169 ], [ 0, %141 ]
  %152 = phi ptr [ %172, %169 ], [ %148, %141 ]
  %153 = getelementptr inbounds %struct.BMHeader, ptr %152, i64 0, i32 3
  %154 = load i8, ptr %153, align 1, !tbaa !70
  %155 = and i8 %154, 16
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.BMEdge, ptr %152, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !107
  %160 = icmp eq ptr %159, %146
  %161 = getelementptr inbounds %struct.BMEdge, ptr %152, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !108
  %163 = icmp eq ptr %162, %146
  %164 = select i1 %163, ptr %159, ptr null
  %165 = select i1 %160, ptr %162, ptr %164
  %166 = add nsw i32 %151, 1
  %167 = sext i32 %151 to i64
  %168 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 %167
  store ptr %165, ptr %168, align 8, !tbaa !105
  br label %169

169:                                              ; preds = %157, %150
  %170 = phi i32 [ %166, %157 ], [ %151, %150 ]
  %171 = load ptr, ptr %139, align 8, !tbaa !65
  %172 = call ptr %171(ptr noundef nonnull %5) #11
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %150, !llvm.loop !198

174:                                              ; preds = %169, %141
  %175 = load ptr, ptr %6, align 16, !tbaa !105
  %176 = getelementptr inbounds %struct.BMVert, ptr %175, i64 0, i32 2
  %177 = getelementptr inbounds %struct.BMVert, ptr %146, i64 0, i32 2
  %178 = load ptr, ptr %140, align 8, !tbaa !105
  %179 = getelementptr inbounds %struct.BMVert, ptr %178, i64 0, i32 2
  %180 = call float @angle_v3v3v3(ptr noundef nonnull %176, ptr noundef nonnull %177, ptr noundef nonnull %179) #11
  %181 = fsub float 0x400921FB60000000, %180
  %182 = call float @llvm.fabs.f32(float %181)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  %183 = fcmp ogt float %182, %143
  %184 = icmp eq ptr %144, null
  %185 = select i1 %183, i1 true, i1 %184
  %186 = select i1 %185, ptr %142, ptr %144
  %187 = select i1 %185, float %182, float %143
  %188 = load ptr, ptr %142, align 8, !tbaa !105
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %141, !llvm.loop !199

190:                                              ; preds = %174
  %191 = getelementptr inbounds %struct.LinkData, ptr %186, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !196
  br label %193

193:                                              ; preds = %190, %132
  %194 = phi ptr [ %133, %132 ], [ %186, %190 ]
  %195 = phi ptr [ %126, %132 ], [ %192, %190 ]
  %196 = icmp eq i32 %90, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = call ptr @BLI_findlink(ptr noundef %125, i32 noundef %90) #11
  %199 = getelementptr inbounds %struct.LinkData, ptr %198, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !196
  br label %201

201:                                              ; preds = %197, %193
  %202 = phi ptr [ %198, %197 ], [ %194, %193 ]
  %203 = phi ptr [ %200, %197 ], [ %195, %193 ]
  call void @BLI_listbase_rotate_first(ptr noundef %125, ptr noundef %202) #11
  call void @BM_edgeloop_edges_get(ptr noundef %114, ptr noundef %130) #11
  br i1 %71, label %204, label %297

204:                                              ; preds = %201
  %205 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !105
  %206 = shl nsw i64 %128, 4
  %207 = call ptr %205(i64 noundef %206, ptr noundef nonnull @__func__.edbm_fill_grid_prepare) #11
  %208 = load ptr, ptr %125, align 8, !tbaa !105
  %209 = icmp eq ptr %208, null
  br i1 %209, label %264, label %210

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %212 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %213 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %214 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  br label %215

215:                                              ; preds = %210, %247
  %216 = phi i64 [ 0, %210 ], [ %261, %247 ]
  %217 = phi ptr [ %208, %210 ], [ %262, %247 ]
  %218 = getelementptr inbounds %struct.LinkData, ptr %217, i64 0, i32 2
  %219 = load ptr, ptr %218, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  store i8 4, ptr %211, align 4, !tbaa !62
  store ptr @bmiter__edge_of_vert_begin, ptr %212, align 8, !tbaa !64
  store ptr @bmiter__edge_of_vert_step, ptr %213, align 8, !tbaa !65
  store ptr %219, ptr %3, align 8, !tbaa !69
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %3) #11
  %220 = load ptr, ptr %213, align 8, !tbaa !65
  %221 = call ptr %220(ptr noundef nonnull %3) #11
  %222 = icmp eq ptr %221, null
  br i1 %222, label %247, label %223

223:                                              ; preds = %215, %242
  %224 = phi i32 [ %243, %242 ], [ 0, %215 ]
  %225 = phi ptr [ %245, %242 ], [ %221, %215 ]
  %226 = getelementptr inbounds %struct.BMHeader, ptr %225, i64 0, i32 3
  %227 = load i8, ptr %226, align 1, !tbaa !70
  %228 = and i8 %227, 16
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %242, label %230

230:                                              ; preds = %223
  %231 = getelementptr inbounds %struct.BMEdge, ptr %225, i64 0, i32 2
  %232 = load ptr, ptr %231, align 8, !tbaa !107
  %233 = icmp eq ptr %232, %219
  %234 = getelementptr inbounds %struct.BMEdge, ptr %225, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !108
  %236 = icmp eq ptr %235, %219
  %237 = select i1 %236, ptr %232, ptr null
  %238 = select i1 %233, ptr %235, ptr %237
  %239 = add nsw i32 %224, 1
  %240 = sext i32 %224 to i64
  %241 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 %240
  store ptr %238, ptr %241, align 8, !tbaa !105
  br label %242

242:                                              ; preds = %230, %223
  %243 = phi i32 [ %239, %230 ], [ %224, %223 ]
  %244 = load ptr, ptr %213, align 8, !tbaa !65
  %245 = call ptr %244(ptr noundef nonnull %3) #11
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %223, !llvm.loop !198

247:                                              ; preds = %242, %215
  %248 = load ptr, ptr %4, align 16, !tbaa !105
  %249 = getelementptr inbounds %struct.BMVert, ptr %248, i64 0, i32 2
  %250 = getelementptr inbounds %struct.BMVert, ptr %219, i64 0, i32 2
  %251 = load ptr, ptr %214, align 8, !tbaa !105
  %252 = getelementptr inbounds %struct.BMVert, ptr %251, i64 0, i32 2
  %253 = call float @angle_v3v3v3(ptr noundef nonnull %249, ptr noundef nonnull %250, ptr noundef nonnull %252) #11
  %254 = fsub float 0x400921FB60000000, %253
  %255 = call float @llvm.fabs.f32(float %254)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  %256 = getelementptr inbounds %struct.SortPointerByFloat, ptr %207, i64 %216
  store float %255, ptr %256, align 8, !tbaa !200
  %257 = getelementptr inbounds %struct.SortPointerByFloat, ptr %207, i64 %216, i32 1
  store ptr %219, ptr %257, align 8, !tbaa !202
  %258 = getelementptr inbounds %struct.BMHeader, ptr %219, i64 0, i32 3
  %259 = load i8, ptr %258, align 1, !tbaa !70
  %260 = and i8 %259, -17
  store i8 %260, ptr %258, align 1, !tbaa !70
  %261 = add nuw i64 %216, 1
  %262 = load ptr, ptr %217, align 8, !tbaa !105
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %215, !llvm.loop !203

264:                                              ; preds = %247, %204
  call void @qsort(ptr noundef %207, i64 noundef %128, i64 noundef 16, ptr noundef nonnull @BLI_sortutil_cmp_float_reverse) #11
  br label %268

265:                                              ; preds = %268
  %266 = sdiv i32 %124, 2
  %267 = icmp sgt i32 %124, 1
  br i1 %267, label %277, label %294

268:                                              ; preds = %264, %268
  %269 = phi i64 [ 0, %264 ], [ %275, %268 ]
  %270 = getelementptr inbounds %struct.SortPointerByFloat, ptr %207, i64 %269, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !202
  %272 = getelementptr inbounds %struct.BMHeader, ptr %271, i64 0, i32 3
  %273 = load i8, ptr %272, align 1, !tbaa !70
  %274 = or i8 %273, 16
  store i8 %274, ptr %272, align 1, !tbaa !70
  %275 = add nuw nsw i64 %269, 1
  %276 = icmp eq i64 %275, 4
  br i1 %276, label %265, label %268, !llvm.loop !204

277:                                              ; preds = %265, %277
  %278 = phi ptr [ %281, %277 ], [ %125, %265 ]
  %279 = phi i32 [ %290, %277 ], [ %81, %265 ]
  %280 = phi i32 [ %291, %277 ], [ 0, %265 ]
  %281 = load ptr, ptr %278, align 8, !tbaa !105
  %282 = getelementptr inbounds %struct.LinkData, ptr %281, i64 0, i32 2
  %283 = load ptr, ptr %282, align 8, !tbaa !196
  %284 = getelementptr inbounds %struct.BMHeader, ptr %283, i64 0, i32 3
  %285 = load i8, ptr %284, align 1, !tbaa !70
  %286 = and i8 %285, 16
  %287 = icmp ne i8 %286, 0
  %288 = icmp ne ptr %283, %203
  %289 = select i1 %287, i1 %288, i1 false
  %290 = select i1 %289, i32 %280, i32 %279
  %291 = add nuw nsw i32 %280, 1
  %292 = icmp eq i32 %291, %266
  %293 = select i1 %289, i1 true, i1 %292
  br i1 %293, label %294, label %277, !llvm.loop !205

294:                                              ; preds = %277, %265
  %295 = phi i32 [ %81, %265 ], [ %290, %277 ]
  %296 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %296(ptr noundef %207) #11
  br label %297

297:                                              ; preds = %294, %201
  %298 = phi i32 [ %295, %294 ], [ %81, %201 ]
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %319

300:                                              ; preds = %297
  %301 = sdiv i32 %124, 2
  %302 = sext i32 %301 to i64
  %303 = zext nneg i32 %298 to i64
  %304 = getelementptr ptr, ptr %130, i64 %302
  br label %305

305:                                              ; preds = %300, %305
  %306 = phi i64 [ 0, %300 ], [ %317, %305 ]
  %307 = getelementptr inbounds ptr, ptr %130, i64 %306
  %308 = load ptr, ptr %307, align 8, !tbaa !105
  %309 = getelementptr inbounds %struct.BMHeader, ptr %308, i64 0, i32 3
  %310 = load i8, ptr %309, align 1, !tbaa !70
  %311 = and i8 %310, -17
  store i8 %311, ptr %309, align 1, !tbaa !70
  %312 = getelementptr ptr, ptr %304, i64 %306
  %313 = load ptr, ptr %312, align 8, !tbaa !105
  %314 = getelementptr inbounds %struct.BMHeader, ptr %313, i64 0, i32 3
  %315 = load i8, ptr %314, align 1, !tbaa !70
  %316 = and i8 %315, -17
  store i8 %316, ptr %314, align 1, !tbaa !70
  %317 = add nuw nsw i64 %306, 1
  %318 = icmp eq i64 %317, %303
  br i1 %318, label %319, label %305, !llvm.loop !206

319:                                              ; preds = %305, %297
  %320 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %320(ptr noundef %130) #11
  br label %321

321:                                              ; preds = %112, %116, %119, %319
  %322 = phi i32 [ %298, %319 ], [ %81, %119 ], [ %81, %116 ], [ %81, %112 ]
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #11
  %323 = load ptr, ptr %59, align 8, !tbaa !48
  call void @RNA_property_int_set(ptr noundef %323, ptr noundef %63, i32 noundef %322) #11
  %324 = getelementptr inbounds %struct.BMEditMesh, ptr %13, i64 0, i32 13
  %325 = load i16, ptr %324, align 2, !tbaa !110
  %326 = sext i16 %325 to i32
  %327 = and i32 %61, 255
  %328 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef %1, ptr noundef nonnull @.str.483, i32 noundef 16, i32 noundef %326, i32 noundef %53, i32 noundef %327) #11
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %347, label %330

330:                                              ; preds = %321
  %331 = load ptr, ptr %13, align 8, !tbaa !50
  call void @BMO_op_exec(ptr noundef %331, ptr noundef nonnull %11) #11
  %332 = load ptr, ptr %13, align 8, !tbaa !50
  %333 = getelementptr inbounds %struct.BMesh, ptr %332, i64 0, i32 1
  %334 = load i32, ptr %333, align 4, !tbaa !81
  %335 = icmp eq i32 %56, %334
  br i1 %335, label %336, label %342

336:                                              ; preds = %330
  %337 = getelementptr inbounds %struct.BMesh, ptr %332, i64 0, i32 3
  %338 = load i32, ptr %337, align 4, !tbaa !82
  %339 = icmp eq i32 %58, %338
  br i1 %339, label %340, label %342

340:                                              ; preds = %336
  %341 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef %1, i8 noundef zeroext 1) #11
  br label %347

342:                                              ; preds = %336, %330
  %343 = getelementptr inbounds %struct.BMOperator, ptr %11, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %332, ptr noundef nonnull %343, ptr noundef nonnull @.str.415, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  %344 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef %1, i8 noundef zeroext 1) #11
  %345 = icmp eq i8 %344, 0
  br i1 %345, label %347, label %346

346:                                              ; preds = %342
  call void @EDBM_update_generic(ptr noundef nonnull %13, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %347

347:                                              ; preds = %342, %321, %346, %340
  %348 = phi i32 [ 2, %340 ], [ 4, %346 ], [ 2, %321 ], [ 2, %342 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %11) #11
  ret i32 %348
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.222, i32 noundef 4, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.224, i32 noundef 0, i32 noundef 100) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_fill_holes_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.222) #11
  %8 = tail call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.415, i8 noundef zeroext 1, ptr noundef nonnull @.str.484, i32 noundef 1, i32 noundef %7) #11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %11

11:                                               ; preds = %2, %10
  %12 = phi i32 [ 4, %10 ], [ 2, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_float_rotation(ptr noundef %8, ptr noundef nonnull @.str.71, i32 noundef 0, ptr noundef null, float noundef 0.000000e+00, float noundef 0x400921FB60000000, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, float noundef 0.000000e+00, float noundef 0x400921FB60000000) #11
  tail call void @RNA_def_property_float_default(ptr noundef %9, float noundef 0x400921FB60000000) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_beautify_fill_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.71) #11
  %9 = fcmp ult float %8, 0x400921FB60000000
  br i1 %9, label %10, label %41

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %11 = load ptr, ptr %5, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %12, align 4, !tbaa !62
  %13 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %14, align 8, !tbaa !65
  %15 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  store ptr %16, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %17 = load ptr, ptr %14, align 8, !tbaa !65
  %18 = call ptr %17(ptr noundef nonnull %3) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %10, %35
  %21 = phi ptr [ %38, %35 ], [ %18, %10 ]
  %22 = getelementptr inbounds %struct.BMHeader, ptr %21, i64 0, i32 3
  %23 = load i8, ptr %22, align 1, !tbaa !70
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = call float @BM_edge_calc_face_angle_ex(ptr noundef nonnull %21, float noundef 0x400921FB60000000) #11
  %28 = fcmp olt float %27, %8
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i8, ptr %22, align 1, !tbaa !70
  %31 = or i8 %30, 16
  br label %35

32:                                               ; preds = %20, %26
  %33 = load i8, ptr %22, align 1, !tbaa !70
  %34 = and i8 %33, -17
  br label %35

35:                                               ; preds = %29, %32
  %36 = phi i8 [ %31, %29 ], [ %34, %32 ]
  store i8 %36, ptr %22, align 1, !tbaa !70
  %37 = load ptr, ptr %14, align 8, !tbaa !65
  %38 = call ptr %37(ptr noundef nonnull %3) #11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %20, !llvm.loop !207

40:                                               ; preds = %35, %10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  br label %41

41:                                               ; preds = %2, %40
  %42 = phi i32 [ 16, %40 ], [ 1, %2 ]
  %43 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %5, ptr noundef %1, ptr noundef nonnull @.str.422, i8 noundef zeroext 1, ptr noundef nonnull @.str.485, i32 noundef 1, i32 noundef %42) #11
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  call void @EDBM_update_generic(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %46

46:                                               ; preds = %41, %45
  %47 = phi i32 [ 4, %45 ], [ 2, %41 ]
  ret i32 %47
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.215, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.240, float noundef -1.000000e+00, float noundef 1.000000e+00) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.241, i32 noundef 0, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.243) #11
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.244, ptr noundef nonnull @MESH_OT_poke.poke_center_modes, i32 noundef 0, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.246) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_poke_face_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.215) #11
  %9 = load ptr, ptr %6, align 8, !tbaa !48
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.241) #11
  %11 = load ptr, ptr %6, align 8, !tbaa !48
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.244) #11
  %13 = fpext float %8 to double
  %14 = and i32 %10, 255
  %15 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.486, i32 noundef 1, double noundef %13, i32 noundef %14, i32 noundef %12) #11
  %16 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BMO_op_exec(ptr noundef %16, ptr noundef nonnull %3) #11
  call void @EDBM_flag_disable_all(ptr noundef nonnull %5, i8 noundef zeroext 1) #11
  %17 = load ptr, ptr %5, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %17, ptr noundef nonnull %18, ptr noundef nonnull @.str.487, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  %19 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %19, ptr noundef nonnull %18, ptr noundef nonnull @.str.415, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  %20 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #11
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  call void @EDBM_mesh_normals_update(ptr noundef nonnull %5) #11
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %23

23:                                               ; preds = %2, %22
  %24 = phi i32 [ 4, %22 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret i32 %24
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.250, ptr noundef nonnull @modifier_triangulate_quad_method_items, i32 noundef 0, ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.252) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.253, ptr noundef nonnull @modifier_triangulate_ngon_method_items, i32 noundef 0, ptr noundef nonnull @.str.254, ptr noundef nonnull @.str.255) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_quads_convert_to_tris_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.250) #11
  %9 = load ptr, ptr %6, align 8, !tbaa !48
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.253) #11
  %11 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.488, i32 noundef 1, i32 noundef %8, i32 noundef %10) #11
  %12 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BMO_op_exec(ptr noundef %12, ptr noundef nonnull %3) #11
  %13 = load ptr, ptr %5, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %13, ptr noundef nonnull %14, ptr noundef nonnull @.str.415, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #11
  %15 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #11
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %18

18:                                               ; preds = %2, %17
  %19 = phi i32 [ 4, %17 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret i32 %19
}

; Function Attrs: nounwind uwtable
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
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_float_rotation(ptr noundef %8, ptr noundef nonnull @.str.489, i32 noundef 0, ptr noundef null, float noundef 0.000000e+00, float noundef 0x400921FB60000000, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.494, float noundef 0.000000e+00, float noundef 0x400921FB60000000) #11
  tail call void @RNA_def_property_float_default(ptr noundef %9, float noundef 0x3FE6571840000000) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.164, i32 noundef 0, ptr noundef nonnull @.str.495, ptr noundef nonnull @.str.5) #11
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.491, i32 noundef 0, ptr noundef nonnull @.str.496, ptr noundef nonnull @.str.5) #11
  %14 = load ptr, ptr %7, align 8, !tbaa !47
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.490, i32 noundef 0, ptr noundef nonnull @.str.497, ptr noundef nonnull @.str.5) #11
  %16 = load ptr, ptr %7, align 8, !tbaa !47
  %17 = tail call ptr @RNA_def_boolean(ptr noundef %16, ptr noundef nonnull @.str.492, i32 noundef 0, ptr noundef nonnull @.str.498, ptr noundef nonnull @.str.5) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_tris_convert_to_quads_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = tail call float @RNA_float_get(ptr noundef %6, ptr noundef nonnull @.str.489) #11
  %8 = load ptr, ptr %5, align 8, !tbaa !48
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.490) #11
  %10 = load ptr, ptr %5, align 8, !tbaa !48
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.164) #11
  %12 = load ptr, ptr %5, align 8, !tbaa !48
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.491) #11
  %14 = load ptr, ptr %5, align 8, !tbaa !48
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.492) #11
  %16 = fpext float %7 to double
  %17 = tail call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.415, i8 noundef zeroext 1, ptr noundef nonnull @.str.493, i32 noundef 1, double noundef %16, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #11
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %20

20:                                               ; preds = %2, %19
  %21 = phi i32 [ 4, %19 ], [ 2, %2 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
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
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.286, i32 noundef 0, ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.288) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.499, i32 noundef 0, ptr noundef nonnull @.str.501, ptr noundef nonnull @.str.502) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_dissolve_verts_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.286) #11
  %8 = load ptr, ptr %5, align 8, !tbaa !48
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.499) #11
  %10 = and i32 %7, 255
  %11 = and i32 %9, 255
  %12 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.500, i32 noundef 1, i32 noundef %10, i32 noundef %11) #11
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %15

15:                                               ; preds = %2, %14
  %16 = phi i32 [ 4, %14 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
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
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.41, i32 noundef 0, ptr noundef nonnull @.str.504, ptr noundef nonnull @.str.505) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.286, i32 noundef 0, ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.288) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_dissolve_edges_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.41) #11
  %8 = load ptr, ptr %5, align 8, !tbaa !48
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.286) #11
  %10 = and i32 %7, 255
  %11 = and i32 %9, 255
  %12 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.503, i32 noundef 1, i32 noundef %10, i32 noundef %11) #11
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %15

15:                                               ; preds = %2, %14
  %16 = phi i32 [ 4, %14 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
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
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.41, i32 noundef 0, ptr noundef nonnull @.str.504, ptr noundef nonnull @.str.505) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_dissolve_faces_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.41) #11
  %8 = and i32 %7, 255
  %9 = tail call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @.str.506, i8 noundef zeroext 1, ptr noundef nonnull @.str.507, i32 noundef 1, i32 noundef %8) #11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void @EDBM_update_generic(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %12

12:                                               ; preds = %2, %11
  %13 = phi i32 [ 4, %11 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
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
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.41, i32 noundef 0, ptr noundef nonnull @.str.504, ptr noundef nonnull @.str.505) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.286, i32 noundef 0, ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.288) #11
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.499, i32 noundef 0, ptr noundef nonnull @.str.501, ptr noundef nonnull @.str.502) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_dissolve_mode_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.BMEditMesh, ptr %4, i64 0, i32 12
  %6 = load i16, ptr %5, align 4, !tbaa !54
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @edbm_dissolve_verts_exec(ptr noundef %0, ptr noundef %1), !range !126
  br label %27

12:                                               ; preds = %2
  %13 = and i32 %7, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @edbm_dissolve_edges_exec(ptr noundef %0, ptr noundef %1), !range !126
  br label %27

17:                                               ; preds = %12
  %18 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %19 = tail call ptr @BKE_editmesh_from_object(ptr noundef %18) #11
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = tail call i32 @RNA_boolean_get(ptr noundef %21, ptr noundef nonnull @.str.41) #11
  %23 = and i32 %22, 255
  %24 = tail call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %19, ptr noundef %1, ptr noundef nonnull @.str.506, i8 noundef zeroext 1, ptr noundef nonnull @.str.507, i32 noundef 1, i32 noundef %23) #11
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  tail call void @EDBM_update_generic(ptr noundef %19, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %27

27:                                               ; preds = %26, %17, %15, %10
  %28 = phi i32 [ %11, %10 ], [ %16, %15 ], [ 4, %26 ], [ 2, %17 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_float_rotation(ptr noundef %8, ptr noundef nonnull @.str.71, i32 noundef 0, ptr noundef null, float noundef 0.000000e+00, float noundef 0x400921FB60000000, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, float noundef 0.000000e+00, float noundef 0x400921FB60000000) #11
  tail call void @RNA_def_property_float_default(ptr noundef %9, float noundef 0x3FB6571840000000) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.274, i32 noundef 0, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.276) #11
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_enum_flag(ptr noundef %12, ptr noundef nonnull @.str.277, ptr noundef nonnull @mesh_delimit_mode_items, i32 noundef 0, ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.279) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_dissolve_limited_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %5) #11
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.71) #11
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.274) #11
  %13 = load ptr, ptr %8, align 8, !tbaa !48
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.277) #11
  %15 = getelementptr inbounds %struct.BMEditMesh, ptr %6, i64 0, i32 12
  %16 = load i16, ptr %15, align 4, !tbaa !54
  %17 = icmp eq i16 %16, 4
  br i1 %17, label %18, label %97

18:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %19 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %19, align 4, !tbaa !62
  %20 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %20, align 8, !tbaa !64
  %21 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %21, align 8, !tbaa !65
  %22 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !66
  store ptr %23, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %24 = load ptr, ptr %21, align 8, !tbaa !65
  %25 = call ptr %24(ptr noundef nonnull %3) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %18, %27
  %28 = phi ptr [ %37, %27 ], [ %25, %18 ]
  %29 = getelementptr inbounds %struct.BMHeader, ptr %28, i64 0, i32 3
  %30 = load i8, ptr %29, align 1, !tbaa !70
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  %33 = or i8 %30, 16
  %34 = and i8 %30, -18
  %35 = select i1 %32, i8 %34, i8 %33
  store i8 %35, ptr %29, align 1, !tbaa !70
  %36 = load ptr, ptr %21, align 8, !tbaa !65
  %37 = call ptr %36(ptr noundef nonnull %3) #11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %27, !llvm.loop !208

39:                                               ; preds = %27, %18
  store i8 2, ptr %19, align 4, !tbaa !62
  store ptr @bmiter__elem_of_mesh_begin, ptr %20, align 8, !tbaa !64
  store ptr @bmiter__elem_of_mesh_step, ptr %21, align 8, !tbaa !65
  %40 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !95
  store ptr %41, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %42 = load ptr, ptr %21, align 8, !tbaa !65
  %43 = call ptr %42(ptr noundef nonnull %3) #11
  %44 = icmp eq ptr %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %39, %45
  %46 = phi ptr [ %55, %45 ], [ %43, %39 ]
  %47 = getelementptr inbounds %struct.BMHeader, ptr %46, i64 0, i32 3
  %48 = load i8, ptr %47, align 1, !tbaa !70
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  %51 = or i8 %48, 16
  %52 = and i8 %48, -18
  %53 = select i1 %50, i8 %52, i8 %51
  store i8 %53, ptr %47, align 1, !tbaa !70
  %54 = load ptr, ptr %21, align 8, !tbaa !65
  %55 = call ptr %54(ptr noundef nonnull %3) #11
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %45, !llvm.loop !209

57:                                               ; preds = %45, %39
  store i8 3, ptr %19, align 4, !tbaa !62
  store ptr @bmiter__elem_of_mesh_begin, ptr %20, align 8, !tbaa !64
  store ptr @bmiter__elem_of_mesh_step, ptr %21, align 8, !tbaa !65
  %58 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 12
  %59 = load ptr, ptr %58, align 8, !tbaa !83
  store ptr %59, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %60 = load ptr, ptr %21, align 8, !tbaa !65
  %61 = call ptr %60(ptr noundef nonnull %3) #11
  %62 = icmp eq ptr %61, null
  br i1 %62, label %96, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %65 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %66 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  br label %67

67:                                               ; preds = %63, %92
  %68 = phi ptr [ %61, %63 ], [ %94, %92 ]
  %69 = getelementptr inbounds %struct.BMHeader, ptr %68, i64 0, i32 3
  %70 = load i8, ptr %69, align 1, !tbaa !70
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %67
  store i8 11, ptr %64, align 4, !tbaa !62
  store ptr @bmiter__loop_of_face_begin, ptr %65, align 8, !tbaa !64
  store ptr @bmiter__loop_of_face_step, ptr %66, align 8, !tbaa !65
  store ptr %68, ptr %4, align 8, !tbaa !69
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #11
  %74 = load ptr, ptr %66, align 8, !tbaa !65
  %75 = call ptr %74(ptr noundef nonnull %4) #11
  %76 = icmp eq ptr %75, null
  br i1 %76, label %92, label %77

77:                                               ; preds = %73, %77
  %78 = phi ptr [ %90, %77 ], [ %75, %73 ]
  %79 = getelementptr inbounds %struct.BMLoop, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !114
  %81 = getelementptr inbounds %struct.BMHeader, ptr %80, i64 0, i32 3
  %82 = load i8, ptr %81, align 1, !tbaa !70
  %83 = and i8 %82, -17
  store i8 %83, ptr %81, align 1, !tbaa !70
  %84 = getelementptr inbounds %struct.BMLoop, ptr %78, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !86
  %86 = getelementptr inbounds %struct.BMHeader, ptr %85, i64 0, i32 3
  %87 = load i8, ptr %86, align 1, !tbaa !70
  %88 = and i8 %87, -17
  store i8 %88, ptr %86, align 1, !tbaa !70
  %89 = load ptr, ptr %66, align 8, !tbaa !65
  %90 = call ptr %89(ptr noundef nonnull %4) #11
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %77, !llvm.loop !210

92:                                               ; preds = %77, %73, %67
  %93 = load ptr, ptr %21, align 8, !tbaa !65
  %94 = call ptr %93(ptr noundef nonnull %3) #11
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %67, !llvm.loop !211

96:                                               ; preds = %92, %57
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  br label %97

97:                                               ; preds = %2, %96
  %98 = phi i32 [ 16, %96 ], [ 1, %2 ]
  %99 = fpext float %10 to double
  %100 = and i32 %12, 255
  %101 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull @.str.506, i8 noundef zeroext 1, ptr noundef nonnull @.str.508, i32 noundef %98, i32 noundef %98, double noundef %99, i32 noundef %100, i32 noundef %14) #11
  call void @EDBM_update_generic(ptr noundef nonnull %6, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  ret i32 4
}

declare ptr @RNA_def_enum_flag(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.170, float noundef 0x3F1A36E2E0000000, float noundef 0x3EB0C6F7A0000000, float noundef 5.000000e+01, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.172, float noundef 0x3EE4F8B580000000, float noundef 1.000000e+01) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_dissolve_degenerate_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %4 = tail call ptr @BKE_editmesh_from_object(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = tail call float @RNA_float_get(ptr noundef %6, ptr noundef nonnull @.str.170) #11
  %8 = load ptr, ptr %4, align 8, !tbaa !50
  %9 = load i32, ptr %8, align 8, !tbaa !80
  %10 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !81
  %12 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !82
  %14 = fpext float %7 to double
  %15 = tail call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.509, i32 noundef 1, double noundef %14) #11
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  tail call void @EDBM_select_flush(ptr noundef nonnull %4) #11
  tail call void @EDBM_update_generic(ptr noundef nonnull %4, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !100
  %20 = load i32, ptr %8, align 8, !tbaa !80
  %21 = sub nsw i32 %9, %20
  %22 = load i32, ptr %10, align 4, !tbaa !81
  %23 = sub nsw i32 %11, %22
  %24 = load i32, ptr %12, align 4, !tbaa !82
  %25 = sub nsw i32 %13, %24
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %19, i32 noundef 2, ptr noundef nonnull @.str.412, i32 noundef %21, i32 noundef %23, i32 noundef %25) #11
  br label %26

26:                                               ; preds = %2, %17
  %27 = phi i32 [ 4, %17 ], [ 2, %2 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.286, i32 noundef 1, ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.288) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_delete_edgeloop_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.286) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %9 = load ptr, ptr %5, align 8, !tbaa !50
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %9, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #11
  %10 = load ptr, ptr %5, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %11, align 4, !tbaa !62
  %12 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !65
  %14 = getelementptr inbounds %struct.BMesh, ptr %10, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !95
  store ptr %15, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %16 = load ptr, ptr %13, align 8, !tbaa !65
  %17 = call ptr %16(ptr noundef nonnull %3) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19

19:                                               ; preds = %2, %39
  %20 = phi ptr [ %41, %39 ], [ %17, %2 ]
  %21 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 3
  %22 = load i8, ptr %21, align 1, !tbaa !70
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.BMEdge, ptr %20, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !88
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %37, %29 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !101
  %33 = getelementptr inbounds %struct.BMHeader, ptr %32, i64 0, i32 3
  %34 = load i8, ptr %33, align 1, !tbaa !70
  %35 = or i8 %34, 16
  store i8 %35, ptr %33, align 1, !tbaa !70
  %36 = getelementptr inbounds %struct.BMLoop, ptr %30, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !91
  %38 = icmp eq ptr %37, %27
  br i1 %38, label %39, label %29, !llvm.loop !212

39:                                               ; preds = %29, %19, %25
  %40 = load ptr, ptr %13, align 8, !tbaa !65
  %41 = call ptr %40(ptr noundef nonnull %3) #11
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %19, !llvm.loop !213

43:                                               ; preds = %39, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  %44 = and i32 %8, 255
  %45 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.503, i32 noundef 1, i32 noundef 1, i32 noundef %44) #11
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BM_mesh_elem_hflag_enable_test(ptr noundef %48, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 16) #11
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %49

49:                                               ; preds = %43, %47
  %50 = phi i32 [ 4, %47 ], [ 2, %43 ]
  ret i32 %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MESH_OT_split(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_split_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  %6 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.510, i32 noundef 1, i32 noundef 0) #11
  %7 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BMO_op_exec(ptr noundef %7, ptr noundef nonnull %3) #11
  %8 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %8, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  %9 = load ptr, ptr %5, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %9, ptr noundef nonnull %10, ptr noundef nonnull @.str.422, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  %11 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  call void @EDBM_mesh_normals_update(ptr noundef nonnull %5) #11
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %14

14:                                               ; preds = %2, %13
  %15 = phi i32 [ 4, %13 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_sort_elements(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.316, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.317, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.318, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_sort_elements_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 10
  store ptr @edbm_sort_elements_ui, ptr %7, align 8, !tbaa !153
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.35, ptr noundef nonnull @MESH_OT_sort_elements.type_items, i32 noundef 0, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.319) #11
  %12 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %11, ptr %12, align 8, !tbaa !76
  %13 = load ptr, ptr %9, align 8, !tbaa !47
  %14 = tail call ptr @RNA_def_enum_flag(ptr noundef %13, ptr noundef nonnull @.str.320, ptr noundef nonnull @MESH_OT_sort_elements.elem_items, i32 noundef 0, ptr noundef nonnull @.str.321, ptr noundef nonnull @.str.322) #11
  %15 = load ptr, ptr %9, align 8, !tbaa !47
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.323, i32 noundef 0, ptr noundef nonnull @.str.311, ptr noundef nonnull @.str.324) #11
  %17 = load ptr, ptr %9, align 8, !tbaa !47
  %18 = tail call ptr @RNA_def_int(ptr noundef %17, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.325, ptr noundef nonnull @.str.326, i32 noundef 0, i32 noundef 255) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_sort_elements_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [3 x ptr], align 16
  %5 = alloca [3 x ptr], align 16
  %6 = alloca [3 x ptr], align 16
  %7 = alloca [3 x i32], align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x ptr], align 16
  %18 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %19 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %20 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  %21 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #11
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = tail call i32 @RNA_enum_get(ptr noundef %23, ptr noundef nonnull @.str.35) #11
  %25 = load ptr, ptr %22, align 8, !tbaa !48
  %26 = tail call ptr @RNA_struct_find_property(ptr noundef %25, ptr noundef nonnull @.str.320) #11
  %27 = load ptr, ptr %22, align 8, !tbaa !48
  %28 = tail call i32 @RNA_boolean_get(ptr noundef %27, ptr noundef nonnull @.str.323) #11
  %29 = load ptr, ptr %22, align 8, !tbaa !48
  %30 = tail call i32 @RNA_int_get(ptr noundef %29, ptr noundef nonnull @.str.21) #11
  %31 = add i32 %24, -1
  %32 = icmp ult i32 %31, 2
  %33 = icmp eq ptr %21, null
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !100
  tail call void @BKE_report(ptr noundef %37, i32 noundef 32, ptr noundef nonnull @.str.511) #11
  br label %1136

38:                                               ; preds = %2
  %39 = load ptr, ptr %22, align 8, !tbaa !48
  %40 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %39, ptr noundef %26) #11
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %22, align 8, !tbaa !48
  %44 = tail call i32 @RNA_property_enum_get(ptr noundef %43, ptr noundef %26) #11
  br label %55

45:                                               ; preds = %38
  %46 = tail call ptr @BKE_editmesh_from_object(ptr noundef %19) #11
  %47 = getelementptr inbounds %struct.BMEditMesh, ptr %46, i64 0, i32 12
  %48 = load i16, ptr %47, align 4, !tbaa !54
  %49 = and i16 %48, 3
  %50 = shl i16 %48, 1
  %51 = and i16 %50, 8
  %52 = or disjoint i16 %51, %49
  %53 = zext nneg i16 %52 to i32
  %54 = load ptr, ptr %22, align 8, !tbaa !48
  tail call void @RNA_enum_set(ptr noundef %54, ptr noundef nonnull @.str.320, i32 noundef %53) #11
  br label %55

55:                                               ; preds = %45, %42
  %56 = phi i32 [ %44, %42 ], [ %53, %45 ]
  %57 = and i32 %28, 255
  %58 = tail call ptr @BKE_editmesh_from_object(ptr noundef %19) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false)
  %59 = icmp ne i32 %56, 0
  %60 = icmp ne i32 %24, 0
  %61 = and i1 %60, %59
  br i1 %61, label %62, label %1135

62:                                               ; preds = %55
  %63 = and i32 %56, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %58, align 8, !tbaa !50
  %67 = load i32, ptr %66, align 8, !tbaa !80
  store i32 %67, ptr %7, align 4, !tbaa !102
  br label %68

68:                                               ; preds = %65, %62
  %69 = and i32 %56, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %58, align 8, !tbaa !50
  %73 = getelementptr inbounds %struct.BMesh, ptr %72, i64 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !81
  %75 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 1
  store i32 %74, ptr %75, align 4, !tbaa !102
  br label %76

76:                                               ; preds = %71, %68
  %77 = and i32 %56, 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %58, align 8, !tbaa !50
  %81 = getelementptr inbounds %struct.BMesh, ptr %80, i64 0, i32 3
  %82 = load i32, ptr %81, align 4, !tbaa !82
  %83 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 2
  store i32 %82, ptr %83, align 4, !tbaa !102
  br label %84

84:                                               ; preds = %79, %76
  %85 = icmp ult i32 %24, 3
  br i1 %85, label %86, label %252

86:                                               ; preds = %84
  %87 = icmp eq i32 %24, 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #11
  %88 = icmp eq i32 %57, 0
  %89 = select i1 %88, float 1.000000e+00, float -1.000000e+00
  %90 = select i1 %87, i32 2, i32 0
  %91 = getelementptr inbounds %struct.RegionView3D, ptr %21, i64 0, i32 1
  %92 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %91, ptr noundef nonnull %92) #11
  %93 = load i32, ptr %7, align 4, !tbaa !102
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %139, label %95

95:                                               ; preds = %86
  %96 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %97 = sext i32 %93 to i64
  %98 = call ptr %96(i64 noundef %97, ptr noundef nonnull @.str.512) #11
  store ptr %98, ptr %4, align 16, !tbaa !105
  %99 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %100 = shl nsw i64 %97, 3
  %101 = call ptr %99(i64 noundef %100, ptr noundef nonnull @.str.513) #11
  store ptr %101, ptr %5, align 16, !tbaa !105
  %102 = load ptr, ptr %58, align 8, !tbaa !50
  %103 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %103, align 4, !tbaa !62
  %104 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %104, align 8, !tbaa !64
  %105 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %105, align 8, !tbaa !65
  %106 = getelementptr inbounds %struct.BMesh, ptr %102, i64 0, i32 9
  %107 = load ptr, ptr %106, align 8, !tbaa !66
  store ptr %107, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %108 = load ptr, ptr %105, align 8, !tbaa !65
  %109 = call ptr %108(ptr noundef nonnull %3) #11
  %110 = icmp eq ptr %109, null
  br i1 %110, label %139, label %111

111:                                              ; preds = %95
  %112 = zext nneg i32 %90 to i64
  %113 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %112
  br label %114

114:                                              ; preds = %111, %134
  %115 = phi i64 [ 0, %111 ], [ %137, %134 ]
  %116 = phi ptr [ %109, %111 ], [ %136, %134 ]
  %117 = getelementptr inbounds %struct.BMHeader, ptr %116, i64 0, i32 3
  %118 = load i8, ptr %117, align 1, !tbaa !70
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  %122 = getelementptr inbounds %struct.BMVert, ptr %116, i64 0, i32 2
  call void @mul_v3_m4v3(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %122) #11
  %123 = getelementptr inbounds i8, ptr %98, i64 %115
  store i8 0, ptr %123, align 1, !tbaa !69
  %124 = load i32, ptr %8, align 4, !tbaa !102
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.BMElemSort, ptr %101, i64 %125, i32 1
  %127 = trunc i64 %115 to i32
  store i32 %127, ptr %126, align 4, !tbaa !214
  %128 = load float, ptr %113, align 4, !tbaa !142
  %129 = fmul float %89, %128
  %130 = add nsw i32 %124, 1
  store i32 %130, ptr %8, align 4, !tbaa !102
  %131 = getelementptr inbounds %struct.BMElemSort, ptr %101, i64 %125
  store float %129, ptr %131, align 4, !tbaa !216
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  br label %134

132:                                              ; preds = %114
  %133 = getelementptr inbounds i8, ptr %98, i64 %115
  store i8 1, ptr %133, align 1, !tbaa !69
  br label %134

134:                                              ; preds = %132, %121
  %135 = load ptr, ptr %105, align 8, !tbaa !65
  %136 = call ptr %135(ptr noundef nonnull %3) #11
  %137 = add nuw i64 %115, 1
  %138 = icmp eq ptr %136, null
  br i1 %138, label %139, label %114, !llvm.loop !217

139:                                              ; preds = %134, %95, %86
  %140 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 1
  %141 = load i32, ptr %140, align 4, !tbaa !102
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %198, label %143

143:                                              ; preds = %139
  %144 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %145 = sext i32 %141 to i64
  %146 = call ptr %144(i64 noundef %145, ptr noundef nonnull @.str.514) #11
  %147 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 1
  store ptr %146, ptr %147, align 8, !tbaa !105
  %148 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %149 = shl nsw i64 %145, 3
  %150 = call ptr %148(i64 noundef %149, ptr noundef nonnull @.str.515) #11
  %151 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 1
  store ptr %150, ptr %151, align 8, !tbaa !105
  %152 = load ptr, ptr %58, align 8, !tbaa !50
  %153 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %153, align 4, !tbaa !62
  %154 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %154, align 8, !tbaa !64
  %155 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %155, align 8, !tbaa !65
  %156 = getelementptr inbounds %struct.BMesh, ptr %152, i64 0, i32 10
  %157 = load ptr, ptr %156, align 8, !tbaa !95
  store ptr %157, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %158 = load ptr, ptr %155, align 8, !tbaa !65
  %159 = call ptr %158(ptr noundef nonnull %3) #11
  %160 = icmp eq ptr %159, null
  br i1 %160, label %198, label %161

161:                                              ; preds = %143
  %162 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 1
  %163 = zext nneg i32 %90 to i64
  %164 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 %163
  %165 = load i32, ptr %162, align 4, !tbaa !102
  br label %166

166:                                              ; preds = %161, %191
  %167 = phi i64 [ 0, %161 ], [ %195, %191 ]
  %168 = phi i32 [ %165, %161 ], [ %192, %191 ]
  %169 = phi ptr [ %159, %161 ], [ %194, %191 ]
  %170 = getelementptr inbounds %struct.BMHeader, ptr %169, i64 0, i32 3
  %171 = load i8, ptr %170, align 1, !tbaa !70
  %172 = and i8 %171, 1
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %189, label %174

174:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %175 = getelementptr inbounds %struct.BMEdge, ptr %169, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !107
  %177 = getelementptr inbounds %struct.BMVert, ptr %176, i64 0, i32 2
  %178 = getelementptr inbounds %struct.BMEdge, ptr %169, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !108
  %180 = getelementptr inbounds %struct.BMVert, ptr %179, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %177, ptr noundef nonnull %180) #11
  call void @mul_m4_v3(ptr noundef nonnull %9, ptr noundef nonnull %11) #11
  %181 = getelementptr inbounds i8, ptr %146, i64 %167
  store i8 0, ptr %181, align 1, !tbaa !69
  %182 = sext i32 %168 to i64
  %183 = getelementptr inbounds %struct.BMElemSort, ptr %150, i64 %182, i32 1
  %184 = trunc i64 %167 to i32
  store i32 %184, ptr %183, align 4, !tbaa !214
  %185 = load float, ptr %164, align 4, !tbaa !142
  %186 = fmul float %89, %185
  %187 = add nsw i32 %168, 1
  %188 = getelementptr inbounds %struct.BMElemSort, ptr %150, i64 %182
  store float %186, ptr %188, align 4, !tbaa !216
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  br label %191

189:                                              ; preds = %166
  %190 = getelementptr inbounds i8, ptr %146, i64 %167
  store i8 1, ptr %190, align 1, !tbaa !69
  br label %191

191:                                              ; preds = %189, %174
  %192 = phi i32 [ %168, %189 ], [ %187, %174 ]
  %193 = load ptr, ptr %155, align 8, !tbaa !65
  %194 = call ptr %193(ptr noundef nonnull %3) #11
  %195 = add nuw i64 %167, 1
  %196 = icmp eq ptr %194, null
  br i1 %196, label %197, label %166, !llvm.loop !218

197:                                              ; preds = %191
  store i32 %192, ptr %162, align 4, !tbaa !102
  br label %198

198:                                              ; preds = %143, %197, %139
  %199 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 2
  %200 = load i32, ptr %199, align 4, !tbaa !102
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %251, label %202

202:                                              ; preds = %198
  %203 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %204 = sext i32 %200 to i64
  %205 = call ptr %203(i64 noundef %204, ptr noundef nonnull @.str.516) #11
  %206 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 2
  store ptr %205, ptr %206, align 16, !tbaa !105
  %207 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %208 = shl nsw i64 %204, 3
  %209 = call ptr %207(i64 noundef %208, ptr noundef nonnull @.str.517) #11
  %210 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 2
  store ptr %209, ptr %210, align 16, !tbaa !105
  %211 = load ptr, ptr %58, align 8, !tbaa !50
  %212 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %212, align 4, !tbaa !62
  %213 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %213, align 8, !tbaa !64
  %214 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %214, align 8, !tbaa !65
  %215 = getelementptr inbounds %struct.BMesh, ptr %211, i64 0, i32 12
  %216 = load ptr, ptr %215, align 8, !tbaa !83
  store ptr %216, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %217 = load ptr, ptr %214, align 8, !tbaa !65
  %218 = call ptr %217(ptr noundef nonnull %3) #11
  %219 = icmp eq ptr %218, null
  br i1 %219, label %251, label %220

220:                                              ; preds = %202
  %221 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 2
  %222 = zext nneg i32 %90 to i64
  %223 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 %222
  %224 = load i32, ptr %221, align 4, !tbaa !102
  br label %225

225:                                              ; preds = %220, %244
  %226 = phi i64 [ 0, %220 ], [ %248, %244 ]
  %227 = phi i32 [ %224, %220 ], [ %245, %244 ]
  %228 = phi ptr [ %218, %220 ], [ %247, %244 ]
  %229 = getelementptr inbounds %struct.BMHeader, ptr %228, i64 0, i32 3
  %230 = load i8, ptr %229, align 1, !tbaa !70
  %231 = and i8 %230, 1
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %242, label %233

233:                                              ; preds = %225
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  call void @BM_face_calc_center_mean(ptr noundef nonnull %228, ptr noundef nonnull %12) #11
  call void @mul_m4_v3(ptr noundef nonnull %9, ptr noundef nonnull %12) #11
  %234 = getelementptr inbounds i8, ptr %205, i64 %226
  store i8 0, ptr %234, align 1, !tbaa !69
  %235 = sext i32 %227 to i64
  %236 = getelementptr inbounds %struct.BMElemSort, ptr %209, i64 %235, i32 1
  %237 = trunc i64 %226 to i32
  store i32 %237, ptr %236, align 4, !tbaa !214
  %238 = load float, ptr %223, align 4, !tbaa !142
  %239 = fmul float %89, %238
  %240 = add nsw i32 %227, 1
  %241 = getelementptr inbounds %struct.BMElemSort, ptr %209, i64 %235
  store float %239, ptr %241, align 4, !tbaa !216
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  br label %244

242:                                              ; preds = %225
  %243 = getelementptr inbounds i8, ptr %205, i64 %226
  store i8 1, ptr %243, align 1, !tbaa !69
  br label %244

244:                                              ; preds = %242, %233
  %245 = phi i32 [ %227, %242 ], [ %240, %233 ]
  %246 = load ptr, ptr %214, align 8, !tbaa !65
  %247 = call ptr %246(ptr noundef nonnull %3) #11
  %248 = add nuw i64 %226, 1
  %249 = icmp eq ptr %247, null
  br i1 %249, label %250, label %225, !llvm.loop !219

250:                                              ; preds = %244
  store i32 %245, ptr %221, align 4, !tbaa !102
  br label %251

251:                                              ; preds = %202, %250, %198
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #11
  br label %1026

252:                                              ; preds = %84
  %253 = icmp eq i32 %24, 3
  br i1 %253, label %254, label %483

254:                                              ; preds = %252
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #11
  %255 = icmp eq i32 %57, 0
  %256 = select i1 %255, float 1.000000e+00, float -1.000000e+00
  %257 = icmp eq ptr %20, null
  br i1 %257, label %269, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 20
  %260 = load ptr, ptr %259, align 8, !tbaa !220
  %261 = icmp eq ptr %260, null
  br i1 %261, label %269, label %262

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 35
  %264 = load float, ptr %263, align 4, !tbaa !142
  store float %264, ptr %13, align 4, !tbaa !142
  %265 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 35, i64 1
  %266 = load float, ptr %265, align 4, !tbaa !142
  %267 = getelementptr inbounds float, ptr %13, i64 1
  store float %266, ptr %267, align 4, !tbaa !142
  %268 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 35, i64 2
  br label %276

269:                                              ; preds = %258, %254
  %270 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 8
  %271 = load float, ptr %270, align 4, !tbaa !142
  store float %271, ptr %13, align 4, !tbaa !142
  %272 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 8, i64 1
  %273 = load float, ptr %272, align 4, !tbaa !142
  %274 = getelementptr inbounds float, ptr %13, i64 1
  store float %273, ptr %274, align 4, !tbaa !142
  %275 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 8, i64 2
  br label %276

276:                                              ; preds = %269, %262
  %277 = phi ptr [ %275, %269 ], [ %268, %262 ]
  %278 = load float, ptr %277, align 4, !tbaa !142
  %279 = getelementptr inbounds float, ptr %13, i64 2
  store float %278, ptr %279, align 4, !tbaa !142
  %280 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 47
  %281 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %14, ptr noundef nonnull %280) #11
  call void @mul_m4_v3(ptr noundef nonnull %14, ptr noundef nonnull %13) #11
  %282 = load i32, ptr %7, align 4, !tbaa !102
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %344, label %284

284:                                              ; preds = %276
  %285 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %286 = sext i32 %282 to i64
  %287 = call ptr %285(i64 noundef %286, ptr noundef nonnull @.str.512) #11
  store ptr %287, ptr %4, align 16, !tbaa !105
  %288 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %289 = shl nsw i64 %286, 3
  %290 = call ptr %288(i64 noundef %289, ptr noundef nonnull @.str.513) #11
  store ptr %290, ptr %5, align 16, !tbaa !105
  %291 = load ptr, ptr %58, align 8, !tbaa !50
  %292 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %292, align 4, !tbaa !62
  %293 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %293, align 8, !tbaa !64
  %294 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %294, align 8, !tbaa !65
  %295 = getelementptr inbounds %struct.BMesh, ptr %291, i64 0, i32 9
  %296 = load ptr, ptr %295, align 8, !tbaa !66
  store ptr %296, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %297 = load ptr, ptr %294, align 8, !tbaa !65
  %298 = call ptr %297(ptr noundef nonnull %3) #11
  %299 = load i32, ptr %8, align 4, !tbaa !102
  %300 = icmp eq ptr %298, null
  br i1 %300, label %342, label %301

301:                                              ; preds = %284
  %302 = getelementptr inbounds float, ptr %13, i64 1
  %303 = getelementptr inbounds float, ptr %13, i64 2
  br label %304

304:                                              ; preds = %301, %336
  %305 = phi i64 [ 0, %301 ], [ %340, %336 ]
  %306 = phi ptr [ %298, %301 ], [ %339, %336 ]
  %307 = phi i32 [ %299, %301 ], [ %337, %336 ]
  %308 = getelementptr inbounds %struct.BMHeader, ptr %306, i64 0, i32 3
  %309 = load i8, ptr %308, align 1, !tbaa !70
  %310 = and i8 %309, 1
  %311 = icmp eq i8 %310, 0
  %312 = getelementptr inbounds i8, ptr %287, i64 %305
  br i1 %311, label %335, label %313

313:                                              ; preds = %304
  store i8 0, ptr %312, align 1, !tbaa !69
  %314 = sext i32 %307 to i64
  %315 = getelementptr inbounds %struct.BMElemSort, ptr %290, i64 %314, i32 1
  %316 = trunc i64 %305 to i32
  store i32 %316, ptr %315, align 4, !tbaa !214
  %317 = getelementptr inbounds %struct.BMVert, ptr %306, i64 0, i32 2
  %318 = load float, ptr %317, align 4, !tbaa !142
  %319 = load float, ptr %13, align 4, !tbaa !142
  %320 = fsub float %318, %319
  %321 = getelementptr inbounds %struct.BMVert, ptr %306, i64 0, i32 2, i64 1
  %322 = load float, ptr %321, align 4, !tbaa !142
  %323 = load float, ptr %302, align 4, !tbaa !142
  %324 = fsub float %322, %323
  %325 = getelementptr inbounds %struct.BMVert, ptr %306, i64 0, i32 2, i64 2
  %326 = load float, ptr %325, align 4, !tbaa !142
  %327 = load float, ptr %303, align 4, !tbaa !142
  %328 = fsub float %326, %327
  %329 = fmul float %324, %324
  %330 = call float @llvm.fmuladd.f32(float %320, float %320, float %329)
  %331 = call float @llvm.fmuladd.f32(float %328, float %328, float %330)
  %332 = fmul float %256, %331
  %333 = add nsw i32 %307, 1
  %334 = getelementptr inbounds %struct.BMElemSort, ptr %290, i64 %314
  store float %332, ptr %334, align 4, !tbaa !216
  br label %336

335:                                              ; preds = %304
  store i8 1, ptr %312, align 1, !tbaa !69
  br label %336

336:                                              ; preds = %335, %313
  %337 = phi i32 [ %307, %335 ], [ %333, %313 ]
  %338 = load ptr, ptr %294, align 8, !tbaa !65
  %339 = call ptr %338(ptr noundef nonnull %3) #11
  %340 = add nuw i64 %305, 1
  %341 = icmp eq ptr %339, null
  br i1 %341, label %342, label %304, !llvm.loop !222

342:                                              ; preds = %336, %284
  %343 = phi i32 [ %299, %284 ], [ %337, %336 ]
  store i32 %343, ptr %8, align 4, !tbaa !102
  br label %344

344:                                              ; preds = %342, %276
  %345 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 1
  %346 = load i32, ptr %345, align 4, !tbaa !102
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %416, label %348

348:                                              ; preds = %344
  %349 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %350 = sext i32 %346 to i64
  %351 = call ptr %349(i64 noundef %350, ptr noundef nonnull @.str.514) #11
  %352 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 1
  store ptr %351, ptr %352, align 8, !tbaa !105
  %353 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %354 = shl nsw i64 %350, 3
  %355 = call ptr %353(i64 noundef %354, ptr noundef nonnull @.str.515) #11
  %356 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 1
  store ptr %355, ptr %356, align 8, !tbaa !105
  %357 = load ptr, ptr %58, align 8, !tbaa !50
  %358 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %358, align 4, !tbaa !62
  %359 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %359, align 8, !tbaa !64
  %360 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %360, align 8, !tbaa !65
  %361 = getelementptr inbounds %struct.BMesh, ptr %357, i64 0, i32 10
  %362 = load ptr, ptr %361, align 8, !tbaa !95
  store ptr %362, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %363 = load ptr, ptr %360, align 8, !tbaa !65
  %364 = call ptr %363(ptr noundef nonnull %3) #11
  %365 = icmp eq ptr %364, null
  br i1 %365, label %416, label %366

366:                                              ; preds = %348
  %367 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 1
  %368 = getelementptr inbounds float, ptr %15, i64 1
  %369 = getelementptr inbounds float, ptr %13, i64 1
  %370 = getelementptr inbounds float, ptr %15, i64 2
  %371 = getelementptr inbounds float, ptr %13, i64 2
  %372 = load i32, ptr %367, align 4, !tbaa !102
  br label %373

373:                                              ; preds = %366, %409
  %374 = phi i64 [ 0, %366 ], [ %413, %409 ]
  %375 = phi i32 [ %372, %366 ], [ %410, %409 ]
  %376 = phi ptr [ %364, %366 ], [ %412, %409 ]
  %377 = getelementptr inbounds %struct.BMHeader, ptr %376, i64 0, i32 3
  %378 = load i8, ptr %377, align 1, !tbaa !70
  %379 = and i8 %378, 1
  %380 = icmp eq i8 %379, 0
  br i1 %380, label %407, label %381

381:                                              ; preds = %373
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #11
  %382 = getelementptr inbounds %struct.BMEdge, ptr %376, i64 0, i32 2
  %383 = load ptr, ptr %382, align 8, !tbaa !107
  %384 = getelementptr inbounds %struct.BMVert, ptr %383, i64 0, i32 2
  %385 = getelementptr inbounds %struct.BMEdge, ptr %376, i64 0, i32 3
  %386 = load ptr, ptr %385, align 8, !tbaa !108
  %387 = getelementptr inbounds %struct.BMVert, ptr %386, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %384, ptr noundef nonnull %387) #11
  %388 = getelementptr inbounds i8, ptr %351, i64 %374
  store i8 0, ptr %388, align 1, !tbaa !69
  %389 = sext i32 %375 to i64
  %390 = getelementptr inbounds %struct.BMElemSort, ptr %355, i64 %389, i32 1
  %391 = trunc i64 %374 to i32
  store i32 %391, ptr %390, align 4, !tbaa !214
  %392 = load float, ptr %15, align 4, !tbaa !142
  %393 = load float, ptr %13, align 4, !tbaa !142
  %394 = fsub float %392, %393
  %395 = load float, ptr %368, align 4, !tbaa !142
  %396 = load float, ptr %369, align 4, !tbaa !142
  %397 = fsub float %395, %396
  %398 = load float, ptr %370, align 4, !tbaa !142
  %399 = load float, ptr %371, align 4, !tbaa !142
  %400 = fsub float %398, %399
  %401 = fmul float %397, %397
  %402 = call float @llvm.fmuladd.f32(float %394, float %394, float %401)
  %403 = call float @llvm.fmuladd.f32(float %400, float %400, float %402)
  %404 = fmul float %256, %403
  %405 = add nsw i32 %375, 1
  %406 = getelementptr inbounds %struct.BMElemSort, ptr %355, i64 %389
  store float %404, ptr %406, align 4, !tbaa !216
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  br label %409

407:                                              ; preds = %373
  %408 = getelementptr inbounds i8, ptr %351, i64 %374
  store i8 1, ptr %408, align 1, !tbaa !69
  br label %409

409:                                              ; preds = %407, %381
  %410 = phi i32 [ %375, %407 ], [ %405, %381 ]
  %411 = load ptr, ptr %360, align 8, !tbaa !65
  %412 = call ptr %411(ptr noundef nonnull %3) #11
  %413 = add nuw i64 %374, 1
  %414 = icmp eq ptr %412, null
  br i1 %414, label %415, label %373, !llvm.loop !223

415:                                              ; preds = %409
  store i32 %410, ptr %367, align 4, !tbaa !102
  br label %416

416:                                              ; preds = %348, %415, %344
  %417 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 2
  %418 = load i32, ptr %417, align 4, !tbaa !102
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %482, label %420

420:                                              ; preds = %416
  %421 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %422 = sext i32 %418 to i64
  %423 = call ptr %421(i64 noundef %422, ptr noundef nonnull @.str.516) #11
  %424 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 2
  store ptr %423, ptr %424, align 16, !tbaa !105
  %425 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %426 = shl nsw i64 %422, 3
  %427 = call ptr %425(i64 noundef %426, ptr noundef nonnull @.str.517) #11
  %428 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 2
  store ptr %427, ptr %428, align 16, !tbaa !105
  %429 = load ptr, ptr %58, align 8, !tbaa !50
  %430 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %430, align 4, !tbaa !62
  %431 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %431, align 8, !tbaa !64
  %432 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %432, align 8, !tbaa !65
  %433 = getelementptr inbounds %struct.BMesh, ptr %429, i64 0, i32 12
  %434 = load ptr, ptr %433, align 8, !tbaa !83
  store ptr %434, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %435 = load ptr, ptr %432, align 8, !tbaa !65
  %436 = call ptr %435(ptr noundef nonnull %3) #11
  %437 = icmp eq ptr %436, null
  br i1 %437, label %482, label %438

438:                                              ; preds = %420
  %439 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 2
  %440 = getelementptr inbounds float, ptr %16, i64 1
  %441 = getelementptr inbounds float, ptr %13, i64 1
  %442 = getelementptr inbounds float, ptr %16, i64 2
  %443 = getelementptr inbounds float, ptr %13, i64 2
  %444 = load i32, ptr %439, align 4, !tbaa !102
  br label %445

445:                                              ; preds = %438, %475
  %446 = phi i64 [ 0, %438 ], [ %479, %475 ]
  %447 = phi i32 [ %444, %438 ], [ %476, %475 ]
  %448 = phi ptr [ %436, %438 ], [ %478, %475 ]
  %449 = getelementptr inbounds %struct.BMHeader, ptr %448, i64 0, i32 3
  %450 = load i8, ptr %449, align 1, !tbaa !70
  %451 = and i8 %450, 1
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %473, label %453

453:                                              ; preds = %445
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #11
  call void @BM_face_calc_center_mean(ptr noundef nonnull %448, ptr noundef nonnull %16) #11
  %454 = getelementptr inbounds i8, ptr %423, i64 %446
  store i8 0, ptr %454, align 1, !tbaa !69
  %455 = sext i32 %447 to i64
  %456 = getelementptr inbounds %struct.BMElemSort, ptr %427, i64 %455, i32 1
  %457 = trunc i64 %446 to i32
  store i32 %457, ptr %456, align 4, !tbaa !214
  %458 = load float, ptr %16, align 4, !tbaa !142
  %459 = load float, ptr %13, align 4, !tbaa !142
  %460 = fsub float %458, %459
  %461 = load float, ptr %440, align 4, !tbaa !142
  %462 = load float, ptr %441, align 4, !tbaa !142
  %463 = fsub float %461, %462
  %464 = load float, ptr %442, align 4, !tbaa !142
  %465 = load float, ptr %443, align 4, !tbaa !142
  %466 = fsub float %464, %465
  %467 = fmul float %463, %463
  %468 = call float @llvm.fmuladd.f32(float %460, float %460, float %467)
  %469 = call float @llvm.fmuladd.f32(float %466, float %466, float %468)
  %470 = fmul float %256, %469
  %471 = add nsw i32 %447, 1
  %472 = getelementptr inbounds %struct.BMElemSort, ptr %427, i64 %455
  store float %470, ptr %472, align 4, !tbaa !216
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #11
  br label %475

473:                                              ; preds = %445
  %474 = getelementptr inbounds i8, ptr %423, i64 %446
  store i8 1, ptr %474, align 1, !tbaa !69
  br label %475

475:                                              ; preds = %473, %453
  %476 = phi i32 [ %447, %473 ], [ %471, %453 ]
  %477 = load ptr, ptr %432, align 8, !tbaa !65
  %478 = call ptr %477(ptr noundef nonnull %3) #11
  %479 = add nuw i64 %446, 1
  %480 = icmp eq ptr %478, null
  br i1 %480, label %481, label %445, !llvm.loop !224

481:                                              ; preds = %475
  store i32 %476, ptr %439, align 4, !tbaa !102
  br label %482

482:                                              ; preds = %420, %481, %416
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  br label %1026

483:                                              ; preds = %252
  %484 = icmp eq i32 %24, 4
  %485 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 2
  %486 = load i32, ptr %485, align 4
  %487 = icmp ne i32 %486, 0
  %488 = select i1 %484, i1 %487, i1 false
  br i1 %488, label %489, label %545

489:                                              ; preds = %483
  %490 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %491 = sext i32 %486 to i64
  %492 = tail call ptr %490(i64 noundef %491, ptr noundef nonnull @.str.516) #11
  %493 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 2
  store ptr %492, ptr %493, align 16, !tbaa !105
  %494 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %495 = shl nsw i64 %491, 3
  %496 = tail call ptr %494(i64 noundef %495, ptr noundef nonnull @.str.517) #11
  %497 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 2
  store ptr %496, ptr %497, align 16, !tbaa !105
  %498 = load ptr, ptr %58, align 8, !tbaa !50
  %499 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %499, align 4, !tbaa !62
  %500 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %500, align 8, !tbaa !64
  %501 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %501, align 8, !tbaa !65
  %502 = getelementptr inbounds %struct.BMesh, ptr %498, i64 0, i32 12
  %503 = load ptr, ptr %502, align 8, !tbaa !83
  store ptr %503, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %504 = load ptr, ptr %501, align 8, !tbaa !65
  %505 = call ptr %504(ptr noundef nonnull %3) #11
  %506 = icmp eq ptr %505, null
  br i1 %506, label %1026, label %507

507:                                              ; preds = %489
  %508 = icmp eq i32 %57, 0
  %509 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 2
  %510 = sitofp i32 %486 to float
  %511 = load i32, ptr %509, align 4, !tbaa !102
  br label %512

512:                                              ; preds = %507, %539
  %513 = phi i64 [ 0, %507 ], [ %543, %539 ]
  %514 = phi i32 [ %511, %507 ], [ %540, %539 ]
  %515 = phi ptr [ %505, %507 ], [ %542, %539 ]
  %516 = getelementptr inbounds %struct.BMHeader, ptr %515, i64 0, i32 3
  %517 = load i8, ptr %516, align 1, !tbaa !70
  %518 = and i8 %517, 1
  %519 = icmp eq i8 %518, 0
  br i1 %519, label %537, label %520

520:                                              ; preds = %512
  %521 = getelementptr inbounds %struct.BMFace, ptr %515, i64 0, i32 5
  %522 = load i16, ptr %521, align 8, !tbaa !225
  %523 = sext i16 %522 to i32
  %524 = sub nsw i32 32766, %523
  %525 = sitofp i32 %524 to float
  %526 = sitofp i16 %522 to float
  %527 = select i1 %508, float %526, float %525
  %528 = getelementptr inbounds i8, ptr %492, i64 %513
  store i8 0, ptr %528, align 1, !tbaa !69
  %529 = sext i32 %514 to i64
  %530 = getelementptr inbounds %struct.BMElemSort, ptr %496, i64 %529, i32 1
  %531 = trunc i64 %513 to i32
  store i32 %531, ptr %530, align 4, !tbaa !214
  %532 = trunc i64 %513 to i32
  %533 = sitofp i32 %532 to float
  %534 = call float @llvm.fmuladd.f32(float %527, float %510, float %533)
  %535 = add nsw i32 %514, 1
  %536 = getelementptr inbounds %struct.BMElemSort, ptr %496, i64 %529
  store float %534, ptr %536, align 4, !tbaa !216
  br label %539

537:                                              ; preds = %512
  %538 = getelementptr inbounds i8, ptr %492, i64 %513
  store i8 1, ptr %538, align 1, !tbaa !69
  br label %539

539:                                              ; preds = %537, %520
  %540 = phi i32 [ %514, %537 ], [ %535, %520 ]
  %541 = load ptr, ptr %501, align 8, !tbaa !65
  %542 = call ptr %541(ptr noundef nonnull %3) #11
  %543 = add nuw i64 %513, 1
  %544 = icmp eq ptr %542, null
  br i1 %544, label %1024, label %512, !llvm.loop !226

545:                                              ; preds = %483
  switch i32 %24, label %1026 [
    i32 5, label %546
    i32 6, label %732
    i32 7, label %878
  ]

546:                                              ; preds = %545
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %547 = load i32, ptr %7, align 4, !tbaa !102
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %586, label %549

549:                                              ; preds = %546
  %550 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %551 = sext i32 %547 to i64
  %552 = shl nsw i64 %551, 2
  %553 = tail call ptr %550(i64 noundef %552, ptr noundef nonnull @.str.518) #11
  store ptr %553, ptr %17, align 16, !tbaa !105
  %554 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %555 = tail call ptr %554(i64 noundef %552, ptr noundef nonnull @.str.519) #11
  store ptr %555, ptr %6, align 16, !tbaa !105
  %556 = load ptr, ptr %58, align 8, !tbaa !50
  %557 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %557, align 4, !tbaa !62
  %558 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %558, align 8, !tbaa !64
  %559 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %559, align 8, !tbaa !65
  %560 = getelementptr inbounds %struct.BMesh, ptr %556, i64 0, i32 9
  %561 = load ptr, ptr %560, align 8, !tbaa !66
  store ptr %561, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %562 = load ptr, ptr %559, align 8, !tbaa !65
  %563 = call ptr %562(ptr noundef nonnull %3) #11
  %564 = icmp eq ptr %563, null
  br i1 %564, label %586, label %565

565:                                              ; preds = %549, %580
  %566 = phi ptr [ %583, %580 ], [ %563, %549 ]
  %567 = phi i32 [ %584, %580 ], [ 0, %549 ]
  %568 = phi ptr [ %581, %580 ], [ %553, %549 ]
  %569 = getelementptr inbounds %struct.BMHeader, ptr %566, i64 0, i32 3
  %570 = load i8, ptr %569, align 1, !tbaa !70
  %571 = and i8 %570, 1
  %572 = icmp eq i8 %571, 0
  br i1 %572, label %578, label %573

573:                                              ; preds = %565
  %574 = load i32, ptr %8, align 4, !tbaa !102
  %575 = add nsw i32 %574, 1
  store i32 %575, ptr %8, align 4, !tbaa !102
  %576 = sext i32 %574 to i64
  %577 = getelementptr inbounds i32, ptr %555, i64 %576
  store i32 %567, ptr %577, align 4, !tbaa !102
  br label %580

578:                                              ; preds = %565
  store i32 %567, ptr %568, align 4, !tbaa !102
  %579 = getelementptr inbounds i32, ptr %568, i64 1
  br label %580

580:                                              ; preds = %578, %573
  %581 = phi ptr [ %568, %573 ], [ %579, %578 ]
  %582 = load ptr, ptr %559, align 8, !tbaa !65
  %583 = call ptr %582(ptr noundef nonnull %3) #11
  %584 = add nuw nsw i32 %567, 1
  %585 = icmp eq ptr %583, null
  br i1 %585, label %586, label %565, !llvm.loop !227

586:                                              ; preds = %580, %549, %546
  %587 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 1
  %588 = load i32, ptr %587, align 4, !tbaa !102
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %631, label %590

590:                                              ; preds = %586
  %591 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %592 = sext i32 %588 to i64
  %593 = shl nsw i64 %592, 2
  %594 = call ptr %591(i64 noundef %593, ptr noundef nonnull @.str.520) #11
  %595 = getelementptr inbounds [3 x ptr], ptr %17, i64 0, i64 1
  store ptr %594, ptr %595, align 8, !tbaa !105
  %596 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %597 = call ptr %596(i64 noundef %593, ptr noundef nonnull @.str.521) #11
  %598 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 1
  store ptr %597, ptr %598, align 8, !tbaa !105
  %599 = load ptr, ptr %58, align 8, !tbaa !50
  %600 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %600, align 4, !tbaa !62
  %601 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %601, align 8, !tbaa !64
  %602 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %602, align 8, !tbaa !65
  %603 = getelementptr inbounds %struct.BMesh, ptr %599, i64 0, i32 10
  %604 = load ptr, ptr %603, align 8, !tbaa !95
  store ptr %604, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %605 = load ptr, ptr %602, align 8, !tbaa !65
  %606 = call ptr %605(ptr noundef nonnull %3) #11
  %607 = icmp eq ptr %606, null
  br i1 %607, label %631, label %608

608:                                              ; preds = %590
  %609 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 1
  br label %610

610:                                              ; preds = %608, %625
  %611 = phi ptr [ %606, %608 ], [ %628, %625 ]
  %612 = phi i32 [ 0, %608 ], [ %629, %625 ]
  %613 = phi ptr [ %594, %608 ], [ %626, %625 ]
  %614 = getelementptr inbounds %struct.BMHeader, ptr %611, i64 0, i32 3
  %615 = load i8, ptr %614, align 1, !tbaa !70
  %616 = and i8 %615, 1
  %617 = icmp eq i8 %616, 0
  br i1 %617, label %623, label %618

618:                                              ; preds = %610
  %619 = load i32, ptr %609, align 4, !tbaa !102
  %620 = add nsw i32 %619, 1
  store i32 %620, ptr %609, align 4, !tbaa !102
  %621 = sext i32 %619 to i64
  %622 = getelementptr inbounds i32, ptr %597, i64 %621
  store i32 %612, ptr %622, align 4, !tbaa !102
  br label %625

623:                                              ; preds = %610
  store i32 %612, ptr %613, align 4, !tbaa !102
  %624 = getelementptr inbounds i32, ptr %613, i64 1
  br label %625

625:                                              ; preds = %623, %618
  %626 = phi ptr [ %613, %618 ], [ %624, %623 ]
  %627 = load ptr, ptr %602, align 8, !tbaa !65
  %628 = call ptr %627(ptr noundef nonnull %3) #11
  %629 = add nuw nsw i32 %612, 1
  %630 = icmp eq ptr %628, null
  br i1 %630, label %631, label %610, !llvm.loop !228

631:                                              ; preds = %625, %590, %586
  %632 = load i32, ptr %485, align 4, !tbaa !102
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %675, label %634

634:                                              ; preds = %631
  %635 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %636 = sext i32 %632 to i64
  %637 = shl nsw i64 %636, 2
  %638 = call ptr %635(i64 noundef %637, ptr noundef nonnull @.str.522) #11
  %639 = getelementptr inbounds [3 x ptr], ptr %17, i64 0, i64 2
  store ptr %638, ptr %639, align 16, !tbaa !105
  %640 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %641 = call ptr %640(i64 noundef %637, ptr noundef nonnull @.str.523) #11
  %642 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 2
  store ptr %641, ptr %642, align 16, !tbaa !105
  %643 = load ptr, ptr %58, align 8, !tbaa !50
  %644 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %644, align 4, !tbaa !62
  %645 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %645, align 8, !tbaa !64
  %646 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %646, align 8, !tbaa !65
  %647 = getelementptr inbounds %struct.BMesh, ptr %643, i64 0, i32 12
  %648 = load ptr, ptr %647, align 8, !tbaa !83
  store ptr %648, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %649 = load ptr, ptr %646, align 8, !tbaa !65
  %650 = call ptr %649(ptr noundef nonnull %3) #11
  %651 = icmp eq ptr %650, null
  br i1 %651, label %675, label %652

652:                                              ; preds = %634
  %653 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 2
  br label %654

654:                                              ; preds = %652, %669
  %655 = phi ptr [ %650, %652 ], [ %672, %669 ]
  %656 = phi i32 [ 0, %652 ], [ %673, %669 ]
  %657 = phi ptr [ %638, %652 ], [ %670, %669 ]
  %658 = getelementptr inbounds %struct.BMHeader, ptr %655, i64 0, i32 3
  %659 = load i8, ptr %658, align 1, !tbaa !70
  %660 = and i8 %659, 1
  %661 = icmp eq i8 %660, 0
  br i1 %661, label %667, label %662

662:                                              ; preds = %654
  %663 = load i32, ptr %653, align 4, !tbaa !102
  %664 = add nsw i32 %663, 1
  store i32 %664, ptr %653, align 4, !tbaa !102
  %665 = sext i32 %663 to i64
  %666 = getelementptr inbounds i32, ptr %641, i64 %665
  store i32 %656, ptr %666, align 4, !tbaa !102
  br label %669

667:                                              ; preds = %654
  store i32 %656, ptr %657, align 4, !tbaa !102
  %668 = getelementptr inbounds i32, ptr %657, i64 1
  br label %669

669:                                              ; preds = %667, %662
  %670 = phi ptr [ %657, %662 ], [ %668, %667 ]
  %671 = load ptr, ptr %646, align 8, !tbaa !65
  %672 = call ptr %671(ptr noundef nonnull %3) #11
  %673 = add nuw nsw i32 %656, 1
  %674 = icmp eq ptr %672, null
  br i1 %674, label %675, label %654, !llvm.loop !229

675:                                              ; preds = %669, %634, %631
  %676 = icmp eq i32 %57, 0
  br label %677

677:                                              ; preds = %675, %728
  %678 = phi i64 [ 2, %675 ], [ %729, %728 ]
  %679 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 %678
  %680 = load i32, ptr %679, align 4, !tbaa !102
  %681 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 %678
  %682 = load i32, ptr %681, align 4, !tbaa !102
  %683 = getelementptr inbounds [3 x ptr], ptr %17, i64 0, i64 %678
  %684 = load ptr, ptr %683, align 8, !tbaa !105
  %685 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %678
  %686 = load ptr, ptr %685, align 8, !tbaa !105
  %687 = icmp ne ptr %684, null
  %688 = icmp ne ptr %686, null
  %689 = select i1 %687, i1 %688, i1 false
  br i1 %689, label %690, label %728, !llvm.loop !230

690:                                              ; preds = %677
  %691 = icmp eq i32 %682, 0
  %692 = icmp eq i32 %682, %680
  %693 = select i1 %691, i1 true, i1 %692
  br i1 %693, label %694, label %697

694:                                              ; preds = %690
  %695 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %695(ptr noundef nonnull %684) #11
  %696 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %696(ptr noundef nonnull %686) #11
  store ptr null, ptr %685, align 8, !tbaa !105
  br label %728, !llvm.loop !230

697:                                              ; preds = %690
  br i1 %676, label %704, label %698

698:                                              ; preds = %697
  %699 = sub nsw i32 %680, %682
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i32, ptr %684, i64 %700
  %702 = sext i32 %682 to i64
  %703 = shl nsw i64 %702, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %701, ptr nonnull align 4 %686, i64 %703, i1 false)
  br label %710

704:                                              ; preds = %697
  %705 = sext i32 %682 to i64
  %706 = getelementptr inbounds i32, ptr %686, i64 %705
  %707 = sub nsw i32 %680, %682
  %708 = sext i32 %707 to i64
  %709 = shl nsw i64 %708, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %706, ptr nonnull align 4 %684, i64 %709, i1 false)
  store ptr %684, ptr %685, align 8, !tbaa !105
  store ptr %686, ptr %683, align 8, !tbaa !105
  br label %710

710:                                              ; preds = %704, %698
  %711 = phi ptr [ %686, %698 ], [ %684, %704 ]
  %712 = load ptr, ptr %683, align 8, !tbaa !105
  %713 = icmp eq i32 %680, 0
  br i1 %713, label %726, label %714

714:                                              ; preds = %710
  %715 = sext i32 %680 to i64
  %716 = getelementptr inbounds i32, ptr %712, i64 %715
  br label %717

717:                                              ; preds = %714, %717
  %718 = phi i32 [ %721, %717 ], [ %680, %714 ]
  %719 = phi ptr [ %720, %717 ], [ %716, %714 ]
  %720 = getelementptr inbounds i32, ptr %719, i64 -1
  %721 = add nsw i32 %718, -1
  %722 = load i32, ptr %720, align 4, !tbaa !102
  %723 = zext i32 %722 to i64
  %724 = getelementptr inbounds i32, ptr %711, i64 %723
  store i32 %721, ptr %724, align 4, !tbaa !102
  %725 = icmp eq i32 %721, 0
  br i1 %725, label %726, label %717, !llvm.loop !231

726:                                              ; preds = %717, %710
  %727 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %727(ptr noundef %712) #11
  br label %728

728:                                              ; preds = %726, %694, %677
  %729 = add nsw i64 %678, -1
  %730 = icmp eq i64 %678, 0
  br i1 %730, label %731, label %677

731:                                              ; preds = %728
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #11
  br label %1026

732:                                              ; preds = %545
  %733 = load i32, ptr %7, align 4, !tbaa !102
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %778, label %735

735:                                              ; preds = %732
  %736 = tail call ptr @BLI_rng_new_srandom(i32 noundef %30) #11
  %737 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %738 = sext i32 %733 to i64
  %739 = tail call ptr %737(i64 noundef %738, ptr noundef nonnull @.str.512) #11
  store ptr %739, ptr %4, align 16, !tbaa !105
  %740 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %741 = shl nsw i64 %738, 3
  %742 = tail call ptr %740(i64 noundef %741, ptr noundef nonnull @.str.513) #11
  store ptr %742, ptr %5, align 16, !tbaa !105
  %743 = load ptr, ptr %58, align 8, !tbaa !50
  %744 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %744, align 4, !tbaa !62
  %745 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %745, align 8, !tbaa !64
  %746 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %746, align 8, !tbaa !65
  %747 = getelementptr inbounds %struct.BMesh, ptr %743, i64 0, i32 9
  %748 = load ptr, ptr %747, align 8, !tbaa !66
  store ptr %748, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %749 = load ptr, ptr %746, align 8, !tbaa !65
  %750 = call ptr %749(ptr noundef nonnull %3) #11
  %751 = load i32, ptr %8, align 4, !tbaa !102
  %752 = icmp eq ptr %750, null
  br i1 %752, label %776, label %753

753:                                              ; preds = %735, %770
  %754 = phi i64 [ %774, %770 ], [ 0, %735 ]
  %755 = phi ptr [ %773, %770 ], [ %750, %735 ]
  %756 = phi i32 [ %771, %770 ], [ %751, %735 ]
  %757 = getelementptr inbounds %struct.BMHeader, ptr %755, i64 0, i32 3
  %758 = load i8, ptr %757, align 1, !tbaa !70
  %759 = and i8 %758, 1
  %760 = icmp eq i8 %759, 0
  %761 = getelementptr inbounds i8, ptr %739, i64 %754
  br i1 %760, label %769, label %762

762:                                              ; preds = %753
  store i8 0, ptr %761, align 1, !tbaa !69
  %763 = sext i32 %756 to i64
  %764 = getelementptr inbounds %struct.BMElemSort, ptr %742, i64 %763, i32 1
  %765 = trunc i64 %754 to i32
  store i32 %765, ptr %764, align 4, !tbaa !214
  %766 = call float @BLI_rng_get_float(ptr noundef %736) #11
  %767 = add nsw i32 %756, 1
  %768 = getelementptr inbounds %struct.BMElemSort, ptr %742, i64 %763
  store float %766, ptr %768, align 4, !tbaa !216
  br label %770

769:                                              ; preds = %753
  store i8 1, ptr %761, align 1, !tbaa !69
  br label %770

770:                                              ; preds = %769, %762
  %771 = phi i32 [ %756, %769 ], [ %767, %762 ]
  %772 = load ptr, ptr %746, align 8, !tbaa !65
  %773 = call ptr %772(ptr noundef nonnull %3) #11
  %774 = add nuw i64 %754, 1
  %775 = icmp eq ptr %773, null
  br i1 %775, label %776, label %753, !llvm.loop !232

776:                                              ; preds = %770, %735
  %777 = phi i32 [ %751, %735 ], [ %771, %770 ]
  store i32 %777, ptr %8, align 4, !tbaa !102
  call void @BLI_rng_free(ptr noundef %736) #11
  br label %778

778:                                              ; preds = %776, %732
  %779 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 1
  %780 = load i32, ptr %779, align 4, !tbaa !102
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %829, label %782

782:                                              ; preds = %778
  %783 = call ptr @BLI_rng_new_srandom(i32 noundef %30) #11
  %784 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %785 = sext i32 %780 to i64
  %786 = call ptr %784(i64 noundef %785, ptr noundef nonnull @.str.514) #11
  %787 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 1
  store ptr %786, ptr %787, align 8, !tbaa !105
  %788 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %789 = shl nsw i64 %785, 3
  %790 = call ptr %788(i64 noundef %789, ptr noundef nonnull @.str.515) #11
  %791 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 1
  store ptr %790, ptr %791, align 8, !tbaa !105
  %792 = load ptr, ptr %58, align 8, !tbaa !50
  %793 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %793, align 4, !tbaa !62
  %794 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %794, align 8, !tbaa !64
  %795 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %795, align 8, !tbaa !65
  %796 = getelementptr inbounds %struct.BMesh, ptr %792, i64 0, i32 10
  %797 = load ptr, ptr %796, align 8, !tbaa !95
  store ptr %797, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %798 = load ptr, ptr %795, align 8, !tbaa !65
  %799 = call ptr %798(ptr noundef nonnull %3) #11
  %800 = icmp eq ptr %799, null
  br i1 %800, label %828, label %801

801:                                              ; preds = %782
  %802 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 1
  %803 = load i32, ptr %802, align 4, !tbaa !102
  br label %804

804:                                              ; preds = %801, %821
  %805 = phi i64 [ 0, %801 ], [ %825, %821 ]
  %806 = phi i32 [ %803, %801 ], [ %822, %821 ]
  %807 = phi ptr [ %799, %801 ], [ %824, %821 ]
  %808 = getelementptr inbounds %struct.BMHeader, ptr %807, i64 0, i32 3
  %809 = load i8, ptr %808, align 1, !tbaa !70
  %810 = and i8 %809, 1
  %811 = icmp eq i8 %810, 0
  %812 = getelementptr inbounds i8, ptr %786, i64 %805
  br i1 %811, label %820, label %813

813:                                              ; preds = %804
  store i8 0, ptr %812, align 1, !tbaa !69
  %814 = sext i32 %806 to i64
  %815 = getelementptr inbounds %struct.BMElemSort, ptr %790, i64 %814, i32 1
  %816 = trunc i64 %805 to i32
  store i32 %816, ptr %815, align 4, !tbaa !214
  %817 = call float @BLI_rng_get_float(ptr noundef %783) #11
  %818 = add nsw i32 %806, 1
  %819 = getelementptr inbounds %struct.BMElemSort, ptr %790, i64 %814
  store float %817, ptr %819, align 4, !tbaa !216
  br label %821

820:                                              ; preds = %804
  store i8 1, ptr %812, align 1, !tbaa !69
  br label %821

821:                                              ; preds = %820, %813
  %822 = phi i32 [ %806, %820 ], [ %818, %813 ]
  %823 = load ptr, ptr %795, align 8, !tbaa !65
  %824 = call ptr %823(ptr noundef nonnull %3) #11
  %825 = add nuw i64 %805, 1
  %826 = icmp eq ptr %824, null
  br i1 %826, label %827, label %804, !llvm.loop !233

827:                                              ; preds = %821
  store i32 %822, ptr %802, align 4, !tbaa !102
  br label %828

828:                                              ; preds = %827, %782
  call void @BLI_rng_free(ptr noundef %783) #11
  br label %829

829:                                              ; preds = %828, %778
  %830 = icmp eq i32 %486, 0
  br i1 %830, label %1026, label %831

831:                                              ; preds = %829
  %832 = call ptr @BLI_rng_new_srandom(i32 noundef %30) #11
  %833 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %834 = sext i32 %486 to i64
  %835 = call ptr %833(i64 noundef %834, ptr noundef nonnull @.str.516) #11
  %836 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 2
  store ptr %835, ptr %836, align 16, !tbaa !105
  %837 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %838 = shl nsw i64 %834, 3
  %839 = call ptr %837(i64 noundef %838, ptr noundef nonnull @.str.517) #11
  %840 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 2
  store ptr %839, ptr %840, align 16, !tbaa !105
  %841 = load ptr, ptr %58, align 8, !tbaa !50
  %842 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %842, align 4, !tbaa !62
  %843 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %843, align 8, !tbaa !64
  %844 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %844, align 8, !tbaa !65
  %845 = getelementptr inbounds %struct.BMesh, ptr %841, i64 0, i32 12
  %846 = load ptr, ptr %845, align 8, !tbaa !83
  store ptr %846, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %847 = load ptr, ptr %844, align 8, !tbaa !65
  %848 = call ptr %847(ptr noundef nonnull %3) #11
  %849 = icmp eq ptr %848, null
  br i1 %849, label %877, label %850

850:                                              ; preds = %831
  %851 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 2
  %852 = load i32, ptr %851, align 4, !tbaa !102
  br label %853

853:                                              ; preds = %850, %870
  %854 = phi i64 [ 0, %850 ], [ %874, %870 ]
  %855 = phi i32 [ %852, %850 ], [ %871, %870 ]
  %856 = phi ptr [ %848, %850 ], [ %873, %870 ]
  %857 = getelementptr inbounds %struct.BMHeader, ptr %856, i64 0, i32 3
  %858 = load i8, ptr %857, align 1, !tbaa !70
  %859 = and i8 %858, 1
  %860 = icmp eq i8 %859, 0
  %861 = getelementptr inbounds i8, ptr %835, i64 %854
  br i1 %860, label %869, label %862

862:                                              ; preds = %853
  store i8 0, ptr %861, align 1, !tbaa !69
  %863 = sext i32 %855 to i64
  %864 = getelementptr inbounds %struct.BMElemSort, ptr %839, i64 %863, i32 1
  %865 = trunc i64 %854 to i32
  store i32 %865, ptr %864, align 4, !tbaa !214
  %866 = call float @BLI_rng_get_float(ptr noundef %832) #11
  %867 = add nsw i32 %855, 1
  %868 = getelementptr inbounds %struct.BMElemSort, ptr %839, i64 %863
  store float %866, ptr %868, align 4, !tbaa !216
  br label %870

869:                                              ; preds = %853
  store i8 1, ptr %861, align 1, !tbaa !69
  br label %870

870:                                              ; preds = %869, %862
  %871 = phi i32 [ %855, %869 ], [ %867, %862 ]
  %872 = load ptr, ptr %844, align 8, !tbaa !65
  %873 = call ptr %872(ptr noundef nonnull %3) #11
  %874 = add nuw i64 %854, 1
  %875 = icmp eq ptr %873, null
  br i1 %875, label %876, label %853, !llvm.loop !234

876:                                              ; preds = %870
  store i32 %871, ptr %851, align 4, !tbaa !102
  br label %877

877:                                              ; preds = %876, %831
  call void @BLI_rng_free(ptr noundef %832) #11
  br label %1026

878:                                              ; preds = %545
  %879 = load i32, ptr %7, align 4, !tbaa !102
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %925, label %881

881:                                              ; preds = %878
  %882 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %883 = sext i32 %879 to i64
  %884 = tail call ptr %882(i64 noundef %883, ptr noundef nonnull @.str.512) #11
  store ptr %884, ptr %4, align 16, !tbaa !105
  %885 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %886 = shl nsw i64 %883, 3
  %887 = tail call ptr %885(i64 noundef %886, ptr noundef nonnull @.str.513) #11
  store ptr %887, ptr %5, align 16, !tbaa !105
  %888 = load ptr, ptr %58, align 8, !tbaa !50
  %889 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %889, align 4, !tbaa !62
  %890 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %890, align 8, !tbaa !64
  %891 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %891, align 8, !tbaa !65
  %892 = getelementptr inbounds %struct.BMesh, ptr %888, i64 0, i32 9
  %893 = load ptr, ptr %892, align 8, !tbaa !66
  store ptr %893, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %894 = load ptr, ptr %891, align 8, !tbaa !65
  %895 = call ptr %894(ptr noundef nonnull %3) #11
  %896 = load i32, ptr %8, align 4, !tbaa !102
  %897 = icmp eq ptr %895, null
  br i1 %897, label %923, label %898

898:                                              ; preds = %881, %917
  %899 = phi i64 [ %921, %917 ], [ 0, %881 ]
  %900 = phi ptr [ %920, %917 ], [ %895, %881 ]
  %901 = phi i32 [ %918, %917 ], [ %896, %881 ]
  %902 = getelementptr inbounds %struct.BMHeader, ptr %900, i64 0, i32 3
  %903 = load i8, ptr %902, align 1, !tbaa !70
  %904 = and i8 %903, 1
  %905 = icmp eq i8 %904, 0
  %906 = getelementptr inbounds i8, ptr %884, i64 %899
  br i1 %905, label %916, label %907

907:                                              ; preds = %898
  store i8 0, ptr %906, align 1, !tbaa !69
  %908 = sext i32 %901 to i64
  %909 = getelementptr inbounds %struct.BMElemSort, ptr %887, i64 %908, i32 1
  %910 = trunc i64 %899 to i32
  store i32 %910, ptr %909, align 4, !tbaa !214
  %911 = trunc i64 %899 to i32
  %912 = sub i32 0, %911
  %913 = sitofp i32 %912 to float
  %914 = add nsw i32 %901, 1
  %915 = getelementptr inbounds %struct.BMElemSort, ptr %887, i64 %908
  store float %913, ptr %915, align 4, !tbaa !216
  br label %917

916:                                              ; preds = %898
  store i8 1, ptr %906, align 1, !tbaa !69
  br label %917

917:                                              ; preds = %916, %907
  %918 = phi i32 [ %901, %916 ], [ %914, %907 ]
  %919 = load ptr, ptr %891, align 8, !tbaa !65
  %920 = call ptr %919(ptr noundef nonnull %3) #11
  %921 = add nuw i64 %899, 1
  %922 = icmp eq ptr %920, null
  br i1 %922, label %923, label %898, !llvm.loop !235

923:                                              ; preds = %917, %881
  %924 = phi i32 [ %896, %881 ], [ %918, %917 ]
  store i32 %924, ptr %8, align 4, !tbaa !102
  br label %925

925:                                              ; preds = %923, %878
  %926 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 1
  %927 = load i32, ptr %926, align 4, !tbaa !102
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %976, label %929

929:                                              ; preds = %925
  %930 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %931 = sext i32 %927 to i64
  %932 = call ptr %930(i64 noundef %931, ptr noundef nonnull @.str.514) #11
  %933 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 1
  store ptr %932, ptr %933, align 8, !tbaa !105
  %934 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %935 = shl nsw i64 %931, 3
  %936 = call ptr %934(i64 noundef %935, ptr noundef nonnull @.str.515) #11
  %937 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 1
  store ptr %936, ptr %937, align 8, !tbaa !105
  %938 = load ptr, ptr %58, align 8, !tbaa !50
  %939 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %939, align 4, !tbaa !62
  %940 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %940, align 8, !tbaa !64
  %941 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %941, align 8, !tbaa !65
  %942 = getelementptr inbounds %struct.BMesh, ptr %938, i64 0, i32 10
  %943 = load ptr, ptr %942, align 8, !tbaa !95
  store ptr %943, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %944 = load ptr, ptr %941, align 8, !tbaa !65
  %945 = call ptr %944(ptr noundef nonnull %3) #11
  %946 = icmp eq ptr %945, null
  br i1 %946, label %976, label %947

947:                                              ; preds = %929
  %948 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 1
  %949 = load i32, ptr %948, align 4, !tbaa !102
  br label %950

950:                                              ; preds = %947, %969
  %951 = phi i64 [ 0, %947 ], [ %973, %969 ]
  %952 = phi i32 [ %949, %947 ], [ %970, %969 ]
  %953 = phi ptr [ %945, %947 ], [ %972, %969 ]
  %954 = getelementptr inbounds %struct.BMHeader, ptr %953, i64 0, i32 3
  %955 = load i8, ptr %954, align 1, !tbaa !70
  %956 = and i8 %955, 1
  %957 = icmp eq i8 %956, 0
  %958 = getelementptr inbounds i8, ptr %932, i64 %951
  br i1 %957, label %968, label %959

959:                                              ; preds = %950
  store i8 0, ptr %958, align 1, !tbaa !69
  %960 = sext i32 %952 to i64
  %961 = getelementptr inbounds %struct.BMElemSort, ptr %936, i64 %960, i32 1
  %962 = trunc i64 %951 to i32
  store i32 %962, ptr %961, align 4, !tbaa !214
  %963 = trunc i64 %951 to i32
  %964 = sub i32 0, %963
  %965 = sitofp i32 %964 to float
  %966 = add nsw i32 %952, 1
  %967 = getelementptr inbounds %struct.BMElemSort, ptr %936, i64 %960
  store float %965, ptr %967, align 4, !tbaa !216
  br label %969

968:                                              ; preds = %950
  store i8 1, ptr %958, align 1, !tbaa !69
  br label %969

969:                                              ; preds = %968, %959
  %970 = phi i32 [ %952, %968 ], [ %966, %959 ]
  %971 = load ptr, ptr %941, align 8, !tbaa !65
  %972 = call ptr %971(ptr noundef nonnull %3) #11
  %973 = add nuw i64 %951, 1
  %974 = icmp eq ptr %972, null
  br i1 %974, label %975, label %950, !llvm.loop !236

975:                                              ; preds = %969
  store i32 %970, ptr %948, align 4, !tbaa !102
  br label %976

976:                                              ; preds = %929, %975, %925
  %977 = icmp eq i32 %486, 0
  br i1 %977, label %1026, label %978

978:                                              ; preds = %976
  %979 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %980 = sext i32 %486 to i64
  %981 = call ptr %979(i64 noundef %980, ptr noundef nonnull @.str.516) #11
  %982 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 2
  store ptr %981, ptr %982, align 16, !tbaa !105
  %983 = load ptr, ptr @MEM_callocN, align 8, !tbaa !105
  %984 = shl nsw i64 %980, 3
  %985 = call ptr %983(i64 noundef %984, ptr noundef nonnull @.str.517) #11
  %986 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 2
  store ptr %985, ptr %986, align 16, !tbaa !105
  %987 = load ptr, ptr %58, align 8, !tbaa !50
  %988 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %988, align 4, !tbaa !62
  %989 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %989, align 8, !tbaa !64
  %990 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %990, align 8, !tbaa !65
  %991 = getelementptr inbounds %struct.BMesh, ptr %987, i64 0, i32 12
  %992 = load ptr, ptr %991, align 8, !tbaa !83
  store ptr %992, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %993 = load ptr, ptr %990, align 8, !tbaa !65
  %994 = call ptr %993(ptr noundef nonnull %3) #11
  %995 = icmp eq ptr %994, null
  br i1 %995, label %1026, label %996

996:                                              ; preds = %978
  %997 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 2
  %998 = load i32, ptr %997, align 4, !tbaa !102
  br label %999

999:                                              ; preds = %996, %1018
  %1000 = phi i64 [ 0, %996 ], [ %1022, %1018 ]
  %1001 = phi i32 [ %998, %996 ], [ %1019, %1018 ]
  %1002 = phi ptr [ %994, %996 ], [ %1021, %1018 ]
  %1003 = getelementptr inbounds %struct.BMHeader, ptr %1002, i64 0, i32 3
  %1004 = load i8, ptr %1003, align 1, !tbaa !70
  %1005 = and i8 %1004, 1
  %1006 = icmp eq i8 %1005, 0
  %1007 = getelementptr inbounds i8, ptr %981, i64 %1000
  br i1 %1006, label %1017, label %1008

1008:                                             ; preds = %999
  store i8 0, ptr %1007, align 1, !tbaa !69
  %1009 = sext i32 %1001 to i64
  %1010 = getelementptr inbounds %struct.BMElemSort, ptr %985, i64 %1009, i32 1
  %1011 = trunc i64 %1000 to i32
  store i32 %1011, ptr %1010, align 4, !tbaa !214
  %1012 = trunc i64 %1000 to i32
  %1013 = sub i32 0, %1012
  %1014 = sitofp i32 %1013 to float
  %1015 = add nsw i32 %1001, 1
  %1016 = getelementptr inbounds %struct.BMElemSort, ptr %985, i64 %1009
  store float %1014, ptr %1016, align 4, !tbaa !216
  br label %1018

1017:                                             ; preds = %999
  store i8 1, ptr %1007, align 1, !tbaa !69
  br label %1018

1018:                                             ; preds = %1017, %1008
  %1019 = phi i32 [ %1001, %1017 ], [ %1015, %1008 ]
  %1020 = load ptr, ptr %990, align 8, !tbaa !65
  %1021 = call ptr %1020(ptr noundef nonnull %3) #11
  %1022 = add nuw i64 %1000, 1
  %1023 = icmp eq ptr %1021, null
  br i1 %1023, label %1025, label %999, !llvm.loop !237

1024:                                             ; preds = %539
  store i32 %540, ptr %509, align 4, !tbaa !102
  br label %1026

1025:                                             ; preds = %1018
  store i32 %1019, ptr %997, align 4, !tbaa !102
  br label %1026

1026:                                             ; preds = %978, %1025, %489, %1024, %976, %877, %829, %731, %545, %482, %251
  %1027 = load i32, ptr %8, align 4, !tbaa !102
  %1028 = icmp eq i32 %1027, 0
  %1029 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 1
  %1030 = load i32, ptr %1029, align 4
  %1031 = icmp eq i32 %1030, 0
  %1032 = select i1 %1028, i1 %1031, i1 false
  %1033 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 2
  %1034 = load i32, ptr %1033, align 4
  %1035 = icmp eq i32 %1034, 0
  %1036 = select i1 %1032, i1 %1035, i1 false
  br i1 %1036, label %1037, label %1059

1037:                                             ; preds = %1026, %1056
  %1038 = phi i64 [ %1057, %1056 ], [ 2, %1026 ]
  %1039 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 %1038
  %1040 = load ptr, ptr %1039, align 8, !tbaa !105
  %1041 = icmp eq ptr %1040, null
  br i1 %1041, label %1044, label %1042

1042:                                             ; preds = %1037
  %1043 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %1043(ptr noundef nonnull %1040) #11
  br label %1044

1044:                                             ; preds = %1042, %1037
  %1045 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 %1038
  %1046 = load ptr, ptr %1045, align 8, !tbaa !105
  %1047 = icmp eq ptr %1046, null
  br i1 %1047, label %1050, label %1048

1048:                                             ; preds = %1044
  %1049 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %1049(ptr noundef nonnull %1046) #11
  br label %1050

1050:                                             ; preds = %1048, %1044
  %1051 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %1038
  %1052 = load ptr, ptr %1051, align 8, !tbaa !105
  %1053 = icmp eq ptr %1052, null
  br i1 %1053, label %1056, label %1054

1054:                                             ; preds = %1050
  %1055 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %1055(ptr noundef nonnull %1052) #11
  br label %1056

1056:                                             ; preds = %1054, %1050
  %1057 = add nsw i64 %1038, -1
  %1058 = icmp eq i64 %1038, 0
  br i1 %1058, label %1135, label %1037, !llvm.loop !238

1059:                                             ; preds = %1026, %1115
  %1060 = phi i64 [ %1116, %1115 ], [ 2, %1026 ]
  %1061 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 %1060
  %1062 = load ptr, ptr %1061, align 8, !tbaa !105
  %1063 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 %1060
  %1064 = load ptr, ptr %1063, align 8, !tbaa !105
  %1065 = icmp ne ptr %1062, null
  %1066 = icmp ne ptr %1064, null
  %1067 = select i1 %1065, i1 %1066, i1 false
  br i1 %1067, label %1068, label %1109

1068:                                             ; preds = %1059
  %1069 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %1060
  %1070 = load ptr, ptr %1069, align 8, !tbaa !105
  %1071 = icmp eq ptr %1070, null
  br i1 %1071, label %1072, label %1109

1072:                                             ; preds = %1068
  %1073 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 %1060
  %1074 = load i32, ptr %1073, align 4, !tbaa !102
  %1075 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 %1060
  %1076 = load i32, ptr %1075, align 4, !tbaa !102
  %1077 = sext i32 %1076 to i64
  call void @qsort(ptr noundef nonnull %1064, i64 noundef %1077, i64 noundef 8, ptr noundef nonnull @bmelemsort_comp) #11
  %1078 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !105
  %1079 = sext i32 %1074 to i64
  %1080 = shl nsw i64 %1079, 2
  %1081 = call ptr %1078(i64 noundef %1080, ptr noundef nonnull @.str.524) #11
  store ptr %1081, ptr %1069, align 8, !tbaa !105
  %1082 = icmp eq i32 %1074, 0
  br i1 %1082, label %1109, label %1083

1083:                                             ; preds = %1072
  %1084 = getelementptr inbounds %struct.BMElemSort, ptr %1064, i64 %1077
  %1085 = getelementptr inbounds %struct.BMElemSort, ptr %1084, i64 -1
  %1086 = getelementptr inbounds i8, ptr %1062, i64 %1079
  br label %1087

1087:                                             ; preds = %1083, %1105
  %1088 = phi i64 [ %1079, %1083 ], [ %1092, %1105 ]
  %1089 = phi ptr [ %1086, %1083 ], [ %1091, %1105 ]
  %1090 = phi ptr [ %1085, %1083 ], [ %1106, %1105 ]
  %1091 = getelementptr inbounds i8, ptr %1089, i64 -1
  %1092 = add nsw i64 %1088, -1
  %1093 = load i8, ptr %1091, align 1, !tbaa !69
  %1094 = icmp eq i8 %1093, 0
  br i1 %1094, label %1098, label %1095

1095:                                             ; preds = %1087
  %1096 = getelementptr inbounds i32, ptr %1081, i64 %1092
  %1097 = trunc i64 %1092 to i32
  store i32 %1097, ptr %1096, align 4, !tbaa !102
  br label %1105

1098:                                             ; preds = %1087
  %1099 = getelementptr inbounds %struct.BMElemSort, ptr %1090, i64 0, i32 1
  %1100 = load i32, ptr %1099, align 4, !tbaa !214
  %1101 = sext i32 %1100 to i64
  %1102 = getelementptr inbounds i32, ptr %1081, i64 %1101
  %1103 = trunc i64 %1092 to i32
  store i32 %1103, ptr %1102, align 4, !tbaa !102
  %1104 = getelementptr inbounds %struct.BMElemSort, ptr %1090, i64 -1
  br label %1105

1105:                                             ; preds = %1098, %1095
  %1106 = phi ptr [ %1090, %1095 ], [ %1104, %1098 ]
  %1107 = and i64 %1092, 4294967295
  %1108 = icmp eq i64 %1107, 0
  br i1 %1108, label %1109, label %1087, !llvm.loop !239

1109:                                             ; preds = %1105, %1072, %1068, %1059
  br i1 %1065, label %1110, label %1112

1110:                                             ; preds = %1109
  %1111 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %1111(ptr noundef nonnull %1062) #11
  br label %1112

1112:                                             ; preds = %1110, %1109
  br i1 %1066, label %1113, label %1115

1113:                                             ; preds = %1112
  %1114 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %1114(ptr noundef nonnull %1064) #11
  br label %1115

1115:                                             ; preds = %1113, %1112
  %1116 = add nsw i64 %1060, -1
  %1117 = icmp eq i64 %1060, 0
  br i1 %1117, label %1118, label %1059, !llvm.loop !240

1118:                                             ; preds = %1115
  %1119 = load ptr, ptr %58, align 8, !tbaa !50
  %1120 = load ptr, ptr %6, align 16, !tbaa !105
  %1121 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 1
  %1122 = load ptr, ptr %1121, align 8, !tbaa !105
  %1123 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 2
  %1124 = load ptr, ptr %1123, align 16, !tbaa !105
  call void @BM_mesh_remap(ptr noundef %1119, ptr noundef %1120, ptr noundef %1122, ptr noundef %1124) #11
  br label %1125

1125:                                             ; preds = %1118, %1132
  %1126 = phi i64 [ 2, %1118 ], [ %1133, %1132 ]
  %1127 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %1126
  %1128 = load ptr, ptr %1127, align 8, !tbaa !105
  %1129 = icmp eq ptr %1128, null
  br i1 %1129, label %1132, label %1130

1130:                                             ; preds = %1125
  %1131 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %1131(ptr noundef nonnull %1128) #11
  br label %1132

1132:                                             ; preds = %1130, %1125
  %1133 = add nsw i64 %1126, -1
  %1134 = icmp eq i64 %1126, 0
  br i1 %1134, label %1135, label %1125, !llvm.loop !241

1135:                                             ; preds = %1132, %1056, %55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  br label %1136

1136:                                             ; preds = %1135, %35
  %1137 = phi i32 [ 2, %35 ], [ 4, %1135 ]
  ret i32 %1137
}

; Function Attrs: nounwind uwtable
define internal void @edbm_sort_elements_ui(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !158
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !159
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !160
  call void @RNA_pointer_create(ptr noundef %6, ptr noundef %10, ptr noundef %12, ptr noundef nonnull %3) #11
  %13 = call i32 @uiDefAutoButsRNA(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull @edbm_sort_elements_draw_check_prop, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.107, float noundef 0x3FB99999A0000000, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.330, ptr noundef nonnull @.str.5, float noundef 0.000000e+00, float noundef 1.000000e+00) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_noise_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.107) #11
  %11 = icmp eq ptr %7, null
  br i1 %11, label %131, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 32
  %14 = load i32, ptr %13, align 4, !tbaa !242
  %15 = trunc i32 %14 to i16
  %16 = tail call ptr @give_current_material(ptr noundef %6, i16 noundef signext %15) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = tail call ptr @give_current_material_texture(ptr noundef nonnull %16) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %12
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !100
  tail call void @BKE_report(ptr noundef %23, i32 noundef 16, ptr noundef nonnull @.str.525) #11
  br label %131

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.Tex, ptr %19, i64 0, i32 32
  %26 = load i16, ptr %25, align 8, !tbaa !243
  %27 = icmp eq i16 %26, 6
  br i1 %27, label %28, label %100

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Tex, ptr %19, i64 0, i32 3
  %30 = load float, ptr %29, align 4, !tbaa !246
  %31 = load ptr, ptr %7, align 8, !tbaa !50
  %32 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %32, align 4, !tbaa !62
  %33 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %33, align 8, !tbaa !64
  %34 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %34, align 8, !tbaa !65
  %35 = getelementptr inbounds %struct.BMesh, ptr %31, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !66
  store ptr %36, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %37 = load ptr, ptr %34, align 8, !tbaa !65
  %38 = call ptr %37(ptr noundef nonnull %3) #11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %130, label %40

40:                                               ; preds = %28
  %41 = fdiv float %30, 2.000000e+02
  %42 = getelementptr inbounds %struct.Tex, ptr %19, i64 0, i32 2
  %43 = getelementptr inbounds %struct.Tex, ptr %19, i64 0, i32 33
  br label %44

44:                                               ; preds = %40, %95
  %45 = phi float [ %41, %40 ], [ %96, %95 ]
  %46 = phi ptr [ %38, %40 ], [ %98, %95 ]
  %47 = getelementptr inbounds %struct.BMHeader, ptr %46, i64 0, i32 3
  %48 = load i8, ptr %47, align 1, !tbaa !70
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %95, label %51

51:                                               ; preds = %44
  %52 = load float, ptr %42, align 8, !tbaa !247
  %53 = getelementptr inbounds %struct.BMVert, ptr %46, i64 0, i32 2
  %54 = load float, ptr %53, align 8, !tbaa !142
  %55 = getelementptr inbounds %struct.BMVert, ptr %46, i64 0, i32 2, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !142
  %57 = getelementptr inbounds %struct.BMVert, ptr %46, i64 0, i32 2, i64 2
  %58 = load float, ptr %57, align 8, !tbaa !142
  %59 = call float @BLI_hnoise(float noundef %52, float noundef %54, float noundef %56, float noundef %58) #11
  %60 = load i16, ptr %43, align 2, !tbaa !248
  %61 = icmp eq i16 %60, 0
  %62 = fmul float %59, %59
  %63 = select i1 %61, float 1.000000e+00, float %62
  %64 = fmul float %45, %63
  %65 = load float, ptr %42, align 8, !tbaa !247
  %66 = load float, ptr %53, align 8, !tbaa !142
  %67 = fadd float %66, %64
  %68 = load float, ptr %55, align 4, !tbaa !142
  %69 = load float, ptr %57, align 8, !tbaa !142
  %70 = call float @BLI_hnoise(float noundef %65, float noundef %67, float noundef %68, float noundef %69) #11
  %71 = fsub float %59, %70
  %72 = fmul float %10, %71
  %73 = load float, ptr %42, align 8, !tbaa !247
  %74 = load float, ptr %53, align 8, !tbaa !142
  %75 = load float, ptr %55, align 4, !tbaa !142
  %76 = fadd float %64, %75
  %77 = load float, ptr %57, align 8, !tbaa !142
  %78 = call float @BLI_hnoise(float noundef %73, float noundef %74, float noundef %76, float noundef %77) #11
  %79 = fsub float %59, %78
  %80 = fmul float %10, %79
  %81 = load float, ptr %42, align 8, !tbaa !247
  %82 = load float, ptr %53, align 8, !tbaa !142
  %83 = load float, ptr %55, align 4, !tbaa !142
  %84 = load float, ptr %57, align 8, !tbaa !142
  %85 = fadd float %64, %84
  %86 = call float @BLI_hnoise(float noundef %81, float noundef %82, float noundef %83, float noundef %85) #11
  %87 = fsub float %59, %86
  %88 = fmul float %10, %87
  %89 = load float, ptr %53, align 4, !tbaa !142
  %90 = fadd float %72, %89
  store float %90, ptr %53, align 4, !tbaa !142
  %91 = load float, ptr %55, align 4, !tbaa !142
  %92 = fadd float %80, %91
  store float %92, ptr %55, align 4, !tbaa !142
  %93 = load float, ptr %57, align 4, !tbaa !142
  %94 = fadd float %88, %93
  store float %94, ptr %57, align 4, !tbaa !142
  br label %95

95:                                               ; preds = %44, %51
  %96 = phi float [ %64, %51 ], [ %45, %44 ]
  %97 = load ptr, ptr %34, align 8, !tbaa !65
  %98 = call ptr %97(ptr noundef nonnull %3) #11
  %99 = icmp eq ptr %98, null
  br i1 %99, label %130, label %44, !llvm.loop !249

100:                                              ; preds = %24
  %101 = load ptr, ptr %7, align 8, !tbaa !50
  %102 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %102, align 4, !tbaa !62
  %103 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %103, align 8, !tbaa !64
  %104 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %104, align 8, !tbaa !65
  %105 = getelementptr inbounds %struct.BMesh, ptr %101, i64 0, i32 9
  %106 = load ptr, ptr %105, align 8, !tbaa !66
  store ptr %106, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %107 = load ptr, ptr %104, align 8, !tbaa !65
  %108 = call ptr %107(ptr noundef nonnull %3) #11
  %109 = icmp eq ptr %108, null
  br i1 %109, label %130, label %110

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.Material, ptr %16, i64 0, i32 102
  br label %112

112:                                              ; preds = %110, %126
  %113 = phi ptr [ %108, %110 ], [ %128, %126 ]
  %114 = getelementptr inbounds %struct.BMHeader, ptr %113, i64 0, i32 3
  %115 = load i8, ptr %114, align 1, !tbaa !70
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %119 = load ptr, ptr %111, align 8, !tbaa !105
  %120 = getelementptr inbounds %struct.BMVert, ptr %113, i64 0, i32 2
  %121 = call i32 @externtex(ptr noundef %119, ptr noundef nonnull %120, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %5, i32 noundef 0, ptr noundef null) #11
  %122 = load float, ptr %4, align 4, !tbaa !142
  %123 = getelementptr inbounds %struct.BMVert, ptr %113, i64 0, i32 2, i64 2
  %124 = load float, ptr %123, align 8, !tbaa !142
  %125 = call float @llvm.fmuladd.f32(float %10, float %122, float %124)
  store float %125, ptr %123, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %126

126:                                              ; preds = %112, %118
  %127 = load ptr, ptr %104, align 8, !tbaa !65
  %128 = call ptr %127(ptr noundef nonnull %3) #11
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %112, !llvm.loop !250

130:                                              ; preds = %126, %95, %100, %28
  call void @EDBM_mesh_normals_update(ptr noundef nonnull %7) #11
  call void @EDBM_update_generic(ptr noundef nonnull %7, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  br label %131

131:                                              ; preds = %2, %130, %21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret i32 4
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.35, ptr noundef nonnull @MESH_OT_bridge_edge_loops.type_items, i32 noundef 0, ptr noundef nonnull @.str.340, ptr noundef nonnull @.str.341) #11
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !76
  %11 = load ptr, ptr %7, align 8, !tbaa !47
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.342, i32 noundef 0, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.343) #11
  %13 = load ptr, ptr %7, align 8, !tbaa !47
  %14 = tail call ptr @RNA_def_float(ptr noundef %13, ptr noundef nonnull @.str.344, float noundef 5.000000e-01, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.345, ptr noundef nonnull @.str.5, float noundef 0.000000e+00, float noundef 1.000000e+00) #11
  %15 = load ptr, ptr %7, align 8, !tbaa !47
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.346, i32 noundef 0, i32 noundef -1000, i32 noundef 1000, ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.348, i32 noundef -1000, i32 noundef 1000) #11
  tail call fastcc void @mesh_operator_edgering_props(ptr noundef nonnull %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_bridge_edge_loops_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMOperator, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %5) #11
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %9 = tail call ptr @BKE_editmesh_from_object(ptr noundef %8) #11
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.35) #11
  %13 = icmp eq i32 %12, 2
  %14 = icmp eq i32 %12, 1
  %15 = load ptr, ptr %10, align 8, !tbaa !48
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.342) #11
  %17 = load ptr, ptr %10, align 8, !tbaa !48
  %18 = tail call float @RNA_float_get(ptr noundef %17, ptr noundef nonnull @.str.344) #11
  %19 = load ptr, ptr %10, align 8, !tbaa !48
  %20 = tail call i32 @RNA_int_get(ptr noundef %19, ptr noundef nonnull @.str.346) #11
  %21 = load ptr, ptr %9, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !79
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %125

25:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %26 = load ptr, ptr %9, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %26, i8 noundef zeroext 10, i8 noundef zeroext 16, i8 noundef zeroext 0) #11
  %27 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %27, align 4, !tbaa !62
  %28 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %28, align 8, !tbaa !64
  %29 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %29, align 8, !tbaa !65
  %30 = getelementptr inbounds %struct.BMesh, ptr %26, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !95
  store ptr %31, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %32 = load ptr, ptr %29, align 8, !tbaa !65
  %33 = call ptr %32(ptr noundef nonnull %3) #11
  %34 = icmp eq ptr %33, null
  br i1 %34, label %93, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %37 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %38 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  br label %39

39:                                               ; preds = %35, %88
  %40 = phi i32 [ 0, %35 ], [ %89, %88 ]
  %41 = phi ptr [ %33, %35 ], [ %91, %88 ]
  %42 = getelementptr inbounds %struct.BMHeader, ptr %41, i64 0, i32 3
  %43 = load i8, ptr %42, align 1, !tbaa !70
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %88, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.BMEdge, ptr %41, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !88
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.BMLoop, ptr %48, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !91
  %53 = icmp eq ptr %52, %48
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %46
  %55 = or i8 %43, 16
  store i8 %55, ptr %42, align 1, !tbaa !70
  br label %88

56:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  store i8 8, ptr %36, align 4, !tbaa !62
  store ptr @bmiter__face_of_edge_begin, ptr %37, align 8, !tbaa !64
  store ptr @bmiter__face_of_edge_step, ptr %38, align 8, !tbaa !65
  store ptr %41, ptr %4, align 8, !tbaa !69
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %4) #11
  %57 = load ptr, ptr %38, align 8, !tbaa !65
  %58 = call ptr %57(ptr noundef nonnull %4) #11
  %59 = icmp eq ptr %58, null
  br i1 %59, label %80, label %60

60:                                               ; preds = %56, %74
  %61 = phi i8 [ %76, %74 ], [ 1, %56 ]
  %62 = phi i32 [ %75, %74 ], [ %40, %56 ]
  %63 = phi ptr [ %78, %74 ], [ %58, %56 ]
  %64 = getelementptr inbounds %struct.BMHeader, ptr %63, i64 0, i32 3
  %65 = load i8, ptr %64, align 1, !tbaa !70
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %60
  %69 = and i8 %65, 16
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = or disjoint i8 %65, 16
  store i8 %72, ptr %64, align 1, !tbaa !70
  %73 = add nsw i32 %62, 1
  br label %74

74:                                               ; preds = %71, %68, %60
  %75 = phi i32 [ %62, %68 ], [ %73, %71 ], [ %62, %60 ]
  %76 = phi i8 [ %61, %68 ], [ %61, %71 ], [ 0, %60 ]
  %77 = load ptr, ptr %38, align 8, !tbaa !65
  %78 = call ptr %77(ptr noundef nonnull %4) #11
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %60, !llvm.loop !251

80:                                               ; preds = %74, %56
  %81 = phi i32 [ %40, %56 ], [ %75, %74 ]
  %82 = phi i8 [ 1, %56 ], [ %76, %74 ]
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i8, ptr %42, align 1, !tbaa !70
  %86 = or i8 %85, 16
  store i8 %86, ptr %42, align 1, !tbaa !70
  br label %87

87:                                               ; preds = %84, %80
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  br label %88

88:                                               ; preds = %87, %54, %39
  %89 = phi i32 [ %40, %54 ], [ %81, %87 ], [ %40, %39 ]
  %90 = load ptr, ptr %29, align 8, !tbaa !65
  %91 = call ptr %90(ptr noundef nonnull %3) #11
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %39, !llvm.loop !252

93:                                               ; preds = %88, %25
  %94 = phi i32 [ 0, %25 ], [ %89, %88 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  %95 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !105
  %96 = sext i32 %94 to i64
  %97 = shl nsw i64 %96, 3
  %98 = call ptr %95(i64 noundef %97, ptr noundef nonnull @__func__.edbm_bridge_edge_loops_exec) #11
  %99 = load ptr, ptr %9, align 8, !tbaa !50
  %100 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 3, ptr %100, align 4, !tbaa !62
  %101 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %101, align 8, !tbaa !64
  %102 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %102, align 8, !tbaa !65
  %103 = getelementptr inbounds %struct.BMesh, ptr %99, i64 0, i32 12
  %104 = load ptr, ptr %103, align 8, !tbaa !83
  store ptr %104, ptr %6, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #11
  %105 = load ptr, ptr %102, align 8, !tbaa !65
  %106 = call ptr %105(ptr noundef nonnull %6) #11
  %107 = icmp eq ptr %106, null
  br i1 %107, label %124, label %108

108:                                              ; preds = %93, %119
  %109 = phi i32 [ %120, %119 ], [ 0, %93 ]
  %110 = phi ptr [ %122, %119 ], [ %106, %93 ]
  %111 = getelementptr inbounds %struct.BMHeader, ptr %110, i64 0, i32 3
  %112 = load i8, ptr %111, align 1, !tbaa !70
  %113 = and i8 %112, 16
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %108
  %116 = add nsw i32 %109, 1
  %117 = sext i32 %109 to i64
  %118 = getelementptr inbounds ptr, ptr %98, i64 %117
  store ptr %110, ptr %118, align 8, !tbaa !105
  br label %119

119:                                              ; preds = %108, %115
  %120 = phi i32 [ %116, %115 ], [ %109, %108 ]
  %121 = load ptr, ptr %102, align 8, !tbaa !65
  %122 = call ptr %121(ptr noundef nonnull %6) #11
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %108, !llvm.loop !253

124:                                              ; preds = %119, %93
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  br label %125

125:                                              ; preds = %2, %124
  %126 = phi i32 [ 16, %124 ], [ 1, %2 ]
  %127 = phi i32 [ %94, %124 ], [ 0, %2 ]
  %128 = phi ptr [ %98, %124 ], [ null, %2 ]
  %129 = zext i1 %13 to i32
  %130 = zext i1 %14 to i32
  %131 = and i32 %16, 255
  %132 = fpext float %18 to double
  %133 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.526, i32 noundef %126, i32 noundef %129, i32 noundef %130, i32 noundef %131, double noundef %132, i32 noundef %20) #11
  %134 = load ptr, ptr %9, align 8, !tbaa !50
  call void @BMO_op_exec(ptr noundef %134, ptr noundef nonnull %5) #11
  %135 = load ptr, ptr %9, align 8, !tbaa !50
  %136 = call zeroext i8 @BMO_error_occurred(ptr noundef %135) #11
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %188

138:                                              ; preds = %125
  %139 = icmp eq i32 %131, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %138
  call void @EDBM_flag_disable_all(ptr noundef nonnull %9, i8 noundef zeroext 1) #11
  %141 = load ptr, ptr %9, align 8, !tbaa !50
  %142 = getelementptr inbounds %struct.BMOperator, ptr %5, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %141, ptr noundef nonnull %142, ptr noundef nonnull @.str.415, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %143

143:                                              ; preds = %140, %138
  %144 = icmp ne i32 %127, 0
  %145 = and i1 %24, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %143
  %147 = load ptr, ptr %9, align 8, !tbaa !50
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %147, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #11
  %148 = icmp sgt i32 %127, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %146
  %150 = zext nneg i32 %127 to i64
  br label %151

151:                                              ; preds = %149, %151
  %152 = phi i64 [ 0, %149 ], [ %158, %151 ]
  %153 = getelementptr inbounds ptr, ptr %128, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !105
  %155 = getelementptr inbounds %struct.BMHeader, ptr %154, i64 0, i32 3
  %156 = load i8, ptr %155, align 1, !tbaa !70
  %157 = or i8 %156, 16
  store i8 %157, ptr %155, align 1, !tbaa !70
  %158 = add nuw nsw i64 %152, 1
  %159 = icmp eq i64 %158, %150
  br i1 %159, label %160, label %151, !llvm.loop !254

160:                                              ; preds = %151, %146
  %161 = load ptr, ptr %9, align 8, !tbaa !50
  %162 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %161, i32 noundef 1, ptr noundef nonnull @.str.406, i32 noundef 16, i32 noundef 5) #11
  br label %163

163:                                              ; preds = %160, %143
  br i1 %139, label %164, label %188

164:                                              ; preds = %163
  %165 = load ptr, ptr %10, align 8, !tbaa !48
  %166 = call i32 @RNA_enum_get(ptr noundef %165, ptr noundef nonnull @.str.389) #11
  %167 = load ptr, ptr %10, align 8, !tbaa !48
  %168 = call i32 @RNA_int_get(ptr noundef %167, ptr noundef nonnull @.str.3) #11
  %169 = load ptr, ptr %10, align 8, !tbaa !48
  %170 = call float @RNA_float_get(ptr noundef %169, ptr noundef nonnull @.str.6) #11
  %171 = load ptr, ptr %10, align 8, !tbaa !48
  %172 = call i32 @RNA_enum_get(ptr noundef %171, ptr noundef nonnull @.str.390) #11
  %173 = load ptr, ptr %10, align 8, !tbaa !48
  %174 = call float @RNA_float_get(ptr noundef %173, ptr noundef nonnull @.str.391) #11
  %175 = icmp eq i32 %168, 0
  br i1 %175, label %188, label %176

176:                                              ; preds = %164
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %7) #11
  call void @EDBM_mesh_normals_update(ptr noundef nonnull %9) #11
  %177 = load ptr, ptr %9, align 8, !tbaa !50
  %178 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 12
  %179 = load i16, ptr %178, align 8, !tbaa !255
  %180 = sext i16 %179 to i32
  %181 = fpext float %170 to double
  %182 = fpext float %174 to double
  %183 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %177, ptr noundef nonnull %7, i32 noundef %180, ptr noundef nonnull @.str.527, ptr noundef nonnull %5, ptr noundef nonnull @.str.416, i32 noundef %166, i32 noundef %168, double noundef %181, i32 noundef %172, double noundef %182) #11
  %184 = load ptr, ptr %9, align 8, !tbaa !50
  call void @BMO_op_exec(ptr noundef %184, ptr noundef nonnull %7) #11
  %185 = load ptr, ptr %9, align 8, !tbaa !50
  %186 = getelementptr inbounds %struct.BMOperator, ptr %7, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %185, ptr noundef nonnull %186, ptr noundef nonnull @.str.415, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  %187 = load ptr, ptr %9, align 8, !tbaa !50
  call void @BMO_op_finish(ptr noundef %187, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %7) #11
  br label %188

188:                                              ; preds = %164, %176, %163, %125
  %189 = icmp eq ptr %128, null
  br i1 %189, label %192, label %190

190:                                              ; preds = %188
  %191 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %191(ptr noundef nonnull %128) #11
  br label %192

192:                                              ; preds = %190, %188
  %193 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef %1, i8 noundef zeroext 1) #11
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %192
  call void @EDBM_update_generic(ptr noundef nonnull %9, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %196

196:                                              ; preds = %192, %195
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %5) #11
  ret i32 4
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.352, i32 noundef 1, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.354) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.355, i32 noundef 1, ptr noundef nonnull @.str.356, ptr noundef nonnull @.str.357) #11
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.241, i32 noundef 0, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.243) #11
  %14 = load ptr, ptr %7, align 8, !tbaa !47
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.358, i32 noundef 1, ptr noundef nonnull @.str.359, ptr noundef nonnull @.str.360) #11
  %16 = load ptr, ptr %7, align 8, !tbaa !47
  %17 = tail call ptr @RNA_def_float(ptr noundef %16, ptr noundef nonnull @.str.193, float noundef 0x3F847AE140000000, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.361, ptr noundef nonnull @.str.5, float noundef 0.000000e+00, float noundef 1.000000e+01) #11
  tail call void @RNA_def_property_ui_range(ptr noundef %17, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e-02, i32 noundef 4) #11
  %18 = load ptr, ptr %7, align 8, !tbaa !47
  %19 = tail call ptr @RNA_def_float(ptr noundef %18, ptr noundef nonnull @.str.215, float noundef 0x3F847AE140000000, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.5, float noundef 0.000000e+00, float noundef 1.000000e+01) #11
  %20 = load ptr, ptr %7, align 8, !tbaa !47
  %21 = tail call ptr @RNA_def_boolean(ptr noundef %20, ptr noundef nonnull @.str.362, i32 noundef 0, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.364) #11
  %22 = load ptr, ptr %7, align 8, !tbaa !47
  %23 = tail call ptr @RNA_def_float(ptr noundef %22, ptr noundef nonnull @.str.365, float noundef 0x3F847AE140000000, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.366, ptr noundef nonnull @.str.5, float noundef 0.000000e+00, float noundef 1.000000e+00) #11
  tail call void @RNA_def_property_ui_range(ptr noundef %23, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e-01, i32 noundef 2) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_wireframe_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.352) #11
  %9 = load ptr, ptr %6, align 8, !tbaa !48
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.355) #11
  %11 = load ptr, ptr %6, align 8, !tbaa !48
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.358) #11
  %13 = load ptr, ptr %6, align 8, !tbaa !48
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.241) #11
  %15 = load ptr, ptr %6, align 8, !tbaa !48
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.362) #11
  %17 = load ptr, ptr %6, align 8, !tbaa !48
  %18 = tail call float @RNA_float_get(ptr noundef %17, ptr noundef nonnull @.str.365) #11
  %19 = load ptr, ptr %6, align 8, !tbaa !48
  %20 = tail call float @RNA_float_get(ptr noundef %19, ptr noundef nonnull @.str.193) #11
  %21 = load ptr, ptr %6, align 8, !tbaa !48
  %22 = tail call float @RNA_float_get(ptr noundef %21, ptr noundef nonnull @.str.215) #11
  %23 = and i32 %12, 255
  %24 = and i32 %8, 255
  %25 = and i32 %10, 255
  %26 = and i32 %14, 255
  %27 = and i32 %16, 255
  %28 = fpext float %18 to double
  %29 = fpext float %20 to double
  %30 = fpext float %22 to double
  %31 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.528, i32 noundef 1, i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef %27, double noundef %28, double noundef %29, double noundef %30) #11
  %32 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BMO_op_exec(ptr noundef %32, ptr noundef nonnull %3) #11
  %33 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %33, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  %34 = load ptr, ptr %5, align 8, !tbaa !50
  %35 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %34, ptr noundef nonnull %35, ptr noundef nonnull @.str.415, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  %36 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #11
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %39

39:                                               ; preds = %2, %38
  %40 = phi i32 [ 4, %38 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret i32 %40
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.370, ptr noundef nonnull @symmetrize_direction_items, i32 noundef 0, ptr noundef nonnull @.str.371, ptr noundef nonnull @.str.372) #11
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !76
  %11 = load ptr, ptr %7, align 8, !tbaa !47
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.170, float noundef 0x3F1A36E2E0000000, float noundef 0.000000e+00, float noundef 1.000000e+01, ptr noundef nonnull @.str.373, ptr noundef nonnull @.str.5, float noundef 0x3EE4F8B580000000, float noundef 0x3FB99999A0000000) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mesh_symmetrize_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.BMOperator, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %3) #11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.170) #11
  %9 = load ptr, ptr %6, align 8, !tbaa !48
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.370) #11
  %11 = fpext float %8 to double
  %12 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @EDBM_op_init(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.529, i32 noundef 1, i32 noundef %10, double noundef %11) #11
  %13 = load ptr, ptr %5, align 8, !tbaa !50
  call void @BMO_op_exec(ptr noundef %13, ptr noundef nonnull %3) #11
  call void @EDBM_flag_disable_all(ptr noundef nonnull %5, i8 noundef zeroext 1) #11
  %14 = load ptr, ptr %5, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.BMOperator, ptr %3, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %14, ptr noundef nonnull %15, ptr noundef nonnull @.str.422, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  %16 = call zeroext i8 @EDBM_op_finish(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1) #11
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #11
  br label %19

19:                                               ; preds = %2, %18
  %20 = phi i32 [ 4, %18 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %3) #11
  ret i32 %20
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.370, ptr noundef nonnull @symmetrize_direction_items, i32 noundef 0, ptr noundef nonnull @.str.371, ptr noundef nonnull @.str.372) #11
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !76
  %11 = load ptr, ptr %7, align 8, !tbaa !47
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.170, float noundef 0x3FA99999A0000000, float noundef 0.000000e+00, float noundef 1.000000e+01, ptr noundef nonnull @.str.373, ptr noundef nonnull @.str.5, float noundef 0x3F1A36E2E0000000, float noundef 1.000000e+00) #11
  %13 = load ptr, ptr %7, align 8, !tbaa !47
  %14 = tail call ptr @RNA_def_float(ptr noundef %13, ptr noundef nonnull @.str.107, float noundef 5.000000e-01, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.330, ptr noundef nonnull @.str.5, float noundef 0.000000e+00, float noundef 1.000000e+00) #11
  %15 = load ptr, ptr %7, align 8, !tbaa !47
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.377, i32 noundef 1, ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.379) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mesh_symmetry_snap_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #11
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !105
  %10 = load i32, ptr %8, align 8, !tbaa !80
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr %9(i64 noundef %12, ptr noundef nonnull @__func__.mesh_symmetry_snap_exec) #11
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = tail call float @RNA_float_get(ptr noundef %15, ptr noundef nonnull @.str.170) #11
  %17 = load ptr, ptr %14, align 8, !tbaa !48
  %18 = tail call float @RNA_float_get(ptr noundef %17, ptr noundef nonnull @.str.107) #11
  %19 = load ptr, ptr %14, align 8, !tbaa !48
  %20 = tail call i32 @RNA_boolean_get(ptr noundef %19, ptr noundef nonnull @.str.377) #11
  %21 = load ptr, ptr %14, align 8, !tbaa !48
  %22 = tail call i32 @RNA_enum_get(ptr noundef %21, ptr noundef nonnull @.str.370) #11
  %23 = srem i32 %22, 3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  tail call void @EDBM_verts_mirror_cache_begin_ex(ptr noundef nonnull %7, i32 noundef %23, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0, float noundef %16, ptr noundef %13) #11
  tail call void @BM_mesh_elem_table_ensure(ptr noundef nonnull %8, i8 noundef zeroext 1) #11
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef nonnull %8, i8 noundef zeroext 1, i8 noundef zeroext 16, i8 noundef zeroext 0) #11
  %24 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %24, align 4, !tbaa !62
  %25 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %25, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %26, align 8, !tbaa !65
  %27 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !66
  store ptr %28, ptr %3, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #11
  %29 = load ptr, ptr %26, align 8, !tbaa !65
  %30 = call ptr %29(ptr noundef nonnull %3) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %135, label %32

32:                                               ; preds = %2
  %33 = sext i32 %23 to i64
  %34 = icmp eq i32 %23, %22
  %35 = getelementptr inbounds float, ptr %5, i64 1
  %36 = getelementptr inbounds float, ptr %5, i64 2
  %37 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %33
  %38 = getelementptr inbounds float, ptr %4, i64 1
  %39 = getelementptr inbounds float, ptr %4, i64 2
  %40 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %33
  %41 = and i32 %20, 255
  %42 = icmp eq i32 %41, 0
  %43 = sext i32 %23 to i64
  br label %44

44:                                               ; preds = %32, %127
  %45 = phi i64 [ 0, %32 ], [ %133, %127 ]
  %46 = phi i32 [ 0, %32 ], [ %130, %127 ]
  %47 = phi i32 [ 0, %32 ], [ %129, %127 ]
  %48 = phi ptr [ %30, %32 ], [ %132, %127 ]
  %49 = phi i32 [ 0, %32 ], [ %128, %127 ]
  %50 = getelementptr inbounds %struct.BMHeader, ptr %48, i64 0, i32 3
  %51 = load i8, ptr %50, align 1, !tbaa !70
  %52 = and i8 %51, 17
  %53 = icmp eq i8 %52, 1
  br i1 %53, label %54, label %127

54:                                               ; preds = %44
  %55 = getelementptr inbounds i32, ptr %13, i64 %45
  %56 = load i32, ptr %55, align 4, !tbaa !102
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %125, label %58

58:                                               ; preds = %54
  %59 = call ptr @BM_vert_at_index(ptr noundef nonnull %8, i32 noundef %56) #11
  %60 = icmp eq ptr %48, %59
  br i1 %60, label %110, label %61

61:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %62 = getelementptr inbounds %struct.BMVert, ptr %48, i64 0, i32 2, i64 %33
  %63 = load float, ptr %62, align 4, !tbaa !142
  %64 = getelementptr inbounds %struct.BMVert, ptr %59, i64 0, i32 2, i64 %33
  %65 = load float, ptr %64, align 4, !tbaa !142
  %66 = fcmp ogt float %63, %65
  %67 = xor i1 %34, %66
  %68 = select i1 %67, ptr %59, ptr %48
  %69 = select i1 %67, ptr %48, ptr %59
  %70 = getelementptr inbounds %struct.BMVert, ptr %69, i64 0, i32 2
  %71 = load float, ptr %70, align 4, !tbaa !142
  store float %71, ptr %5, align 4, !tbaa !142
  %72 = getelementptr inbounds %struct.BMVert, ptr %69, i64 0, i32 2, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !142
  store float %73, ptr %35, align 4, !tbaa !142
  %74 = getelementptr inbounds %struct.BMVert, ptr %69, i64 0, i32 2, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !142
  store float %75, ptr %36, align 4, !tbaa !142
  %76 = load float, ptr %37, align 4, !tbaa !142
  %77 = fneg float %76
  store float %77, ptr %37, align 4, !tbaa !142
  %78 = getelementptr inbounds %struct.BMVert, ptr %68, i64 0, i32 2
  %79 = load float, ptr %5, align 4, !tbaa !142
  %80 = load float, ptr %78, align 4, !tbaa !142
  %81 = fsub float %79, %80
  %82 = load float, ptr %35, align 4, !tbaa !142
  %83 = getelementptr inbounds %struct.BMVert, ptr %68, i64 0, i32 2, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !142
  %85 = fsub float %82, %84
  %86 = load float, ptr %36, align 4, !tbaa !142
  %87 = getelementptr inbounds %struct.BMVert, ptr %68, i64 0, i32 2, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !142
  %89 = fsub float %86, %88
  %90 = fmul float %85, %85
  %91 = call float @llvm.fmuladd.f32(float %81, float %81, float %90)
  %92 = call float @llvm.fmuladd.f32(float %89, float %89, float %91)
  %93 = fcmp ogt float %92, 0x3DDB7CDFC0000000
  %94 = zext i1 %93 to i32
  %95 = add nsw i32 %46, %94
  call void @interp_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %78, ptr noundef nonnull %5, float noundef %18) #11
  %96 = load float, ptr %4, align 4, !tbaa !142
  store float %96, ptr %78, align 4, !tbaa !142
  %97 = load float, ptr %38, align 4, !tbaa !142
  store float %97, ptr %83, align 4, !tbaa !142
  %98 = load float, ptr %39, align 4, !tbaa !142
  store float %98, ptr %87, align 4, !tbaa !142
  %99 = load float, ptr %40, align 4, !tbaa !142
  %100 = fneg float %99
  store float %100, ptr %40, align 4, !tbaa !142
  %101 = load float, ptr %4, align 4, !tbaa !142
  store float %101, ptr %70, align 4, !tbaa !142
  %102 = load float, ptr %38, align 4, !tbaa !142
  store float %102, ptr %72, align 4, !tbaa !142
  %103 = load float, ptr %39, align 4, !tbaa !142
  store float %103, ptr %74, align 4, !tbaa !142
  %104 = getelementptr inbounds %struct.BMHeader, ptr %68, i64 0, i32 3
  %105 = load i8, ptr %104, align 1, !tbaa !70
  %106 = or i8 %105, 16
  store i8 %106, ptr %104, align 1, !tbaa !70
  %107 = getelementptr inbounds %struct.BMHeader, ptr %69, i64 0, i32 3
  %108 = load i8, ptr %107, align 1, !tbaa !70
  %109 = or i8 %108, 16
  store i8 %109, ptr %107, align 1, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  br label %122

110:                                              ; preds = %58
  br i1 %42, label %118, label %111

111:                                              ; preds = %110
  %112 = getelementptr inbounds %struct.BMVert, ptr %48, i64 0, i32 2, i64 %43
  %113 = load float, ptr %112, align 4, !tbaa !142
  %114 = call float @llvm.fabs.f32(float %113)
  %115 = fcmp ogt float %114, 0x3EE4F8B580000000
  %116 = zext i1 %115 to i32
  %117 = add nsw i32 %46, %116
  store float 0.000000e+00, ptr %112, align 4, !tbaa !142
  br label %118

118:                                              ; preds = %111, %110
  %119 = phi i32 [ %117, %111 ], [ %46, %110 ]
  %120 = load i8, ptr %50, align 1, !tbaa !70
  %121 = or i8 %120, 16
  store i8 %121, ptr %50, align 1, !tbaa !70
  br label %122

122:                                              ; preds = %118, %61
  %123 = phi i32 [ %95, %61 ], [ %119, %118 ]
  %124 = add nsw i32 %49, 1
  br label %127

125:                                              ; preds = %54
  %126 = add nsw i32 %47, 1
  br label %127

127:                                              ; preds = %122, %125, %44
  %128 = phi i32 [ %49, %44 ], [ %124, %122 ], [ %49, %125 ]
  %129 = phi i32 [ %47, %44 ], [ %47, %122 ], [ %126, %125 ]
  %130 = phi i32 [ %46, %44 ], [ %123, %122 ], [ %46, %125 ]
  %131 = load ptr, ptr %26, align 8, !tbaa !65
  %132 = call ptr %131(ptr noundef nonnull %3) #11
  %133 = add nuw i64 %45, 1
  %134 = icmp eq ptr %132, null
  br i1 %134, label %135, label %44, !llvm.loop !256

135:                                              ; preds = %127, %2
  %136 = phi i32 [ 0, %2 ], [ %128, %127 ]
  %137 = phi i32 [ 0, %2 ], [ %129, %127 ]
  %138 = phi i32 [ 0, %2 ], [ %130, %127 ]
  %139 = icmp eq i32 %137, 0
  %140 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %141 = load ptr, ptr %140, align 8, !tbaa !100
  %142 = sub nsw i32 %136, %138
  br i1 %139, label %144, label %143

143:                                              ; preds = %135
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %141, i32 noundef 16, ptr noundef nonnull @.str.530, i32 noundef %142, i32 noundef %138, i32 noundef %137) #11
  br label %145

144:                                              ; preds = %135
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %141, i32 noundef 2, ptr noundef nonnull @.str.531, i32 noundef %142, i32 noundef %138) #11
  br label %145

145:                                              ; preds = %144, %143
  %146 = load ptr, ptr @MEM_freeN, align 8, !tbaa !105
  call void %146(ptr noundef %13) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret i32 4
}

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_mesh_esubdivide(ptr noundef, i8 noundef zeroext, float noundef, i16 noundef signext, i8 noundef zeroext, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef) local_unnamed_addr #2

declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @EDBM_op_callf(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @RNA_def_property_enum_items(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_property_enum_default(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_def_property_ui_text(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_property_translation_context(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @EDBM_op_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @EDBM_op_finish(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @EDBM_selectmode_flush_ex(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @EDBM_selectmode_flush(ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__face_of_edge_begin(ptr noundef) #2

declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

declare void @bmiter__loop_of_face_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

declare void @EDBM_flag_disable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_mesh_delete_hflag_context(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_slot_buffer_get_first(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare zeroext i8 @BM_edge_share_face_check(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_select_history_clear(ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_face_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @_bm_select_history_store(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_edge_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @ED_uvedit_live_unwrap(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @EDBM_op_call_and_selectf(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

declare void @EDBM_select_flush(ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_edge_face_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_hflag_disable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @EDBM_mesh_hide(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @EDBM_mesh_reveal(ptr noundef) local_unnamed_addr #2

declare void @EDBM_verts_mirror_cache_begin(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @EDBM_verts_mirror_apply(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @EDBM_verts_mirror_cache_end(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @merge_target(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  %10 = icmp eq i8 %4, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %1, ptr noundef %2) #11
  %13 = load float, ptr %12, align 4, !tbaa !142
  store float %13, ptr %9, align 4, !tbaa !142
  %14 = getelementptr inbounds float, ptr %12, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !142
  %16 = getelementptr inbounds float, ptr %9, i64 1
  store float %15, ptr %16, align 4, !tbaa !142
  %17 = getelementptr inbounds float, ptr %12, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !142
  %19 = getelementptr inbounds float, ptr %9, i64 2
  store float %18, ptr %19, align 4, !tbaa !142
  %20 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 50
  call void @mul_m4_v3(ptr noundef nonnull %20, ptr noundef nonnull %9) #11
  br label %76

21:                                               ; preds = %7
  %22 = load ptr, ptr %0, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 1, ptr %23, align 4, !tbaa !62
  %24 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %24, align 8, !tbaa !64
  %25 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %25, align 8, !tbaa !65
  %26 = getelementptr inbounds %struct.BMesh, ptr %22, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !66
  store ptr %27, ptr %8, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #11
  %28 = load ptr, ptr %25, align 8, !tbaa !65
  %29 = call ptr %28(ptr noundef nonnull %8) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %60, label %31

31:                                               ; preds = %21, %52
  %32 = phi i32 [ %56, %52 ], [ 0, %21 ]
  %33 = phi ptr [ %58, %52 ], [ %29, %21 ]
  %34 = phi float [ %55, %52 ], [ 0.000000e+00, %21 ]
  %35 = phi float [ %54, %52 ], [ 0.000000e+00, %21 ]
  %36 = phi float [ %53, %52 ], [ 0.000000e+00, %21 ]
  %37 = getelementptr inbounds %struct.BMHeader, ptr %33, i64 0, i32 3
  %38 = load i8, ptr %37, align 1, !tbaa !70
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2
  %43 = load float, ptr %42, align 4, !tbaa !142
  %44 = fadd float %36, %43
  %45 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !142
  %47 = fadd float %35, %46
  %48 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !142
  %50 = fadd float %34, %49
  %51 = add nsw i32 %32, 1
  br label %52

52:                                               ; preds = %31, %41
  %53 = phi float [ %36, %31 ], [ %44, %41 ]
  %54 = phi float [ %35, %31 ], [ %47, %41 ]
  %55 = phi float [ %34, %31 ], [ %50, %41 ]
  %56 = phi i32 [ %32, %31 ], [ %51, %41 ]
  %57 = load ptr, ptr %25, align 8, !tbaa !65
  %58 = call ptr %57(ptr noundef nonnull %8) #11
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %31, !llvm.loop !257

60:                                               ; preds = %52, %21
  %61 = phi float [ 0.000000e+00, %21 ], [ %53, %52 ]
  %62 = phi float [ 0.000000e+00, %21 ], [ %54, %52 ]
  %63 = phi float [ 0.000000e+00, %21 ], [ %55, %52 ]
  %64 = phi i32 [ 0, %21 ], [ %56, %52 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %60
  %67 = sitofp i32 %64 to float
  %68 = fdiv float 1.000000e+00, %67
  %69 = fmul float %61, %68
  %70 = fmul float %62, %68
  %71 = fmul float %63, %68
  store float %69, ptr %9, align 4, !tbaa !142
  %72 = getelementptr inbounds float, ptr %9, i64 1
  store float %70, ptr %72, align 4, !tbaa !142
  %73 = getelementptr inbounds float, ptr %9, i64 2
  store float %71, ptr %73, align 4, !tbaa !142
  br label %74

74:                                               ; preds = %60, %66
  %75 = phi ptr [ %9, %66 ], [ null, %60 ]
  br i1 %65, label %88, label %76

76:                                               ; preds = %74, %11
  %77 = phi ptr [ %12, %11 ], [ %75, %74 ]
  %78 = icmp eq ptr %77, null
  br i1 %78, label %88, label %79

79:                                               ; preds = %76
  %80 = icmp eq i8 %5, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %79
  %82 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %0, ptr noundef %6, ptr noundef nonnull @.str.436, i32 noundef 1) #11
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81, %79
  %85 = call zeroext i8 (ptr, ptr, ptr, ...) @EDBM_op_callf(ptr noundef %0, ptr noundef %6, ptr noundef nonnull @.str.437, i32 noundef 1, ptr noundef nonnull %9) #11
  %86 = icmp ne i8 %85, 0
  %87 = zext i1 %86 to i8
  br label %88

88:                                               ; preds = %84, %81, %76, %74
  %89 = phi i8 [ 0, %74 ], [ 0, %76 ], [ 0, %81 ], [ %87, %84 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  ret i8 %89
}

declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_items_add_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_hflag_enable_test(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_bmesh_get_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiItemPointerR(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_collection_length(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare void @BMO_slot_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BMO_slot_bool_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMO_slot_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @BMO_slot_map_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_base(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @mesh_separate_material(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %7 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %8 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %9 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 12
  %10 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 3
  %11 = getelementptr inbounds %struct.Base, ptr %2, i64 0, i32 7
  br label %12

12:                                               ; preds = %82, %4
  %13 = phi i8 [ 0, %4 ], [ %83, %82 ]
  %14 = call ptr @BM_iter_at_index(ptr noundef %3, i8 noundef zeroext 3, ptr noundef null, i32 noundef 0) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %84, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.BMFace, ptr %14, i64 0, i32 5
  %18 = load i16, ptr %17, align 8, !tbaa !225
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %3, i8 noundef zeroext 11, i8 noundef zeroext 16, i8 noundef zeroext 0) #11
  store i8 3, ptr %6, align 4, !tbaa !62
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !64
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !65
  %19 = load ptr, ptr %9, align 8, !tbaa !83
  store ptr %19, ptr %5, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #11
  %20 = load ptr, ptr %8, align 8, !tbaa !65
  %21 = call ptr %20(ptr noundef nonnull %5) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %57, label %23

23:                                               ; preds = %16, %52
  %24 = phi ptr [ %55, %52 ], [ %21, %16 ]
  %25 = phi i32 [ %53, %52 ], [ 0, %16 ]
  %26 = getelementptr inbounds %struct.BMFace, ptr %24, i64 0, i32 5
  %27 = load i16, ptr %26, align 8, !tbaa !225
  %28 = icmp eq i16 %27, %18
  br i1 %28, label %29, label %52

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.BMHeader, ptr %24, i64 0, i32 3
  %31 = load i8, ptr %30, align 1, !tbaa !70
  %32 = or i8 %31, 16
  store i8 %32, ptr %30, align 1, !tbaa !70
  %33 = getelementptr inbounds %struct.BMFace, ptr %24, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !84
  br label %35

35:                                               ; preds = %35, %29
  %36 = phi ptr [ %34, %29 ], [ %48, %35 ]
  %37 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !114
  %39 = getelementptr inbounds %struct.BMHeader, ptr %38, i64 0, i32 3
  %40 = load i8, ptr %39, align 1, !tbaa !70
  %41 = or i8 %40, 16
  store i8 %41, ptr %39, align 1, !tbaa !70
  %42 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !86
  %44 = getelementptr inbounds %struct.BMHeader, ptr %43, i64 0, i32 3
  %45 = load i8, ptr %44, align 1, !tbaa !70
  %46 = or i8 %45, 16
  store i8 %46, ptr %44, align 1, !tbaa !70
  %47 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !92
  %49 = icmp eq ptr %48, %34
  br i1 %49, label %50, label %35, !llvm.loop !258

50:                                               ; preds = %35
  %51 = add nsw i32 %25, 1
  br label %52

52:                                               ; preds = %23, %50
  %53 = phi i32 [ %51, %50 ], [ %25, %23 ]
  %54 = load ptr, ptr %8, align 8, !tbaa !65
  %55 = call ptr %54(ptr noundef nonnull %5) #11
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %23, !llvm.loop !259

57:                                               ; preds = %52, %16
  %58 = phi i32 [ 0, %16 ], [ %53, %52 ]
  %59 = load i32, ptr %10, align 4, !tbaa !82
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load ptr, ptr %11, align 8, !tbaa !187
  call fastcc void @mesh_separate_material_assign_mat_nr(ptr noundef %62, i16 noundef signext %18)
  store i8 3, ptr %6, align 4, !tbaa !62
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !64
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !65
  %63 = load ptr, ptr %9, align 8, !tbaa !83
  store ptr %63, ptr %5, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #11
  %64 = load ptr, ptr %8, align 8, !tbaa !65
  %65 = call ptr %64(ptr noundef nonnull %5) #11
  %66 = icmp eq ptr %65, null
  br i1 %66, label %82, label %67

67:                                               ; preds = %61, %67
  %68 = phi ptr [ %71, %67 ], [ %65, %61 ]
  %69 = getelementptr inbounds %struct.BMFace, ptr %68, i64 0, i32 5
  store i16 0, ptr %69, align 8, !tbaa !225
  %70 = load ptr, ptr %8, align 8, !tbaa !65
  %71 = call ptr %70(ptr noundef nonnull %5) #11
  %72 = icmp eq ptr %71, null
  br i1 %72, label %82, label %67, !llvm.loop !260

73:                                               ; preds = %57
  %74 = call fastcc ptr @mesh_separate_tagged(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %75 = icmp ne ptr %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.Base, ptr %74, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !187
  call fastcc void @mesh_separate_material_assign_mat_nr(ptr noundef %78, i16 noundef signext %18)
  br label %79

79:                                               ; preds = %76, %73
  %80 = zext i1 %75 to i8
  %81 = or i8 %13, %80
  br label %82

82:                                               ; preds = %67, %61, %79
  %83 = phi i8 [ %81, %79 ], [ %13, %61 ], [ %13, %67 ]
  br i1 %60, label %84, label %12

84:                                               ; preds = %82, %12
  %85 = phi i8 [ %83, %82 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  ret i8 %85
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @mesh_separate_loose(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMWalker, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #11
  %8 = load i32, ptr %3, align 8, !tbaa !80
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef nonnull %3, i8 noundef zeroext 11, i8 noundef zeroext 16, i8 noundef zeroext 0) #11
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %142

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %12 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %13 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %14 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 10
  %15 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %16 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %17 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %18 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 12
  br label %19

19:                                               ; preds = %136, %10
  %20 = phi i32 [ 0, %10 ], [ %139, %136 ]
  %21 = phi i8 [ 0, %10 ], [ %137, %136 ]
  %22 = call ptr @BM_iter_at_index(ptr noundef nonnull %3, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %136, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.BMHeader, ptr %22, i64 0, i32 3
  %26 = load i8, ptr %25, align 1, !tbaa !70
  %27 = and i8 %26, 16
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = or disjoint i8 %26, 16
  store i8 %30, ptr %25, align 1, !tbaa !70
  br label %31

31:                                               ; preds = %29, %24
  %32 = phi i32 [ 0, %24 ], [ 1, %29 ]
  call void @BMW_init(ptr noundef nonnull %7, ptr noundef nonnull %3, i32 noundef 0, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i32 noundef 0, i32 noundef 0) #11
  %33 = call ptr @BMW_begin(ptr noundef nonnull %7, ptr noundef nonnull %22) #11
  %34 = icmp eq ptr %33, null
  br i1 %34, label %62, label %35

35:                                               ; preds = %31, %58
  %36 = phi i32 [ %59, %58 ], [ %32, %31 ]
  %37 = phi ptr [ %60, %58 ], [ %33, %31 ]
  %38 = getelementptr inbounds %struct.BMEdge, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !107
  %40 = getelementptr inbounds %struct.BMHeader, ptr %39, i64 0, i32 3
  %41 = load i8, ptr %40, align 1, !tbaa !70
  %42 = and i8 %41, 16
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = or disjoint i8 %41, 16
  store i8 %45, ptr %40, align 1, !tbaa !70
  %46 = add nsw i32 %36, 1
  br label %47

47:                                               ; preds = %44, %35
  %48 = phi i32 [ %36, %35 ], [ %46, %44 ]
  %49 = getelementptr inbounds %struct.BMEdge, ptr %37, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !108
  %51 = getelementptr inbounds %struct.BMHeader, ptr %50, i64 0, i32 3
  %52 = load i8, ptr %51, align 1, !tbaa !70
  %53 = and i8 %52, 16
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = or disjoint i8 %52, 16
  store i8 %56, ptr %51, align 1, !tbaa !70
  %57 = add nsw i32 %48, 1
  br label %58

58:                                               ; preds = %47, %55
  %59 = phi i32 [ %48, %47 ], [ %57, %55 ]
  %60 = call ptr @BMW_step(ptr noundef nonnull %7) #11
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %35, !llvm.loop !261

62:                                               ; preds = %58, %31
  %63 = phi i32 [ %32, %31 ], [ %59, %58 ]
  call void @BMW_end(ptr noundef nonnull %7) #11
  %64 = load i32, ptr %3, align 8, !tbaa !80
  %65 = icmp eq i32 %64, %63
  br i1 %65, label %136, label %66

66:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  store i8 2, ptr %11, align 4, !tbaa !62
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !64
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !65
  %67 = load ptr, ptr %14, align 8, !tbaa !95
  store ptr %67, ptr %5, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #11
  %68 = load ptr, ptr %13, align 8, !tbaa !65
  %69 = call ptr %68(ptr noundef nonnull %5) #11
  %70 = icmp eq ptr %69, null
  br i1 %70, label %98, label %71

71:                                               ; preds = %66, %94
  %72 = phi ptr [ %96, %94 ], [ %69, %66 ]
  %73 = getelementptr inbounds %struct.BMEdge, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !107
  %75 = getelementptr inbounds %struct.BMHeader, ptr %74, i64 0, i32 3
  %76 = load i8, ptr %75, align 1, !tbaa !70
  %77 = and i8 %76, 16
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.BMEdge, ptr %72, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !108
  %82 = getelementptr inbounds %struct.BMHeader, ptr %81, i64 0, i32 3
  %83 = load i8, ptr %82, align 1, !tbaa !70
  %84 = and i8 %83, 16
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.BMHeader, ptr %72, i64 0, i32 3
  %88 = load i8, ptr %87, align 1, !tbaa !70
  %89 = or i8 %88, 16
  store i8 %89, ptr %87, align 1, !tbaa !70
  br label %94

90:                                               ; preds = %79, %71
  %91 = getelementptr inbounds %struct.BMHeader, ptr %72, i64 0, i32 3
  %92 = load i8, ptr %91, align 1, !tbaa !70
  %93 = and i8 %92, -17
  store i8 %93, ptr %91, align 1, !tbaa !70
  br label %94

94:                                               ; preds = %90, %86
  %95 = load ptr, ptr %13, align 8, !tbaa !65
  %96 = call ptr %95(ptr noundef nonnull %5) #11
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %71, !llvm.loop !262

98:                                               ; preds = %94, %66
  store i8 3, ptr %15, align 4, !tbaa !62
  store ptr @bmiter__elem_of_mesh_begin, ptr %16, align 8, !tbaa !64
  store ptr @bmiter__elem_of_mesh_step, ptr %17, align 8, !tbaa !65
  %99 = load ptr, ptr %18, align 8, !tbaa !83
  store ptr %99, ptr %6, align 8, !tbaa !69
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #11
  %100 = load ptr, ptr %17, align 8, !tbaa !65
  %101 = call ptr %100(ptr noundef nonnull %6) #11
  %102 = icmp eq ptr %101, null
  br i1 %102, label %131, label %103

103:                                              ; preds = %98, %127
  %104 = phi ptr [ %129, %127 ], [ %101, %98 ]
  %105 = getelementptr inbounds %struct.BMFace, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !84
  br label %107

107:                                              ; preds = %115, %103
  %108 = phi ptr [ %106, %103 ], [ %117, %115 ]
  %109 = getelementptr inbounds %struct.BMLoop, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !114
  %111 = getelementptr inbounds %struct.BMHeader, ptr %110, i64 0, i32 3
  %112 = load i8, ptr %111, align 1, !tbaa !70
  %113 = and i8 %112, 16
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.BMLoop, ptr %108, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !92
  %118 = icmp eq ptr %117, %106
  br i1 %118, label %119, label %107, !llvm.loop !263

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.BMHeader, ptr %104, i64 0, i32 3
  %121 = load i8, ptr %120, align 1, !tbaa !70
  %122 = or i8 %121, 16
  store i8 %122, ptr %120, align 1, !tbaa !70
  br label %127

123:                                              ; preds = %107
  %124 = getelementptr inbounds %struct.BMHeader, ptr %104, i64 0, i32 3
  %125 = load i8, ptr %124, align 1, !tbaa !70
  %126 = and i8 %125, -17
  store i8 %126, ptr %124, align 1, !tbaa !70
  br label %127

127:                                              ; preds = %123, %119
  %128 = load ptr, ptr %17, align 8, !tbaa !65
  %129 = call ptr %128(ptr noundef nonnull %6) #11
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %103, !llvm.loop !264

131:                                              ; preds = %127, %98
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  %132 = call fastcc ptr @mesh_separate_tagged(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  %133 = icmp ne ptr %132, null
  %134 = zext i1 %133 to i8
  %135 = or i8 %21, %134
  br label %136

136:                                              ; preds = %62, %19, %131
  %137 = phi i8 [ %135, %131 ], [ %21, %19 ], [ %21, %62 ]
  %138 = phi i1 [ false, %131 ], [ true, %19 ], [ true, %62 ]
  %139 = add nuw nsw i32 %20, 1
  %140 = icmp eq i32 %139, %8
  %141 = select i1 %138, i1 true, i1 %140
  br i1 %141, label %142, label %19, !llvm.loop !265

142:                                              ; preds = %136, %4
  %143 = phi i8 [ 0, %4 ], [ %137, %136 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #11
  ret i8 %143
}

declare i32 @CTX_data_selected_editable_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_mesh_create(ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_bm_from_me(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @BM_mesh_bm_to_me(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mesh_separate_tagged(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Base, ptr %2, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !187
  %7 = tail call ptr @BM_mesh_create(ptr noundef nonnull @bm_mesh_allocsize_default) #11
  tail call void @BM_mesh_elem_toolflags_ensure(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 24
  %9 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 24
  %10 = load i64, ptr @CD_MASK_BMESH, align 8, !tbaa !266
  tail call void @CustomData_copy(ptr noundef nonnull %8, ptr noundef nonnull %9, i64 noundef %10, i32 noundef 1, i32 noundef 0) #11
  %11 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 25
  %12 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 25
  tail call void @CustomData_copy(ptr noundef nonnull %11, ptr noundef nonnull %12, i64 noundef %10, i32 noundef 1, i32 noundef 0) #11
  %13 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 26
  %14 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 26
  tail call void @CustomData_copy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef %10, i32 noundef 1, i32 noundef 0) #11
  %15 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 27
  %16 = getelementptr inbounds %struct.BMesh, ptr %7, i64 0, i32 27
  tail call void @CustomData_copy(ptr noundef nonnull %15, ptr noundef nonnull %16, i64 noundef %10, i32 noundef 1, i32 noundef 0) #11
  %17 = load i32, ptr @bm_mesh_allocsize_default, align 4, !tbaa !267
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %9, i32 noundef %17, i8 noundef zeroext 1) #11
  %18 = load i32, ptr getelementptr inbounds (%struct.BMAllocTemplate, ptr @bm_mesh_allocsize_default, i64 0, i32 1), align 4, !tbaa !269
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %12, i32 noundef %18, i8 noundef zeroext 2) #11
  %19 = load i32, ptr getelementptr inbounds (%struct.BMAllocTemplate, ptr @bm_mesh_allocsize_default, i64 0, i32 2), align 4, !tbaa !270
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %14, i32 noundef %19, i8 noundef zeroext 4) #11
  %20 = load i32, ptr getelementptr inbounds (%struct.BMAllocTemplate, ptr @bm_mesh_allocsize_default, i64 0, i32 3), align 4, !tbaa !271
  tail call void @CustomData_bmesh_init_pool(ptr noundef nonnull %16, i32 noundef %20, i8 noundef zeroext 8) #11
  %21 = tail call ptr @ED_object_add_duplicate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1) #11
  %22 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !187
  %24 = tail call ptr @give_matarar(ptr noundef %6) #11
  %25 = tail call ptr @give_totcolp(ptr noundef %6) #11
  %26 = load i16, ptr %25, align 2, !tbaa !272
  tail call void @assign_matarar(ptr noundef %23, ptr noundef %24, i16 noundef signext %26) #11
  tail call void @ED_base_object_select(ptr noundef %21, i16 noundef signext 1) #11
  %27 = tail call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.476, i32 noundef 16, ptr noundef %7) #11
  %28 = tail call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.477, i32 noundef 16, i32 noundef 5) #11
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %3, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  tail call void @BM_mesh_normals_update(ptr noundef %7) #11
  %29 = load ptr, ptr %22, align 8, !tbaa !187
  %30 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 19
  %31 = load ptr, ptr %30, align 8, !tbaa !115
  tail call void @BM_mesh_bm_to_me(ptr noundef %7, ptr noundef %31, i8 noundef zeroext 0) #11
  tail call void @BM_mesh_free(ptr noundef %7) #11
  %32 = load ptr, ptr %22, align 8, !tbaa !187
  %33 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !115
  %35 = getelementptr inbounds %struct.Mesh, ptr %34, i64 0, i32 20
  store ptr null, ptr %35, align 8, !tbaa !149
  ret ptr %21
}

declare void @BM_mesh_elem_toolflags_ensure(ptr noundef) local_unnamed_addr #2

declare void @CustomData_copy(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_bmesh_init_pool(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @ED_object_add_duplicate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @assign_matarar(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @give_matarar(ptr noundef) local_unnamed_addr #2

declare ptr @give_totcolp(ptr noundef) local_unnamed_addr #2

declare void @ED_base_object_select(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BM_mesh_normals_update(ptr noundef) local_unnamed_addr #2

declare ptr @BM_iter_at_index(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mesh_separate_material_assign_mat_nr(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = tail call ptr @give_totcolp_id(ptr noundef %4) #11
  %6 = tail call ptr @give_matarar_id(ptr noundef %4) #11
  %7 = icmp eq ptr %5, null
  %8 = icmp eq ptr %6, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %45, label %10

10:                                               ; preds = %2
  %11 = load i16, ptr %5, align 2, !tbaa !272
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %10
  %14 = sext i16 %1 to i32
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %16 = load i32, ptr %15, align 8, !tbaa !273
  %17 = icmp sgt i32 %16, %14
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %20 = load ptr, ptr %19, align 8, !tbaa !274
  %21 = sext i16 %1 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !105
  %24 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %25 = load ptr, ptr %24, align 8, !tbaa !275
  %26 = getelementptr inbounds i8, ptr %25, i64 %21
  %27 = load i8, ptr %26, align 1, !tbaa !69
  br label %28

28:                                               ; preds = %13, %18
  %29 = phi ptr [ %23, %18 ], [ null, %13 ]
  %30 = phi i8 [ %27, %18 ], [ 0, %13 ]
  %31 = icmp sgt i16 %11, %1
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load ptr, ptr %6, align 8, !tbaa !105
  %34 = sext i16 %1 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !105
  br label %37

37:                                               ; preds = %28, %32
  %38 = phi ptr [ %36, %32 ], [ null, %28 ]
  tail call void @BKE_material_clear_id(ptr noundef %4, i8 noundef zeroext 1) #11
  tail call void @BKE_material_resize_object(ptr noundef %0, i16 noundef signext 1, i8 noundef zeroext 1) #11
  tail call void @BKE_material_resize_id(ptr noundef %4, i16 noundef signext 1, i8 noundef zeroext 1) #11
  %39 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %40 = load ptr, ptr %39, align 8, !tbaa !274
  store ptr %29, ptr %40, align 8, !tbaa !105
  %41 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %42 = load ptr, ptr %41, align 8, !tbaa !275
  store i8 %30, ptr %42, align 1, !tbaa !69
  %43 = load ptr, ptr %6, align 8, !tbaa !105
  store ptr %38, ptr %43, align 8, !tbaa !105
  br label %45

44:                                               ; preds = %10
  tail call void @BKE_material_clear_id(ptr noundef %4, i8 noundef zeroext 1) #11
  tail call void @BKE_material_resize_object(ptr noundef %0, i16 noundef signext 0, i8 noundef zeroext 1) #11
  tail call void @BKE_material_resize_id(ptr noundef %4, i16 noundef signext 0, i8 noundef zeroext 1) #11
  br label %45

45:                                               ; preds = %37, %44, %2
  ret void
}

declare ptr @give_totcolp_id(ptr noundef) local_unnamed_addr #2

declare ptr @give_matarar_id(ptr noundef) local_unnamed_addr #2

declare void @BKE_material_clear_id(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_material_resize_object(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_material_resize_id(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMW_init(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BMW_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMW_step(ptr noundef) local_unnamed_addr #2

declare void @BMW_end(ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BM_mesh_edgeloops_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @bm_edge_test_fill_grid_cb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #7 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !70
  %5 = lshr i8 %4, 4
  %6 = and i8 %5, 1
  ret i8 %6
}

declare zeroext i8 @BM_edgeloop_is_closed(ptr noundef) local_unnamed_addr #2

declare i32 @BM_edgeloop_length_get(ptr noundef) local_unnamed_addr #2

declare ptr @BM_edgeloop_verts_get(ptr noundef) local_unnamed_addr #2

declare ptr @BM_mesh_active_vert_get(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_listbase_rotate_first(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_edgeloop_edges_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

declare i32 @BLI_sortutil_cmp_float_reverse(ptr noundef, ptr noundef) #2

declare void @BM_mesh_edgeloops_free(ptr noundef) local_unnamed_addr #2

declare float @angle_v3v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

declare float @BM_edge_calc_face_angle_ex(ptr noundef, float noundef) local_unnamed_addr #2

declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_context_rv3d(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_face_calc_center_mean(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_rng_new_srandom(i32 noundef) local_unnamed_addr #2

declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #2

declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @bmelemsort_comp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load float, ptr %0, align 4, !tbaa !216
  %4 = load float, ptr %1, align 4, !tbaa !216
  %5 = fcmp ogt float %3, %4
  %6 = zext i1 %5 to i32
  %7 = fcmp olt float %3, %4
  %8 = sext i1 %7 to i32
  %9 = add nsw i32 %8, %6
  ret i32 %9
}

declare void @BM_mesh_remap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare i32 @uiDefAutoButsRNA(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @edbm_sort_elements_draw_check_prop(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @RNA_property_identifier(ptr noundef %1) #11
  %4 = tail call i32 @RNA_enum_get(ptr noundef %0, ptr noundef nonnull @.str.35) #11
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(5) @.str.21) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = icmp eq i32 %4, 6
  br label %15

9:                                                ; preds = %2
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(8) @.str.323) #12
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

declare ptr @RNA_property_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @give_current_material_texture(ptr noundef) local_unnamed_addr #2

declare float @BLI_hnoise(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare i32 @externtex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_error_occurred(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @EDBM_verts_mirror_cache_begin_ex(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, float noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BM_vert_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

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
!48 = !{!49, !36, i64 112}
!49 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!50 = !{!51, !36, i64 0}
!51 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !52, i64 16, !36, i64 24, !52, i64 32, !36, i64 40, !36, i64 48, !53, i64 56, !36, i64 64, !52, i64 72, !36, i64 80, !52, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !52, i64 104}
!52 = !{!"int", !37, i64 0}
!53 = !{!"long", !37, i64 0}
!54 = !{!51, !41, i64 92}
!55 = !{!51, !36, i64 96}
!56 = !{!57, !36, i64 376}
!57 = !{!"ARegion", !36, i64 0, !36, i64 8, !58, i64 16, !61, i64 176, !61, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !60, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!58 = !{!"View2D", !59, i64 0, !59, i64 16, !61, i64 32, !61, i64 48, !61, i64 64, !37, i64 80, !37, i64 88, !60, i64 96, !60, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !52, i64 136, !52, i64 140, !36, i64 144, !36, i64 152}
!59 = !{!"rctf", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12}
!60 = !{!"float", !37, i64 0}
!61 = !{!"rcti", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!62 = !{!63, !37, i64 60}
!63 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !52, i64 56, !37, i64 60}
!64 = !{!63, !36, i64 40}
!65 = !{!63, !36, i64 48}
!66 = !{!67, !36, i64 32}
!67 = !{!"BMesh", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !52, i64 88, !52, i64 92, !52, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !52, i64 128, !36, i64 136, !68, i64 144, !68, i64 344, !68, i64 544, !68, i64 744, !41, i64 944, !52, i64 948, !52, i64 952, !52, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!68 = !{!"CustomData", !36, i64 0, !37, i64 8, !52, i64 172, !52, i64 176, !52, i64 180, !36, i64 184, !36, i64 192}
!69 = !{!37, !37, i64 0}
!70 = !{!71, !37, i64 13}
!71 = !{!"BMHeader", !36, i64 0, !52, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = !{!35, !36, i64 48}
!76 = !{!35, !36, i64 104}
!77 = !{!67, !52, i64 16}
!78 = !{!67, !52, i64 20}
!79 = !{!67, !52, i64 24}
!80 = !{!67, !52, i64 0}
!81 = !{!67, !52, i64 4}
!82 = !{!67, !52, i64 12}
!83 = !{!67, !36, i64 56}
!84 = !{!85, !36, i64 24}
!85 = !{!"BMFace", !71, i64 0, !36, i64 16, !36, i64 24, !52, i64 32, !37, i64 36, !41, i64 48}
!86 = !{!87, !36, i64 24}
!87 = !{!"BMLoop", !71, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!88 = !{!89, !36, i64 40}
!89 = !{!"BMEdge", !71, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !90, i64 48, !90, i64 64}
!90 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!91 = !{!87, !36, i64 40}
!92 = !{!87, !36, i64 56}
!93 = distinct !{!93, !73, !74}
!94 = distinct !{!94, !73, !74}
!95 = !{!67, !36, i64 40}
!96 = distinct !{!96, !73, !74}
!97 = !{!98, !36, i64 48}
!98 = !{!"BMVert", !71, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!99 = distinct !{!99, !73, !74}
!100 = !{!49, !36, i64 120}
!101 = !{!87, !36, i64 32}
!102 = !{!52, !52, i64 0}
!103 = distinct !{!103, !73, !74}
!104 = distinct !{!104, !73, !74}
!105 = !{!36, !36, i64 0}
!106 = distinct !{!106, !73, !74}
!107 = !{!89, !36, i64 24}
!108 = !{!89, !36, i64 32}
!109 = distinct !{!109, !73, !74}
!110 = !{!51, !41, i64 94}
!111 = !{!112, !37, i64 12}
!112 = !{!"BMElem", !71, i64 0}
!113 = !{!85, !52, i64 32}
!114 = !{!87, !36, i64 16}
!115 = !{!116, !36, i64 296}
!116 = !{!"Object", !117, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !52, i64 140, !52, i64 144, !52, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !118, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !52, i64 432, !52, i64 436, !36, i64 440, !36, i64 448, !52, i64 456, !52, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !60, i64 616, !60, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !52, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !52, i64 968, !52, i64 972, !52, i64 976, !52, i64 980, !52, i64 984, !60, i64 988, !60, i64 992, !60, i64 996, !60, i64 1000, !60, i64 1004, !60, i64 1008, !60, i64 1012, !60, i64 1016, !60, i64 1020, !60, i64 1024, !60, i64 1028, !60, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !60, i64 1048, !60, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !60, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !52, i64 1144, !52, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !60, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !53, i64 1304, !53, i64 1312, !52, i64 1320, !52, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!117 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !52, i64 100, !52, i64 104, !52, i64 108, !36, i64 112}
!118 = !{!"bAnimVizSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !52, i64 32, !52, i64 36, !52, i64 40, !52, i64 44}
!119 = !{!120, !52, i64 1344}
!120 = !{!"Mesh", !117, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !68, i64 280, !68, i64 480, !68, i64 680, !68, i64 880, !68, i64 1080, !52, i64 1280, !52, i64 1284, !52, i64 1288, !52, i64 1292, !52, i64 1296, !52, i64 1300, !52, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !52, i64 1344, !41, i64 1348, !41, i64 1350, !60, i64 1352, !52, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !41, i64 1366, !36, i64 1368}
!121 = distinct !{!121, !73, !74}
!122 = distinct !{!122, !73, !74}
!123 = distinct !{!123, !73, !74}
!124 = !{!125, !52, i64 16}
!125 = !{!"BMOpSlot", !36, i64 0, !52, i64 8, !37, i64 12, !52, i64 16, !37, i64 24}
!126 = !{i32 2, i32 5}
!127 = !{i64 0, i64 8, !105, i64 8, i64 8, !105}
!128 = distinct !{!128, !73, !74}
!129 = !{!120, !37, i64 1365}
!130 = !{!131, !52, i64 16}
!131 = !{!"ModifierData", !36, i64 0, !36, i64 8, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!132 = !{!131, !52, i64 20}
!133 = !{!134, !41, i64 114}
!134 = !{!"MirrorModifierData", !131, i64 0, !41, i64 112, !41, i64 114, !60, i64 116, !36, i64 120}
!135 = !{!134, !60, i64 116}
!136 = distinct !{!136, !73, !74}
!137 = distinct !{!137, !73, !74}
!138 = distinct !{!138, !73, !74}
!139 = distinct !{!139, !73, !74}
!140 = distinct !{!140, !73, !74}
!141 = !{i8 0, i8 2}
!142 = !{!60, !60, i64 0}
!143 = !{!67, !36, i64 968}
!144 = !{!145, !37, i64 24}
!145 = !{!"BMEditSelection", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!146 = !{!145, !36, i64 16}
!147 = !{!67, !36, i64 960}
!148 = !{!116, !41, i64 136}
!149 = !{!120, !36, i64 272}
!150 = !{!98, !36, i64 0}
!151 = distinct !{!151, !73, !74}
!152 = distinct !{!152, !73, !74}
!153 = !{!35, !36, i64 80}
!154 = !{!120, !36, i64 144}
!155 = !{!156, !41, i64 28}
!156 = !{!"KeyBlock", !36, i64 0, !36, i64 8, !60, i64 16, !60, i64 20, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !52, i64 32, !52, i64 36, !36, i64 40, !37, i64 48, !37, i64 112, !60, i64 176, !60, i64 180}
!157 = distinct !{!157, !73, !74}
!158 = !{!49, !36, i64 152}
!159 = !{!49, !36, i64 88}
!160 = !{!49, !36, i64 80}
!161 = !{!67, !52, i64 316}
!162 = !{!67, !36, i64 144}
!163 = !{!164, !52, i64 0}
!164 = !{!"CustomDataLayer", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !37, i64 32, !36, i64 96}
!165 = !{!166, !52, i64 0}
!166 = !{!"EnumPropertyItem", !52, i64 0, !36, i64 8, !52, i64 16, !36, i64 24, !36, i64 32}
!167 = !{!166, !36, i64 8}
!168 = !{!166, !36, i64 24}
!169 = distinct !{!169, !73, !74}
!170 = !{!35, !36, i64 64}
!171 = !{!172, !52, i64 128}
!172 = !{!"CollectionPropertyIterator", !173, i64 0, !173, i64 24, !36, i64 48, !37, i64 56, !52, i64 96, !52, i64 100, !173, i64 104, !52, i64 128}
!173 = !{!"PointerRNA", !174, i64 0, !36, i64 8, !36, i64 16}
!174 = !{!"", !36, i64 0}
!175 = !{i64 0, i64 8, !105, i64 8, i64 8, !105, i64 16, i64 8, !105}
!176 = distinct !{!176, !73, !74}
!177 = !{!71, !52, i64 8}
!178 = distinct !{!178, !73, !74}
!179 = !{!67, !37, i64 28}
!180 = distinct !{!180, !73, !74}
!181 = distinct !{!181, !73, !74}
!182 = !{!89, !36, i64 16}
!183 = !{!67, !52, i64 128}
!184 = !{!185, !41, i64 0}
!185 = !{!"BMFlagLayer", !41, i64 0}
!186 = distinct !{!186, !73, !74}
!187 = !{!188, !36, i64 32}
!188 = !{!"Base", !36, i64 0, !36, i64 8, !52, i64 16, !52, i64 20, !52, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!189 = !{!190, !36, i64 32}
!190 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !173, i64 16}
!191 = !{!120, !36, i64 24}
!192 = distinct !{!192, !73, !74}
!193 = distinct !{!193, !73, !74}
!194 = !{!39, !36, i64 0}
!195 = !{}
!196 = !{!197, !36, i64 16}
!197 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!198 = distinct !{!198, !73, !74}
!199 = distinct !{!199, !73, !74}
!200 = !{!201, !60, i64 0}
!201 = !{!"SortPointerByFloat", !60, i64 0, !36, i64 8}
!202 = !{!201, !36, i64 8}
!203 = distinct !{!203, !73, !74}
!204 = distinct !{!204, !73, !74}
!205 = distinct !{!205, !73, !74}
!206 = distinct !{!206, !73, !74}
!207 = distinct !{!207, !73, !74}
!208 = distinct !{!208, !73, !74}
!209 = distinct !{!209, !73, !74}
!210 = distinct !{!210, !73, !74}
!211 = distinct !{!211, !73, !74}
!212 = distinct !{!212, !73, !74}
!213 = distinct !{!213, !73, !74}
!214 = !{!215, !52, i64 4}
!215 = !{!"BMElemSort", !60, i64 0, !52, i64 4}
!216 = !{!215, !60, i64 0}
!217 = distinct !{!217, !73, !74}
!218 = distinct !{!218, !73, !74}
!219 = distinct !{!219, !73, !74}
!220 = !{!221, !36, i64 152}
!221 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !52, i64 32, !60, i64 36, !37, i64 40, !37, i64 56, !60, i64 72, !60, i64 76, !37, i64 80, !37, i64 81, !52, i64 84, !52, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !59, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !52, i64 224, !52, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !60, i64 244, !60, i64 248, !60, i64 252, !60, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!222 = distinct !{!222, !73, !74}
!223 = distinct !{!223, !73, !74}
!224 = distinct !{!224, !73, !74}
!225 = !{!85, !41, i64 48}
!226 = distinct !{!226, !73, !74}
!227 = distinct !{!227, !73, !74}
!228 = distinct !{!228, !73, !74}
!229 = distinct !{!229, !73, !74}
!230 = distinct !{!230, !73, !74}
!231 = distinct !{!231, !73, !74}
!232 = distinct !{!232, !73, !74}
!233 = distinct !{!233, !73, !74}
!234 = distinct !{!234, !73, !74}
!235 = distinct !{!235, !73, !74}
!236 = distinct !{!236, !73, !74}
!237 = distinct !{!237, !73, !74}
!238 = distinct !{!238, !73, !74}
!239 = distinct !{!239, !73, !74}
!240 = distinct !{!240, !73, !74}
!241 = distinct !{!241, !73, !74}
!242 = !{!116, !52, i64 460}
!243 = !{!244, !41, i64 232}
!244 = !{!"Tex", !117, i64 0, !36, i64 120, !60, i64 128, !60, i64 132, !60, i64 136, !60, i64 140, !60, i64 144, !60, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180, !60, i64 184, !60, i64 188, !60, i64 192, !60, i64 196, !60, i64 200, !60, i64 204, !60, i64 208, !60, i64 212, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !60, i64 236, !60, i64 240, !60, i64 244, !60, i64 248, !52, i64 252, !52, i64 256, !41, i64 260, !41, i64 262, !41, i64 264, !41, i64 266, !52, i64 268, !52, i64 272, !52, i64 276, !52, i64 280, !60, i64 284, !60, i64 288, !60, i64 292, !245, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!245 = !{!"ImageUser", !36, i64 0, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !52, i64 36}
!246 = !{!244, !60, i64 132}
!247 = !{!244, !60, i64 128}
!248 = !{!244, !41, i64 234}
!249 = distinct !{!249, !73, !74}
!250 = distinct !{!250, !73, !74}
!251 = distinct !{!251, !73, !74}
!252 = distinct !{!252, !73, !74}
!253 = distinct !{!253, !73, !74}
!254 = distinct !{!254, !73, !74}
!255 = !{!49, !41, i64 160}
!256 = distinct !{!256, !73, !74}
!257 = distinct !{!257, !73, !74}
!258 = distinct !{!258, !73, !74}
!259 = distinct !{!259, !73, !74}
!260 = distinct !{!260, !73, !74}
!261 = distinct !{!261, !73, !74}
!262 = distinct !{!262, !73, !74}
!263 = distinct !{!263, !73, !74}
!264 = distinct !{!264, !73, !74}
!265 = distinct !{!265, !73, !74}
!266 = !{!53, !53, i64 0}
!267 = !{!268, !52, i64 0}
!268 = !{!"BMAllocTemplate", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!269 = !{!268, !52, i64 4}
!270 = !{!268, !52, i64 8}
!271 = !{!268, !52, i64 12}
!272 = !{!41, !41, i64 0}
!273 = !{!116, !52, i64 456}
!274 = !{!116, !36, i64 440}
!275 = !{!116, !36, i64 448}
