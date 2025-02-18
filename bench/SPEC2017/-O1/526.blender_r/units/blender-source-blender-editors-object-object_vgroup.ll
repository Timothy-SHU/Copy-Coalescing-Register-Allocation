; ModuleID = 'blender/source/blender/editors/object/object_vgroup.c'
source_filename = "blender/source/blender/editors/object/object_vgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }
%struct.SoftBody = type { i32, i32, ptr, ptr, i8, i8, i16, float, [64 x i8], float, float, float, float, float, float, float, float, float, i16, [64 x i8], i16, float, float, [64 x i8], i32, i32, i32, i16, i16, ptr, i32, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, float, float, ptr, %struct.ListBase, ptr, [3 x float], [3 x [3 x float]], [3 x [3 x float]], i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.ExplodeModifierData = type { %struct.ModifierData, ptr, i16, i16, float, [64 x i8] }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ClothSimSettings = type { ptr, float, float, float, [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i8], ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.bDeformGroup = type { ptr, ptr, [64 x i8], i8, [7 x i8] }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.LinkNode = type { ptr, ptr }
%struct.MeshElemMap = type { ptr, i32 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.BVHTreeFromMesh = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, float, ptr, i8 }
%struct.BVHTreeNearest = type { i32, [3 x float], [3 x float], float, i32 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }

@.str = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"lattice deformVert\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"vgroup parray from me\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.ED_vgroup_array_copy = private unnamed_addr constant [21 x i8] c"ED_vgroup_array_copy\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@WT_vertex_group_select_item = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.176, i32 0, ptr @.str.177, ptr @.str.178 }, %struct.EnumPropertyItem { i32 2, ptr @.str.179, i32 0, ptr @.str.180, ptr @.str.181 }, %struct.EnumPropertyItem { i32 3, ptr @.str.182, i32 0, ptr @.str.183, ptr @.str.184 }, %struct.EnumPropertyItem { i32 0, ptr @.str.185, i32 0, ptr @.str.22, ptr @.str.186 }, %struct.EnumPropertyItem zeroinitializer], align 16
@__func__.ED_vgroup_subset_from_select_type = private unnamed_addr constant [34 x i8] c"ED_vgroup_subset_from_select_type\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Add Vertex Group\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"OBJECT_OT_vertex_group_add\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Add a new vertex group to the active object\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Remove Vertex Group\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"OBJECT_OT_vertex_group_remove\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"Delete the active or all vertex groups from the active object\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Remove all vertex groups\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Assign to Vertex Group\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"OBJECT_OT_vertex_group_assign\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"Assign the selected vertices to the active vertex group\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Assign to New Group\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"OBJECT_OT_vertex_group_assign_new\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"Assign the selected vertices to a new vertex group\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Remove from Vertex Group\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"OBJECT_OT_vertex_group_remove_from\00", align 1
@.str.20 = private unnamed_addr constant [64 x i8] c"Remove the selected vertices from active or all vertex group(s)\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"use_all_groups\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"All Groups\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Remove from all groups\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"use_all_verts\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"All Verts\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"Clear the active group\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"Select Vertex Group\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"OBJECT_OT_vertex_group_select\00", align 1
@.str.29 = private unnamed_addr constant [60 x i8] c"Select all the vertices assigned to the active vertex group\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"Deselect Vertex Group\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"OBJECT_OT_vertex_group_deselect\00", align 1
@.str.32 = private unnamed_addr constant [67 x i8] c"Deselect all selected vertices assigned to the active vertex group\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"Copy Vertex Group\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"OBJECT_OT_vertex_group_copy\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"Make a copy of the active vertex group\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"Vertex Group Levels\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"OBJECT_OT_vertex_group_levels\00", align 1
@.str.38 = private unnamed_addr constant [83 x i8] c"Add some offset and multiply with some gain the weights of the active vertex group\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"Value to add to weights\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"gain\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"Gain\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"Value to multiply weights by\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"Normalize Vertex Group\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"OBJECT_OT_vertex_group_normalize\00", align 1
@.str.47 = private unnamed_addr constant [83 x i8] c"Normalize weights of the active vertex group, so that the highest ones are now 1.0\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"Normalize All Vertex Groups\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"OBJECT_OT_vertex_group_normalize_all\00", align 1
@.str.50 = private unnamed_addr constant [99 x i8] c"Normalize all weights of all vertex groups, so that for each vertex, the sum of all weights is 1.0\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"lock_active\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"Lock Active\00", align 1
@.str.53 = private unnamed_addr constant [61 x i8] c"Keep the values of the active group while normalizing others\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"Fix Vertex Group Deform\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"OBJECT_OT_vertex_group_fix\00", align 1
@.str.56 = private unnamed_addr constant [133 x i8] c"Modify the position of selected vertices by changing only their respective groups' weights (this tool may be slow for many vertices)\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"dist\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"Distance\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"The distance to move to\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"Strength\00", align 1
@.str.62 = private unnamed_addr constant [53 x i8] c"The distance moved can be changed by this multiplier\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"accuracy\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"Change Sensitivity\00", align 1
@.str.65 = private unnamed_addr constant [83 x i8] c"Change the amount weights are altered with each iteration: lower values are slower\00", align 1
@.str.66 = private unnamed_addr constant [33 x i8] c"Change the Lock On Vertex Groups\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"OBJECT_OT_vertex_group_lock\00", align 1
@.str.68 = private unnamed_addr constant [60 x i8] c"Change the lock state of all vertex groups of active object\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@vgroup_lock_actions = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.199, i32 0, ptr @.str.200, ptr @.str.201 }, %struct.EnumPropertyItem { i32 1, ptr @.str.202, i32 0, ptr @.str.203, ptr @.str.204 }, %struct.EnumPropertyItem { i32 2, ptr @.str.205, i32 0, ptr @.str.206, ptr @.str.207 }, %struct.EnumPropertyItem { i32 3, ptr @.str.208, i32 0, ptr @.str.209, ptr @.str.210 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.70 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.71 = private unnamed_addr constant [40 x i8] c"Lock action to execute on vertex groups\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"Invert Vertex Group\00", align 1
@.str.73 = private unnamed_addr constant [30 x i8] c"OBJECT_OT_vertex_group_invert\00", align 1
@.str.74 = private unnamed_addr constant [37 x i8] c"Invert active vertex group's weights\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"auto_assign\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"Add Weights\00", align 1
@.str.77 = private unnamed_addr constant [61 x i8] c"Add verts from groups that have zero weight before inverting\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"auto_remove\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"Remove Weights\00", align 1
@.str.80 = private unnamed_addr constant [63 x i8] c"Remove verts from groups that have zero weight after inverting\00", align 1
@.str.81 = private unnamed_addr constant [19 x i8] c"Blend Vertex Group\00", align 1
@.str.82 = private unnamed_addr constant [29 x i8] c"OBJECT_OT_vertex_group_blend\00", align 1
@.str.83 = private unnamed_addr constant [67 x i8] c"Blend selected vertex weights with unselected for the active group\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"factor\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"Factor\00", align 1
@.str.86 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"Clean Vertex Group\00", align 1
@.str.88 = private unnamed_addr constant [29 x i8] c"OBJECT_OT_vertex_group_clean\00", align 1
@.str.89 = private unnamed_addr constant [55 x i8] c"Remove vertex group assignments which are not required\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"Limit\00", align 1
@.str.92 = private unnamed_addr constant [61 x i8] c"Remove vertices which weight is below or equal to this limit\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"keep_single\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"Keep Single\00", align 1
@.str.95 = private unnamed_addr constant [56 x i8] c"Keep verts assigned to at least one group when cleaning\00", align 1
@.str.96 = private unnamed_addr constant [24 x i8] c"Quantize Vertex Weights\00", align 1
@.str.97 = private unnamed_addr constant [32 x i8] c"OBJECT_OT_vertex_group_quantize\00", align 1
@.str.98 = private unnamed_addr constant [39 x i8] c"Set weights to a fixed number of steps\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"steps\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"Steps\00", align 1
@.str.101 = private unnamed_addr constant [32 x i8] c"Number of steps between 0 and 1\00", align 1
@.str.102 = private unnamed_addr constant [35 x i8] c"Limit Number of Weights per Vertex\00", align 1
@.str.103 = private unnamed_addr constant [35 x i8] c"OBJECT_OT_vertex_group_limit_total\00", align 1
@.str.104 = private unnamed_addr constant [95 x i8] c"Limit deform weights associated with a vertex to a specified number by removing lowest weights\00", align 1
@.str.105 = private unnamed_addr constant [33 x i8] c"Maximum number of deform weights\00", align 1
@.str.106 = private unnamed_addr constant [20 x i8] c"Mirror Vertex Group\00", align 1
@.str.107 = private unnamed_addr constant [30 x i8] c"OBJECT_OT_vertex_group_mirror\00", align 1
@.str.108 = private unnamed_addr constant [154 x i8] c"Mirror all vertex groups, flip weights and/or names, editing only selected vertices, flipping when both sides are selected otherwise copy from unselected\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"mirror_weights\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"Mirror Weights\00", align 1
@.str.111 = private unnamed_addr constant [15 x i8] c"Mirror weights\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"flip_group_names\00", align 1
@.str.113 = private unnamed_addr constant [17 x i8] c"Flip Group Names\00", align 1
@.str.114 = private unnamed_addr constant [24 x i8] c"Flip vertex group names\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"all_groups\00", align 1
@.str.116 = private unnamed_addr constant [33 x i8] c"Mirror all vertex groups weights\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"use_topology\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"Topology Mirror\00", align 1
@.str.119 = private unnamed_addr constant [90 x i8] c"Use topology based mirroring (for when both sides of mesh have matching, unique topology)\00", align 1
@.str.120 = private unnamed_addr constant [29 x i8] c"Copy Vertex Groups to Linked\00", align 1
@.str.121 = private unnamed_addr constant [38 x i8] c"OBJECT_OT_vertex_group_copy_to_linked\00", align 1
@.str.122 = private unnamed_addr constant [58 x i8] c"Copy vertex groups to all users of the same geometry data\00", align 1
@.str.123 = private unnamed_addr constant [30 x i8] c"Copy Vertex Group to Selected\00", align 1
@.str.124 = private unnamed_addr constant [40 x i8] c"OBJECT_OT_vertex_group_copy_to_selected\00", align 1
@.str.125 = private unnamed_addr constant [67 x i8] c"Copy vertex groups to other selected objects with matching indices\00", align 1
@.str.126 = private unnamed_addr constant [17 x i8] c"Transfer Weights\00", align 1
@.str.127 = private unnamed_addr constant [39 x i8] c"OBJECT_OT_vertex_group_transfer_weight\00", align 1
@.str.128 = private unnamed_addr constant [51 x i8] c"Transfer weight paint to active from selected mesh\00", align 1
@.str.129 = private unnamed_addr constant [18 x i8] c"group_select_mode\00", align 1
@WT_vertex_group_mode_item = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.221, i32 0, ptr @.str.222, ptr @.str.223 }, %struct.EnumPropertyItem { i32 2, ptr @.str.224, i32 0, ptr @.str.10, ptr @.str.225 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.130 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@WT_method_item = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.226, i32 0, ptr @.str.227, ptr @.str.228 }, %struct.EnumPropertyItem { i32 2, ptr @.str.229, i32 0, ptr @.str.230, ptr @.str.231 }, %struct.EnumPropertyItem { i32 3, ptr @.str.232, i32 0, ptr @.str.233, ptr @.str.234 }, %struct.EnumPropertyItem { i32 4, ptr @.str.235, i32 0, ptr @.str.236, ptr @.str.237 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.131 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"replace_mode\00", align 1
@WT_replace_mode_item = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.238, i32 0, ptr @.str.10, ptr @.str.239 }, %struct.EnumPropertyItem { i32 2, ptr @.str.240, i32 0, ptr @.str.241, ptr @.str.242 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.133 = private unnamed_addr constant [8 x i8] c"Replace\00", align 1
@.str.134 = private unnamed_addr constant [24 x i8] c"Set Active Vertex Group\00", align 1
@.str.135 = private unnamed_addr constant [34 x i8] c"OBJECT_OT_vertex_group_set_active\00", align 1
@.str.136 = private unnamed_addr constant [28 x i8] c"Set the active vertex group\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@DummyRNA_NULL_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.138 = private unnamed_addr constant [30 x i8] c"Vertex group to set as active\00", align 1
@OBJECT_OT_vertex_group_sort.vgroup_sort_type = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.139, i32 0, ptr @.str.140, ptr @.str.86 }, %struct.EnumPropertyItem { i32 1, ptr @.str.141, i32 0, ptr @.str.142, ptr @.str.86 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.139 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.140 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.141 = private unnamed_addr constant [15 x i8] c"BONE_HIERARCHY\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"Bone Hierarchy\00", align 1
@.str.143 = private unnamed_addr constant [19 x i8] c"Sort Vertex Groups\00", align 1
@.str.144 = private unnamed_addr constant [28 x i8] c"OBJECT_OT_vertex_group_sort\00", align 1
@.str.145 = private unnamed_addr constant [19 x i8] c"Sort vertex groups\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"sort_type\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"Sort type\00", align 1
@OBJECT_OT_vertex_group_move.vgroup_slot_move = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.148, i32 0, ptr @.str.149, ptr @.str.86 }, %struct.EnumPropertyItem { i32 -1, ptr @.str.150, i32 0, ptr @.str.151, ptr @.str.86 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.148 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.149 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@.str.152 = private unnamed_addr constant [18 x i8] c"Move Vertex Group\00", align 1
@.str.153 = private unnamed_addr constant [28 x i8] c"OBJECT_OT_vertex_group_move\00", align 1
@.str.154 = private unnamed_addr constant [49 x i8] c"Move the active vertex group up/down in the list\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.157 = private unnamed_addr constant [30 x i8] c"Direction to move, UP or DOWN\00", align 1
@.str.158 = private unnamed_addr constant [25 x i8] c"Paste Weight to Selected\00", align 1
@.str.159 = private unnamed_addr constant [30 x i8] c"OBJECT_OT_vertex_weight_paste\00", align 1
@.str.160 = private unnamed_addr constant [86 x i8] c"Copy this group's weight to other selected verts (disabled if vertex group is locked)\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"weight_group\00", align 1
@.str.162 = private unnamed_addr constant [13 x i8] c"Weight Index\00", align 1
@.str.163 = private unnamed_addr constant [46 x i8] c"Index of source weight in active vertex group\00", align 1
@.str.164 = private unnamed_addr constant [14 x i8] c"Delete Weight\00", align 1
@.str.165 = private unnamed_addr constant [31 x i8] c"OBJECT_OT_vertex_weight_delete\00", align 1
@.str.166 = private unnamed_addr constant [72 x i8] c"Delete this weight from the vertex (disabled if vertex group is locked)\00", align 1
@.str.167 = private unnamed_addr constant [17 x i8] c"Set Active Group\00", align 1
@.str.168 = private unnamed_addr constant [35 x i8] c"OBJECT_OT_vertex_weight_set_active\00", align 1
@.str.169 = private unnamed_addr constant [27 x i8] c"Set as active vertex group\00", align 1
@.str.170 = private unnamed_addr constant [17 x i8] c"Normalize Active\00", align 1
@.str.171 = private unnamed_addr constant [48 x i8] c"OBJECT_OT_vertex_weight_normalize_active_vertex\00", align 1
@.str.172 = private unnamed_addr constant [34 x i8] c"Normalize active vertex's weights\00", align 1
@.str.173 = private unnamed_addr constant [12 x i8] c"Copy Active\00", align 1
@.str.174 = private unnamed_addr constant [29 x i8] c"OBJECT_OT_vertex_weight_copy\00", align 1
@.str.175 = private unnamed_addr constant [37 x i8] c"Copy weights from active to selected\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@.str.177 = private unnamed_addr constant [13 x i8] c"Active Group\00", align 1
@.str.178 = private unnamed_addr constant [24 x i8] c"The active Vertex Group\00", align 1
@.str.179 = private unnamed_addr constant [12 x i8] c"BONE_SELECT\00", align 1
@.str.180 = private unnamed_addr constant [20 x i8] c"Selected Pose Bones\00", align 1
@.str.181 = private unnamed_addr constant [40 x i8] c"All Vertex Groups assigned to Selection\00", align 1
@.str.182 = private unnamed_addr constant [12 x i8] c"BONE_DEFORM\00", align 1
@.str.183 = private unnamed_addr constant [18 x i8] c"Deform Pose Bones\00", align 1
@.str.184 = private unnamed_addr constant [43 x i8] c"All Vertex Groups assigned to Deform Bones\00", align 1
@.str.185 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.186 = private unnamed_addr constant [18 x i8] c"All Vertex Groups\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"vgroup del\00", align 1
@.str.188 = private unnamed_addr constant [6 x i8] c"_copy\00", align 1
@.str.189 = private unnamed_addr constant [8 x i8] c"%s_copy\00", align 1
@.str.190 = private unnamed_addr constant [7 x i8] c"Subset\00", align 1
@.str.191 = private unnamed_addr constant [44 x i8] c"Define which subset of Groups shall be used\00", align 1
@.str.192 = private unnamed_addr constant [57 x i8] c"This operator does not support an active mirror modifier\00", align 1
@.str.193 = private unnamed_addr constant [15 x i8] c"deformedPoints\00", align 1
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.194 = private unnamed_addr constant [16 x i8] c"BLI_array.verts\00", align 1
@.str.195 = private unnamed_addr constant [15 x i8] c"vertHorzChange\00", align 1
@.str.196 = private unnamed_addr constant [9 x i8] c"distance\00", align 1
@.str.197 = private unnamed_addr constant [14 x i8] c"upDownTracker\00", align 1
@.str.198 = private unnamed_addr constant [15 x i8] c"dwIndexTracker\00", align 1
@.str.199 = private unnamed_addr constant [7 x i8] c"TOGGLE\00", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"Toggle\00", align 1
@.str.201 = private unnamed_addr constant [87 x i8] c"Unlock all vertex groups if there is at least one locked group, lock all in other case\00", align 1
@.str.202 = private unnamed_addr constant [5 x i8] c"LOCK\00", align 1
@.str.203 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.204 = private unnamed_addr constant [23 x i8] c"Lock all vertex groups\00", align 1
@.str.205 = private unnamed_addr constant [7 x i8] c"UNLOCK\00", align 1
@.str.206 = private unnamed_addr constant [7 x i8] c"Unlock\00", align 1
@.str.207 = private unnamed_addr constant [25 x i8] c"Unlock all vertex groups\00", align 1
@.str.208 = private unnamed_addr constant [7 x i8] c"INVERT\00", align 1
@.str.209 = private unnamed_addr constant [7 x i8] c"Invert\00", align 1
@.str.210 = private unnamed_addr constant [43 x i8] c"Invert the lock state of all vertex groups\00", align 1
@.str.211 = private unnamed_addr constant [55 x i8] c"Vertex select needs to be enabled in weight paint mode\00", align 1
@.str.212 = private unnamed_addr constant [26 x i8] c"%d vertex weights limited\00", align 1
@__func__.vgroup_limit_total_subset = private unnamed_addr constant [26 x i8] c"vgroup_limit_total_subset\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@.str.213 = private unnamed_addr constant [92 x i8] c"Copy vertex groups to selected: %d done, %d failed (object data must have matching indices)\00", align 1
@.str.214 = private unnamed_addr constant [43 x i8] c"Failed, active object has no active groups\00", align 1
@.str.215 = private unnamed_addr constant [45 x i8] c"Skipping object '%s' it has no vertex groups\00", align 1
@.str.216 = private unnamed_addr constant [59 x i8] c"Skipping object '%s' only copying from meshes is supported\00", align 1
@.str.217 = private unnamed_addr constant [41 x i8] c"Skipping object '%s' no group '%s' found\00", align 1
@.str.218 = private unnamed_addr constant [59 x i8] c"Failed, no other selected objects with vertex groups found\00", align 1
@.str.219 = private unnamed_addr constant [62 x i8] c"Transfer failed (source mesh does not have any vertex groups)\00", align 1
@.str.220 = private unnamed_addr constant [43 x i8] c"Transfer failed (indices are not matching)\00", align 1
@.str.221 = private unnamed_addr constant [31 x i8] c"WT_REPLACE_ACTIVE_VERTEX_GROUP\00", align 1
@.str.222 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.223 = private unnamed_addr constant [58 x i8] c"Transfer active vertex group from selected to active mesh\00", align 1
@.str.224 = private unnamed_addr constant [29 x i8] c"WT_REPLACE_ALL_VERTEX_GROUPS\00", align 1
@.str.225 = private unnamed_addr constant [56 x i8] c"Transfer all vertex groups from selected to active mesh\00", align 1
@.str.226 = private unnamed_addr constant [12 x i8] c"WT_BY_INDEX\00", align 1
@.str.227 = private unnamed_addr constant [13 x i8] c"Vertex index\00", align 1
@.str.228 = private unnamed_addr constant [26 x i8] c"Copy for identical meshes\00", align 1
@.str.229 = private unnamed_addr constant [21 x i8] c"WT_BY_NEAREST_VERTEX\00", align 1
@.str.230 = private unnamed_addr constant [15 x i8] c"Nearest vertex\00", align 1
@.str.231 = private unnamed_addr constant [32 x i8] c"Copy weight from closest vertex\00", align 1
@.str.232 = private unnamed_addr constant [19 x i8] c"WT_BY_NEAREST_FACE\00", align 1
@.str.233 = private unnamed_addr constant [13 x i8] c"Nearest face\00", align 1
@.str.234 = private unnamed_addr constant [44 x i8] c"Barycentric interpolation from nearest face\00", align 1
@.str.235 = private unnamed_addr constant [29 x i8] c"WT_BY_NEAREST_VERTEX_IN_FACE\00", align 1
@.str.236 = private unnamed_addr constant [23 x i8] c"Nearest vertex in face\00", align 1
@.str.237 = private unnamed_addr constant [48 x i8] c"Copy weight from closest vertex in nearest face\00", align 1
@.str.238 = private unnamed_addr constant [23 x i8] c"WT_REPLACE_ALL_WEIGHTS\00", align 1
@.str.239 = private unnamed_addr constant [22 x i8] c"Overwrite all weights\00", align 1
@.str.240 = private unnamed_addr constant [25 x i8] c"WT_REPLACE_EMPTY_WEIGHTS\00", align 1
@.str.241 = private unnamed_addr constant [6 x i8] c"Empty\00", align 1
@.str.242 = private unnamed_addr constant [39 x i8] c"Add weights to vertices with no weight\00", align 1
@__const.vgroup_itemf.tmp = private unnamed_addr constant %struct.EnumPropertyItem { i32 0, ptr @.str.86, i32 0, ptr @.str.86, ptr @.str.86 }, align 8
@.str.243 = private unnamed_addr constant [13 x i8] c"sort vgroups\00", align 1
@.str.244 = private unnamed_addr constant [38 x i8] c"Editmode lattice is not supported yet\00", align 1
@.str.245 = private unnamed_addr constant [27 x i8] c"Invalid vertex group index\00", align 1
@.str.246 = private unnamed_addr constant [23 x i8] c"Vertex group is locked\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_vgroup_sync_from_pose(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 5
  %17 = tail call i32 @defgroup_name_index(ptr noundef %0, ptr noundef nonnull %16) #13
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = trunc i32 %17 to i16
  %21 = add i16 %20, 1
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  store i16 %21, ptr %22, align 2, !tbaa !49
  br label %23

23:                                               ; preds = %9, %15, %19, %1, %4
  %24 = phi i8 [ 1, %19 ], [ 0, %4 ], [ 0, %1 ], [ 0, %15 ], [ 0, %9 ]
  ret i8 %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #2

declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_vgroup_object_is_edit_mode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !50
  switch i16 %3, label %13 [
    i16 1, label %4
    i16 22, label %7
  ]

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %0) #13
  %6 = icmp ne ptr %5, null
  br label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 26
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = icmp ne ptr %11, null
  br label %13

13:                                               ; preds = %1, %7, %4
  %14 = phi i1 [ %6, %4 ], [ %12, %7 ], [ false, %1 ]
  %15 = zext i1 %14 to i8
  ret i8 %15
}

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_vgroup_add_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !50
  switch i16 %6, label %13 [
    i16 1, label %7
    i16 22, label %7
  ]

7:                                                ; preds = %4, %4
  %8 = tail call ptr @BKE_defgroup_new(ptr noundef nonnull %0, ptr noundef %1) #13
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %10 = tail call i32 @BLI_countlist(ptr noundef nonnull %9) #13
  %11 = trunc i32 %10 to i16
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  store i16 %11, ptr %12, align 2, !tbaa !49
  br label %13

13:                                               ; preds = %2, %4, %7
  %14 = phi ptr [ %8, %7 ], [ null, %4 ], [ null, %2 ]
  ret ptr %14
}

declare ptr @BKE_defgroup_new(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_vgroup_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !50
  switch i16 %5, label %12 [
    i16 1, label %6
    i16 22, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = tail call ptr @BKE_defgroup_new(ptr noundef nonnull %0, ptr noundef nonnull @.str) #13
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %9 = tail call i32 @BLI_countlist(ptr noundef nonnull %8) #13
  %10 = trunc i32 %9 to i16
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  store i16 %10, ptr %11, align 2, !tbaa !49
  br label %12

12:                                               ; preds = %1, %3, %6
  %13 = phi ptr [ %7, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_vgroup_delete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !50
  switch i16 %4, label %16 [
    i16 1, label %5
    i16 22, label %7
  ]

5:                                                ; preds = %2
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %0) #13
  br label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 26
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  br label %12

12:                                               ; preds = %5, %7
  %13 = phi ptr [ %6, %5 ], [ %11, %7 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call fastcc void @vgroup_delete_edit_mode(ptr noundef %0, ptr noundef %1)
  br label %17

16:                                               ; preds = %2, %12
  tail call fastcc void @vgroup_delete_object_mode(ptr noundef %0, ptr noundef %1)
  br label %17

17:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @vgroup_delete_edit_mode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %5 = tail call i32 @BLI_findindex(ptr noundef nonnull %4, ptr noundef %1) #13
  %6 = tail call fastcc zeroext i8 @vgroup_active_remove_verts(ptr noundef %0, i8 noundef zeroext 1, ptr noundef %1), !range !53
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %106, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !50
  switch i16 %10, label %106 [
    i16 1, label %11
    i16 22, label %57
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 24
  %18 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %17, i32 noundef 2) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %19 = load ptr, ptr %15, align 8, !tbaa !57
  %20 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %20, align 4, !tbaa !59
  %21 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %21, align 8, !tbaa !61
  %22 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %22, align 8, !tbaa !62
  %23 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  store ptr %24, ptr %3, align 8, !tbaa !65
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #13
  %25 = load ptr, ptr %22, align 8, !tbaa !62
  %26 = call ptr %25(ptr noundef nonnull %3) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %56, label %28

28:                                               ; preds = %11
  %29 = sext i32 %18 to i64
  br label %30

30:                                               ; preds = %28, %52
  %31 = phi ptr [ %26, %28 ], [ %54, %52 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !66
  %33 = getelementptr inbounds i8, ptr %32, i64 %29
  %34 = icmp eq ptr %32, null
  br i1 %34, label %52, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.MDeformVert, ptr %33, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !69
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load ptr, ptr %33, align 8, !tbaa !71
  %41 = zext nneg i32 %37 to i64
  br label %42

42:                                               ; preds = %39, %49
  %43 = phi i64 [ 0, %39 ], [ %50, %49 ]
  %44 = getelementptr inbounds %struct.MDeformWeight, ptr %40, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !72
  %46 = icmp sgt i32 %45, %5
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = add nsw i32 %45, -1
  store i32 %48, ptr %44, align 4, !tbaa !72
  br label %49

49:                                               ; preds = %42, %47
  %50 = add nuw nsw i64 %43, 1
  %51 = icmp eq i64 %50, %41
  br i1 %51, label %52, label %42, !llvm.loop !74

52:                                               ; preds = %49, %35, %30
  %53 = load ptr, ptr %22, align 8, !tbaa !62
  %54 = call ptr %53(ptr noundef nonnull %3) #13
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %30, !llvm.loop !77

56:                                               ; preds = %52, %11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  br label %106

57:                                               ; preds = %8
  %58 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  %60 = getelementptr inbounds %struct.Lattice, ptr %59, i64 0, i32 26
  %61 = load ptr, ptr %60, align 8, !tbaa !51
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr %61, align 8, !tbaa !78
  br label %65

65:                                               ; preds = %57, %63
  %66 = phi ptr [ %64, %63 ], [ %59, %57 ]
  %67 = getelementptr inbounds %struct.Lattice, ptr %66, i64 0, i32 24
  %68 = load ptr, ptr %67, align 8, !tbaa !80
  %69 = icmp eq ptr %68, null
  br i1 %69, label %106, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.Lattice, ptr %66, i64 0, i32 2
  %72 = load i16, ptr %71, align 8, !tbaa !81
  %73 = sext i16 %72 to i32
  %74 = getelementptr inbounds %struct.Lattice, ptr %66, i64 0, i32 3
  %75 = load i16, ptr %74, align 2, !tbaa !82
  %76 = sext i16 %75 to i32
  %77 = mul nsw i32 %76, %73
  %78 = getelementptr inbounds %struct.Lattice, ptr %66, i64 0, i32 4
  %79 = load i16, ptr %78, align 4, !tbaa !83
  %80 = sext i16 %79 to i32
  %81 = mul nsw i32 %77, %80
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %70, %102
  %84 = phi i32 [ %103, %102 ], [ 0, %70 ]
  %85 = phi ptr [ %104, %102 ], [ %68, %70 ]
  %86 = getelementptr inbounds %struct.MDeformVert, ptr %85, i64 0, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !69
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = load ptr, ptr %85, align 8, !tbaa !71
  %91 = zext nneg i32 %87 to i64
  br label %92

92:                                               ; preds = %89, %99
  %93 = phi i64 [ 0, %89 ], [ %100, %99 ]
  %94 = getelementptr inbounds %struct.MDeformWeight, ptr %90, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !72
  %96 = icmp sgt i32 %95, %5
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = add nsw i32 %95, -1
  store i32 %98, ptr %94, align 4, !tbaa !72
  br label %99

99:                                               ; preds = %92, %97
  %100 = add nuw nsw i64 %93, 1
  %101 = icmp eq i64 %100, %91
  br i1 %101, label %102, label %92, !llvm.loop !84

102:                                              ; preds = %99, %83
  %103 = add nuw nsw i32 %84, 1
  %104 = getelementptr inbounds %struct.MDeformVert, ptr %85, i64 1
  %105 = icmp eq i32 %103, %81
  br i1 %105, label %106, label %83, !llvm.loop !85

106:                                              ; preds = %102, %70, %65, %8, %56, %2
  %107 = add nsw i32 %5, 1
  %108 = call i32 @BLI_countlist(ptr noundef nonnull %4) #13
  %109 = add nsw i32 %108, 1
  %110 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %111 = sext i32 %109 to i64
  %112 = shl nsw i64 %111, 2
  %113 = call ptr %110(i64 noundef %112, ptr noundef nonnull @.str.187) #13
  store i32 0, ptr %113, align 4, !tbaa !87
  %114 = sext i32 %107 to i64
  %115 = getelementptr inbounds i32, ptr %113, i64 %114
  store i32 0, ptr %115, align 4, !tbaa !87
  %116 = icmp sgt i32 %5, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %106
  %118 = zext nneg i32 %107 to i64
  br label %123

119:                                              ; preds = %123, %106
  %120 = icmp sgt i32 %108, %107
  br i1 %120, label %121, label %135

121:                                              ; preds = %119
  %122 = sext i32 %108 to i64
  br label %129

123:                                              ; preds = %123, %117
  %124 = phi i64 [ 1, %117 ], [ %127, %123 ]
  %125 = getelementptr inbounds i32, ptr %113, i64 %124
  %126 = trunc i64 %124 to i32
  store i32 %126, ptr %125, align 4, !tbaa !87
  %127 = add nuw nsw i64 %124, 1
  %128 = icmp eq i64 %127, %118
  br i1 %128, label %119, label %123, !llvm.loop !88

129:                                              ; preds = %129, %121
  %130 = phi i64 [ %114, %121 ], [ %131, %129 ]
  %131 = add nsw i64 %130, 1
  %132 = getelementptr inbounds i32, ptr %113, i64 %131
  %133 = trunc i64 %130 to i32
  store i32 %133, ptr %132, align 4, !tbaa !87
  %134 = icmp eq i64 %131, %122
  br i1 %134, label %135, label %129, !llvm.loop !89

135:                                              ; preds = %129, %119
  %136 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %137 = load ptr, ptr %136, align 8, !tbaa !90
  %138 = icmp eq ptr %137, null
  br i1 %138, label %146, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.SoftBody, ptr %137, i64 0, i32 18
  %141 = load i16, ptr %140, align 4, !tbaa !91
  %142 = sext i16 %141 to i64
  %143 = getelementptr inbounds i32, ptr %113, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !87
  %145 = trunc i32 %144 to i16
  store i16 %145, ptr %140, align 4, !tbaa !91
  br label %146

146:                                              ; preds = %139, %135
  %147 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %148 = load ptr, ptr %147, align 8, !tbaa !86
  %149 = icmp eq ptr %148, null
  br i1 %149, label %184, label %150

150:                                              ; preds = %146, %181
  %151 = phi ptr [ %182, %181 ], [ %148, %146 ]
  %152 = getelementptr inbounds %struct.ModifierData, ptr %151, i64 0, i32 2
  %153 = load i32, ptr %152, align 8, !tbaa !93
  switch i32 %153, label %181 [
    i32 21, label %154
    i32 22, label %156
  ]

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.ExplodeModifierData, ptr %151, i64 0, i32 3
  br label %174

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.ClothModifierData, ptr %151, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !95
  %159 = icmp eq ptr %158, null
  br i1 %159, label %181, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.ClothSimSettings, ptr %158, i64 0, i32 34
  %162 = load i16, ptr %161, align 8, !tbaa !97
  %163 = sext i16 %162 to i64
  %164 = getelementptr inbounds i32, ptr %113, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !87
  %166 = trunc i32 %165 to i16
  store i16 %166, ptr %161, align 8, !tbaa !97
  %167 = getelementptr inbounds %struct.ClothSimSettings, ptr %158, i64 0, i32 33
  %168 = load i16, ptr %167, align 2, !tbaa !99
  %169 = sext i16 %168 to i64
  %170 = getelementptr inbounds i32, ptr %113, i64 %169
  %171 = load i32, ptr %170, align 4, !tbaa !87
  %172 = trunc i32 %171 to i16
  store i16 %172, ptr %167, align 2, !tbaa !99
  %173 = getelementptr inbounds %struct.ClothSimSettings, ptr %158, i64 0, i32 35
  br label %174

174:                                              ; preds = %154, %160
  %175 = phi ptr [ %173, %160 ], [ %155, %154 ]
  %176 = load i16, ptr %175, align 2, !tbaa !100
  %177 = sext i16 %176 to i64
  %178 = getelementptr inbounds i32, ptr %113, i64 %177
  %179 = load i32, ptr %178, align 4, !tbaa !87
  %180 = trunc i32 %179 to i16
  store i16 %180, ptr %175, align 2, !tbaa !100
  br label %181

181:                                              ; preds = %174, %156, %150
  %182 = load ptr, ptr %151, align 8, !tbaa !86
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %150, !llvm.loop !101

184:                                              ; preds = %181, %146
  %185 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %186 = load ptr, ptr %185, align 8, !tbaa !86
  %187 = icmp eq ptr %186, null
  br i1 %187, label %203, label %191

188:                                              ; preds = %193
  %189 = load ptr, ptr %192, align 8, !tbaa !86
  %190 = icmp eq ptr %189, null
  br i1 %190, label %203, label %191, !llvm.loop !102

191:                                              ; preds = %184, %188
  %192 = phi ptr [ %189, %188 ], [ %186, %184 ]
  br label %193

193:                                              ; preds = %193, %191
  %194 = phi i64 [ 0, %191 ], [ %201, %193 ]
  %195 = getelementptr inbounds %struct.ParticleSystem, ptr %192, i64 0, i32 36, i64 %194
  %196 = load i16, ptr %195, align 2, !tbaa !100
  %197 = sext i16 %196 to i64
  %198 = getelementptr inbounds i32, ptr %113, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !87
  %200 = trunc i32 %199 to i16
  store i16 %200, ptr %195, align 2, !tbaa !100
  %201 = add nuw nsw i64 %194, 1
  %202 = icmp eq i64 %201, 12
  br i1 %202, label %188, label %193, !llvm.loop !103

203:                                              ; preds = %188, %184
  %204 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %204(ptr noundef nonnull %113) #13
  call void @BLI_freelinkN(ptr noundef nonnull %4, ptr noundef %1) #13
  %205 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %206 = load i16, ptr %205, align 2, !tbaa !49
  %207 = zext i16 %206 to i32
  %208 = icmp slt i32 %5, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %203
  %210 = add i16 %206, -1
  store i16 %210, ptr %205, align 2, !tbaa !49
  br label %211

211:                                              ; preds = %209, %203
  %212 = load i16, ptr %205, align 2, !tbaa !49
  %213 = icmp eq i16 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load ptr, ptr %4, align 8, !tbaa !104
  %216 = icmp eq ptr %215, null
  br i1 %216, label %218, label %217

217:                                              ; preds = %214
  store i16 1, ptr %205, align 2, !tbaa !49
  br label %218

218:                                              ; preds = %217, %214, %211
  %219 = load ptr, ptr %4, align 8, !tbaa !105
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %249

221:                                              ; preds = %218
  %222 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %223 = load i16, ptr %222, align 8, !tbaa !50
  switch i16 %223, label %249 [
    i16 1, label %224
    i16 22, label %232
  ]

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %226 = load ptr, ptr %225, align 8, !tbaa !46
  %227 = getelementptr inbounds %struct.Mesh, ptr %226, i64 0, i32 21
  %228 = getelementptr inbounds %struct.Mesh, ptr %226, i64 0, i32 26
  %229 = load i32, ptr %228, align 8, !tbaa !106
  %230 = call zeroext i8 @CustomData_free_layer_active(ptr noundef nonnull %227, i32 noundef 2, i32 noundef %229) #13
  %231 = getelementptr inbounds %struct.Mesh, ptr %226, i64 0, i32 17
  br label %247

232:                                              ; preds = %221
  %233 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %234 = load ptr, ptr %233, align 8, !tbaa !46
  %235 = getelementptr inbounds %struct.Lattice, ptr %234, i64 0, i32 26
  %236 = load ptr, ptr %235, align 8, !tbaa !51
  %237 = icmp eq ptr %236, null
  br i1 %237, label %240, label %238

238:                                              ; preds = %232
  %239 = load ptr, ptr %236, align 8, !tbaa !78
  br label %240

240:                                              ; preds = %232, %238
  %241 = phi ptr [ %239, %238 ], [ %234, %232 ]
  %242 = getelementptr inbounds %struct.Lattice, ptr %241, i64 0, i32 24
  %243 = load ptr, ptr %242, align 8, !tbaa !80
  %244 = icmp eq ptr %243, null
  br i1 %244, label %249, label %245

245:                                              ; preds = %240
  %246 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %246(ptr noundef nonnull %243) #13
  br label %247

247:                                              ; preds = %224, %245
  %248 = phi ptr [ %242, %245 ], [ %231, %224 ]
  store ptr null, ptr %248, align 8, !tbaa !86
  br label %249

249:                                              ; preds = %247, %240, %221, %218
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @vgroup_delete_object_mode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4
  %10 = load i16, ptr %9, align 8, !tbaa !100
  switch i16 %10, label %37 [
    i16 17741, label %11
    i16 21580, label %16
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !107
  %14 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 26
  %15 = load i32, ptr %14, align 8, !tbaa !106
  br label %37

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.Lattice, ptr %6, i64 0, i32 26
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !78
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi ptr [ %21, %20 ], [ %6, %16 ]
  %24 = getelementptr inbounds %struct.Lattice, ptr %23, i64 0, i32 24
  %25 = load ptr, ptr %24, align 8, !tbaa !80
  %26 = getelementptr inbounds %struct.Lattice, ptr %23, i64 0, i32 2
  %27 = load i16, ptr %26, align 8, !tbaa !81
  %28 = sext i16 %27 to i32
  %29 = getelementptr inbounds %struct.Lattice, ptr %23, i64 0, i32 3
  %30 = load i16, ptr %29, align 2, !tbaa !82
  %31 = sext i16 %30 to i32
  %32 = mul nsw i32 %31, %28
  %33 = getelementptr inbounds %struct.Lattice, ptr %23, i64 0, i32 4
  %34 = load i16, ptr %33, align 4, !tbaa !83
  %35 = sext i16 %34 to i32
  %36 = mul nsw i32 %32, %35
  br label %37

37:                                               ; preds = %2, %8, %11, %22
  %38 = phi ptr [ %25, %22 ], [ %13, %11 ], [ null, %8 ], [ null, %2 ]
  %39 = phi i32 [ %36, %22 ], [ %15, %11 ], [ 0, %8 ], [ 0, %2 ]
  %40 = icmp ne ptr %38, null
  %41 = icmp sgt i32 %39, 0
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %67

43:                                               ; preds = %37, %63
  %44 = phi i32 [ %64, %63 ], [ 0, %37 ]
  %45 = phi ptr [ %65, %63 ], [ %38, %37 ]
  %46 = tail call ptr @defvert_find_index(ptr noundef nonnull %45, i32 noundef %4) #13
  tail call void @defvert_remove_group(ptr noundef nonnull %45, ptr noundef %46) #13
  %47 = getelementptr inbounds %struct.MDeformVert, ptr %45, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !69
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = load ptr, ptr %45, align 8, !tbaa !71
  %52 = zext nneg i32 %48 to i64
  br label %53

53:                                               ; preds = %50, %60
  %54 = phi i64 [ 0, %50 ], [ %61, %60 ]
  %55 = getelementptr inbounds %struct.MDeformWeight, ptr %51, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !72
  %57 = icmp sgt i32 %56, %4
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = add nsw i32 %56, -1
  store i32 %59, ptr %55, align 4, !tbaa !72
  br label %60

60:                                               ; preds = %53, %58
  %61 = add nuw nsw i64 %54, 1
  %62 = icmp eq i64 %61, %52
  br i1 %62, label %63, label %53, !llvm.loop !108

63:                                               ; preds = %60, %43
  %64 = add nuw nsw i32 %44, 1
  %65 = getelementptr inbounds %struct.MDeformVert, ptr %45, i64 1
  %66 = icmp eq i32 %64, %39
  br i1 %66, label %67, label %43, !llvm.loop !109

67:                                               ; preds = %63, %37
  %68 = add nsw i32 %4, 1
  %69 = tail call i32 @BLI_countlist(ptr noundef nonnull %3) #13
  %70 = add nsw i32 %69, 1
  %71 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %72 = sext i32 %70 to i64
  %73 = shl nsw i64 %72, 2
  %74 = tail call ptr %71(i64 noundef %73, ptr noundef nonnull @.str.187) #13
  store i32 0, ptr %74, align 4, !tbaa !87
  %75 = sext i32 %68 to i64
  %76 = getelementptr inbounds i32, ptr %74, i64 %75
  store i32 0, ptr %76, align 4, !tbaa !87
  %77 = icmp sgt i32 %4, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = zext nneg i32 %68 to i64
  br label %84

80:                                               ; preds = %84, %67
  %81 = icmp sgt i32 %69, %68
  br i1 %81, label %82, label %96

82:                                               ; preds = %80
  %83 = sext i32 %69 to i64
  br label %90

84:                                               ; preds = %84, %78
  %85 = phi i64 [ 1, %78 ], [ %88, %84 ]
  %86 = getelementptr inbounds i32, ptr %74, i64 %85
  %87 = trunc i64 %85 to i32
  store i32 %87, ptr %86, align 4, !tbaa !87
  %88 = add nuw nsw i64 %85, 1
  %89 = icmp eq i64 %88, %79
  br i1 %89, label %80, label %84, !llvm.loop !88

90:                                               ; preds = %90, %82
  %91 = phi i64 [ %75, %82 ], [ %92, %90 ]
  %92 = add nsw i64 %91, 1
  %93 = getelementptr inbounds i32, ptr %74, i64 %92
  %94 = trunc i64 %91 to i32
  store i32 %94, ptr %93, align 4, !tbaa !87
  %95 = icmp eq i64 %92, %83
  br i1 %95, label %96, label %90, !llvm.loop !89

96:                                               ; preds = %90, %80
  %97 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %98 = load ptr, ptr %97, align 8, !tbaa !90
  %99 = icmp eq ptr %98, null
  br i1 %99, label %107, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.SoftBody, ptr %98, i64 0, i32 18
  %102 = load i16, ptr %101, align 4, !tbaa !91
  %103 = sext i16 %102 to i64
  %104 = getelementptr inbounds i32, ptr %74, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !87
  %106 = trunc i32 %105 to i16
  store i16 %106, ptr %101, align 4, !tbaa !91
  br label %107

107:                                              ; preds = %100, %96
  %108 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %109 = load ptr, ptr %108, align 8, !tbaa !86
  %110 = icmp eq ptr %109, null
  br i1 %110, label %145, label %111

111:                                              ; preds = %107, %142
  %112 = phi ptr [ %143, %142 ], [ %109, %107 ]
  %113 = getelementptr inbounds %struct.ModifierData, ptr %112, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !93
  switch i32 %114, label %142 [
    i32 21, label %115
    i32 22, label %117
  ]

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.ExplodeModifierData, ptr %112, i64 0, i32 3
  br label %135

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.ClothModifierData, ptr %112, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !95
  %120 = icmp eq ptr %119, null
  br i1 %120, label %142, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.ClothSimSettings, ptr %119, i64 0, i32 34
  %123 = load i16, ptr %122, align 8, !tbaa !97
  %124 = sext i16 %123 to i64
  %125 = getelementptr inbounds i32, ptr %74, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !87
  %127 = trunc i32 %126 to i16
  store i16 %127, ptr %122, align 8, !tbaa !97
  %128 = getelementptr inbounds %struct.ClothSimSettings, ptr %119, i64 0, i32 33
  %129 = load i16, ptr %128, align 2, !tbaa !99
  %130 = sext i16 %129 to i64
  %131 = getelementptr inbounds i32, ptr %74, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !87
  %133 = trunc i32 %132 to i16
  store i16 %133, ptr %128, align 2, !tbaa !99
  %134 = getelementptr inbounds %struct.ClothSimSettings, ptr %119, i64 0, i32 35
  br label %135

135:                                              ; preds = %115, %121
  %136 = phi ptr [ %134, %121 ], [ %116, %115 ]
  %137 = load i16, ptr %136, align 2, !tbaa !100
  %138 = sext i16 %137 to i64
  %139 = getelementptr inbounds i32, ptr %74, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !87
  %141 = trunc i32 %140 to i16
  store i16 %141, ptr %136, align 2, !tbaa !100
  br label %142

142:                                              ; preds = %135, %117, %111
  %143 = load ptr, ptr %112, align 8, !tbaa !86
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %111, !llvm.loop !101

145:                                              ; preds = %142, %107
  %146 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %147 = load ptr, ptr %146, align 8, !tbaa !86
  %148 = icmp eq ptr %147, null
  br i1 %148, label %164, label %152

149:                                              ; preds = %154
  %150 = load ptr, ptr %153, align 8, !tbaa !86
  %151 = icmp eq ptr %150, null
  br i1 %151, label %164, label %152, !llvm.loop !102

152:                                              ; preds = %145, %149
  %153 = phi ptr [ %150, %149 ], [ %147, %145 ]
  br label %154

154:                                              ; preds = %154, %152
  %155 = phi i64 [ 0, %152 ], [ %162, %154 ]
  %156 = getelementptr inbounds %struct.ParticleSystem, ptr %153, i64 0, i32 36, i64 %155
  %157 = load i16, ptr %156, align 2, !tbaa !100
  %158 = sext i16 %157 to i64
  %159 = getelementptr inbounds i32, ptr %74, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !87
  %161 = trunc i32 %160 to i16
  store i16 %161, ptr %156, align 2, !tbaa !100
  %162 = add nuw nsw i64 %155, 1
  %163 = icmp eq i64 %162, 12
  br i1 %163, label %149, label %154, !llvm.loop !103

164:                                              ; preds = %149, %145
  %165 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  tail call void %165(ptr noundef nonnull %74) #13
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef %1) #13
  %166 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %167 = load i16, ptr %166, align 2, !tbaa !49
  %168 = zext i16 %167 to i32
  %169 = icmp slt i32 %4, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = add i16 %167, -1
  store i16 %171, ptr %166, align 2, !tbaa !49
  br label %172

172:                                              ; preds = %170, %164
  %173 = load i16, ptr %166, align 2, !tbaa !49
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load ptr, ptr %3, align 8, !tbaa !104
  %177 = icmp eq ptr %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %175
  store i16 1, ptr %166, align 2, !tbaa !49
  br label %179

179:                                              ; preds = %178, %175, %172
  %180 = load ptr, ptr %3, align 8, !tbaa !105
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %201

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %184 = load i16, ptr %183, align 8, !tbaa !50
  switch i16 %184, label %201 [
    i16 1, label %185
    i16 22, label %192
  ]

185:                                              ; preds = %182
  %186 = load ptr, ptr %5, align 8, !tbaa !46
  %187 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 21
  %188 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 26
  %189 = load i32, ptr %188, align 8, !tbaa !106
  %190 = tail call zeroext i8 @CustomData_free_layer_active(ptr noundef nonnull %187, i32 noundef 2, i32 noundef %189) #13
  %191 = getelementptr inbounds %struct.Mesh, ptr %186, i64 0, i32 17
  br label %199

192:                                              ; preds = %182
  %193 = load ptr, ptr %5, align 8, !tbaa !46
  %194 = getelementptr inbounds %struct.Lattice, ptr %193, i64 0, i32 24
  %195 = load ptr, ptr %194, align 8, !tbaa !80
  %196 = icmp eq ptr %195, null
  br i1 %196, label %201, label %197

197:                                              ; preds = %192
  %198 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  tail call void %198(ptr noundef nonnull %195) #13
  br label %199

199:                                              ; preds = %185, %197
  %200 = phi ptr [ %194, %197 ], [ %191, %185 ]
  store ptr null, ptr %200, align 8, !tbaa !86
  br label %201

201:                                              ; preds = %199, %192, %182, %179
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_vgroup_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !50
  switch i16 %5, label %15 [
    i16 1, label %6
    i16 22, label %9
  ]

6:                                                ; preds = %1
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %0) #13
  %8 = icmp ne ptr %7, null
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 26
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = icmp ne ptr %13, null
  br label %15

15:                                               ; preds = %1, %6, %9
  %16 = phi i1 [ %8, %6 ], [ %14, %9 ], [ false, %1 ]
  %17 = icmp eq ptr %3, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15, %23
  %19 = phi ptr [ %20, %23 ], [ %3, %15 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !110
  br i1 %16, label %21, label %22

21:                                               ; preds = %18
  tail call fastcc void @vgroup_delete_edit_mode(ptr noundef %0, ptr noundef nonnull %19)
  br label %23

22:                                               ; preds = %18
  tail call fastcc void @vgroup_delete_object_mode(ptr noundef %0, ptr noundef nonnull %19)
  br label %23

23:                                               ; preds = %22, %21
  %24 = icmp eq ptr %20, null
  br i1 %24, label %25, label %18, !llvm.loop !112

25:                                               ; preds = %23, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_vgroup_data_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8, !tbaa !100
  switch i16 %3, label %26 [
    i16 17741, label %4
    i16 21580, label %10
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %7 = load i32, ptr %6, align 8, !tbaa !106
  %8 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %5, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %7) #13
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 17
  store ptr %8, ptr %9, align 8, !tbaa !107
  br label %26

10:                                               ; preds = %1
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !86
  %12 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !81
  %14 = sext i16 %13 to i64
  %15 = shl nsw i64 %14, 4
  %16 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !82
  %18 = sext i16 %17 to i64
  %19 = mul nsw i64 %15, %18
  %20 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %21 = load i16, ptr %20, align 4, !tbaa !83
  %22 = sext i16 %21 to i64
  %23 = mul nsw i64 %19, %22
  %24 = tail call ptr %11(i64 noundef %23, ptr noundef nonnull @.str.1) #13
  %25 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 24
  store ptr %24, ptr %25, align 8, !tbaa !80
  br label %26

26:                                               ; preds = %1, %10, %4
  %27 = phi i8 [ 1, %4 ], [ 1, %10 ], [ 0, %1 ]
  ret i8 %27
}

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_vgroup_data_clamp_range(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0), !range !53
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %37, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4, !tbaa !87
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !tbaa !86
  %12 = zext nneg i32 %8 to i64
  br label %13

13:                                               ; preds = %10, %34
  %14 = phi i64 [ 0, %10 ], [ %35, %34 ]
  %15 = getelementptr inbounds ptr, ptr %11, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !86
  %17 = getelementptr inbounds %struct.MDeformVert, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !69
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %13, %29
  %21 = phi i32 [ %31, %29 ], [ 0, %13 ]
  %22 = load ptr, ptr %16, align 8, !tbaa !71
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds %struct.MDeformWeight, ptr %22, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !72
  %26 = icmp slt i32 %25, %1
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  tail call void @defvert_remove_group(ptr noundef nonnull %16, ptr noundef nonnull %24) #13
  %28 = add nsw i32 %21, -1
  br label %29

29:                                               ; preds = %20, %27
  %30 = phi i32 [ %28, %27 ], [ %21, %20 ]
  %31 = add nsw i32 %30, 1
  %32 = load i32, ptr %17, align 8, !tbaa !69
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %20, label %34, !llvm.loop !113

34:                                               ; preds = %29, %13
  %35 = add nuw nsw i64 %14, 1
  %36 = icmp eq i64 %35, %12
  br i1 %36, label %37, label %13, !llvm.loop !114

37:                                               ; preds = %34, %7, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_vgroup_parray_alloc(ptr noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  store i32 0, ptr %2, align 4, !tbaa !87
  store ptr null, ptr %1, align 8, !tbaa !86
  %6 = icmp eq ptr %0, null
  br i1 %6, label %177, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !100
  switch i16 %9, label %177 [
    i16 17741, label %10
    i16 21580, label %116
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = icmp eq ptr %12, null
  br i1 %13, label %73, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 24
  %17 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %16, i32 noundef 2) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %71, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %12, align 8, !tbaa !57
  %21 = load i32, ptr %20, align 8, !tbaa !115
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %23 = sext i32 %21 to i64
  %24 = shl nsw i64 %23, 3
  %25 = tail call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.2) #13
  store ptr %25, ptr %1, align 8, !tbaa !86
  store i32 %21, ptr %2, align 4, !tbaa !87
  %26 = icmp eq i8 %3, 0
  %27 = load ptr, ptr %12, align 8, !tbaa !57
  %28 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 1, ptr %28, align 4, !tbaa !59
  %29 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %29, align 8, !tbaa !61
  %30 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %30, align 8, !tbaa !62
  %31 = getelementptr inbounds %struct.BMesh, ptr %27, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !63
  store ptr %32, ptr %5, align 8, !tbaa !65
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #13
  %33 = load ptr, ptr %30, align 8, !tbaa !62
  %34 = call ptr %33(ptr noundef nonnull %5) #13
  %35 = icmp eq ptr %34, null
  br i1 %26, label %57, label %36

36:                                               ; preds = %19
  br i1 %35, label %71, label %37

37:                                               ; preds = %36
  %38 = sext i32 %17 to i64
  br label %39

39:                                               ; preds = %37, %49
  %40 = phi i64 [ 0, %37 ], [ %53, %49 ]
  %41 = phi ptr [ %34, %37 ], [ %55, %49 ]
  %42 = getelementptr inbounds %struct.BMHeader, ptr %41, i64 0, i32 3
  %43 = load i8, ptr %42, align 1, !tbaa !116
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load ptr, ptr %41, align 8, !tbaa !66
  %48 = getelementptr inbounds i8, ptr %47, i64 %38
  br label %49

49:                                               ; preds = %39, %46
  %50 = phi ptr [ %48, %46 ], [ null, %39 ]
  %51 = load ptr, ptr %1, align 8, !tbaa !86
  %52 = getelementptr inbounds ptr, ptr %51, i64 %40
  store ptr %50, ptr %52, align 8, !tbaa !86
  %53 = add nuw i64 %40, 1
  %54 = load ptr, ptr %30, align 8, !tbaa !62
  %55 = call ptr %54(ptr noundef nonnull %5) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %71, label %39, !llvm.loop !117

57:                                               ; preds = %19
  br i1 %35, label %71, label %58

58:                                               ; preds = %57
  %59 = sext i32 %17 to i64
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi i64 [ 0, %58 ], [ %67, %60 ]
  %62 = phi ptr [ %34, %58 ], [ %69, %60 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !66
  %64 = getelementptr inbounds i8, ptr %63, i64 %59
  %65 = load ptr, ptr %1, align 8, !tbaa !86
  %66 = getelementptr inbounds ptr, ptr %65, i64 %61
  store ptr %64, ptr %66, align 8, !tbaa !86
  %67 = add nuw i64 %61, 1
  %68 = load ptr, ptr %30, align 8, !tbaa !62
  %69 = call ptr %68(ptr noundef nonnull %5) #13
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %60, !llvm.loop !118

71:                                               ; preds = %49, %60, %36, %57, %14
  %72 = phi i8 [ 0, %14 ], [ 1, %57 ], [ 1, %36 ], [ 1, %60 ], [ 1, %49 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  br label %177

73:                                               ; preds = %10
  %74 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 17
  %75 = load ptr, ptr %74, align 8, !tbaa !107
  %76 = icmp eq ptr %75, null
  br i1 %76, label %177, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %79 = load ptr, ptr %78, align 8, !tbaa !119
  %80 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %81 = load i32, ptr %80, align 8, !tbaa !106
  store i32 %81, ptr %2, align 4, !tbaa !87
  %82 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %83 = load i32, ptr %80, align 8, !tbaa !106
  %84 = sext i32 %83 to i64
  %85 = shl nsw i64 %84, 3
  %86 = tail call ptr %82(i64 noundef %85, ptr noundef nonnull @.str.2) #13
  store ptr %86, ptr %1, align 8, !tbaa !86
  %87 = icmp eq i8 %3, 0
  %88 = load i32, ptr %80, align 8, !tbaa !106
  %89 = icmp sgt i32 %88, 0
  br i1 %87, label %93, label %90

90:                                               ; preds = %77
  br i1 %89, label %91, label %177

91:                                               ; preds = %90
  %92 = zext nneg i32 %88 to i64
  br label %96

93:                                               ; preds = %77
  br i1 %89, label %94, label %177

94:                                               ; preds = %93
  %95 = zext nneg i32 %88 to i64
  br label %108

96:                                               ; preds = %91, %96
  %97 = phi i64 [ 0, %91 ], [ %106, %96 ]
  %98 = getelementptr inbounds %struct.MVert, ptr %79, i64 %97, i32 2
  %99 = load i8, ptr %98, align 2, !tbaa !120
  %100 = and i8 %99, 1
  %101 = icmp eq i8 %100, 0
  %102 = getelementptr inbounds %struct.MDeformVert, ptr %75, i64 %97
  %103 = select i1 %101, ptr null, ptr %102
  %104 = load ptr, ptr %1, align 8, !tbaa !86
  %105 = getelementptr inbounds ptr, ptr %104, i64 %97
  store ptr %103, ptr %105, align 8, !tbaa !86
  %106 = add nuw nsw i64 %97, 1
  %107 = icmp eq i64 %106, %92
  br i1 %107, label %177, label %96, !llvm.loop !122

108:                                              ; preds = %94, %108
  %109 = phi i64 [ 0, %94 ], [ %114, %108 ]
  %110 = load ptr, ptr %74, align 8, !tbaa !107
  %111 = getelementptr inbounds %struct.MDeformVert, ptr %110, i64 %109
  %112 = load ptr, ptr %1, align 8, !tbaa !86
  %113 = getelementptr inbounds ptr, ptr %112, i64 %109
  store ptr %111, ptr %113, align 8, !tbaa !86
  %114 = add nuw nsw i64 %109, 1
  %115 = icmp eq i64 %114, %95
  br i1 %115, label %177, label %108, !llvm.loop !123

116:                                              ; preds = %7
  %117 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 26
  %118 = load ptr, ptr %117, align 8, !tbaa !51
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr %118, align 8, !tbaa !78
  br label %122

122:                                              ; preds = %116, %120
  %123 = phi ptr [ %121, %120 ], [ %0, %116 ]
  %124 = getelementptr inbounds %struct.Lattice, ptr %123, i64 0, i32 24
  %125 = load ptr, ptr %124, align 8, !tbaa !80
  %126 = icmp eq ptr %125, null
  br i1 %126, label %177, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.Lattice, ptr %123, i64 0, i32 21
  %129 = load ptr, ptr %128, align 8, !tbaa !124
  %130 = getelementptr inbounds %struct.Lattice, ptr %123, i64 0, i32 2
  %131 = load i16, ptr %130, align 8, !tbaa !81
  %132 = sext i16 %131 to i32
  %133 = getelementptr inbounds %struct.Lattice, ptr %123, i64 0, i32 3
  %134 = load i16, ptr %133, align 2, !tbaa !82
  %135 = sext i16 %134 to i32
  %136 = mul nsw i32 %135, %132
  %137 = getelementptr inbounds %struct.Lattice, ptr %123, i64 0, i32 4
  %138 = load i16, ptr %137, align 4, !tbaa !83
  %139 = sext i16 %138 to i32
  %140 = mul nsw i32 %136, %139
  store i32 %140, ptr %2, align 4, !tbaa !87
  %141 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %142 = sext i32 %140 to i64
  %143 = shl nsw i64 %142, 3
  %144 = tail call ptr %141(i64 noundef %143, ptr noundef nonnull @.str.2) #13
  store ptr %144, ptr %1, align 8, !tbaa !86
  %145 = icmp eq i8 %3, 0
  %146 = load i32, ptr %2, align 4, !tbaa !87
  %147 = icmp sgt i32 %146, 0
  br i1 %145, label %155, label %148

148:                                              ; preds = %127
  br i1 %147, label %149, label %177

149:                                              ; preds = %148
  %150 = getelementptr inbounds %struct.BPoint, ptr %129, i64 0, i32 3
  %151 = load i16, ptr %150, align 4, !tbaa !125
  %152 = and i16 %151, 1
  %153 = icmp eq i16 %152, 0
  %154 = zext nneg i32 %146 to i64
  br label %158

155:                                              ; preds = %127
  br i1 %147, label %156, label %177

156:                                              ; preds = %155
  %157 = zext nneg i32 %146 to i64
  br label %169

158:                                              ; preds = %149, %163
  %159 = phi i64 [ 0, %149 ], [ %167, %163 ]
  br i1 %153, label %163, label %160

160:                                              ; preds = %158
  %161 = load ptr, ptr %124, align 8, !tbaa !80
  %162 = getelementptr inbounds %struct.MDeformVert, ptr %161, i64 %159
  br label %163

163:                                              ; preds = %158, %160
  %164 = phi ptr [ %162, %160 ], [ null, %158 ]
  %165 = load ptr, ptr %1, align 8, !tbaa !86
  %166 = getelementptr inbounds ptr, ptr %165, i64 %159
  store ptr %164, ptr %166, align 8, !tbaa !86
  %167 = add nuw nsw i64 %159, 1
  %168 = icmp eq i64 %167, %154
  br i1 %168, label %177, label %158, !llvm.loop !127

169:                                              ; preds = %156, %169
  %170 = phi i64 [ 0, %156 ], [ %175, %169 ]
  %171 = load ptr, ptr %124, align 8, !tbaa !80
  %172 = getelementptr inbounds %struct.MDeformVert, ptr %171, i64 %170
  %173 = load ptr, ptr %1, align 8, !tbaa !86
  %174 = getelementptr inbounds ptr, ptr %173, i64 %170
  store ptr %172, ptr %174, align 8, !tbaa !86
  %175 = add nuw nsw i64 %170, 1
  %176 = icmp eq i64 %175, %157
  br i1 %176, label %177, label %169, !llvm.loop !128

177:                                              ; preds = %163, %169, %96, %108, %148, %155, %90, %93, %4, %7, %122, %71, %73
  %178 = phi i8 [ %72, %71 ], [ 0, %73 ], [ 0, %122 ], [ 0, %7 ], [ 0, %4 ], [ 1, %93 ], [ 1, %90 ], [ 1, %155 ], [ 1, %148 ], [ 1, %108 ], [ 1, %96 ], [ 1, %169 ], [ 1, %163 ]
  ret i8 %178
}

declare void @defvert_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_vgroup_parray_mirror_sync(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store ptr null, ptr %6, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %10, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0), !range !53
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %49, label %13

13:                                               ; preds = %5
  %14 = icmp eq ptr %8, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %8, align 8, !tbaa !57
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %16, i8 noundef zeroext 1) #13
  br label %17

17:                                               ; preds = %15, %13
  %18 = icmp sgt i32 %2, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %17
  %20 = load ptr, ptr %6, align 8
  %21 = zext nneg i32 %2 to i64
  br label %22

22:                                               ; preds = %19, %43
  %23 = phi i64 [ 0, %19 ], [ %44, %43 ]
  %24 = getelementptr inbounds ptr, ptr %1, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !86
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = trunc i64 %23 to i32
  %29 = tail call i32 @ED_mesh_mirror_get_vert(ptr noundef %0, i32 noundef %28) #13
  %30 = icmp eq i32 %29, -1
  %31 = zext i32 %29 to i64
  %32 = icmp eq i64 %23, %31
  %33 = or i1 %30, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %27
  %35 = sext i32 %29 to i64
  %36 = getelementptr inbounds ptr, ptr %1, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !86
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds ptr, ptr %20, i64 %23
  %41 = load ptr, ptr %40, align 8, !tbaa !86
  tail call void @defvert_copy_subset(ptr noundef %41, ptr noundef nonnull %37, ptr noundef %3, i32 noundef %4) #13
  %42 = load ptr, ptr %40, align 8, !tbaa !86
  store ptr %42, ptr %24, align 8, !tbaa !86
  br label %43

43:                                               ; preds = %27, %34, %39, %22
  %44 = add nuw nsw i64 %23, 1
  %45 = icmp eq i64 %44, %21
  br i1 %45, label %46, label %22, !llvm.loop !129

46:                                               ; preds = %43, %17
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  %48 = load ptr, ptr %6, align 8, !tbaa !86
  tail call void %47(ptr noundef %48) #13
  br label %49

49:                                               ; preds = %5, %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret void
}

declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @ED_mesh_mirror_get_vert(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @defvert_copy_subset(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_vgroup_parray_mirror_assign(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr null, ptr %4, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %8, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 0), !range !53
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %46, label %11

11:                                               ; preds = %3
  %12 = icmp eq ptr %6, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %6, align 8, !tbaa !57
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %14, i8 noundef zeroext 1) #13
  br label %15

15:                                               ; preds = %13, %11
  %16 = icmp sgt i32 %2, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %15
  %18 = load ptr, ptr %4, align 8
  %19 = zext nneg i32 %2 to i64
  br label %20

20:                                               ; preds = %17, %40
  %21 = phi i64 [ 0, %17 ], [ %41, %40 ]
  %22 = getelementptr inbounds ptr, ptr %1, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = trunc i64 %21 to i32
  %27 = tail call i32 @ED_mesh_mirror_get_vert(ptr noundef %0, i32 noundef %26) #13
  %28 = icmp eq i32 %27, -1
  %29 = zext i32 %27 to i64
  %30 = icmp eq i64 %21, %29
  %31 = or i1 %28, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = sext i32 %27 to i64
  %34 = getelementptr inbounds ptr, ptr %1, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !86
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds ptr, ptr %18, i64 %21
  %39 = load ptr, ptr %38, align 8, !tbaa !86
  store ptr %39, ptr %22, align 8, !tbaa !86
  br label %40

40:                                               ; preds = %25, %32, %37, %20
  %41 = add nuw nsw i64 %21, 1
  %42 = icmp eq i64 %41, %19
  br i1 %42, label %43, label %20, !llvm.loop !130

43:                                               ; preds = %40, %15
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  %45 = load ptr, ptr %4, align 8, !tbaa !86
  tail call void %44(ptr noundef %45) #13
  br label %46

46:                                               ; preds = %3, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_vgroup_parray_remove_zero(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, float noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %49

8:                                                ; preds = %6
  %9 = icmp eq i8 %5, 0
  %10 = zext nneg i32 %1 to i64
  br label %11

11:                                               ; preds = %8, %46
  %12 = phi i64 [ 0, %8 ], [ %47, %46 ]
  %13 = getelementptr inbounds ptr, ptr %0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  %15 = icmp eq ptr %14, null
  br i1 %15, label %46, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.MDeformVert, ptr %14, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !69
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %46, label %20

20:                                               ; preds = %16
  %21 = sext i32 %18 to i64
  br label %22

22:                                               ; preds = %20, %43
  %23 = phi i64 [ %21, %20 ], [ %24, %43 ]
  %24 = add nsw i64 %23, -1
  br i1 %9, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr %17, align 8, !tbaa !69
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %46, label %28

28:                                               ; preds = %25, %22
  %29 = load ptr, ptr %14, align 8, !tbaa !71
  %30 = getelementptr inbounds %struct.MDeformWeight, ptr %29, i64 %24
  %31 = load i32, ptr %30, align 4, !tbaa !72
  %32 = icmp slt i32 %31, %3
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds i8, ptr %2, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !65
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.MDeformWeight, ptr %29, i64 %24, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !131
  %41 = fcmp ugt float %40, %4
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @defvert_remove_group(ptr noundef nonnull %14, ptr noundef nonnull %30) #13
  br label %43

43:                                               ; preds = %28, %33, %42, %38
  %44 = and i64 %24, 4294967295
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %22

46:                                               ; preds = %43, %25, %16, %11
  %47 = add nuw nsw i64 %12, 1
  %48 = icmp eq i64 %47, %10
  br i1 %48, label %49, label %11, !llvm.loop !132

49:                                               ; preds = %46, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ED_vgroup_array_get(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !100
  switch i16 %7, label %34 [
    i16 17741, label %8
    i16 21580, label %13
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !107
  store ptr %10, ptr %1, align 8, !tbaa !86
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %12 = load i32, ptr %11, align 8, !tbaa !106
  br label %35

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 26
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !78
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %18, %17 ], [ %0, %13 ]
  %21 = getelementptr inbounds %struct.Lattice, ptr %20, i64 0, i32 24
  %22 = load ptr, ptr %21, align 8, !tbaa !80
  store ptr %22, ptr %1, align 8, !tbaa !86
  %23 = getelementptr inbounds %struct.Lattice, ptr %20, i64 0, i32 2
  %24 = load i16, ptr %23, align 8, !tbaa !81
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds %struct.Lattice, ptr %20, i64 0, i32 3
  %27 = load i16, ptr %26, align 2, !tbaa !82
  %28 = sext i16 %27 to i32
  %29 = mul nsw i32 %28, %25
  %30 = getelementptr inbounds %struct.Lattice, ptr %20, i64 0, i32 4
  %31 = load i16, ptr %30, align 4, !tbaa !83
  %32 = sext i16 %31 to i32
  %33 = mul nsw i32 %29, %32
  br label %35

34:                                               ; preds = %5, %3
  store ptr null, ptr %1, align 8, !tbaa !86
  br label %35

35:                                               ; preds = %34, %19, %8
  %36 = phi i32 [ 0, %34 ], [ %33, %19 ], [ %12, %8 ]
  %37 = phi i8 [ 0, %34 ], [ 1, %19 ], [ 1, %8 ]
  store i32 %36, ptr %2, align 4, !tbaa !87
  ret i8 %37
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_vgroup_array_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %8 = tail call i32 @BLI_countlist(ptr noundef nonnull %7) #13
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %10 = tail call i32 @BLI_countlist(ptr noundef nonnull %9) #13
  %11 = icmp eq ptr %0, %1
  br i1 %11, label %240, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %14, ptr noundef nonnull %3, ptr noundef nonnull %5, i8 noundef zeroext 0), !range !53
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %17, ptr noundef nonnull %4, ptr noundef nonnull %6, i8 noundef zeroext 0), !range !53
  %19 = load ptr, ptr %4, align 8, !tbaa !86
  %20 = icmp eq ptr %19, null
  %21 = load ptr, ptr %3, align 8
  %22 = icmp ne ptr %21, null
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %53

24:                                               ; preds = %12
  %25 = load ptr, ptr %16, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.ID, ptr %25, i64 0, i32 4
  %27 = load i16, ptr %26, align 8, !tbaa !100
  switch i16 %27, label %53 [
    i16 17741, label %28
    i16 21580, label %34
  ]

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Mesh, ptr %25, i64 0, i32 21
  %30 = getelementptr inbounds %struct.Mesh, ptr %25, i64 0, i32 26
  %31 = load i32, ptr %30, align 8, !tbaa !106
  %32 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %29, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %31) #13
  %33 = getelementptr inbounds %struct.Mesh, ptr %25, i64 0, i32 17
  store ptr %32, ptr %33, align 8, !tbaa !107
  br label %50

34:                                               ; preds = %24
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !86
  %36 = getelementptr inbounds %struct.Lattice, ptr %25, i64 0, i32 2
  %37 = load i16, ptr %36, align 8, !tbaa !81
  %38 = sext i16 %37 to i64
  %39 = shl nsw i64 %38, 4
  %40 = getelementptr inbounds %struct.Lattice, ptr %25, i64 0, i32 3
  %41 = load i16, ptr %40, align 2, !tbaa !82
  %42 = sext i16 %41 to i64
  %43 = mul nsw i64 %39, %42
  %44 = getelementptr inbounds %struct.Lattice, ptr %25, i64 0, i32 4
  %45 = load i16, ptr %44, align 4, !tbaa !83
  %46 = sext i16 %45 to i64
  %47 = mul nsw i64 %43, %46
  %48 = tail call ptr %35(i64 noundef %47, ptr noundef nonnull @.str.1) #13
  %49 = getelementptr inbounds %struct.Lattice, ptr %25, i64 0, i32 24
  store ptr %48, ptr %49, align 8, !tbaa !80
  br label %50

50:                                               ; preds = %34, %28
  %51 = load ptr, ptr %16, align 8, !tbaa !46
  %52 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %51, ptr noundef nonnull %4, ptr noundef nonnull %6, i8 noundef zeroext 0), !range !53
  br label %53

53:                                               ; preds = %24, %50, %12
  %54 = phi i1 [ true, %50 ], [ false, %12 ], [ false, %24 ]
  %55 = load i32, ptr %6, align 4, !tbaa !87
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %5, align 4, !tbaa !87
  %59 = icmp ne i32 %55, %58
  %60 = icmp eq ptr %21, null
  %61 = select i1 %59, i1 true, i1 %60
  %62 = load ptr, ptr %4, align 8
  %63 = icmp eq ptr %62, null
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %65, label %107

65:                                               ; preds = %57, %53
  %66 = load ptr, ptr %4, align 8, !tbaa !86
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  tail call void %69(ptr noundef nonnull %66) #13
  br label %70

70:                                               ; preds = %68, %65
  %71 = icmp eq ptr %21, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %70
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  tail call void %73(ptr noundef nonnull %21) #13
  br label %74

74:                                               ; preds = %72, %70
  br i1 %54, label %75, label %103

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %77 = load i16, ptr %76, align 8, !tbaa !50
  switch i16 %77, label %101 [
    i16 1, label %78
    i16 22, label %85
  ]

78:                                               ; preds = %75
  %79 = load ptr, ptr %16, align 8, !tbaa !46
  %80 = getelementptr inbounds %struct.Mesh, ptr %79, i64 0, i32 21
  %81 = getelementptr inbounds %struct.Mesh, ptr %79, i64 0, i32 26
  %82 = load i32, ptr %81, align 8, !tbaa !106
  %83 = tail call zeroext i8 @CustomData_free_layer_active(ptr noundef nonnull %80, i32 noundef 2, i32 noundef %82) #13
  %84 = getelementptr inbounds %struct.Mesh, ptr %79, i64 0, i32 17
  br label %99

85:                                               ; preds = %75
  %86 = load ptr, ptr %16, align 8, !tbaa !46
  %87 = getelementptr inbounds %struct.Lattice, ptr %86, i64 0, i32 26
  %88 = load ptr, ptr %87, align 8, !tbaa !51
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr %88, align 8, !tbaa !78
  br label %92

92:                                               ; preds = %90, %85
  %93 = phi ptr [ %91, %90 ], [ %86, %85 ]
  %94 = getelementptr inbounds %struct.Lattice, ptr %93, i64 0, i32 24
  %95 = load ptr, ptr %94, align 8, !tbaa !80
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  tail call void %98(ptr noundef nonnull %95) #13
  br label %99

99:                                               ; preds = %97, %78
  %100 = phi ptr [ %84, %78 ], [ %94, %97 ]
  store ptr null, ptr %100, align 8, !tbaa !86
  br label %101

101:                                              ; preds = %99, %75, %92
  tail call void @BLI_freelistN(ptr noundef nonnull %9) #13
  %102 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  store i16 0, ptr %102, align 2, !tbaa !49
  br label %103

103:                                              ; preds = %101, %74
  %104 = load i32, ptr %5, align 4, !tbaa !87
  %105 = icmp eq i32 %55, %104
  %106 = zext i1 %105 to i8
  br label %240

107:                                              ; preds = %57
  tail call void @BLI_freelistN(ptr noundef nonnull %9) #13
  tail call void @BLI_duplicatelist(ptr noundef nonnull %9, ptr noundef nonnull %7) #13
  %108 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 97
  %109 = load i16, ptr %108, align 2, !tbaa !49
  %110 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  store i16 %109, ptr %110, align 2, !tbaa !49
  %111 = icmp slt i32 %8, %10
  br i1 %111, label %112, label %211

112:                                              ; preds = %107
  %113 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %114 = add nsw i32 %10, 1
  %115 = sext i32 %114 to i64
  %116 = shl nsw i64 %115, 2
  %117 = tail call ptr %113(i64 noundef %116, ptr noundef nonnull @__func__.ED_vgroup_array_copy) #13
  %118 = icmp slt i32 %8, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %112
  %120 = add nuw i32 %8, 1
  %121 = zext i32 %120 to i64
  br label %135

122:                                              ; preds = %135
  %123 = trunc i64 %139 to i32
  br label %124

124:                                              ; preds = %122, %112
  %125 = phi i32 [ 0, %112 ], [ %123, %122 ]
  %126 = icmp sgt i32 %125, %10
  br i1 %126, label %141, label %127

127:                                              ; preds = %124
  %128 = zext i32 %125 to i64
  %129 = shl nuw nsw i64 %128, 2
  %130 = getelementptr i8, ptr %117, i64 %129
  %131 = sub i32 %10, %125
  %132 = zext i32 %131 to i64
  %133 = shl nuw nsw i64 %132, 2
  %134 = add nuw nsw i64 %133, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %130, i8 0, i64 %134, i1 false), !tbaa !87
  br label %141

135:                                              ; preds = %119, %135
  %136 = phi i64 [ 0, %119 ], [ %139, %135 ]
  %137 = getelementptr inbounds i32, ptr %117, i64 %136
  %138 = trunc i64 %136 to i32
  store i32 %138, ptr %137, align 4, !tbaa !87
  %139 = add nuw nsw i64 %136, 1
  %140 = icmp eq i64 %139, %121
  br i1 %140, label %122, label %135, !llvm.loop !133

141:                                              ; preds = %127, %124
  %142 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %143 = load ptr, ptr %142, align 8, !tbaa !90
  %144 = icmp eq ptr %143, null
  br i1 %144, label %152, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.SoftBody, ptr %143, i64 0, i32 18
  %147 = load i16, ptr %146, align 4, !tbaa !91
  %148 = sext i16 %147 to i64
  %149 = getelementptr inbounds i32, ptr %117, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !87
  %151 = trunc i32 %150 to i16
  store i16 %151, ptr %146, align 4, !tbaa !91
  br label %152

152:                                              ; preds = %145, %141
  %153 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %154 = load ptr, ptr %153, align 8, !tbaa !86
  %155 = icmp eq ptr %154, null
  br i1 %155, label %190, label %156

156:                                              ; preds = %152, %187
  %157 = phi ptr [ %188, %187 ], [ %154, %152 ]
  %158 = getelementptr inbounds %struct.ModifierData, ptr %157, i64 0, i32 2
  %159 = load i32, ptr %158, align 8, !tbaa !93
  switch i32 %159, label %187 [
    i32 21, label %160
    i32 22, label %162
  ]

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.ExplodeModifierData, ptr %157, i64 0, i32 3
  br label %180

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.ClothModifierData, ptr %157, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !95
  %165 = icmp eq ptr %164, null
  br i1 %165, label %187, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.ClothSimSettings, ptr %164, i64 0, i32 34
  %168 = load i16, ptr %167, align 8, !tbaa !97
  %169 = sext i16 %168 to i64
  %170 = getelementptr inbounds i32, ptr %117, i64 %169
  %171 = load i32, ptr %170, align 4, !tbaa !87
  %172 = trunc i32 %171 to i16
  store i16 %172, ptr %167, align 8, !tbaa !97
  %173 = getelementptr inbounds %struct.ClothSimSettings, ptr %164, i64 0, i32 33
  %174 = load i16, ptr %173, align 2, !tbaa !99
  %175 = sext i16 %174 to i64
  %176 = getelementptr inbounds i32, ptr %117, i64 %175
  %177 = load i32, ptr %176, align 4, !tbaa !87
  %178 = trunc i32 %177 to i16
  store i16 %178, ptr %173, align 2, !tbaa !99
  %179 = getelementptr inbounds %struct.ClothSimSettings, ptr %164, i64 0, i32 35
  br label %180

180:                                              ; preds = %160, %166
  %181 = phi ptr [ %179, %166 ], [ %161, %160 ]
  %182 = load i16, ptr %181, align 2, !tbaa !100
  %183 = sext i16 %182 to i64
  %184 = getelementptr inbounds i32, ptr %117, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !87
  %186 = trunc i32 %185 to i16
  store i16 %186, ptr %181, align 2, !tbaa !100
  br label %187

187:                                              ; preds = %180, %162, %156
  %188 = load ptr, ptr %157, align 8, !tbaa !86
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %156, !llvm.loop !101

190:                                              ; preds = %187, %152
  %191 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %192 = load ptr, ptr %191, align 8, !tbaa !86
  %193 = icmp eq ptr %192, null
  br i1 %193, label %209, label %197

194:                                              ; preds = %199
  %195 = load ptr, ptr %198, align 8, !tbaa !86
  %196 = icmp eq ptr %195, null
  br i1 %196, label %209, label %197, !llvm.loop !102

197:                                              ; preds = %190, %194
  %198 = phi ptr [ %195, %194 ], [ %192, %190 ]
  br label %199

199:                                              ; preds = %199, %197
  %200 = phi i64 [ 0, %197 ], [ %207, %199 ]
  %201 = getelementptr inbounds %struct.ParticleSystem, ptr %198, i64 0, i32 36, i64 %200
  %202 = load i16, ptr %201, align 2, !tbaa !100
  %203 = sext i16 %202 to i64
  %204 = getelementptr inbounds i32, ptr %117, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !87
  %206 = trunc i32 %205 to i16
  store i16 %206, ptr %201, align 2, !tbaa !100
  %207 = add nuw nsw i64 %200, 1
  %208 = icmp eq i64 %207, 12
  br i1 %208, label %194, label %199, !llvm.loop !103

209:                                              ; preds = %194, %190
  %210 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  tail call void %210(ptr noundef %117) #13
  br label %211

211:                                              ; preds = %209, %107
  %212 = icmp sgt i32 %55, 0
  br i1 %212, label %213, label %237

213:                                              ; preds = %211, %232
  %214 = phi ptr [ %234, %232 ], [ %21, %211 ]
  %215 = phi ptr [ %235, %232 ], [ %62, %211 ]
  %216 = phi i32 [ %233, %232 ], [ 0, %211 ]
  %217 = load ptr, ptr %215, align 8, !tbaa !86
  %218 = load ptr, ptr %217, align 8, !tbaa !71
  %219 = icmp eq ptr %218, null
  br i1 %219, label %222, label %220

220:                                              ; preds = %213
  %221 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  tail call void %221(ptr noundef nonnull %218) #13
  br label %222

222:                                              ; preds = %220, %213
  %223 = load ptr, ptr %215, align 8, !tbaa !86
  %224 = load ptr, ptr %214, align 8, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %223, ptr noundef nonnull align 8 dereferenceable(16) %224, i64 16, i1 false), !tbaa.struct !134
  %225 = load ptr, ptr %215, align 8, !tbaa !86
  %226 = load ptr, ptr %225, align 8, !tbaa !71
  %227 = icmp eq ptr %226, null
  br i1 %227, label %232, label %228

228:                                              ; preds = %222
  %229 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !86
  %230 = tail call ptr %229(ptr noundef nonnull %226) #13
  %231 = load ptr, ptr %215, align 8, !tbaa !86
  store ptr %230, ptr %231, align 8, !tbaa !71
  br label %232

232:                                              ; preds = %222, %228
  %233 = add nuw nsw i32 %216, 1
  %234 = getelementptr inbounds ptr, ptr %214, i64 1
  %235 = getelementptr inbounds ptr, ptr %215, i64 1
  %236 = icmp eq i32 %233, %55
  br i1 %236, label %237, label %213, !llvm.loop !135

237:                                              ; preds = %232, %211
  %238 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  tail call void %238(ptr noundef %62) #13
  %239 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  tail call void %239(ptr noundef %21) #13
  br label %240

240:                                              ; preds = %2, %237, %103
  %241 = phi i8 [ %106, %103 ], [ 1, %237 ], [ 1, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i8 %241
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local void @ED_vgroup_vert_active_mirror(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 46
  %10 = load i8, ptr %9, align 1, !tbaa !136
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %66, label %13

13:                                               ; preds = %2
  %14 = icmp eq ptr %8, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %16 = call ptr @ED_mesh_active_dvert_get_em(ptr noundef %0, ptr noundef nonnull %3) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %8, align 8, !tbaa !57
  %20 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 24
  %21 = call i32 @CustomData_get_offset(ptr noundef nonnull %20, i32 noundef 2) #13
  %22 = load ptr, ptr %3, align 8, !tbaa !86
  %23 = load ptr, ptr %5, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.Mesh, ptr %23, i64 0, i32 20
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  %26 = getelementptr inbounds %struct.Mesh, ptr %23, i64 0, i32 46
  %27 = load i8, ptr %26, align 1, !tbaa !136
  %28 = lshr i8 %27, 4
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 2
  %31 = call ptr @editbmesh_get_x_mirror_vert(ptr noundef %0, ptr noundef %25, ptr noundef %22, ptr noundef nonnull %30, i32 noundef -1, i8 noundef zeroext %29) #13
  %32 = icmp eq ptr %31, null
  %33 = icmp eq ptr %31, %22
  %34 = or i1 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %18
  %36 = load ptr, ptr %22, align 8, !tbaa !66
  %37 = sext i32 %21 to i64
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
  %39 = load ptr, ptr %31, align 8, !tbaa !66
  %40 = getelementptr inbounds i8, ptr %39, i64 %37
  call fastcc void @mesh_defvert_mirror_update_internal(ptr noundef %0, ptr noundef %40, ptr noundef %38, i32 noundef %1)
  br label %41

41:                                               ; preds = %35, %18, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %66

42:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %43 = call ptr @ED_mesh_active_dvert_get_ob(ptr noundef %0, ptr noundef nonnull %4) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %65, label %45

45:                                               ; preds = %42
  %46 = load i32, ptr %4, align 4, !tbaa !87
  %47 = load ptr, ptr %5, align 8, !tbaa !46
  %48 = icmp eq i32 %46, -1
  br i1 %48, label %65, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 46
  %51 = load i8, ptr %50, align 1, !tbaa !136
  %52 = lshr i8 %51, 4
  %53 = and i8 %52, 1
  %54 = call i32 @mesh_get_x_mirror_vert(ptr noundef %0, i32 noundef %46, i8 noundef zeroext %53) #13
  %55 = icmp slt i32 %54, 0
  %56 = icmp eq i32 %54, %46
  %57 = or i1 %55, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 17
  %60 = load ptr, ptr %59, align 8, !tbaa !107
  %61 = sext i32 %46 to i64
  %62 = getelementptr inbounds %struct.MDeformVert, ptr %60, i64 %61
  %63 = zext nneg i32 %54 to i64
  %64 = getelementptr inbounds %struct.MDeformVert, ptr %60, i64 %63
  call fastcc void @mesh_defvert_mirror_update_internal(ptr noundef %0, ptr noundef %64, ptr noundef %62, i32 noundef %1)
  br label %65

65:                                               ; preds = %58, %49, %45, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %66

66:                                               ; preds = %41, %65, %2
  ret void
}

declare ptr @ED_mesh_active_dvert_get_em(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_mesh_active_dvert_get_ob(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_object_vgroup_selection_itemf_helper(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store ptr null, ptr %6, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !tbaa !87
  %8 = icmp eq ptr %0, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @CTX_data_active_object(ptr noundef nonnull %0) #13
  %11 = and i32 %4, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  call void @RNA_enum_items_add_value(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull @WT_vertex_group_select_item, i32 noundef 1) #13
  br label %14

14:                                               ; preds = %13, %9
  %15 = call ptr @BKE_object_pose_armature_get(ptr noundef %10) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = and i32 %4, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  call void @RNA_enum_items_add_value(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull @WT_vertex_group_select_item, i32 noundef 2) #13
  br label %21

21:                                               ; preds = %20, %17
  %22 = and i32 %4, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  call void @RNA_enum_items_add_value(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull @WT_vertex_group_select_item, i32 noundef 3) #13
  br label %25

25:                                               ; preds = %21, %24, %14
  %26 = and i32 %4, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  call void @RNA_enum_items_add_value(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull @WT_vertex_group_select_item, i32 noundef 0) #13
  br label %29

29:                                               ; preds = %28, %25
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  store i8 1, ptr %3, align 1, !tbaa !65
  %30 = load ptr, ptr %6, align 8, !tbaa !86
  br label %31

31:                                               ; preds = %5, %29
  %32 = phi ptr [ %30, %29 ], [ @WT_vertex_group_select_item, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret ptr %32
}

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_items_add_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_vgroup_vert_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %7 = tail call i32 @BLI_findindex(ptr noundef nonnull %6, ptr noundef %1) #13
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %120, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %56, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !100
  switch i16 %15, label %56 [
    i16 17741, label %16
    i16 21580, label %18
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 17
  br label %27

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 26
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !78
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %23, %22 ], [ %11, %18 ]
  %26 = getelementptr inbounds %struct.Lattice, ptr %25, i64 0, i32 24
  br label %27

27:                                               ; preds = %24, %16
  %28 = phi ptr [ %17, %16 ], [ %26, %24 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !86
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4
  %33 = load i16, ptr %32, align 8, !tbaa !100
  switch i16 %33, label %56 [
    i16 17741, label %34
    i16 21580, label %40
  ]

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 21
  %36 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 26
  %37 = load i32, ptr %36, align 8, !tbaa !106
  %38 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %35, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %37) #13
  %39 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 17
  store ptr %38, ptr %39, align 8, !tbaa !107
  br label %56

40:                                               ; preds = %31
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !86
  %42 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 2
  %43 = load i16, ptr %42, align 8, !tbaa !81
  %44 = sext i16 %43 to i64
  %45 = shl nsw i64 %44, 4
  %46 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 3
  %47 = load i16, ptr %46, align 2, !tbaa !82
  %48 = sext i16 %47 to i64
  %49 = mul nsw i64 %45, %48
  %50 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 4
  %51 = load i16, ptr %50, align 4, !tbaa !83
  %52 = sext i16 %51 to i64
  %53 = mul nsw i64 %49, %52
  %54 = tail call ptr %41(i64 noundef %53, ptr noundef nonnull @.str.1) #13
  %55 = getelementptr inbounds %struct.Lattice, ptr %11, i64 0, i32 24
  store ptr %54, ptr %55, align 8, !tbaa !80
  br label %56

56:                                               ; preds = %13, %9, %40, %34, %31, %27
  %57 = load ptr, ptr %10, align 8, !tbaa !46
  %58 = icmp eq ptr %57, null
  br i1 %58, label %88, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 4
  %61 = load i16, ptr %60, align 8, !tbaa !100
  switch i16 %61, label %88 [
    i16 17741, label %62
    i16 21580, label %67
  ]

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.Mesh, ptr %57, i64 0, i32 17
  %64 = load ptr, ptr %63, align 8, !tbaa !107
  %65 = getelementptr inbounds %struct.Mesh, ptr %57, i64 0, i32 26
  %66 = load i32, ptr %65, align 8, !tbaa !106
  br label %88

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.Lattice, ptr %57, i64 0, i32 26
  %69 = load ptr, ptr %68, align 8, !tbaa !51
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %69, align 8, !tbaa !78
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi ptr [ %72, %71 ], [ %57, %67 ]
  %75 = getelementptr inbounds %struct.Lattice, ptr %74, i64 0, i32 24
  %76 = load ptr, ptr %75, align 8, !tbaa !80
  %77 = getelementptr inbounds %struct.Lattice, ptr %74, i64 0, i32 2
  %78 = load i16, ptr %77, align 8, !tbaa !81
  %79 = sext i16 %78 to i32
  %80 = getelementptr inbounds %struct.Lattice, ptr %74, i64 0, i32 3
  %81 = load i16, ptr %80, align 2, !tbaa !82
  %82 = sext i16 %81 to i32
  %83 = mul nsw i32 %82, %79
  %84 = getelementptr inbounds %struct.Lattice, ptr %74, i64 0, i32 4
  %85 = load i16, ptr %84, align 4, !tbaa !83
  %86 = sext i16 %85 to i32
  %87 = mul nsw i32 %83, %86
  br label %88

88:                                               ; preds = %73, %62, %59, %56
  %89 = phi ptr [ %76, %73 ], [ %64, %62 ], [ null, %59 ], [ null, %56 ]
  %90 = phi i32 [ %87, %73 ], [ %66, %62 ], [ 0, %59 ], [ 0, %56 ]
  %91 = icmp eq ptr %89, null
  br i1 %91, label %120, label %92

92:                                               ; preds = %88
  %93 = icmp sgt i32 %2, -1
  %94 = icmp sgt i32 %90, %2
  %95 = select i1 %93, i1 %94, i1 false
  br i1 %95, label %96, label %120

96:                                               ; preds = %92
  %97 = zext nneg i32 %2 to i64
  %98 = getelementptr inbounds %struct.MDeformVert, ptr %89, i64 %97
  %99 = tail call ptr @defvert_find_index(ptr noundef nonnull %98, i32 noundef %7) #13
  %100 = icmp eq ptr %99, null
  br i1 %100, label %116, label %101

101:                                              ; preds = %96
  switch i32 %4, label %120 [
    i32 1, label %102
    i32 2, label %104
    i32 3, label %110
  ]

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.MDeformWeight, ptr %99, i64 0, i32 1
  store float %3, ptr %103, align 4, !tbaa !131
  br label %120

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.MDeformWeight, ptr %99, i64 0, i32 1
  %106 = load float, ptr %105, align 4, !tbaa !131
  %107 = fadd float %106, %3
  store float %107, ptr %105, align 4, !tbaa !131
  %108 = fcmp ult float %107, 1.000000e+00
  br i1 %108, label %120, label %109

109:                                              ; preds = %104
  store float 1.000000e+00, ptr %105, align 4, !tbaa !131
  br label %120

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.MDeformWeight, ptr %99, i64 0, i32 1
  %112 = load float, ptr %111, align 4, !tbaa !131
  %113 = fsub float %112, %3
  store float %113, ptr %111, align 4, !tbaa !131
  %114 = fcmp ugt float %113, 0.000000e+00
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  tail call void @defvert_remove_group(ptr noundef nonnull %98, ptr noundef nonnull %99) #13
  br label %120

116:                                              ; preds = %96
  %117 = add i32 %4, -1
  %118 = icmp ult i32 %117, 2
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  tail call void @defvert_add_index_notest(ptr noundef nonnull %98, i32 noundef %7, float noundef %3) #13
  br label %120

120:                                              ; preds = %119, %116, %115, %110, %109, %104, %102, %101, %92, %88, %5
  ret void
}

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_vgroup_vert_remove(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %5 = tail call i32 @BLI_findindex(ptr noundef nonnull %4, ptr noundef %1) #13
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %13 = load i16, ptr %12, align 8, !tbaa !100
  switch i16 %13, label %28 [
    i16 17741, label %14
    i16 21580, label %16
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 17
  br label %25

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 26
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !78
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi ptr [ %21, %20 ], [ %9, %16 ]
  %24 = getelementptr inbounds %struct.Lattice, ptr %23, i64 0, i32 24
  br label %25

25:                                               ; preds = %22, %14
  %26 = phi ptr [ %15, %14 ], [ %24, %22 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !86
  br label %28

28:                                               ; preds = %25, %7, %11
  %29 = phi ptr [ null, %11 ], [ null, %7 ], [ %27, %25 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = sext i32 %2 to i64
  %33 = getelementptr inbounds %struct.MDeformVert, ptr %29, i64 %32
  %34 = tail call ptr @defvert_find_index(ptr noundef nonnull %33, i32 noundef %5) #13
  tail call void @defvert_remove_group(ptr noundef nonnull %33, ptr noundef %34) #13
  br label %35

35:                                               ; preds = %28, %31, %3
  ret void
}

declare ptr @defvert_find_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local float @ED_vgroup_vert_weight(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %5 = tail call i32 @BLI_findindex(ptr noundef nonnull %4, ptr noundef %1) #13
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %86, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !50
  switch i16 %9, label %74 [
    i16 1, label %10
    i16 22, label %42
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %14, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.BMesh, ptr %17, i64 0, i32 24
  %19 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %18, i32 noundef 2) #13
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load ptr, ptr %14, align 8, !tbaa !57
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %22, i8 noundef zeroext 1) #13
  %23 = load ptr, ptr %14, align 8, !tbaa !57
  %24 = tail call ptr @BM_vert_at_index(ptr noundef %23, i32 noundef %2) #13
  %25 = load ptr, ptr %24, align 8, !tbaa !66
  %26 = sext i32 %19 to i64
  %27 = getelementptr inbounds i8, ptr %25, i64 %26
  br label %39

28:                                               ; preds = %10
  %29 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !107
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %34 = load i32, ptr %33, align 8, !tbaa !106
  %35 = icmp sgt i32 %34, %2
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = sext i32 %2 to i64
  %38 = getelementptr inbounds %struct.MDeformVert, ptr %30, i64 %37
  br label %39

39:                                               ; preds = %16, %21, %36, %32, %28
  %40 = phi i1 [ false, %32 ], [ true, %28 ], [ true, %36 ], [ true, %21 ], [ %20, %16 ]
  %41 = phi ptr [ null, %32 ], [ null, %28 ], [ %38, %36 ], [ %27, %21 ], [ null, %16 ]
  br i1 %40, label %74, label %86

42:                                               ; preds = %7
  %43 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = getelementptr inbounds %struct.Lattice, ptr %44, i64 0, i32 26
  %46 = load ptr, ptr %45, align 8, !tbaa !51
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %46, align 8, !tbaa !78
  br label %50

50:                                               ; preds = %48, %42
  %51 = phi ptr [ %49, %48 ], [ %44, %42 ]
  %52 = getelementptr inbounds %struct.Lattice, ptr %51, i64 0, i32 24
  %53 = load ptr, ptr %52, align 8, !tbaa !80
  %54 = icmp eq ptr %53, null
  br i1 %54, label %71, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.Lattice, ptr %51, i64 0, i32 2
  %57 = load i16, ptr %56, align 8, !tbaa !81
  %58 = sext i16 %57 to i32
  %59 = getelementptr inbounds %struct.Lattice, ptr %51, i64 0, i32 3
  %60 = load i16, ptr %59, align 2, !tbaa !82
  %61 = sext i16 %60 to i32
  %62 = mul nsw i32 %61, %58
  %63 = getelementptr inbounds %struct.Lattice, ptr %51, i64 0, i32 4
  %64 = load i16, ptr %63, align 4, !tbaa !83
  %65 = sext i16 %64 to i32
  %66 = mul nsw i32 %62, %65
  %67 = icmp sgt i32 %66, %2
  br i1 %67, label %68, label %71

68:                                               ; preds = %55
  %69 = sext i32 %2 to i64
  %70 = getelementptr inbounds %struct.MDeformVert, ptr %53, i64 %69
  br label %71

71:                                               ; preds = %68, %55, %50
  %72 = phi i1 [ false, %55 ], [ true, %68 ], [ true, %50 ]
  %73 = phi ptr [ null, %55 ], [ %70, %68 ], [ null, %50 ]
  br i1 %72, label %74, label %86

74:                                               ; preds = %71, %39, %7
  %75 = phi ptr [ %41, %39 ], [ %73, %71 ], [ null, %7 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %74
  %78 = tail call ptr @defvert_find_index(ptr noundef nonnull %75, i32 noundef %5) #13
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.MDeformWeight, ptr %78, i64 0, i32 1
  %82 = load float, ptr %81, align 4, !tbaa !131
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi float [ %82, %80 ], [ 0.000000e+00, %77 ]
  br i1 %79, label %85, label %86

85:                                               ; preds = %83, %74
  br label %86

86:                                               ; preds = %85, %83, %71, %39, %3
  %87 = phi float [ -1.000000e+00, %3 ], [ -1.000000e+00, %85 ], [ %84, %83 ], [ 0.000000e+00, %39 ], [ 0.000000e+00, %71 ]
  ret float %87
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_vgroup_select_by_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @defgroup_name_index(ptr noundef %0, ptr noundef %1) #13
  %4 = trunc i32 %3 to i16
  %5 = add i16 %4, 1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  store i16 %5, ptr %6, align 2, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_vgroup_subset_from_select_type(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %6 = tail call i32 @BLI_countlist(ptr noundef nonnull %5) #13
  store i32 %6, ptr %2, align 4, !tbaa !87
  switch i32 %1, label %62 [
    i32 1, label %7
    i32 2, label %25
    i32 3, label %27
    i32 4, label %44
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %9 = load i16, ptr %8, align 2, !tbaa !49
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %11 = sext i32 %6 to i64
  %12 = tail call ptr %10(i64 noundef %11, ptr noundef nonnull @__func__.ED_vgroup_subset_from_select_type) #13
  %13 = load i32, ptr %2, align 4, !tbaa !87
  %14 = sext i32 %13 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %12, i8 0, i64 %14, i1 false)
  %15 = icmp eq i16 %9, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %7
  %17 = zext i16 %9 to i32
  %18 = load i32, ptr %2, align 4, !tbaa !87
  %19 = icmp slt i32 %18, %17
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  store i32 1, ptr %3, align 4, !tbaa !87
  %21 = zext i16 %9 to i64
  %22 = getelementptr i8, ptr %12, i64 %21
  %23 = getelementptr i8, ptr %22, i64 -1
  store i8 1, ptr %23, align 1, !tbaa !65
  br label %69

24:                                               ; preds = %16, %7
  store i32 0, ptr %3, align 4, !tbaa !87
  br label %69

25:                                               ; preds = %4
  %26 = tail call ptr @BKE_objdef_selected_get(ptr noundef %0, i32 noundef %6, ptr noundef %3) #13
  br label %69

27:                                               ; preds = %4
  %28 = tail call ptr @BKE_objdef_validmap_get(ptr noundef %0, i32 noundef %6) #13
  store i32 0, ptr %3, align 4, !tbaa !87
  %29 = load i32, ptr %2, align 4, !tbaa !87
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %27, %39
  %32 = phi i64 [ %40, %39 ], [ 0, %27 ]
  %33 = getelementptr inbounds i8, ptr %28, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !65
  %35 = icmp eq i8 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, ptr %3, align 4, !tbaa !87
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %3, align 4, !tbaa !87
  br label %39

39:                                               ; preds = %31, %36
  %40 = add nuw nsw i64 %32, 1
  %41 = load i32, ptr %2, align 4, !tbaa !87
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %31, label %69, !llvm.loop !137

44:                                               ; preds = %4
  %45 = tail call ptr @BKE_objdef_validmap_get(ptr noundef %0, i32 noundef %6) #13
  store i32 0, ptr %3, align 4, !tbaa !87
  %46 = load i32, ptr %2, align 4, !tbaa !87
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %44, %57
  %49 = phi i64 [ %58, %57 ], [ 0, %44 ]
  %50 = getelementptr inbounds i8, ptr %45, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !65
  %52 = icmp eq i8 %51, 0
  %53 = zext i1 %52 to i8
  store i8 %53, ptr %50, align 1, !tbaa !65
  br i1 %52, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, ptr %3, align 4, !tbaa !87
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %3, align 4, !tbaa !87
  br label %57

57:                                               ; preds = %48, %54
  %58 = add nuw nsw i64 %49, 1
  %59 = load i32, ptr %2, align 4, !tbaa !87
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %48, label %69, !llvm.loop !138

62:                                               ; preds = %4
  %63 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %64 = sext i32 %6 to i64
  %65 = tail call ptr %63(i64 noundef %64, ptr noundef nonnull @__func__.ED_vgroup_subset_from_select_type) #13
  %66 = load i32, ptr %2, align 4, !tbaa !87
  %67 = sext i32 %66 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %65, i8 1, i64 %67, i1 false)
  %68 = load i32, ptr %2, align 4, !tbaa !87
  store i32 %68, ptr %3, align 4, !tbaa !87
  br label %69

69:                                               ; preds = %57, %39, %44, %27, %20, %24, %62, %25
  %70 = phi ptr [ %65, %62 ], [ %26, %25 ], [ %12, %24 ], [ %12, %20 ], [ %28, %27 ], [ %45, %44 ], [ %28, %39 ], [ %45, %57 ]
  ret ptr %70
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare ptr @BKE_objdef_selected_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_objdef_validmap_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ED_vgroup_subset_to_index_array(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %5, %18
  %8 = phi i64 [ 0, %5 ], [ %20, %18 ]
  %9 = phi i32 [ 0, %5 ], [ %19, %18 ]
  %10 = getelementptr inbounds i8, ptr %0, i64 %8
  %11 = load i8, ptr %10, align 1, !tbaa !65
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = add nsw i32 %9, 1
  %15 = sext i32 %9 to i64
  %16 = getelementptr inbounds i32, ptr %2, i64 %15
  %17 = trunc i64 %8 to i32
  store i32 %17, ptr %16, align 4, !tbaa !87
  br label %18

18:                                               ; preds = %7, %13
  %19 = phi i32 [ %14, %13 ], [ %9, %7 ]
  %20 = add nuw nsw i64 %8, 1
  %21 = icmp eq i64 %20, %6
  br i1 %21, label %22, label %7, !llvm.loop !139

22:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_vgroup_mirror(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %11 = load i16, ptr %10, align 2, !tbaa !49
  %12 = zext i16 %11 to i32
  %13 = add nsw i32 %12, -1
  store i32 0, ptr %6, align 4, !tbaa !87
  store i32 0, ptr %5, align 4, !tbaa !87
  %14 = or i8 %2, %1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %287, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %18 = tail call ptr @BLI_findlink(ptr noundef nonnull %17, i32 noundef %13) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %287, label %20

20:                                               ; preds = %16
  %21 = icmp eq i8 %2, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %20
  %23 = icmp eq i8 %3, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = call ptr @defgroup_flip_map(ptr noundef %0, ptr noundef nonnull %8, i8 noundef zeroext 0) #13
  br label %28

26:                                               ; preds = %22
  %27 = call ptr @defgroup_flip_map_single(ptr noundef %0, ptr noundef nonnull %8, i8 noundef zeroext 0, i32 noundef %13) #13
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi ptr [ %25, %24 ], [ %27, %26 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %287, label %32

31:                                               ; preds = %20
  store i32 0, ptr %8, align 4, !tbaa !87
  br label %32

32:                                               ; preds = %28, %31
  %33 = phi ptr [ %29, %28 ], [ null, %31 ]
  %34 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %35 = load i16, ptr %34, align 8, !tbaa !50
  switch i16 %35, label %281 [
    i16 1, label %36
    i16 22, label %199
  ]

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 20
  %40 = load ptr, ptr %39, align 8, !tbaa !54
  %41 = icmp eq ptr %40, null
  br i1 %41, label %101, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %40, align 8, !tbaa !57
  %44 = getelementptr inbounds %struct.BMesh, ptr %43, i64 0, i32 24
  %45 = call i32 @CustomData_get_offset(ptr noundef nonnull %44, i32 noundef 2) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #13
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %97, label %47

47:                                               ; preds = %42
  call void @EDBM_verts_mirror_cache_begin(ptr noundef nonnull %40, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext %4) #13
  %48 = load ptr, ptr %40, align 8, !tbaa !57
  %49 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  store i8 1, ptr %49, align 4, !tbaa !59
  %50 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %50, align 8, !tbaa !61
  %51 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %51, align 8, !tbaa !62
  %52 = getelementptr inbounds %struct.BMesh, ptr %48, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !63
  store ptr %53, ptr %9, align 8, !tbaa !65
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #13
  %54 = load ptr, ptr %51, align 8, !tbaa !62
  %55 = call ptr %54(ptr noundef nonnull %9) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %94, label %57

57:                                               ; preds = %47
  %58 = sext i32 %45 to i64
  br label %59

59:                                               ; preds = %57, %88
  %60 = phi ptr [ %55, %57 ], [ %92, %88 ]
  %61 = phi i32 [ 0, %57 ], [ %90, %88 ]
  %62 = phi i32 [ 0, %57 ], [ %89, %88 ]
  %63 = call ptr @EDBM_verts_mirror_get(ptr noundef nonnull %40, ptr noundef nonnull %60) #13
  %64 = icmp eq ptr %63, null
  br i1 %64, label %86, label %65

65:                                               ; preds = %59
  %66 = icmp eq ptr %63, %60
  br i1 %66, label %84, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.BMHeader, ptr %60, i64 0, i32 3
  %69 = load i8, ptr %68, align 1, !tbaa !116
  %70 = and i8 %69, 1
  %71 = getelementptr inbounds %struct.BMHeader, ptr %63, i64 0, i32 3
  %72 = load i8, ptr %71, align 1, !tbaa !116
  %73 = and i8 %72, 1
  %74 = icmp ne i8 %70, 0
  %75 = icmp ne i8 %73, 0
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %67
  %78 = load ptr, ptr %60, align 8, !tbaa !66
  %79 = getelementptr inbounds i8, ptr %78, i64 %58
  %80 = load ptr, ptr %63, align 8, !tbaa !66
  %81 = getelementptr inbounds i8, ptr %80, i64 %58
  %82 = load i32, ptr %8, align 4, !tbaa !87
  call fastcc void @dvert_mirror_op(ptr noundef %79, ptr noundef %81, i8 noundef zeroext %70, i8 noundef zeroext %73, ptr noundef %33, i32 noundef %82, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %13)
  %83 = add nsw i32 %61, 1
  br label %84

84:                                               ; preds = %77, %67, %65
  %85 = phi i32 [ %83, %77 ], [ %61, %67 ], [ %61, %65 ]
  call void @EDBM_verts_mirror_cache_clear(ptr noundef nonnull %40, ptr noundef nonnull %60) #13
  call void @EDBM_verts_mirror_cache_clear(ptr noundef nonnull %40, ptr noundef nonnull %63) #13
  br label %88

86:                                               ; preds = %59
  %87 = add nsw i32 %62, 1
  br label %88

88:                                               ; preds = %84, %86
  %89 = phi i32 [ %62, %84 ], [ %87, %86 ]
  %90 = phi i32 [ %85, %84 ], [ %61, %86 ]
  %91 = load ptr, ptr %51, align 8, !tbaa !62
  %92 = call ptr %91(ptr noundef nonnull %9) #13
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %59, !llvm.loop !140

94:                                               ; preds = %88, %47
  %95 = phi i32 [ 0, %47 ], [ %89, %88 ]
  %96 = phi i32 [ 0, %47 ], [ %90, %88 ]
  call void @EDBM_verts_mirror_cache_end(ptr noundef nonnull %40) #13
  br label %97

97:                                               ; preds = %42, %94
  %98 = phi i32 [ 0, %94 ], [ 2, %42 ]
  %99 = phi i32 [ %95, %94 ], [ 0, %42 ]
  %100 = phi i32 [ %96, %94 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #13
  br i1 %46, label %195, label %192

101:                                              ; preds = %36
  %102 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 46
  %103 = load i8, ptr %102, align 1, !tbaa !136
  %104 = and i8 %103, 32
  %105 = icmp eq i8 %104, 0
  %106 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 17
  %107 = load ptr, ptr %106, align 8, !tbaa !107
  %108 = icmp eq ptr %107, null
  br i1 %108, label %188, label %109

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 15
  %111 = load ptr, ptr %110, align 8, !tbaa !119
  %112 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 26
  %113 = load i32, ptr %112, align 8, !tbaa !106
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %119, %109
  %116 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 26
  %117 = load i32, ptr %116, align 8, !tbaa !106
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %128, label %188

119:                                              ; preds = %109, %119
  %120 = phi i32 [ %125, %119 ], [ 0, %109 ]
  %121 = phi ptr [ %126, %119 ], [ %111, %109 ]
  %122 = getelementptr inbounds %struct.MVert, ptr %121, i64 0, i32 2
  %123 = load i8, ptr %122, align 2, !tbaa !120
  %124 = and i8 %123, -5
  store i8 %124, ptr %122, align 2, !tbaa !120
  %125 = add nuw nsw i32 %120, 1
  %126 = getelementptr inbounds %struct.MVert, ptr %121, i64 1
  %127 = icmp eq i32 %125, %113
  br i1 %127, label %115, label %119, !llvm.loop !141

128:                                              ; preds = %115, %178
  %129 = phi i64 [ %183, %178 ], [ 0, %115 ]
  %130 = phi i8 [ %182, %178 ], [ 1, %115 ]
  %131 = phi i8 [ %181, %178 ], [ 1, %115 ]
  %132 = phi i32 [ %180, %178 ], [ 0, %115 ]
  %133 = phi i32 [ %179, %178 ], [ 0, %115 ]
  %134 = phi ptr [ %184, %178 ], [ %111, %115 ]
  %135 = getelementptr inbounds %struct.MVert, ptr %134, i64 0, i32 2
  %136 = load i8, ptr %135, align 2, !tbaa !120
  %137 = and i8 %136, 4
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %178

139:                                              ; preds = %128
  %140 = trunc i64 %129 to i32
  %141 = call i32 @mesh_get_x_mirror_vert(ptr noundef %0, i32 noundef %140, i8 noundef zeroext %4) #13
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %176, label %143

143:                                              ; preds = %139
  %144 = zext i32 %141 to i64
  %145 = icmp eq i64 %129, %144
  br i1 %145, label %178, label %146

146:                                              ; preds = %143
  %147 = load ptr, ptr %110, align 8, !tbaa !119
  %148 = sext i32 %141 to i64
  %149 = getelementptr inbounds %struct.MVert, ptr %147, i64 %148, i32 2
  %150 = load i8, ptr %149, align 2, !tbaa !120
  %151 = and i8 %150, 4
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %178

153:                                              ; preds = %146
  br i1 %105, label %158, label %154

154:                                              ; preds = %153
  %155 = load i8, ptr %135, align 2, !tbaa !120
  %156 = and i8 %155, 1
  %157 = and i8 %150, 1
  br label %158

158:                                              ; preds = %154, %153
  %159 = phi i8 [ %157, %154 ], [ %131, %153 ]
  %160 = phi i8 [ %156, %154 ], [ %130, %153 ]
  %161 = icmp ne i8 %160, 0
  %162 = icmp ne i8 %159, 0
  %163 = select i1 %161, i1 true, i1 %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = load ptr, ptr %106, align 8, !tbaa !107
  %166 = getelementptr inbounds %struct.MDeformVert, ptr %165, i64 %129
  %167 = getelementptr inbounds %struct.MDeformVert, ptr %165, i64 %148
  %168 = load i32, ptr %8, align 4, !tbaa !87
  call fastcc void @dvert_mirror_op(ptr noundef %166, ptr noundef %167, i8 noundef zeroext %160, i8 noundef zeroext %159, ptr noundef %33, i32 noundef %168, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %13)
  %169 = add nsw i32 %132, 1
  br label %170

170:                                              ; preds = %158, %164
  %171 = phi i32 [ %169, %164 ], [ %132, %158 ]
  %172 = load i8, ptr %135, align 2, !tbaa !120
  %173 = or i8 %172, 4
  store i8 %173, ptr %135, align 2, !tbaa !120
  %174 = load i8, ptr %149, align 2, !tbaa !120
  %175 = or i8 %174, 4
  store i8 %175, ptr %149, align 2, !tbaa !120
  br label %178

176:                                              ; preds = %139
  %177 = add nsw i32 %133, 1
  br label %178

178:                                              ; preds = %128, %143, %170, %146, %176
  %179 = phi i32 [ %133, %170 ], [ %133, %146 ], [ %133, %143 ], [ %177, %176 ], [ %133, %128 ]
  %180 = phi i32 [ %171, %170 ], [ %132, %146 ], [ %132, %143 ], [ %132, %176 ], [ %132, %128 ]
  %181 = phi i8 [ %159, %170 ], [ %131, %146 ], [ %131, %143 ], [ %131, %176 ], [ %131, %128 ]
  %182 = phi i8 [ %160, %170 ], [ %130, %146 ], [ %130, %143 ], [ %130, %176 ], [ %130, %128 ]
  %183 = add nuw nsw i64 %129, 1
  %184 = getelementptr inbounds %struct.MVert, ptr %134, i64 1
  %185 = load i32, ptr %116, align 8, !tbaa !106
  %186 = sext i32 %185 to i64
  %187 = icmp slt i64 %183, %186
  br i1 %187, label %128, label %188, !llvm.loop !142

188:                                              ; preds = %178, %115, %101
  %189 = phi i32 [ 2, %101 ], [ 0, %115 ], [ 0, %178 ]
  %190 = phi i32 [ 0, %101 ], [ 0, %115 ], [ %179, %178 ]
  %191 = phi i32 [ 0, %101 ], [ 0, %115 ], [ %180, %178 ]
  br i1 %108, label %195, label %192

192:                                              ; preds = %188, %97
  %193 = phi i32 [ %99, %97 ], [ %190, %188 ]
  %194 = phi i32 [ %100, %97 ], [ %191, %188 ]
  br label %195

195:                                              ; preds = %97, %188, %192
  %196 = phi i32 [ 0, %192 ], [ %98, %97 ], [ %189, %188 ]
  %197 = phi i32 [ %193, %192 ], [ %99, %97 ], [ %190, %188 ]
  %198 = phi i32 [ %194, %192 ], [ %100, %97 ], [ %191, %188 ]
  switch i32 %196, label %287 [
    i32 0, label %281
    i32 2, label %281
  ]

199:                                              ; preds = %32
  %200 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %201 = load ptr, ptr %200, align 8, !tbaa !46
  %202 = getelementptr inbounds %struct.Lattice, ptr %201, i64 0, i32 26
  %203 = load ptr, ptr %202, align 8, !tbaa !51
  %204 = icmp eq ptr %203, null
  br i1 %204, label %207, label %205

205:                                              ; preds = %199
  %206 = load ptr, ptr %203, align 8, !tbaa !78
  br label %207

207:                                              ; preds = %199, %205
  %208 = phi ptr [ %206, %205 ], [ %201, %199 ]
  %209 = getelementptr inbounds %struct.Lattice, ptr %208, i64 0, i32 2
  %210 = load i16, ptr %209, align 8, !tbaa !81
  %211 = icmp eq i16 %210, 1
  br i1 %211, label %281, label %212

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.Lattice, ptr %208, i64 0, i32 24
  %214 = load ptr, ptr %213, align 8, !tbaa !80
  %215 = icmp eq ptr %214, null
  br i1 %215, label %281, label %216

216:                                              ; preds = %212
  %217 = sdiv i16 %210, 2
  %218 = sext i16 %217 to i32
  %219 = getelementptr inbounds %struct.Lattice, ptr %208, i64 0, i32 4
  %220 = load i16, ptr %219, align 4, !tbaa !83
  %221 = icmp sgt i16 %220, 0
  br i1 %221, label %222, label %281

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct.Lattice, ptr %208, i64 0, i32 3
  %224 = icmp sgt i16 %210, 1
  %225 = getelementptr inbounds %struct.Lattice, ptr %208, i64 0, i32 21
  br label %226

226:                                              ; preds = %222, %275
  %227 = phi i32 [ 0, %222 ], [ %277, %275 ]
  %228 = phi i32 [ 0, %222 ], [ %276, %275 ]
  %229 = load i16, ptr %223, align 2, !tbaa !82
  %230 = icmp sgt i16 %229, 0
  br i1 %230, label %231, label %275

231:                                              ; preds = %226, %269
  %232 = phi i32 [ %271, %269 ], [ 0, %226 ]
  %233 = phi i32 [ %270, %269 ], [ %228, %226 ]
  br i1 %224, label %234, label %269

234:                                              ; preds = %231, %265
  %235 = phi i32 [ %267, %265 ], [ 0, %231 ]
  %236 = phi i32 [ %266, %265 ], [ %233, %231 ]
  %237 = load i16, ptr %209, align 8, !tbaa !81
  %238 = sext i16 %237 to i32
  %239 = xor i32 %235, -1
  %240 = add i32 %238, %239
  %241 = icmp eq i32 %235, %240
  br i1 %241, label %265, label %242

242:                                              ; preds = %234
  %243 = call i32 @BKE_lattice_index_from_uvw(ptr noundef %208, i32 noundef %235, i32 noundef %232, i32 noundef %227) #13
  %244 = call i32 @BKE_lattice_index_from_uvw(ptr noundef %208, i32 noundef %240, i32 noundef %232, i32 noundef %227) #13
  %245 = load ptr, ptr %225, align 8, !tbaa !124
  %246 = sext i32 %243 to i64
  %247 = sext i32 %244 to i64
  %248 = getelementptr inbounds %struct.BPoint, ptr %245, i64 %246, i32 3
  %249 = load i16, ptr %248, align 4, !tbaa !125
  %250 = trunc i16 %249 to i8
  %251 = and i8 %250, 1
  %252 = getelementptr inbounds %struct.BPoint, ptr %245, i64 %247, i32 3
  %253 = load i16, ptr %252, align 4, !tbaa !125
  %254 = trunc i16 %253 to i8
  %255 = and i8 %254, 1
  %256 = icmp ne i8 %251, 0
  %257 = icmp ne i8 %255, 0
  %258 = select i1 %256, i1 true, i1 %257
  br i1 %258, label %259, label %265

259:                                              ; preds = %242
  %260 = load ptr, ptr %213, align 8, !tbaa !80
  %261 = getelementptr inbounds %struct.MDeformVert, ptr %260, i64 %246
  %262 = getelementptr inbounds %struct.MDeformVert, ptr %260, i64 %247
  %263 = load i32, ptr %8, align 4, !tbaa !87
  call fastcc void @dvert_mirror_op(ptr noundef %261, ptr noundef %262, i8 noundef zeroext %251, i8 noundef zeroext %255, ptr noundef %33, i32 noundef %263, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %13)
  %264 = add nsw i32 %236, 1
  br label %265

265:                                              ; preds = %259, %242, %234
  %266 = phi i32 [ %236, %234 ], [ %264, %259 ], [ %236, %242 ]
  %267 = add nuw nsw i32 %235, 1
  %268 = icmp eq i32 %267, %218
  br i1 %268, label %269, label %234, !llvm.loop !143

269:                                              ; preds = %265, %231
  %270 = phi i32 [ %233, %231 ], [ %266, %265 ]
  %271 = add nuw nsw i32 %232, 1
  %272 = load i16, ptr %223, align 2, !tbaa !82
  %273 = sext i16 %272 to i32
  %274 = icmp slt i32 %271, %273
  br i1 %274, label %231, label %275, !llvm.loop !144

275:                                              ; preds = %269, %226
  %276 = phi i32 [ %228, %226 ], [ %270, %269 ]
  %277 = add nuw nsw i32 %227, 1
  %278 = load i16, ptr %219, align 4, !tbaa !83
  %279 = sext i16 %278 to i32
  %280 = icmp slt i32 %277, %279
  br i1 %280, label %226, label %281, !llvm.loop !145

281:                                              ; preds = %275, %216, %212, %207, %32, %195, %195
  %282 = phi i32 [ %197, %195 ], [ %197, %195 ], [ 0, %32 ], [ 0, %207 ], [ 0, %212 ], [ 0, %216 ], [ 0, %275 ]
  %283 = phi i32 [ %198, %195 ], [ %198, %195 ], [ 0, %32 ], [ 0, %207 ], [ 0, %212 ], [ 0, %216 ], [ %276, %275 ]
  store i32 %283, ptr %5, align 4, !tbaa !87
  store i32 %282, ptr %6, align 4, !tbaa !87
  %284 = icmp eq ptr %33, null
  br i1 %284, label %287, label %285

285:                                              ; preds = %281
  %286 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %286(ptr noundef nonnull %33) #13
  br label %287

287:                                              ; preds = %281, %285, %28, %16, %7, %195
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  ret void
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @defgroup_flip_map(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @defgroup_flip_map_single(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @EDBM_verts_mirror_cache_begin(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @EDBM_verts_mirror_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @dvert_mirror_op(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i32 noundef %9) unnamed_addr #0 {
  %11 = alloca %struct.MDeformVert, align 8
  %12 = icmp ne i8 %3, 0
  %13 = icmp ne i8 %2, 0
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %44

15:                                               ; preds = %10
  %16 = icmp eq i8 %6, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %15
  %18 = icmp eq i8 %8, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !134
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !134
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11)
  br label %41

20:                                               ; preds = %17
  %21 = tail call ptr @defvert_find_index(ptr noundef %0, i32 noundef %9) #13
  %22 = tail call ptr @defvert_find_index(ptr noundef %1, i32 noundef %9) #13
  %23 = icmp ne ptr %21, null
  %24 = icmp ne ptr %22, null
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = icmp eq ptr %22, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = tail call ptr @defvert_verify_index(ptr noundef %1, i32 noundef %9) #13
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi ptr [ %29, %28 ], [ %22, %26 ]
  %32 = icmp eq ptr %21, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = tail call ptr @defvert_verify_index(ptr noundef %0, i32 noundef %9) #13
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi ptr [ %34, %33 ], [ %21, %30 ]
  %37 = getelementptr inbounds %struct.MDeformWeight, ptr %36, i64 0, i32 1
  %38 = load float, ptr %37, align 4, !tbaa !131
  %39 = getelementptr inbounds %struct.MDeformWeight, ptr %31, i64 0, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !131
  store float %40, ptr %37, align 4, !tbaa !131
  store float %38, ptr %39, align 4, !tbaa !131
  br label %41

41:                                               ; preds = %35, %20, %19, %15
  %42 = icmp eq i8 %7, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %41
  tail call void @defvert_flip(ptr noundef %0, ptr noundef %4, i32 noundef %5) #13
  br label %55

44:                                               ; preds = %10
  %45 = icmp eq i8 %3, 0
  %46 = select i1 %45, ptr %1, ptr %0
  %47 = select i1 %45, ptr %0, ptr %1
  %48 = icmp eq i8 %6, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = icmp eq i8 %8, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  tail call void @defvert_copy(ptr noundef %47, ptr noundef %46) #13
  br label %53

52:                                               ; preds = %49
  tail call void @defvert_copy_index(ptr noundef %47, ptr noundef %46, i32 noundef %9) #13
  br label %53

53:                                               ; preds = %51, %52, %44
  %54 = icmp eq i8 %7, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %53, %43
  %56 = phi ptr [ %1, %43 ], [ %47, %53 ]
  tail call void @defvert_flip(ptr noundef %56, ptr noundef %4, i32 noundef %5) #13
  br label %57

57:                                               ; preds = %55, %53, %41
  ret void
}

declare void @EDBM_verts_mirror_cache_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EDBM_verts_mirror_cache_end(ptr noundef) local_unnamed_addr #2

declare i32 @mesh_get_x_mirror_vert(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @BKE_lattice_index_from_uvw(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_group_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_supported_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_add_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @vertex_group_supported_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  br i1 %3, label %28, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !154
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !50
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = icmp eq i16 %15, 22
  %19 = icmp ne ptr %8, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %23, label %28

21:                                               ; preds = %13
  %22 = icmp eq ptr %8, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %17, %21
  %24 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !155
  %26 = icmp eq ptr %25, null
  %27 = zext i1 %26 to i32
  br label %28

28:                                               ; preds = %23, %21, %17, %9, %7
  %29 = phi i32 [ 0, %21 ], [ 0, %17 ], [ 0, %9 ], [ 0, %7 ], [ %27, %23 ]
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !50
  switch i16 %7, label %14 [
    i16 1, label %8
    i16 22, label %8
  ]

8:                                                ; preds = %5, %5
  %9 = tail call ptr @BKE_defgroup_new(ptr noundef nonnull %3, ptr noundef nonnull @.str) #13
  %10 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 25
  %11 = tail call i32 @BLI_countlist(ptr noundef nonnull %10) #13
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 97
  store i16 %12, ptr %13, align 2, !tbaa !49
  br label %14

14:                                               ; preds = %2, %5, %8
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #13
  %15 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274464768, ptr noundef %16) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #13
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_group_remove(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_remove_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @vertex_group_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  br i1 %3, label %27, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !154
  %12 = icmp eq ptr %11, null
  %13 = icmp ne ptr %8, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !155
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !50
  switch i16 %21, label %27 [
    i16 1, label %22
    i16 22, label %22
  ]

22:                                               ; preds = %19, %19
  %23 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 25
  %24 = load ptr, ptr %23, align 8, !tbaa !104
  %25 = icmp ne ptr %24, null
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %19, %22, %15, %9, %7
  %28 = phi i32 [ 0, %15 ], [ 0, %9 ], [ 0, %7 ], [ %26, %22 ], [ 0, %19 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.9) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !50
  switch i16 %10, label %36 [
    i16 1, label %11
    i16 22, label %19
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 21
  %15 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 26
  %16 = load i32, ptr %15, align 8, !tbaa !106
  %17 = tail call zeroext i8 @CustomData_free_layer_active(ptr noundef nonnull %14, i32 noundef 2, i32 noundef %16) #13
  %18 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 17
  br label %34

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.Lattice, ptr %21, i64 0, i32 26
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %23, align 8, !tbaa !78
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi ptr [ %26, %25 ], [ %21, %19 ]
  %29 = getelementptr inbounds %struct.Lattice, ptr %28, i64 0, i32 24
  %30 = load ptr, ptr %29, align 8, !tbaa !80
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  tail call void %33(ptr noundef nonnull %30) #13
  br label %34

34:                                               ; preds = %32, %11
  %35 = phi ptr [ %18, %11 ], [ %29, %32 ]
  store ptr null, ptr %35, align 8, !tbaa !86
  br label %36

36:                                               ; preds = %34, %8, %27
  %37 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 25
  tail call void @BLI_freelistN(ptr noundef nonnull %37) #13
  %38 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 97
  store i16 0, ptr %38, align 2, !tbaa !49
  br label %52

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 25
  %41 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 97
  %42 = load i16, ptr %41, align 2, !tbaa !49
  %43 = zext i16 %42 to i32
  %44 = add nsw i32 %43, -1
  %45 = tail call ptr @BLI_findlink(ptr noundef nonnull %40, i32 noundef %44) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %39
  %48 = tail call zeroext i8 @BKE_object_is_in_editmode_vgroup(ptr noundef %3) #13
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call fastcc void @vgroup_delete_edit_mode(ptr noundef %3, ptr noundef nonnull %45)
  br label %52

51:                                               ; preds = %47
  tail call fastcc void @vgroup_delete_object_mode(ptr noundef %3, ptr noundef nonnull %45)
  br label %52

52:                                               ; preds = %51, %50, %39, %36
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #13
  %53 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274464768, ptr noundef %54) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #13
  ret i32 4
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_group_assign(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_unlocked_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_assign_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !153
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @vertex_group_vert_select_unlocked_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  br i1 %3, label %44, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !154
  %12 = icmp eq ptr %11, null
  %13 = icmp ne ptr %8, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %44

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !155
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = tail call zeroext i8 @BKE_object_is_in_editmode_vgroup(ptr noundef nonnull %2) #13
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = tail call zeroext i8 @BKE_object_is_in_wpaint_select_vert(ptr noundef nonnull %2) #13
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %22, %19
  %26 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 97
  %27 = load i16, ptr %26, align 2, !tbaa !49
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = zext i16 %27 to i32
  %31 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 25
  %32 = add nsw i32 %30, -1
  %33 = tail call ptr @BLI_findlink(ptr noundef nonnull %31, i32 noundef %32) #13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bDeformGroup, ptr %33, i64 0, i32 3
  %37 = load i8, ptr %36, align 8, !tbaa !159
  %38 = and i8 %37, 1
  %39 = xor i8 %38, 1
  %40 = zext nneg i8 %39 to i32
  br label %41

41:                                               ; preds = %29, %35
  %42 = phi i32 [ %40, %35 ], [ undef, %29 ]
  br i1 %34, label %43, label %44

43:                                               ; preds = %41, %25
  br label %44

44:                                               ; preds = %22, %7, %9, %15, %41, %43
  %45 = phi i32 [ 1, %43 ], [ %42, %41 ], [ 0, %15 ], [ 0, %9 ], [ 0, %7 ], [ 0, %22 ]
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_assign_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #13
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 4
  %7 = load float, ptr %6, align 8, !tbaa !160
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 97
  %9 = load i16, ptr %8, align 2, !tbaa !49
  %10 = zext i16 %9 to i32
  %11 = add nsw i32 %10, -1
  %12 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 25
  %13 = tail call ptr @BLI_findlink(ptr noundef nonnull %12, i32 noundef %11) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %192, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !50
  switch i16 %17, label %192 [
    i16 1, label %18
    i16 22, label %120
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 20
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = icmp eq ptr %22, null
  br i1 %23, label %65, label %24

24:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %25 = load ptr, ptr %22, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.BMesh, ptr %25, i64 0, i32 24
  %27 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %26, i32 noundef 2) #13
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load ptr, ptr %22, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.BMesh, ptr %30, i64 0, i32 24
  tail call void @BM_data_layer_add(ptr noundef %30, ptr noundef nonnull %31, i32 noundef 2) #13
  br label %32

32:                                               ; preds = %29, %24
  %33 = load ptr, ptr %22, align 8, !tbaa !57
  %34 = getelementptr inbounds %struct.BMesh, ptr %33, i64 0, i32 24
  %35 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %34, i32 noundef 2) #13
  %36 = load ptr, ptr %22, align 8, !tbaa !57
  %37 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %37, align 4, !tbaa !59
  %38 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %38, align 8, !tbaa !61
  %39 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %39, align 8, !tbaa !62
  %40 = getelementptr inbounds %struct.BMesh, ptr %36, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !63
  store ptr %41, ptr %3, align 8, !tbaa !65
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #13
  %42 = load ptr, ptr %39, align 8, !tbaa !62
  %43 = call ptr %42(ptr noundef nonnull %3) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %64, label %45

45:                                               ; preds = %32
  %46 = sext i32 %35 to i64
  br label %47

47:                                               ; preds = %45, %60
  %48 = phi ptr [ %43, %45 ], [ %62, %60 ]
  %49 = getelementptr inbounds %struct.BMHeader, ptr %48, i64 0, i32 3
  %50 = load i8, ptr %49, align 1, !tbaa !116
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr %48, align 8, !tbaa !66
  %55 = getelementptr inbounds i8, ptr %54, i64 %46
  %56 = call ptr @defvert_verify_index(ptr noundef %55, i32 noundef %11) #13
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.MDeformWeight, ptr %56, i64 0, i32 1
  store float %7, ptr %59, align 4, !tbaa !131
  br label %60

60:                                               ; preds = %58, %53, %47
  %61 = load ptr, ptr %39, align 8, !tbaa !62
  %62 = call ptr %61(ptr noundef nonnull %3) #13
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %47, !llvm.loop !167

64:                                               ; preds = %60, %32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  br label %192

65:                                               ; preds = %18
  %66 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 17
  %67 = load ptr, ptr %66, align 8, !tbaa !107
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %93

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4
  %71 = load i16, ptr %70, align 8, !tbaa !100
  switch i16 %71, label %93 [
    i16 17741, label %72
    i16 21580, label %77
  ]

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 21
  %74 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 26
  %75 = load i32, ptr %74, align 8, !tbaa !106
  %76 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %73, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %75) #13
  store ptr %76, ptr %66, align 8, !tbaa !107
  br label %93

77:                                               ; preds = %69
  %78 = load ptr, ptr @MEM_callocN, align 8, !tbaa !86
  %79 = getelementptr inbounds %struct.Lattice, ptr %20, i64 0, i32 2
  %80 = load i16, ptr %79, align 8, !tbaa !81
  %81 = sext i16 %80 to i64
  %82 = shl nsw i64 %81, 4
  %83 = getelementptr inbounds %struct.Lattice, ptr %20, i64 0, i32 3
  %84 = load i16, ptr %83, align 2, !tbaa !82
  %85 = sext i16 %84 to i64
  %86 = mul nsw i64 %82, %85
  %87 = getelementptr inbounds %struct.Lattice, ptr %20, i64 0, i32 4
  %88 = load i16, ptr %87, align 4, !tbaa !83
  %89 = sext i16 %88 to i64
  %90 = mul nsw i64 %86, %89
  %91 = tail call ptr %78(i64 noundef %90, ptr noundef nonnull @.str.1) #13
  %92 = getelementptr inbounds %struct.Lattice, ptr %20, i64 0, i32 24
  store ptr %91, ptr %92, align 8, !tbaa !80
  br label %93

93:                                               ; preds = %77, %72, %69, %65
  %94 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 26
  %95 = load i32, ptr %94, align 8, !tbaa !106
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %192

97:                                               ; preds = %93
  %98 = load ptr, ptr %66, align 8, !tbaa !107
  %99 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 15
  %100 = load ptr, ptr %99, align 8, !tbaa !119
  br label %101

101:                                              ; preds = %97, %114
  %102 = phi ptr [ %116, %114 ], [ %100, %97 ]
  %103 = phi ptr [ %117, %114 ], [ %98, %97 ]
  %104 = phi i32 [ %115, %114 ], [ 0, %97 ]
  %105 = getelementptr inbounds %struct.MVert, ptr %102, i64 0, i32 2
  %106 = load i8, ptr %105, align 2, !tbaa !120
  %107 = and i8 %106, 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %101
  %110 = tail call ptr @defvert_verify_index(ptr noundef %103, i32 noundef %11) #13
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.MDeformWeight, ptr %110, i64 0, i32 1
  store float %7, ptr %113, align 4, !tbaa !131
  br label %114

114:                                              ; preds = %112, %109, %101
  %115 = add nuw nsw i32 %104, 1
  %116 = getelementptr inbounds %struct.MVert, ptr %102, i64 1
  %117 = getelementptr inbounds %struct.MDeformVert, ptr %103, i64 1
  %118 = load i32, ptr %94, align 8, !tbaa !106
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %101, label %192, !llvm.loop !168

120:                                              ; preds = %15
  %121 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %122 = load ptr, ptr %121, align 8, !tbaa !46
  %123 = getelementptr inbounds %struct.Lattice, ptr %122, i64 0, i32 26
  %124 = load ptr, ptr %123, align 8, !tbaa !51
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %120
  %127 = load ptr, ptr %124, align 8, !tbaa !78
  br label %128

128:                                              ; preds = %126, %120
  %129 = phi ptr [ %127, %126 ], [ %122, %120 ]
  %130 = getelementptr inbounds %struct.Lattice, ptr %129, i64 0, i32 24
  %131 = load ptr, ptr %130, align 8, !tbaa !80
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %157

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.ID, ptr %129, i64 0, i32 4
  %135 = load i16, ptr %134, align 8, !tbaa !100
  switch i16 %135, label %157 [
    i16 17741, label %136
    i16 21580, label %142
  ]

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.Mesh, ptr %129, i64 0, i32 21
  %138 = getelementptr inbounds %struct.Mesh, ptr %129, i64 0, i32 26
  %139 = load i32, ptr %138, align 8, !tbaa !106
  %140 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %137, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %139) #13
  %141 = getelementptr inbounds %struct.Mesh, ptr %129, i64 0, i32 17
  store ptr %140, ptr %141, align 8, !tbaa !107
  br label %157

142:                                              ; preds = %133
  %143 = load ptr, ptr @MEM_callocN, align 8, !tbaa !86
  %144 = getelementptr inbounds %struct.Lattice, ptr %129, i64 0, i32 2
  %145 = load i16, ptr %144, align 8, !tbaa !81
  %146 = sext i16 %145 to i64
  %147 = shl nsw i64 %146, 4
  %148 = getelementptr inbounds %struct.Lattice, ptr %129, i64 0, i32 3
  %149 = load i16, ptr %148, align 2, !tbaa !82
  %150 = sext i16 %149 to i64
  %151 = mul nsw i64 %147, %150
  %152 = getelementptr inbounds %struct.Lattice, ptr %129, i64 0, i32 4
  %153 = load i16, ptr %152, align 4, !tbaa !83
  %154 = sext i16 %153 to i64
  %155 = mul nsw i64 %151, %154
  %156 = tail call ptr %143(i64 noundef %155, ptr noundef nonnull @.str.1) #13
  store ptr %156, ptr %130, align 8, !tbaa !80
  br label %157

157:                                              ; preds = %142, %136, %133, %128
  %158 = getelementptr inbounds %struct.Lattice, ptr %129, i64 0, i32 2
  %159 = load i16, ptr %158, align 8, !tbaa !81
  %160 = sext i16 %159 to i32
  %161 = getelementptr inbounds %struct.Lattice, ptr %129, i64 0, i32 3
  %162 = load i16, ptr %161, align 2, !tbaa !82
  %163 = sext i16 %162 to i32
  %164 = mul nsw i32 %163, %160
  %165 = getelementptr inbounds %struct.Lattice, ptr %129, i64 0, i32 4
  %166 = load i16, ptr %165, align 4, !tbaa !83
  %167 = sext i16 %166 to i32
  %168 = mul nsw i32 %164, %167
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %192

170:                                              ; preds = %157
  %171 = getelementptr inbounds %struct.Lattice, ptr %129, i64 0, i32 21
  %172 = load ptr, ptr %171, align 8, !tbaa !124
  %173 = load ptr, ptr %130, align 8, !tbaa !80
  br label %174

174:                                              ; preds = %170, %187
  %175 = phi i32 [ %188, %187 ], [ 0, %170 ]
  %176 = phi ptr [ %189, %187 ], [ %172, %170 ]
  %177 = phi ptr [ %190, %187 ], [ %173, %170 ]
  %178 = getelementptr inbounds %struct.BPoint, ptr %176, i64 0, i32 3
  %179 = load i16, ptr %178, align 4, !tbaa !125
  %180 = and i16 %179, 1
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %174
  %183 = tail call ptr @defvert_verify_index(ptr noundef %177, i32 noundef %11) #13
  %184 = icmp eq ptr %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.MDeformWeight, ptr %183, i64 0, i32 1
  store float %7, ptr %186, align 4, !tbaa !131
  br label %187

187:                                              ; preds = %185, %182, %174
  %188 = add nuw nsw i32 %175, 1
  %189 = getelementptr inbounds %struct.BPoint, ptr %176, i64 1
  %190 = getelementptr inbounds %struct.MDeformVert, ptr %177, i64 1
  %191 = icmp eq i32 %188, %168
  br i1 %191, label %192, label %174, !llvm.loop !169

192:                                              ; preds = %187, %114, %157, %93, %2, %15, %64
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #13
  %193 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %194 = load ptr, ptr %193, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %194) #13
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_group_assign_new(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_assign_new_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !153
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @vertex_group_vert_select_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  br i1 %3, label %26, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !154
  %12 = icmp eq ptr %11, null
  %13 = icmp ne ptr %8, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !155
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = tail call zeroext i8 @BKE_object_is_in_editmode_vgroup(ptr noundef nonnull %2) #13
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = tail call zeroext i8 @BKE_object_is_in_wpaint_select_vert(ptr noundef nonnull %2) #13
  %24 = icmp ne i8 %23, 0
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %19, %22, %7, %9, %15
  %27 = phi i32 [ 0, %15 ], [ 0, %9 ], [ 0, %7 ], [ 1, %19 ], [ %25, %22 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_assign_new_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !50
  switch i16 %7, label %14 [
    i16 1, label %8
    i16 22, label %8
  ]

8:                                                ; preds = %5, %5
  %9 = tail call ptr @BKE_defgroup_new(ptr noundef nonnull %3, ptr noundef nonnull @.str) #13
  %10 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 25
  %11 = tail call i32 @BLI_countlist(ptr noundef nonnull %10) #13
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 97
  store i16 %12, ptr %13, align 2, !tbaa !49
  br label %14

14:                                               ; preds = %2, %5, %8
  %15 = tail call i32 @vertex_group_assign_exec(ptr noundef %0, ptr poison)
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_group_remove_from(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_unlocked_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_remove_from_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #13
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #13
  %10 = load ptr, ptr %7, align 8, !tbaa !156
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #13
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268435456) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_remove_from_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !157
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %4, ptr noundef nonnull @.str.21) #13
  %6 = load ptr, ptr %3, align 8, !tbaa !157
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.24) #13
  %8 = trunc i32 %7 to i8
  %9 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %10 = and i32 %5, 255
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 25
  br i1 %11, label %25, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %12, align 8, !tbaa !86
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %16

16:                                               ; preds = %13, %16
  %17 = phi ptr [ %21, %16 ], [ %14, %13 ]
  %18 = phi i8 [ %20, %16 ], [ 0, %13 ]
  %19 = tail call fastcc zeroext i8 @vgroup_active_remove_verts(ptr noundef %9, i8 noundef zeroext 0, ptr noundef nonnull %17), !range !53
  %20 = or i8 %19, %18
  %21 = load ptr, ptr %17, align 8, !tbaa !86
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %16, !llvm.loop !170

23:                                               ; preds = %16
  %24 = icmp eq i8 %20, 0
  br i1 %24, label %38, label %35

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 97
  %27 = load i16, ptr %26, align 2, !tbaa !49
  %28 = zext i16 %27 to i32
  %29 = add nsw i32 %28, -1
  %30 = tail call ptr @BLI_findlink(ptr noundef nonnull %12, i32 noundef %29) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %25
  %33 = tail call fastcc zeroext i8 @vgroup_active_remove_verts(ptr noundef %9, i8 noundef zeroext %8, ptr noundef nonnull %30), !range !53
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32, %23
  tail call void @DAG_id_tag_update(ptr noundef %9, i16 noundef signext 2) #13
  %36 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %37) #13
  br label %38

38:                                               ; preds = %13, %32, %25, %23, %35
  %39 = phi i32 [ 4, %35 ], [ 2, %23 ], [ 2, %25 ], [ 2, %32 ], [ 2, %13 ]
  ret i32 %39
}

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_group_select(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_select_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_select_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !154
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @vgroup_select_verts(ptr noundef nonnull %3, i32 noundef 1)
  %10 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %11) #13
  br label %12

12:                                               ; preds = %2, %5, %9
  %13 = phi i32 [ 4, %9 ], [ 2, %5 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_group_deselect(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.32, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_deselect_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_deselect_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #13
  tail call fastcc void @vgroup_select_verts(ptr noundef %3, i32 noundef 0)
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %5) #13
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_group_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_copy_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = tail call ptr @ED_object_context(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr null, ptr %4, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !tbaa !87
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 25
  %8 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 97
  %9 = load i16, ptr %8, align 2, !tbaa !49
  %10 = zext i16 %9 to i32
  %11 = add nsw i32 %10, -1
  %12 = tail call ptr @BLI_findlink(ptr noundef nonnull %7, i32 noundef %11) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %59, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.bDeformGroup, ptr %12, i64 0, i32 2
  %16 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) @.str.188) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.189, ptr noundef nonnull %15) #13
  br label %22

20:                                               ; preds = %14
  %21 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %15, i64 noundef 64) #13
  br label %22

22:                                               ; preds = %20, %18
  %23 = call ptr @defgroup_duplicate(ptr noundef nonnull %12) #13
  %24 = getelementptr inbounds %struct.bDeformGroup, ptr %23, i64 0, i32 2
  %25 = call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef nonnull %3, i64 noundef 64) #13
  call void @defgroup_unique_name(ptr noundef %23, ptr noundef %6) #13
  call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %23) #13
  %26 = load i16, ptr %8, align 2, !tbaa !49
  %27 = zext i16 %26 to i32
  %28 = add nsw i32 %27, -1
  %29 = call i32 @BLI_countlist(ptr noundef nonnull %7) #13
  %30 = trunc i32 %29 to i16
  store i16 %30, ptr %8, align 2, !tbaa !49
  %31 = and i32 %29, 65535
  %32 = add nsw i32 %31, -1
  %33 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %34, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 0), !range !53
  %36 = load ptr, ptr %4, align 8, !tbaa !86
  %37 = icmp eq ptr %36, null
  br i1 %37, label %59, label %38

38:                                               ; preds = %22
  %39 = load i32, ptr %5, align 4, !tbaa !87
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = zext nneg i32 %39 to i64
  br label %43

43:                                               ; preds = %41, %54
  %44 = phi i64 [ 0, %41 ], [ %55, %54 ]
  %45 = getelementptr inbounds ptr, ptr %36, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !86
  %47 = call ptr @defvert_find_index(ptr noundef %46, i32 noundef %28) #13
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.MDeformWeight, ptr %47, i64 0, i32 1
  %51 = load float, ptr %50, align 4, !tbaa !131
  %52 = call ptr @defvert_verify_index(ptr noundef %46, i32 noundef %32) #13
  %53 = getelementptr inbounds %struct.MDeformWeight, ptr %52, i64 0, i32 1
  store float %51, ptr %53, align 4, !tbaa !131
  br label %54

54:                                               ; preds = %49, %43
  %55 = add nuw nsw i64 %44, 1
  %56 = icmp eq i64 %55, %42
  br i1 %56, label %57, label %43, !llvm.loop !171

57:                                               ; preds = %54, %38
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %58(ptr noundef nonnull %36) #13
  br label %59

59:                                               ; preds = %2, %22, %57
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %6) #13
  %60 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274464768, ptr noundef %61) #13
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_group_levels(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.38, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_levels_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.129, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 1, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.191) #13
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @rna_vertex_group_with_single_itemf) #13
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 536870912) #13
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !172
  %11 = load ptr, ptr %7, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.39, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, float noundef -1.000000e+00, float noundef 1.000000e+00) #13
  %13 = load ptr, ptr %7, align 8, !tbaa !156
  %14 = tail call ptr @RNA_def_float(ptr noundef %13, ptr noundef nonnull @.str.42, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, float noundef 0.000000e+00, float noundef 1.000000e+01) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_levels_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !157
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.39) #13
  %11 = load ptr, ptr %8, align 8, !tbaa !157
  %12 = tail call float @RNA_float_get(ptr noundef %11, ptr noundef nonnull @.str.42) #13
  %13 = load ptr, ptr %8, align 8, !tbaa !157
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.129) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %15 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef %7, i32 noundef %14, ptr noundef nonnull %6, ptr noundef nonnull %5)
  %16 = load i32, ptr %6, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr null, ptr %3, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !tbaa !87
  %17 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !34
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %32, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !50
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 46
  %28 = load i8, ptr %27, align 1, !tbaa !136
  %29 = and i8 %28, 32
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %20
  br label %32

32:                                               ; preds = %31, %24, %2
  %33 = phi i1 [ false, %31 ], [ true, %2 ], [ true, %24 ]
  %34 = phi i8 [ 0, %31 ], [ 1, %2 ], [ 1, %24 ]
  %35 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %36 = load i16, ptr %35, align 8, !tbaa !50
  %37 = icmp eq i16 %36, 1
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.Mesh, ptr %40, i64 0, i32 46
  %42 = load i8, ptr %41, align 1, !tbaa !136
  %43 = and i8 %42, 1
  %44 = icmp ne i8 %43, 0
  br label %45

45:                                               ; preds = %38, %32
  %46 = phi i1 [ %44, %38 ], [ false, %32 ]
  %47 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %48, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %34), !range !53
  %50 = load ptr, ptr %3, align 8, !tbaa !86
  %51 = icmp eq ptr %50, null
  br i1 %51, label %96, label %52

52:                                               ; preds = %45
  %53 = load i32, ptr %4, align 4, !tbaa !87
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %91

55:                                               ; preds = %52
  %56 = icmp eq i32 %16, 0
  %57 = sext i32 %16 to i64
  %58 = zext nneg i32 %53 to i64
  br label %59

59:                                               ; preds = %55, %88
  %60 = phi i64 [ 0, %55 ], [ %89, %88 ]
  %61 = getelementptr inbounds ptr, ptr %50, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !86
  %63 = icmp eq ptr %62, null
  %64 = select i1 %63, i1 true, i1 %56
  br i1 %64, label %88, label %65

65:                                               ; preds = %59, %85
  %66 = phi i64 [ %67, %85 ], [ %57, %59 ]
  %67 = add nsw i64 %66, -1
  %68 = getelementptr inbounds i8, ptr %15, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !65
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %65
  %72 = trunc i64 %67 to i32
  %73 = call ptr @defvert_find_index(ptr noundef nonnull %62, i32 noundef %72) #13
  %74 = icmp eq ptr %73, null
  br i1 %74, label %85, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.MDeformWeight, ptr %73, i64 0, i32 1
  %77 = load float, ptr %76, align 4, !tbaa !131
  %78 = fadd float %10, %77
  %79 = fmul float %12, %78
  store float %79, ptr %76, align 4, !tbaa !131
  %80 = fcmp olt float %79, 0.000000e+00
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = fcmp ogt float %79, 1.000000e+00
  br i1 %82, label %83, label %85

83:                                               ; preds = %81, %75
  %84 = phi float [ 0.000000e+00, %75 ], [ 1.000000e+00, %81 ]
  store float %84, ptr %76, align 4, !tbaa !131
  br label %85

85:                                               ; preds = %83, %81, %71, %65
  %86 = and i64 %67, 4294967295
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %65, !llvm.loop !173

88:                                               ; preds = %85, %59
  %89 = add nuw nsw i64 %60, 1
  %90 = icmp eq i64 %89, %58
  br i1 %90, label %91, label %59, !llvm.loop !174

91:                                               ; preds = %88, %52
  %92 = and i1 %33, %46
  br i1 %92, label %93, label %94

93:                                               ; preds = %91
  call void @ED_vgroup_parray_mirror_sync(ptr noundef %7, ptr noundef nonnull %50, i32 noundef %53, ptr noundef %15, i32 noundef %16)
  br label %94

94:                                               ; preds = %93, %91
  %95 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %95(ptr noundef nonnull %50) #13
  br label %96

96:                                               ; preds = %45, %94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  %97 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %97(ptr noundef %15) #13
  call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %7) #13
  %98 = load ptr, ptr %47, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %98) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 4
}

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_group_normalize(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.47, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_normalize_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_normalize_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr null, ptr %3, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !tbaa !87
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 97
  %7 = load i16, ptr %6, align 2, !tbaa !49
  %8 = zext i16 %7 to i32
  %9 = add nsw i32 %8, -1
  %10 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %25, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !50
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.Mesh, ptr %19, i64 0, i32 46
  %21 = load i8, ptr %20, align 1, !tbaa !136
  %22 = and i8 %21, 32
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %13
  br label %25

25:                                               ; preds = %24, %17, %2
  %26 = phi i8 [ 0, %24 ], [ 1, %2 ], [ 1, %17 ]
  %27 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 25
  %28 = tail call ptr @BLI_findlink(ptr noundef nonnull %27, i32 noundef %9) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %88, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %32, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %26), !range !53
  %34 = load ptr, ptr %3, align 8, !tbaa !86
  %35 = icmp eq ptr %34, null
  br i1 %35, label %88, label %36

36:                                               ; preds = %30
  %37 = load i32, ptr %4, align 4, !tbaa !87
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = zext nneg i32 %37 to i64
  br label %41

41:                                               ; preds = %39, %55
  %42 = phi i64 [ 0, %39 ], [ %57, %55 ]
  %43 = phi float [ 0.000000e+00, %39 ], [ %56, %55 ]
  %44 = getelementptr inbounds ptr, ptr %34, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !86
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %41
  %48 = tail call ptr @defvert_find_index(ptr noundef nonnull %45, i32 noundef %9) #13
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.MDeformWeight, ptr %48, i64 0, i32 1
  %52 = load float, ptr %51, align 4, !tbaa !131
  %53 = fcmp ogt float %52, %43
  %54 = select i1 %53, float %52, float %43
  br label %55

55:                                               ; preds = %50, %47, %41
  %56 = phi float [ %54, %50 ], [ %43, %47 ], [ %43, %41 ]
  %57 = add nuw nsw i64 %42, 1
  %58 = icmp eq i64 %57, %40
  br i1 %58, label %59, label %41, !llvm.loop !175

59:                                               ; preds = %55, %36
  %60 = phi float [ 0.000000e+00, %36 ], [ %56, %55 ]
  %61 = fcmp ogt float %60, 0.000000e+00
  %62 = icmp sgt i32 %37, 0
  %63 = and i1 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %59
  %65 = zext i32 %37 to i64
  br label %66

66:                                               ; preds = %64, %83
  %67 = phi i64 [ 0, %64 ], [ %84, %83 ]
  %68 = getelementptr inbounds ptr, ptr %34, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !86
  %70 = icmp eq ptr %69, null
  br i1 %70, label %83, label %71

71:                                               ; preds = %66
  %72 = tail call ptr @defvert_find_index(ptr noundef nonnull %69, i32 noundef %9) #13
  %73 = icmp eq ptr %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.MDeformWeight, ptr %72, i64 0, i32 1
  %76 = load float, ptr %75, align 4, !tbaa !131
  %77 = fdiv float %76, %60
  store float %77, ptr %75, align 4, !tbaa !131
  %78 = fcmp olt float %77, 0.000000e+00
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = fcmp ogt float %77, 1.000000e+00
  br i1 %80, label %81, label %83

81:                                               ; preds = %79, %74
  %82 = phi float [ 0.000000e+00, %74 ], [ 1.000000e+00, %79 ]
  store float %82, ptr %75, align 4, !tbaa !131
  br label %83

83:                                               ; preds = %81, %79, %71, %66
  %84 = add nuw nsw i64 %67, 1
  %85 = icmp eq i64 %84, %65
  br i1 %85, label %86, label %66, !llvm.loop !176

86:                                               ; preds = %83, %59
  %87 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  tail call void %87(ptr noundef nonnull %34) #13
  br label %88

88:                                               ; preds = %25, %30, %86
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  tail call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %5) #13
  %89 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %90 = load ptr, ptr %89, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %90) #13
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_group_normalize_all(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.49, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.50, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_normalize_all_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.129, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.191) #13
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @rna_vertex_group_select_itemf) #13
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 536870912) #13
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !172
  %11 = load ptr, ptr %7, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.51, i32 noundef 1, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_normalize_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !157
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.51) #13
  %11 = trunc i32 %10 to i8
  %12 = load ptr, ptr %8, align 8, !tbaa !157
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.129) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %14 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef %7, i32 noundef %13, ptr noundef nonnull %6, ptr noundef nonnull %5)
  %15 = load i32, ptr %6, align 4, !tbaa !87
  %16 = load i32, ptr %5, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr null, ptr %3, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !tbaa !87
  %17 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 97
  %18 = load i16, ptr %17, align 2, !tbaa !49
  %19 = zext i16 %18 to i32
  %20 = add nsw i32 %19, -1
  %21 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 27
  %22 = load i32, ptr %21, align 8, !tbaa !34
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %36, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %26 = load i16, ptr %25, align 8, !tbaa !50
  %27 = icmp eq i16 %26, 1
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.Mesh, ptr %30, i64 0, i32 46
  %32 = load i8, ptr %31, align 1, !tbaa !136
  %33 = and i8 %32, 32
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %24
  br label %36

36:                                               ; preds = %35, %28, %2
  %37 = phi i8 [ 0, %35 ], [ 1, %2 ], [ 1, %28 ]
  %38 = icmp eq i8 %11, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 25
  %41 = call ptr @BLI_findlink(ptr noundef nonnull %40, i32 noundef %20) #13
  %42 = icmp eq ptr %41, null
  %43 = icmp eq i32 %16, 0
  %44 = or i1 %43, %42
  br i1 %44, label %88, label %47

45:                                               ; preds = %36
  %46 = icmp eq i32 %16, 0
  br i1 %46, label %88, label %47

47:                                               ; preds = %45, %39
  %48 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %49, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %37), !range !53
  %51 = load ptr, ptr %3, align 8, !tbaa !86
  %52 = icmp eq ptr %51, null
  br i1 %52, label %88, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 25
  %55 = call i32 @BLI_countlist(ptr noundef nonnull %54) #13
  %56 = call ptr @BKE_objdef_lock_flags_get(ptr noundef %7, i32 noundef %55) #13
  %57 = icmp ne i8 %11, 1
  %58 = icmp eq ptr %56, null
  %59 = select i1 %57, i1 true, i1 %58
  %60 = icmp slt i32 %55, %19
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = sext i32 %20 to i64
  %64 = getelementptr inbounds i8, ptr %56, i64 %63
  store i8 1, ptr %64, align 1, !tbaa !65
  br label %65

65:                                               ; preds = %62, %53
  %66 = load i32, ptr %4, align 4, !tbaa !87
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = zext nneg i32 %66 to i64
  br label %70

70:                                               ; preds = %68, %80
  %71 = phi i64 [ 0, %68 ], [ %81, %80 ]
  %72 = getelementptr inbounds ptr, ptr %51, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !86
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  br i1 %58, label %77, label %76

76:                                               ; preds = %75
  call void @defvert_normalize_lock_map(ptr noundef nonnull %73, ptr noundef %14, i32 noundef %15, ptr noundef nonnull %56, i32 noundef %55) #13
  br label %80

77:                                               ; preds = %75
  br i1 %38, label %79, label %78

78:                                               ; preds = %77
  call void @defvert_normalize_lock_single(ptr noundef nonnull %73, ptr noundef %14, i32 noundef %15, i32 noundef %20) #13
  br label %80

79:                                               ; preds = %77
  call void @defvert_normalize_subset(ptr noundef nonnull %73, ptr noundef %14, i32 noundef %15) #13
  br label %80

80:                                               ; preds = %79, %78, %76, %70
  %81 = add nuw nsw i64 %71, 1
  %82 = icmp eq i64 %81, %69
  br i1 %82, label %83, label %70, !llvm.loop !177

83:                                               ; preds = %80, %65
  br i1 %58, label %86, label %84

84:                                               ; preds = %83
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %85(ptr noundef nonnull %56) #13
  br label %86

86:                                               ; preds = %84, %83
  %87 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %87(ptr noundef nonnull %51) #13
  br label %88

88:                                               ; preds = %39, %45, %47, %86
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  %89 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %89(ptr noundef %14) #13
  call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %7) #13
  %90 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %91 = load ptr, ptr %90, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %91) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_group_fix(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.55, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.56, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_mesh_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_fix_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.57, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, float noundef -1.000000e+01, float noundef 1.000000e+01) #13
  %10 = load ptr, ptr %7, align 8, !tbaa !156
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.60, float noundef 1.000000e+00, float noundef -2.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, float noundef -2.000000e+00, float noundef 2.000000e+00) #13
  %12 = load ptr, ptr %7, align 8, !tbaa !156
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.63, float noundef 1.000000e+00, float noundef 0x3FA99999A0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, float noundef 0x3FA99999A0000000, float noundef 1.000000e+00) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @vertex_group_mesh_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  br i1 %3, label %28, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !154
  %12 = icmp eq ptr %11, null
  %13 = icmp ne ptr %8, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !155
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !50
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 25
  %25 = load ptr, ptr %24, align 8, !tbaa !104
  %26 = icmp ne ptr %25, null
  %27 = zext i1 %26 to i32
  br label %28

28:                                               ; preds = %23, %19, %15, %9, %7
  %29 = phi i32 [ 0, %19 ], [ 0, %15 ], [ 0, %9 ], [ 0, %7 ], [ %27, %23 ]
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_fix_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x float], align 16
  %6 = alloca %struct.MVert, align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca ptr, align 8
  %9 = alloca %struct.MVert, align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  %13 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !157
  %16 = tail call float @RNA_float_get(ptr noundef %15, ptr noundef nonnull @.str.57) #13
  %17 = load ptr, ptr %14, align 8, !tbaa !157
  %18 = tail call float @RNA_float_get(ptr noundef %17, ptr noundef nonnull @.str.60) #13
  %19 = load ptr, ptr %14, align 8, !tbaa !157
  %20 = tail call float @RNA_float_get(ptr noundef %19, ptr noundef nonnull @.str.63) #13
  %21 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 26
  %22 = load ptr, ptr %21, align 8, !tbaa !86
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %2, %34
  %25 = phi ptr [ %35, %34 ], [ %22, %2 ]
  %26 = getelementptr inbounds %struct.ModifierData, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !93
  %28 = icmp eq i32 %27, 5
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ModifierData, ptr %25, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !178
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %24
  %35 = load ptr, ptr %25, align 8, !tbaa !86
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %24, !llvm.loop !179

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !180
  tail call void @BKE_report(ptr noundef %39, i32 noundef 128, ptr noundef nonnull @.str.192) #13
  br label %553

40:                                               ; preds = %34, %2
  %41 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = getelementptr inbounds %struct.Mesh, ptr %42, i64 0, i32 46
  %44 = load i8, ptr %43, align 1, !tbaa !136
  %45 = and i8 %44, 32
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %551, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.Mesh, ptr %42, i64 0, i32 15
  %49 = load ptr, ptr %48, align 8, !tbaa !119
  %50 = getelementptr inbounds %struct.Mesh, ptr %42, i64 0, i32 26
  %51 = load i32, ptr %50, align 8, !tbaa !106
  %52 = icmp sgt i32 %51, 0
  %53 = icmp ne ptr %49, null
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %551

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.Mesh, ptr %42, i64 0, i32 7
  %57 = getelementptr inbounds %struct.Mesh, ptr %42, i64 0, i32 30
  %58 = getelementptr inbounds %struct.Mesh, ptr %42, i64 0, i32 9
  %59 = load i64, ptr @CD_MASK_BAREMESH, align 8
  %60 = getelementptr inbounds float, ptr %10, i64 1
  %61 = getelementptr inbounds float, ptr %10, i64 2
  %62 = getelementptr inbounds float, ptr %9, i64 1
  %63 = getelementptr inbounds float, ptr %11, i64 1
  %64 = getelementptr inbounds float, ptr %9, i64 2
  %65 = getelementptr inbounds float, ptr %11, i64 2
  %66 = getelementptr inbounds %struct.Mesh, ptr %42, i64 0, i32 17
  %67 = getelementptr inbounds float, ptr %6, i64 1
  %68 = getelementptr inbounds float, ptr %7, i64 1
  %69 = getelementptr inbounds float, ptr %6, i64 2
  %70 = getelementptr inbounds float, ptr %7, i64 2
  %71 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 119
  %72 = fadd float %20, 1.000000e+00
  %73 = getelementptr inbounds float, ptr %4, i64 1
  %74 = getelementptr inbounds float, ptr %3, i64 1
  %75 = getelementptr inbounds float, ptr %4, i64 2
  %76 = getelementptr inbounds float, ptr %3, i64 2
  %77 = fadd float %20, 1.000000e+00
  %78 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 119
  br label %79

79:                                               ; preds = %55, %545
  %80 = phi i64 [ 0, %55 ], [ %546, %545 ]
  %81 = phi ptr [ %49, %55 ], [ %547, %545 ]
  %82 = getelementptr inbounds %struct.MVert, ptr %81, i64 0, i32 2
  %83 = load i8, ptr %82, align 2, !tbaa !120
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %545, label %86

86:                                               ; preds = %79
  %87 = load ptr, ptr %56, align 8, !tbaa !181
  %88 = load i32, ptr %57, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  store ptr null, ptr %8, align 8, !tbaa !86
  call void @_bli_array_grow_func(ptr noundef nonnull %8, ptr noundef null, i32 noundef 4, i32 noundef 0, i32 noundef 8, ptr noundef nonnull @.str.194) #13
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %193, label %90

90:                                               ; preds = %86, %189
  %91 = phi i32 [ %94, %189 ], [ %88, %86 ]
  %92 = phi ptr [ %191, %189 ], [ %87, %86 ]
  %93 = phi i32 [ %190, %189 ], [ 0, %86 ]
  %94 = add nsw i32 %91, -1
  %95 = getelementptr inbounds %struct.MPoly, ptr %92, i64 0, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !183
  %97 = load ptr, ptr %58, align 8, !tbaa !185
  %98 = load i32, ptr %92, align 4, !tbaa !186
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.MLoop, ptr %97, i64 %99
  %101 = icmp eq i32 %96, 0
  br i1 %101, label %189, label %102

102:                                              ; preds = %90, %186
  %103 = phi ptr [ %187, %186 ], [ %100, %90 ]
  %104 = phi i32 [ %105, %186 ], [ %96, %90 ]
  %105 = add nsw i32 %104, -1
  %106 = load i32, ptr %103, align 4, !tbaa !187
  %107 = zext i32 %106 to i64
  %108 = icmp eq i64 %80, %107
  br i1 %108, label %109, label %186

109:                                              ; preds = %102
  %110 = icmp eq i32 %104, %96
  %111 = sext i32 %105 to i64
  %112 = getelementptr inbounds %struct.MLoop, ptr %103, i64 %111
  %113 = icmp eq i32 %105, 0
  %114 = getelementptr inbounds %struct.MLoop, ptr %103, i64 1
  %115 = select i1 %113, ptr %100, ptr %114
  %116 = select i1 %110, i64 1, i64 -1
  %117 = getelementptr inbounds %struct.MLoop, ptr %103, i64 %116
  %118 = select i1 %110, ptr %112, ptr %115
  %119 = load i32, ptr %118, align 4, !tbaa !187
  %120 = load i32, ptr %117, align 4, !tbaa !187
  %121 = icmp eq i32 %93, 0
  %122 = and i32 %119, %120
  %123 = icmp eq i32 %122, -1
  %124 = select i1 %121, i1 true, i1 %123
  br i1 %124, label %145, label %125

125:                                              ; preds = %109
  %126 = load ptr, ptr %8, align 8, !tbaa !86
  %127 = sext i32 %93 to i64
  br label %128

128:                                              ; preds = %125, %128
  %129 = phi i64 [ %127, %125 ], [ %132, %128 ]
  %130 = phi i32 [ %119, %125 ], [ %139, %128 ]
  %131 = phi i32 [ %120, %125 ], [ %138, %128 ]
  %132 = add nsw i64 %129, -1
  %133 = getelementptr inbounds i32, ptr %126, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !87
  %135 = icmp eq i32 %134, %131
  %136 = icmp eq i32 %134, %130
  %137 = select i1 %136, i32 -1, i32 %130
  %138 = select i1 %135, i32 -1, i32 %131
  %139 = select i1 %135, i32 %130, i32 %137
  %140 = and i64 %132, 4294967295
  %141 = icmp eq i64 %140, 0
  %142 = and i32 %139, %138
  %143 = icmp eq i32 %142, -1
  %144 = select i1 %141, i1 true, i1 %143
  br i1 %144, label %145, label %128, !llvm.loop !189

145:                                              ; preds = %128, %109
  %146 = phi i32 [ %120, %109 ], [ %138, %128 ]
  %147 = phi i32 [ %119, %109 ], [ %139, %128 ]
  %148 = icmp eq i32 %146, -1
  br i1 %148, label %166, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr %8, align 8
  %151 = icmp eq ptr %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %149
  %153 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !86
  %154 = call i64 %153(ptr noundef nonnull %150) #13
  %155 = lshr i64 %154, 2
  br label %156

156:                                              ; preds = %152, %149
  %157 = phi i64 [ %155, %152 ], [ 0, %149 ]
  %158 = add nsw i32 %93, 1
  %159 = sext i32 %158 to i64
  %160 = icmp ult i64 %157, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  call void @_bli_array_grow_func(ptr noundef nonnull %8, ptr noundef null, i32 noundef 4, i32 noundef %93, i32 noundef 1, ptr noundef nonnull @.str.194) #13
  br label %162

162:                                              ; preds = %161, %156
  %163 = load ptr, ptr %8, align 8, !tbaa !86
  %164 = sext i32 %93 to i64
  %165 = getelementptr inbounds i32, ptr %163, i64 %164
  store i32 %146, ptr %165, align 4, !tbaa !87
  br label %166

166:                                              ; preds = %162, %145
  %167 = phi i32 [ %158, %162 ], [ %93, %145 ]
  %168 = icmp eq i32 %147, -1
  br i1 %168, label %189, label %169

169:                                              ; preds = %166
  %170 = load ptr, ptr %8, align 8
  %171 = icmp eq ptr %170, null
  br i1 %171, label %176, label %172

172:                                              ; preds = %169
  %173 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !86
  %174 = call i64 %173(ptr noundef nonnull %170) #13
  %175 = lshr i64 %174, 2
  br label %176

176:                                              ; preds = %172, %169
  %177 = phi i64 [ %175, %172 ], [ 0, %169 ]
  %178 = add nsw i32 %167, 1
  %179 = sext i32 %178 to i64
  %180 = icmp ult i64 %177, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  call void @_bli_array_grow_func(ptr noundef nonnull %8, ptr noundef null, i32 noundef 4, i32 noundef %167, i32 noundef 1, ptr noundef nonnull @.str.194) #13
  br label %182

182:                                              ; preds = %181, %176
  %183 = load ptr, ptr %8, align 8, !tbaa !86
  %184 = sext i32 %167 to i64
  %185 = getelementptr inbounds i32, ptr %183, i64 %184
  store i32 %147, ptr %185, align 4, !tbaa !87
  br label %189

186:                                              ; preds = %102
  %187 = getelementptr inbounds %struct.MLoop, ptr %103, i64 1
  %188 = icmp eq i32 %105, 0
  br i1 %188, label %189, label %102, !llvm.loop !190

189:                                              ; preds = %186, %90, %182, %166
  %190 = phi i32 [ %178, %182 ], [ %167, %166 ], [ %93, %90 ], [ %93, %186 ]
  %191 = getelementptr inbounds %struct.MPoly, ptr %92, i64 1
  %192 = icmp eq i32 %94, 0
  br i1 %192, label %193, label %90, !llvm.loop !191

193:                                              ; preds = %189, %86
  %194 = phi i32 [ 0, %86 ], [ %190, %189 ]
  %195 = load ptr, ptr %8, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  %196 = icmp eq ptr %195, null
  br i1 %196, label %545, label %197

197:                                              ; preds = %193
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #13
  %198 = load ptr, ptr @MEM_callocN, align 8, !tbaa !86
  %199 = sext i32 %194 to i64
  %200 = mul nsw i64 %199, 20
  %201 = call ptr %198(i64 noundef %200, ptr noundef nonnull @.str.193) #13
  %202 = call ptr @mesh_get_derived_deform(ptr noundef %13, ptr noundef %12, i64 noundef %59) #13
  %203 = icmp eq i32 %194, 0
  br i1 %203, label %216, label %204

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.DerivedMesh, ptr %202, i64 0, i32 28
  %206 = sext i32 %194 to i64
  br label %207

207:                                              ; preds = %204, %207
  %208 = phi i64 [ %206, %204 ], [ %209, %207 ]
  %209 = add nsw i64 %208, -1
  %210 = load ptr, ptr %205, align 8, !tbaa !192
  %211 = getelementptr inbounds i32, ptr %195, i64 %209
  %212 = load i32, ptr %211, align 4, !tbaa !87
  call void %210(ptr noundef %202, i32 noundef %212, ptr noundef nonnull %9) #13
  %213 = getelementptr inbounds %struct.MVert, ptr %201, i64 %209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %213, ptr noundef nonnull align 4 dereferenceable(20) %9, i64 20, i1 false), !tbaa.struct !194
  %214 = and i64 %209, 4294967295
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %207, !llvm.loop !195

216:                                              ; preds = %207, %197
  %217 = icmp sgt i32 %194, 2
  br i1 %217, label %218, label %542

218:                                              ; preds = %216
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #13
  store float 0.000000e+00, ptr %10, align 4, !tbaa !196
  store float 0.000000e+00, ptr %60, align 4, !tbaa !196
  store float 0.000000e+00, ptr %61, align 4, !tbaa !196
  %219 = zext nneg i32 %194 to i64
  br label %220

220:                                              ; preds = %218, %220
  %221 = phi i64 [ 0, %218 ], [ %234, %220 ]
  %222 = phi float [ 0.000000e+00, %218 ], [ %227, %220 ]
  %223 = phi float [ 0.000000e+00, %218 ], [ %230, %220 ]
  %224 = phi float [ 0.000000e+00, %218 ], [ %233, %220 ]
  %225 = getelementptr inbounds %struct.MVert, ptr %201, i64 %221
  %226 = load float, ptr %225, align 4, !tbaa !196
  %227 = fadd float %226, %222
  store float %227, ptr %10, align 4, !tbaa !196
  %228 = getelementptr inbounds float, ptr %225, i64 1
  %229 = load float, ptr %228, align 4, !tbaa !196
  %230 = fadd float %229, %223
  store float %230, ptr %60, align 4, !tbaa !196
  %231 = getelementptr inbounds float, ptr %225, i64 2
  %232 = load float, ptr %231, align 4, !tbaa !196
  %233 = fadd float %232, %224
  store float %233, ptr %61, align 4, !tbaa !196
  %234 = add nuw nsw i64 %221, 1
  %235 = icmp eq i64 %234, %219
  br i1 %235, label %236, label %220, !llvm.loop !197

236:                                              ; preds = %220
  %237 = sitofp i32 %194 to float
  %238 = fdiv float 1.000000e+00, %237
  %239 = load float, ptr %10, align 4, !tbaa !196
  %240 = fmul float %238, %239
  store float %240, ptr %10, align 4, !tbaa !196
  %241 = load float, ptr %60, align 4, !tbaa !196
  %242 = fmul float %238, %241
  store float %242, ptr %60, align 4, !tbaa !196
  %243 = load float, ptr %61, align 4, !tbaa !196
  %244 = fmul float %238, %243
  store float %244, ptr %61, align 4, !tbaa !196
  %245 = getelementptr inbounds %struct.DerivedMesh, ptr %202, i64 0, i32 28
  %246 = load ptr, ptr %245, align 8, !tbaa !192
  %247 = trunc i64 %80 to i32
  call void %246(ptr noundef %202, i32 noundef %247, ptr noundef nonnull %9) #13
  %248 = load float, ptr %9, align 4, !tbaa !196
  %249 = load float, ptr %10, align 4, !tbaa !196
  %250 = fsub float %248, %249
  store float %250, ptr %11, align 4, !tbaa !196
  %251 = load float, ptr %62, align 4, !tbaa !196
  %252 = load float, ptr %60, align 4, !tbaa !196
  %253 = fsub float %251, %252
  store float %253, ptr %63, align 4, !tbaa !196
  %254 = load float, ptr %64, align 4, !tbaa !196
  %255 = load float, ptr %61, align 4, !tbaa !196
  %256 = fsub float %254, %255
  store float %256, ptr %65, align 4, !tbaa !196
  %257 = fmul float %253, %253
  %258 = call float @llvm.fmuladd.f32(float %250, float %250, float %257)
  %259 = call float @llvm.fmuladd.f32(float %256, float %256, float %258)
  %260 = fcmp ogt float %259, 0x38AA95A5C0000000
  br i1 %260, label %261, label %270

261:                                              ; preds = %236
  %262 = call float @sqrtf(float noundef %259) #13
  %263 = fdiv float 1.000000e+00, %262
  %264 = load float, ptr %11, align 4, !tbaa !196
  %265 = fmul float %264, %263
  store float %265, ptr %11, align 4, !tbaa !196
  %266 = load float, ptr %63, align 4, !tbaa !196
  %267 = fmul float %263, %266
  store float %267, ptr %63, align 4, !tbaa !196
  %268 = load float, ptr %65, align 4, !tbaa !196
  %269 = fmul float %263, %268
  br label %271

270:                                              ; preds = %236
  store float 0.000000e+00, ptr %11, align 4, !tbaa !196
  store float 0.000000e+00, ptr %63, align 4, !tbaa !196
  br label %271

271:                                              ; preds = %270, %261
  %272 = phi float [ 0.000000e+00, %270 ], [ %269, %261 ]
  %273 = phi float [ 0.000000e+00, %270 ], [ %262, %261 ]
  store float %272, ptr %65, align 4, !tbaa !196
  %274 = fcmp une float %273, 0.000000e+00
  br i1 %274, label %275, label %541

275:                                              ; preds = %271
  %276 = load float, ptr %11, align 4, !tbaa !196
  %277 = load float, ptr %10, align 4, !tbaa !196
  %278 = load float, ptr %63, align 4, !tbaa !196
  %279 = load float, ptr %60, align 4, !tbaa !196
  %280 = fmul float %278, %279
  %281 = call float @llvm.fmuladd.f32(float %276, float %277, float %280)
  %282 = load float, ptr %61, align 4, !tbaa !196
  %283 = call float @llvm.fmuladd.f32(float %272, float %282, float %281)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #13
  %284 = load ptr, ptr %66, align 8, !tbaa !107
  %285 = getelementptr inbounds %struct.MDeformVert, ptr %284, i64 %80
  %286 = getelementptr inbounds %struct.MDeformVert, ptr %284, i64 %80, i32 1
  %287 = load i32, ptr %286, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  %288 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %289 = sext i32 %287 to i64
  %290 = shl nsw i64 %289, 4
  %291 = call ptr %288(i64 noundef %290, ptr noundef nonnull @.str.195) #13
  %292 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %293 = shl nsw i64 %289, 2
  %294 = call ptr %292(i64 noundef %293, ptr noundef nonnull @.str.196) #13
  %295 = load ptr, ptr @MEM_callocN, align 8, !tbaa !86
  %296 = call ptr %295(i64 noundef %293, ptr noundef nonnull @.str.197) #13
  %297 = load ptr, ptr @MEM_callocN, align 8, !tbaa !86
  %298 = call ptr %297(i64 noundef %293, ptr noundef nonnull @.str.198) #13
  %299 = icmp sgt i32 %287, 0
  %300 = icmp sgt i32 %287, 0
  %301 = icmp sgt i32 %287, 0
  %302 = add i32 %287, -1
  %303 = trunc i64 %80 to i32
  %304 = zext nneg i32 %287 to i64
  %305 = trunc i64 %80 to i32
  %306 = zext nneg i32 %302 to i64
  %307 = getelementptr inbounds float, ptr %294, i64 %306
  %308 = zext nneg i32 %287 to i64
  br label %309

309:                                              ; preds = %525, %275
  %310 = phi float [ 0.000000e+00, %275 ], [ %453, %525 ]
  %311 = phi i8 [ undef, %275 ], [ %522, %525 ]
  %312 = phi i32 [ -1, %275 ], [ %523, %525 ]
  %313 = phi float [ %16, %275 ], [ %331, %525 ]
  %314 = call ptr @mesh_get_derived_deform(ptr noundef %13, ptr noundef %12, i64 noundef %59) #13
  %315 = getelementptr inbounds %struct.DerivedMesh, ptr %314, i64 0, i32 28
  %316 = load ptr, ptr %315, align 8, !tbaa !192
  call void %316(ptr noundef %314, i32 noundef %303, ptr noundef nonnull %6) #13
  %317 = load float, ptr %6, align 4, !tbaa !196
  store float %317, ptr %7, align 4, !tbaa !196
  %318 = load float, ptr %67, align 4, !tbaa !196
  store float %318, ptr %68, align 4, !tbaa !196
  %319 = load float, ptr %69, align 4, !tbaa !196
  store float %319, ptr %70, align 4, !tbaa !196
  %320 = load float, ptr %11, align 4, !tbaa !196
  %321 = load float, ptr %63, align 4, !tbaa !196
  %322 = fmul float %318, %321
  %323 = call float @llvm.fmuladd.f32(float %320, float %317, float %322)
  %324 = load float, ptr %65, align 4, !tbaa !196
  %325 = call float @llvm.fmuladd.f32(float %324, float %319, float %323)
  %326 = fsub float %325, %283
  %327 = fcmp oeq float %313, %16
  %328 = fneg float %326
  %329 = call float @llvm.fmuladd.f32(float %328, float %18, float %326)
  %330 = select i1 %327, float %329, float -0.000000e+00
  %331 = fadd float %313, %330
  br i1 %299, label %332, label %335

332:                                              ; preds = %309
  %333 = fsub float %326, %331
  %334 = call float @llvm.fabs.f32(float %333)
  br label %338

335:                                              ; preds = %444, %309
  %336 = phi float [ %310, %309 ], [ %445, %444 ]
  %337 = phi ptr [ %314, %309 ], [ %446, %444 ]
  br i1 %300, label %454, label %452

338:                                              ; preds = %332, %444
  %339 = phi i64 [ 0, %332 ], [ %447, %444 ]
  %340 = phi ptr [ %314, %332 ], [ %446, %444 ]
  %341 = phi float [ %310, %332 ], [ %445, %444 ]
  %342 = getelementptr inbounds i32, ptr %298, i64 %339
  %343 = trunc i64 %339 to i32
  store i32 %343, ptr %342, align 4, !tbaa !87
  %344 = load ptr, ptr %285, align 8, !tbaa !71
  %345 = getelementptr inbounds %struct.MDeformWeight, ptr %344, i64 %339, i32 1
  %346 = load float, ptr %345, align 4, !tbaa !131
  %347 = fcmp une float %346, 0.000000e+00
  %348 = getelementptr inbounds [2 x float], ptr %291, i64 %339, i64 1
  br i1 %347, label %349, label %354

349:                                              ; preds = %338
  %350 = getelementptr inbounds float, ptr %294, i64 %339
  %351 = getelementptr inbounds [2 x float], ptr %291, i64 %339
  %352 = getelementptr inbounds i32, ptr %296, i64 %339
  %353 = getelementptr inbounds i32, ptr %296, i64 %339
  br label %356

354:                                              ; preds = %338
  %355 = getelementptr inbounds [2 x float], ptr %291, i64 %339
  store float 0.000000e+00, ptr %355, align 4, !tbaa !196
  br label %439

356:                                              ; preds = %349, %433
  %357 = phi ptr [ %340, %349 ], [ %388, %433 ]
  %358 = phi float [ 0.000000e+00, %349 ], [ %436, %433 ]
  %359 = phi float [ 0.000000e+00, %349 ], [ %435, %433 ]
  %360 = phi float [ %341, %349 ], [ %434, %433 ]
  %361 = phi i32 [ 0, %349 ], [ %437, %433 ]
  %362 = icmp eq ptr %357, null
  br i1 %362, label %374, label %363

363:                                              ; preds = %356
  %364 = load ptr, ptr %71, align 8, !tbaa !198
  %365 = icmp eq ptr %364, %357
  br i1 %365, label %366, label %370

366:                                              ; preds = %363
  %367 = getelementptr inbounds %struct.DerivedMesh, ptr %364, i64 0, i32 10
  store i32 1, ptr %367, align 4, !tbaa !199
  %368 = getelementptr inbounds %struct.DerivedMesh, ptr %364, i64 0, i32 95
  %369 = load ptr, ptr %368, align 8, !tbaa !200
  call void %369(ptr noundef %364) #13
  store ptr null, ptr %71, align 8, !tbaa !198
  br label %374

370:                                              ; preds = %363
  %371 = getelementptr inbounds %struct.DerivedMesh, ptr %357, i64 0, i32 10
  store i32 1, ptr %371, align 4, !tbaa !199
  %372 = getelementptr inbounds %struct.DerivedMesh, ptr %357, i64 0, i32 95
  %373 = load ptr, ptr %372, align 8, !tbaa !200
  call void %373(ptr noundef nonnull %357) #13
  br label %374

374:                                              ; preds = %370, %366, %356
  %375 = load float, ptr %345, align 4, !tbaa !131
  %376 = icmp eq i32 %361, 0
  %377 = fdiv float %375, %72
  %378 = fmul float %72, %375
  %379 = select i1 %376, float %377, float %378
  store float %379, ptr %345, align 4, !tbaa !131
  %380 = fcmp oeq float %379, %375
  br i1 %380, label %381, label %384

381:                                              ; preds = %374
  %382 = getelementptr inbounds [2 x float], ptr %291, i64 %339
  store float 0.000000e+00, ptr %382, align 4, !tbaa !196
  %383 = getelementptr inbounds [2 x float], ptr %291, i64 %339, i64 1
  br label %439

384:                                              ; preds = %374
  %385 = fcmp ogt float %379, 1.000000e+00
  br i1 %385, label %386, label %387

386:                                              ; preds = %384
  store float 1.000000e+00, ptr %345, align 4, !tbaa !131
  br label %387

387:                                              ; preds = %386, %384
  %388 = call ptr @mesh_get_derived_deform(ptr noundef %13, ptr noundef %12, i64 noundef %59) #13
  %389 = getelementptr inbounds %struct.DerivedMesh, ptr %388, i64 0, i32 28
  %390 = load ptr, ptr %389, align 8, !tbaa !192
  call void %390(ptr noundef %388, i32 noundef %305, ptr noundef nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @plane_from_point_normal_v3(ptr noundef nonnull %5, ptr noundef nonnull %10, ptr noundef nonnull %11) #13
  call void @closest_to_plane_v3(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %7) #13
  call void @closest_to_plane_v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %391 = load float, ptr %11, align 4, !tbaa !196
  %392 = load float, ptr %6, align 4, !tbaa !196
  %393 = load float, ptr %63, align 4, !tbaa !196
  %394 = load float, ptr %67, align 4, !tbaa !196
  %395 = fmul float %393, %394
  %396 = call float @llvm.fmuladd.f32(float %391, float %392, float %395)
  %397 = load float, ptr %65, align 4, !tbaa !196
  %398 = load float, ptr %69, align 4, !tbaa !196
  %399 = call float @llvm.fmuladd.f32(float %397, float %398, float %396)
  %400 = fsub float %399, %283
  store float %400, ptr %350, align 4, !tbaa !196
  %401 = fsub float %400, %326
  store float %401, ptr %351, align 4, !tbaa !196
  %402 = load float, ptr %4, align 4, !tbaa !196
  %403 = load float, ptr %3, align 4, !tbaa !196
  %404 = fsub float %402, %403
  %405 = load float, ptr %73, align 4, !tbaa !196
  %406 = load float, ptr %74, align 4, !tbaa !196
  %407 = fsub float %405, %406
  %408 = load float, ptr %75, align 4, !tbaa !196
  %409 = load float, ptr %76, align 4, !tbaa !196
  %410 = fsub float %408, %409
  %411 = fmul float %407, %407
  %412 = call float @llvm.fmuladd.f32(float %404, float %404, float %411)
  %413 = call float @llvm.fmuladd.f32(float %410, float %410, float %412)
  %414 = call float @sqrtf(float noundef %413) #13
  store float %414, ptr %348, align 4, !tbaa !196
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  store float %375, ptr %345, align 4, !tbaa !131
  %415 = load float, ptr %350, align 4, !tbaa !196
  br i1 %376, label %416, label %419

416:                                              ; preds = %387
  %417 = load float, ptr %351, align 4, !tbaa !196
  %418 = load float, ptr %348, align 4, !tbaa !196
  br label %433

419:                                              ; preds = %387
  %420 = fsub float %360, %331
  %421 = call float @llvm.fabs.f32(float %420)
  %422 = fsub float %415, %331
  %423 = call float @llvm.fabs.f32(float %422)
  %424 = fcmp olt float %421, %423
  br i1 %424, label %425, label %426

425:                                              ; preds = %419
  store i32 0, ptr %353, align 4, !tbaa !87
  store float %358, ptr %351, align 4, !tbaa !196
  store float %359, ptr %348, align 4, !tbaa !196
  store float %360, ptr %350, align 4, !tbaa !196
  br label %427

426:                                              ; preds = %419
  store i32 1, ptr %352, align 4, !tbaa !87
  br label %427

427:                                              ; preds = %426, %425
  %428 = load float, ptr %350, align 4, !tbaa !196
  %429 = fsub float %428, %331
  %430 = call float @llvm.fabs.f32(float %429)
  %431 = fcmp ogt float %430, %334
  br i1 %431, label %432, label %433

432:                                              ; preds = %427
  store float 0.000000e+00, ptr %351, align 4, !tbaa !196
  store float 0.000000e+00, ptr %348, align 4, !tbaa !196
  store float %326, ptr %350, align 4, !tbaa !196
  br label %433

433:                                              ; preds = %432, %427, %416
  %434 = phi float [ %360, %432 ], [ %360, %427 ], [ %415, %416 ]
  %435 = phi float [ %359, %432 ], [ %359, %427 ], [ %418, %416 ]
  %436 = phi float [ %358, %432 ], [ %358, %427 ], [ %417, %416 ]
  %437 = add nuw nsw i32 %361, 1
  %438 = icmp eq i32 %361, 0
  br i1 %438, label %356, label %444, !llvm.loop !201

439:                                              ; preds = %354, %381
  %440 = phi ptr [ %383, %381 ], [ %348, %354 ]
  %441 = phi float [ %360, %381 ], [ %341, %354 ]
  %442 = phi ptr [ null, %381 ], [ %340, %354 ]
  store float 0.000000e+00, ptr %440, align 4, !tbaa !196
  %443 = getelementptr inbounds float, ptr %294, i64 %339
  store float %326, ptr %443, align 4, !tbaa !196
  br label %444

444:                                              ; preds = %433, %439
  %445 = phi float [ %441, %439 ], [ %434, %433 ]
  %446 = phi ptr [ %442, %439 ], [ %388, %433 ]
  %447 = add nuw nsw i64 %339, 1
  %448 = icmp eq i64 %447, %304
  br i1 %448, label %335, label %338, !llvm.loop !202

449:                                              ; preds = %459, %454
  %450 = phi float [ %460, %459 ], [ %455, %454 ]
  %451 = icmp eq i32 %457, %287
  br i1 %451, label %452, label %454, !llvm.loop !203

452:                                              ; preds = %449, %335
  %453 = phi float [ %336, %335 ], [ %450, %449 ]
  br i1 %301, label %461, label %476

454:                                              ; preds = %335, %449
  %455 = phi float [ %450, %449 ], [ %336, %335 ]
  %456 = phi i32 [ %457, %449 ], [ 0, %335 ]
  %457 = add nuw nsw i32 %456, 1
  %458 = icmp slt i32 %457, %287
  br i1 %458, label %459, label %449

459:                                              ; preds = %454
  %460 = load float, ptr %307, align 4, !tbaa !196
  br label %449

461:                                              ; preds = %452, %471
  %462 = phi i64 [ %472, %471 ], [ 0, %452 ]
  %463 = getelementptr inbounds [2 x float], ptr %291, i64 %462
  %464 = load float, ptr %463, align 4, !tbaa !196
  %465 = call float @llvm.fabs.f32(float %464)
  %466 = getelementptr inbounds [2 x float], ptr %291, i64 %462, i64 1
  %467 = load float, ptr %466, align 4, !tbaa !196
  %468 = fmul float %467, 2.000000e+00
  %469 = call float @llvm.fabs.f32(float %468)
  %470 = fcmp ogt float %465, %469
  br i1 %470, label %474, label %471

471:                                              ; preds = %461
  %472 = add nuw nsw i64 %462, 1
  %473 = icmp eq i64 %472, %308
  br i1 %473, label %476, label %461, !llvm.loop !204

474:                                              ; preds = %461
  %475 = trunc i64 %462 to i32
  br label %476

476:                                              ; preds = %474, %471, %452
  %477 = phi i32 [ -1, %452 ], [ %475, %474 ], [ -1, %471 ]
  %478 = icmp eq i32 %477, -1
  br i1 %478, label %520, label %479

479:                                              ; preds = %476
  %480 = icmp eq i32 %312, -1
  br i1 %480, label %488, label %481

481:                                              ; preds = %479
  %482 = zext i8 %311 to i32
  %483 = sext i32 %477 to i64
  %484 = getelementptr inbounds i32, ptr %296, i64 %483
  %485 = load i32, ptr %484, align 4, !tbaa !87
  %486 = icmp eq i32 %485, %482
  %487 = zext i1 %486 to i8
  br label %488

488:                                              ; preds = %481, %479
  %489 = phi i8 [ 1, %479 ], [ %487, %481 ]
  %490 = sext i32 %477 to i64
  %491 = getelementptr inbounds i32, ptr %296, i64 %490
  %492 = load i32, ptr %491, align 4, !tbaa !87
  %493 = trunc i32 %492 to i8
  %494 = load ptr, ptr %285, align 8, !tbaa !71
  %495 = getelementptr inbounds i32, ptr %298, i64 %490
  %496 = load i32, ptr %495, align 4, !tbaa !87
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.MDeformWeight, ptr %494, i64 %497, i32 1
  %499 = load float, ptr %498, align 4, !tbaa !131
  %500 = icmp eq i32 %492, 0
  %501 = fdiv float %499, %77
  %502 = fmul float %77, %499
  %503 = select i1 %500, float %501, float %502
  %504 = fcmp ogt float %503, 1.000000e+00
  %505 = select i1 %504, float 1.000000e+00, float %503
  store float %505, ptr %498, align 4, !tbaa !131
  %506 = fcmp oeq float %499, %505
  %507 = select i1 %506, i8 0, i8 %489
  %508 = icmp eq ptr %337, null
  br i1 %508, label %520, label %509

509:                                              ; preds = %488
  %510 = load ptr, ptr %78, align 8, !tbaa !198
  %511 = icmp eq ptr %510, %337
  br i1 %511, label %512, label %516

512:                                              ; preds = %509
  %513 = getelementptr inbounds %struct.DerivedMesh, ptr %510, i64 0, i32 10
  store i32 1, ptr %513, align 4, !tbaa !199
  %514 = getelementptr inbounds %struct.DerivedMesh, ptr %510, i64 0, i32 95
  %515 = load ptr, ptr %514, align 8, !tbaa !200
  call void %515(ptr noundef %510) #13
  store ptr null, ptr %78, align 8, !tbaa !198
  br label %520

516:                                              ; preds = %509
  %517 = getelementptr inbounds %struct.DerivedMesh, ptr %337, i64 0, i32 10
  store i32 1, ptr %517, align 4, !tbaa !199
  %518 = getelementptr inbounds %struct.DerivedMesh, ptr %337, i64 0, i32 95
  %519 = load ptr, ptr %518, align 8, !tbaa !200
  call void %519(ptr noundef nonnull %337) #13
  br label %520

520:                                              ; preds = %516, %512, %488, %476
  %521 = phi i8 [ %507, %488 ], [ 0, %476 ], [ %507, %512 ], [ %507, %516 ]
  %522 = phi i8 [ %493, %488 ], [ %311, %476 ], [ %493, %512 ], [ %493, %516 ]
  %523 = phi i32 [ %477, %488 ], [ %312, %476 ], [ %477, %512 ], [ %477, %516 ]
  %524 = icmp eq i8 %521, 0
  br i1 %524, label %536, label %525

525:                                              ; preds = %520
  %526 = fsub float %326, %331
  %527 = call float @llvm.fabs.f32(float %526)
  %528 = fdiv float %526, %527
  %529 = sext i32 %477 to i64
  %530 = getelementptr inbounds float, ptr %294, i64 %529
  %531 = load float, ptr %530, align 4, !tbaa !196
  %532 = fsub float %531, %331
  %533 = call float @llvm.fabs.f32(float %532)
  %534 = fdiv float %532, %533
  %535 = fcmp oeq float %528, %534
  br i1 %535, label %309, label %536, !llvm.loop !205

536:                                              ; preds = %525, %520
  %537 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %537(ptr noundef %296) #13
  %538 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %538(ptr noundef %291) #13
  %539 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %539(ptr noundef %294) #13
  %540 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %540(ptr noundef %298) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #13
  br label %541

541:                                              ; preds = %536, %271
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  br label %542

542:                                              ; preds = %541, %216
  %543 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %543(ptr noundef nonnull %195) #13
  %544 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %544(ptr noundef %201) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #13
  br label %545

545:                                              ; preds = %542, %193, %79
  %546 = add nuw nsw i64 %80, 1
  %547 = getelementptr inbounds %struct.MVert, ptr %81, i64 1
  %548 = load i32, ptr %50, align 8, !tbaa !106
  %549 = sext i32 %548 to i64
  %550 = icmp slt i64 %546, %549
  br i1 %550, label %79, label %551, !llvm.loop !206

551:                                              ; preds = %545, %47, %40
  call void @DAG_id_tag_update(ptr noundef %12, i16 noundef signext 2) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %12) #13
  %552 = load ptr, ptr %41, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %552) #13
  br label %553

553:                                              ; preds = %551, %37
  %554 = phi i32 [ 2, %37 ], [ 4, %551 ]
  ret i32 %554
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_group_lock(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.66, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.67, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.68, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_lock_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.69, ptr noundef nonnull @vgroup_lock_actions, i32 noundef 0, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_lock_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.69) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 25
  br label %10

10:                                               ; preds = %14, %8
  %11 = phi ptr [ %9, %8 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.bDeformGroup, ptr %12, i64 0, i32 3
  %16 = load i8, ptr %15, align 8, !tbaa !159
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %10, label %19, !llvm.loop !207

19:                                               ; preds = %14, %10, %2
  %20 = phi i32 [ %6, %2 ], [ 1, %10 ], [ 2, %14 ]
  %21 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 25
  %22 = load ptr, ptr %21, align 8, !tbaa !86
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %19, %38
  %25 = phi ptr [ %39, %38 ], [ %22, %19 ]
  switch i32 %20, label %38 [
    i32 1, label %26
    i32 2, label %30
    i32 3, label %34
  ]

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.bDeformGroup, ptr %25, i64 0, i32 3
  %28 = load i8, ptr %27, align 8, !tbaa !159
  %29 = or i8 %28, 1
  store i8 %29, ptr %27, align 8, !tbaa !159
  br label %38

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.bDeformGroup, ptr %25, i64 0, i32 3
  %32 = load i8, ptr %31, align 8, !tbaa !159
  %33 = and i8 %32, -2
  store i8 %33, ptr %31, align 8, !tbaa !159
  br label %38

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.bDeformGroup, ptr %25, i64 0, i32 3
  %36 = load i8, ptr %35, align 8, !tbaa !159
  %37 = xor i8 %36, 1
  store i8 %37, ptr %35, align 8, !tbaa !159
  br label %38

38:                                               ; preds = %34, %30, %26, %24
  %39 = load ptr, ptr %25, align 8, !tbaa !86
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %24, !llvm.loop !208

41:                                               ; preds = %38, %19
  ret i32 4
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_group_invert(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.72, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.73, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.74, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_invert_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.129, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 1, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.191) #13
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @rna_vertex_group_with_single_itemf) #13
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 536870912) #13
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !172
  %11 = load ptr, ptr %7, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.75, i32 noundef 1, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77) #13
  %13 = load ptr, ptr %7, align 8, !tbaa !156
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.78, i32 noundef 1, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_invert_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !157
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.75) #13
  %11 = load ptr, ptr %8, align 8, !tbaa !157
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.78) #13
  %13 = load ptr, ptr %8, align 8, !tbaa !157
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.129) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %15 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef %7, i32 noundef %14, ptr noundef nonnull %6, ptr noundef nonnull %5)
  %16 = load i32, ptr %6, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr null, ptr %3, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !tbaa !87
  %17 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !34
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %32, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !50
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 46
  %28 = load i8, ptr %27, align 1, !tbaa !136
  %29 = and i8 %28, 32
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %20
  br label %32

32:                                               ; preds = %31, %24, %2
  %33 = phi i1 [ false, %31 ], [ true, %2 ], [ true, %24 ]
  %34 = phi i8 [ 0, %31 ], [ 1, %2 ], [ 1, %24 ]
  %35 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %36 = load i16, ptr %35, align 8, !tbaa !50
  %37 = icmp eq i16 %36, 1
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.Mesh, ptr %40, i64 0, i32 46
  %42 = load i8, ptr %41, align 1, !tbaa !136
  %43 = and i8 %42, 1
  %44 = icmp ne i8 %43, 0
  br label %45

45:                                               ; preds = %38, %32
  %46 = phi i1 [ %44, %38 ], [ false, %32 ]
  %47 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %48, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %34), !range !53
  %50 = load ptr, ptr %3, align 8, !tbaa !86
  %51 = icmp eq ptr %50, null
  br i1 %51, label %143, label %52

52:                                               ; preds = %45
  %53 = load i32, ptr %4, align 4, !tbaa !87
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %97

55:                                               ; preds = %52
  %56 = icmp eq i32 %16, 0
  %57 = and i32 %10, 255
  %58 = icmp eq i32 %57, 0
  %59 = sext i32 %16 to i64
  %60 = zext nneg i32 %53 to i64
  br label %61

61:                                               ; preds = %55, %94
  %62 = phi i64 [ 0, %55 ], [ %95, %94 ]
  %63 = getelementptr inbounds ptr, ptr %50, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !86
  %65 = icmp eq ptr %64, null
  %66 = select i1 %65, i1 true, i1 %56
  br i1 %66, label %94, label %67

67:                                               ; preds = %61, %91
  %68 = phi i64 [ %69, %91 ], [ %59, %61 ]
  %69 = add nsw i64 %68, -1
  %70 = getelementptr inbounds i8, ptr %15, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !65
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %67
  %74 = trunc i64 %69 to i32
  br i1 %58, label %77, label %75

75:                                               ; preds = %73
  %76 = call ptr @defvert_verify_index(ptr noundef nonnull %64, i32 noundef %74) #13
  br label %79

77:                                               ; preds = %73
  %78 = call ptr @defvert_find_index(ptr noundef nonnull %64, i32 noundef %74) #13
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi ptr [ %76, %75 ], [ %78, %77 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.MDeformWeight, ptr %80, i64 0, i32 1
  %84 = load float, ptr %83, align 4, !tbaa !131
  %85 = fsub float 1.000000e+00, %84
  store float %85, ptr %83, align 4, !tbaa !131
  %86 = fcmp olt float %85, 0.000000e+00
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = fcmp ogt float %85, 1.000000e+00
  br i1 %88, label %89, label %91

89:                                               ; preds = %87, %82
  %90 = phi float [ 0.000000e+00, %82 ], [ 1.000000e+00, %87 ]
  store float %90, ptr %83, align 4, !tbaa !131
  br label %91

91:                                               ; preds = %89, %87, %79, %67
  %92 = and i64 %69, 4294967295
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %67, !llvm.loop !209

94:                                               ; preds = %91, %61
  %95 = add nuw nsw i64 %62, 1
  %96 = icmp eq i64 %95, %60
  br i1 %96, label %97, label %61, !llvm.loop !210

97:                                               ; preds = %94, %52
  %98 = and i1 %33, %46
  br i1 %98, label %99, label %100

99:                                               ; preds = %97
  call void @ED_vgroup_parray_mirror_sync(ptr noundef %7, ptr noundef nonnull %50, i32 noundef %53, ptr noundef %15, i32 noundef %16)
  br label %100

100:                                              ; preds = %99, %97
  %101 = and i32 %12, 255
  %102 = icmp ne i32 %101, 0
  %103 = icmp sgt i32 %53, 0
  %104 = and i1 %102, %103
  br i1 %104, label %105, label %141

105:                                              ; preds = %100
  %106 = zext nneg i32 %53 to i64
  br label %107

107:                                              ; preds = %138, %105
  %108 = phi i64 [ 0, %105 ], [ %139, %138 ]
  %109 = getelementptr inbounds ptr, ptr %50, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !86
  %111 = icmp eq ptr %110, null
  br i1 %111, label %138, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.MDeformVert, ptr %110, i64 0, i32 1
  %114 = load i32, ptr %113, align 8, !tbaa !69
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %138, label %116

116:                                              ; preds = %112
  %117 = sext i32 %114 to i64
  br label %118

118:                                              ; preds = %135, %116
  %119 = phi i64 [ %117, %116 ], [ %120, %135 ]
  %120 = add nsw i64 %119, -1
  %121 = load ptr, ptr %110, align 8, !tbaa !71
  %122 = getelementptr inbounds %struct.MDeformWeight, ptr %121, i64 %120
  %123 = load i32, ptr %122, align 4, !tbaa !72
  %124 = icmp slt i32 %123, %16
  br i1 %124, label %125, label %135

125:                                              ; preds = %118
  %126 = sext i32 %123 to i64
  %127 = getelementptr inbounds i8, ptr %15, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !65
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.MDeformWeight, ptr %121, i64 %120, i32 1
  %132 = load float, ptr %131, align 4, !tbaa !131
  %133 = fcmp ugt float %132, 0.000000e+00
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  call void @defvert_remove_group(ptr noundef nonnull %110, ptr noundef nonnull %122) #13
  br label %135

135:                                              ; preds = %134, %130, %125, %118
  %136 = and i64 %120, 4294967295
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %118

138:                                              ; preds = %135, %112, %107
  %139 = add nuw nsw i64 %108, 1
  %140 = icmp eq i64 %139, %106
  br i1 %140, label %141, label %107, !llvm.loop !132

141:                                              ; preds = %138, %100
  %142 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %142(ptr noundef nonnull %50) #13
  br label %143

143:                                              ; preds = %45, %141
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  %144 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %144(ptr noundef %15) #13
  call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %7) #13
  %145 = load ptr, ptr %47, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %145) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_group_blend(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.81, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.82, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.83, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_blend_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_blend_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.129, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 1, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.191) #13
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @rna_vertex_group_with_single_itemf) #13
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 536870912) #13
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !172
  %11 = load ptr, ptr %7, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_property(ptr noundef %11, ptr noundef nonnull @.str.84, i32 noundef 2, i32 noundef 15) #13
  tail call void @RNA_def_property_ui_text(ptr noundef %12, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86) #13
  tail call void @RNA_def_property_range(ptr noundef %12, double noundef 0.000000e+00, double noundef 1.000000e+00) #13
  tail call void @RNA_def_property_float_default(ptr noundef %12, float noundef 1.000000e+00) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_blend_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  br i1 %3, label %37, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !154
  %12 = icmp eq ptr %11, null
  %13 = icmp ne ptr %8, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !155
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !50
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = tail call zeroext i8 @BKE_object_is_in_editmode_vgroup(ptr noundef nonnull %2) #13
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %28 = load i32, ptr %27, align 8, !tbaa !34
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 46
  %33 = load i8, ptr %32, align 1, !tbaa !136
  %34 = and i8 %33, 40
  %35 = icmp eq i8 %34, 32
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull @.str.211) #13
  br label %37

37:                                               ; preds = %26, %31, %23, %19, %7, %9, %15, %36
  %38 = phi i32 [ 0, %36 ], [ 0, %15 ], [ 0, %9 ], [ 0, %7 ], [ 0, %19 ], [ 1, %23 ], [ 1, %31 ], [ 0, %26 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_blend_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.84) #13
  %9 = load ptr, ptr %6, align 8, !tbaa !157
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.129) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %11 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef %5, i32 noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %12 = load i32, ptr %4, align 4, !tbaa !87
  %13 = load i32, ptr %3, align 4, !tbaa !87
  call fastcc void @vgroup_blend_subset(ptr noundef %5, ptr noundef %11, i32 noundef %12, i32 noundef %13, float noundef %8)
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %14(ptr noundef %11) #13
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %5) #13
  %15 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %16) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 4
}

declare ptr @RNA_def_property(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_def_property_ui_text(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_property_range(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @RNA_def_property_float_default(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_group_clean(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.87, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.88, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.89, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_clean_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.129, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 1, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.191) #13
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @rna_vertex_group_with_single_itemf) #13
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 536870912) #13
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !172
  %11 = load ptr, ptr %7, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.90, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, float noundef 0.000000e+00, float noundef 0x3FEFAE1480000000) #13
  %13 = load ptr, ptr %7, align 8, !tbaa !156
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.93, i32 noundef 0, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_clean_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !157
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.90) #13
  %11 = load ptr, ptr %8, align 8, !tbaa !157
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.93) #13
  %13 = load ptr, ptr %8, align 8, !tbaa !157
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.129) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %15 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef %7, i32 noundef %14, ptr noundef nonnull %6, ptr noundef nonnull %5)
  %16 = load i32, ptr %6, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr null, ptr %3, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !tbaa !87
  %17 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !34
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %32, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !50
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 46
  %28 = load i8, ptr %27, align 1, !tbaa !136
  %29 = and i8 %28, 32
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %20
  br label %32

32:                                               ; preds = %31, %24, %2
  %33 = phi i1 [ false, %31 ], [ true, %2 ], [ true, %24 ]
  %34 = phi i8 [ 0, %31 ], [ 1, %2 ], [ 1, %24 ]
  %35 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %36 = load i16, ptr %35, align 8, !tbaa !50
  %37 = icmp eq i16 %36, 1
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.Mesh, ptr %40, i64 0, i32 46
  %42 = load i8, ptr %41, align 1, !tbaa !136
  %43 = and i8 %42, 1
  %44 = icmp ne i8 %43, 0
  br label %45

45:                                               ; preds = %38, %32
  %46 = phi i1 [ %44, %38 ], [ false, %32 ]
  %47 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %48, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %34), !range !53
  %50 = load ptr, ptr %3, align 8, !tbaa !86
  %51 = icmp eq ptr %50, null
  br i1 %51, label %103, label %52

52:                                               ; preds = %45
  %53 = and i1 %33, %46
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  %55 = load i32, ptr %4, align 4, !tbaa !87
  call void @ED_vgroup_parray_mirror_assign(ptr noundef %7, ptr noundef nonnull %50, i32 noundef %55)
  br label %56

56:                                               ; preds = %54, %52
  %57 = load i32, ptr %4, align 4, !tbaa !87
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %101

59:                                               ; preds = %56
  %60 = and i32 %12, 255
  %61 = icmp eq i32 %60, 0
  %62 = zext nneg i32 %57 to i64
  br label %63

63:                                               ; preds = %98, %59
  %64 = phi i64 [ 0, %59 ], [ %99, %98 ]
  %65 = getelementptr inbounds ptr, ptr %50, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !86
  %67 = icmp eq ptr %66, null
  br i1 %67, label %98, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.MDeformVert, ptr %66, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %98, label %72

72:                                               ; preds = %68
  %73 = sext i32 %70 to i64
  br label %74

74:                                               ; preds = %95, %72
  %75 = phi i64 [ %73, %72 ], [ %76, %95 ]
  %76 = add nsw i64 %75, -1
  br i1 %61, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %69, align 8, !tbaa !69
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %98, label %80

80:                                               ; preds = %77, %74
  %81 = load ptr, ptr %66, align 8, !tbaa !71
  %82 = getelementptr inbounds %struct.MDeformWeight, ptr %81, i64 %76
  %83 = load i32, ptr %82, align 4, !tbaa !72
  %84 = icmp slt i32 %83, %16
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = sext i32 %83 to i64
  %87 = getelementptr inbounds i8, ptr %15, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !65
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.MDeformWeight, ptr %81, i64 %76, i32 1
  %92 = load float, ptr %91, align 4, !tbaa !131
  %93 = fcmp ugt float %92, %10
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  call void @defvert_remove_group(ptr noundef nonnull %66, ptr noundef nonnull %82) #13
  br label %95

95:                                               ; preds = %94, %90, %85, %80
  %96 = and i64 %76, 4294967295
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %74

98:                                               ; preds = %95, %77, %68, %63
  %99 = add nuw nsw i64 %64, 1
  %100 = icmp eq i64 %99, %62
  br i1 %100, label %101, label %63, !llvm.loop !132

101:                                              ; preds = %98, %56
  %102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %102(ptr noundef nonnull %50) #13
  br label %103

103:                                              ; preds = %45, %101
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  %104 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %104(ptr noundef %15) #13
  call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %7) #13
  %105 = load ptr, ptr %47, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %105) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_group_quantize(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.96, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.97, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.98, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_quantize_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.129, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 1, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.191) #13
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @rna_vertex_group_with_single_itemf) #13
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 536870912) #13
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !172
  %11 = load ptr, ptr %7, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.99, i32 noundef 4, i32 noundef 1, i32 noundef 1000, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef 1, i32 noundef 100) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_quantize_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !157
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.99) #13
  %11 = load ptr, ptr %8, align 8, !tbaa !157
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.129) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %13 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef %7, i32 noundef %12, ptr noundef nonnull %6, ptr noundef nonnull %5)
  %14 = load i32, ptr %6, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr null, ptr %3, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !tbaa !87
  %15 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 27
  %16 = load i32, ptr %15, align 8, !tbaa !34
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %30, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !50
  %21 = icmp eq i16 %20, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.Mesh, ptr %24, i64 0, i32 46
  %26 = load i8, ptr %25, align 1, !tbaa !136
  %27 = and i8 %26, 32
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %18
  br label %30

30:                                               ; preds = %29, %22, %2
  %31 = phi i1 [ false, %29 ], [ true, %2 ], [ true, %22 ]
  %32 = phi i8 [ 0, %29 ], [ 1, %2 ], [ 1, %22 ]
  %33 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %34 = load i16, ptr %33, align 8, !tbaa !50
  %35 = icmp eq i16 %34, 1
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 46
  %40 = load i8, ptr %39, align 1, !tbaa !136
  %41 = and i8 %40, 1
  %42 = icmp ne i8 %41, 0
  br label %43

43:                                               ; preds = %36, %30
  %44 = phi i1 [ %42, %36 ], [ false, %30 ]
  %45 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %46, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %32), !range !53
  %48 = load ptr, ptr %3, align 8, !tbaa !86
  %49 = icmp eq ptr %48, null
  br i1 %49, label %101, label %50

50:                                               ; preds = %43
  %51 = sitofp i32 %10 to float
  %52 = and i1 %31, %44
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, ptr %4, align 4, !tbaa !87
  call void @ED_vgroup_parray_mirror_assign(ptr noundef %7, ptr noundef nonnull %48, i32 noundef %54)
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32, ptr %4, align 4, !tbaa !87
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %99

58:                                               ; preds = %55
  %59 = zext nneg i32 %56 to i64
  br label %60

60:                                               ; preds = %58, %96
  %61 = phi i64 [ 0, %58 ], [ %97, %96 ]
  %62 = getelementptr inbounds ptr, ptr %48, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !86
  %64 = icmp eq ptr %63, null
  br i1 %64, label %96, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.MDeformVert, ptr %63, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !69
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %65
  %70 = load ptr, ptr %63, align 8, !tbaa !71
  br label %71

71:                                               ; preds = %69, %92
  %72 = phi i32 [ %93, %92 ], [ 0, %69 ]
  %73 = phi ptr [ %94, %92 ], [ %70, %69 ]
  %74 = load i32, ptr %73, align 4, !tbaa !72
  %75 = icmp slt i32 %74, %14
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = sext i32 %74 to i64
  %78 = getelementptr inbounds i8, ptr %13, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !65
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.MDeformWeight, ptr %73, i64 0, i32 1
  %83 = load float, ptr %82, align 4, !tbaa !131
  %84 = call float @llvm.fmuladd.f32(float %83, float %51, float 5.000000e-01)
  %85 = call float @llvm.floor.f32(float %84)
  %86 = fdiv float %85, %51
  store float %86, ptr %82, align 4, !tbaa !131
  %87 = fcmp olt float %86, 0.000000e+00
  br i1 %87, label %90, label %88

88:                                               ; preds = %81
  %89 = fcmp ogt float %86, 1.000000e+00
  br i1 %89, label %90, label %92

90:                                               ; preds = %88, %81
  %91 = phi float [ 0.000000e+00, %81 ], [ 1.000000e+00, %88 ]
  store float %91, ptr %82, align 4, !tbaa !131
  br label %92

92:                                               ; preds = %90, %88, %76, %71
  %93 = add nuw nsw i32 %72, 1
  %94 = getelementptr inbounds %struct.MDeformWeight, ptr %73, i64 1
  %95 = icmp eq i32 %93, %67
  br i1 %95, label %96, label %71, !llvm.loop !211

96:                                               ; preds = %92, %65, %60
  %97 = add nuw nsw i64 %61, 1
  %98 = icmp eq i64 %97, %59
  br i1 %98, label %99, label %60, !llvm.loop !212

99:                                               ; preds = %96, %55
  %100 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %100(ptr noundef nonnull %48) #13
  br label %101

101:                                              ; preds = %43, %99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  %102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %102(ptr noundef %13) #13
  call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %7) #13
  %103 = load ptr, ptr %45, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %103) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 4
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_group_limit_total(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.102, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.103, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.104, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_limit_total_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.129, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.191) #13
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @rna_vertex_group_select_itemf) #13
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 536870912) #13
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !172
  %11 = load ptr, ptr %7, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.90, i32 noundef 4, i32 noundef 1, i32 noundef 32, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.105, i32 noundef 1, i32 noundef 32) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_limit_total_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !157
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.90) #13
  %11 = load ptr, ptr %8, align 8, !tbaa !157
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.129) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %13 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef %7, i32 noundef %12, ptr noundef nonnull %6, ptr noundef nonnull %5)
  %14 = load i32, ptr %6, align 4, !tbaa !87
  %15 = load i32, ptr %5, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr null, ptr %3, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !tbaa !87
  %16 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 27
  %17 = load i32, ptr %16, align 8, !tbaa !34
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %31, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !50
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.Mesh, ptr %25, i64 0, i32 46
  %27 = load i8, ptr %26, align 1, !tbaa !136
  %28 = and i8 %27, 32
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %19
  br label %31

31:                                               ; preds = %30, %23, %2
  %32 = phi i8 [ 0, %30 ], [ 1, %2 ], [ 1, %23 ]
  %33 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %34, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %32), !range !53
  %36 = load ptr, ptr %3, align 8, !tbaa !86
  %37 = icmp eq ptr %36, null
  br i1 %37, label %121, label %38

38:                                               ; preds = %31
  %39 = load i32, ptr %4, align 4, !tbaa !87
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %118

41:                                               ; preds = %38
  %42 = icmp sgt i32 %15, %10
  %43 = zext nneg i32 %39 to i64
  br label %44

44:                                               ; preds = %41, %114
  %45 = phi i64 [ 0, %41 ], [ %116, %114 ]
  %46 = phi i32 [ 0, %41 ], [ %115, %114 ]
  %47 = getelementptr inbounds ptr, ptr %36, i64 %45
  %48 = load ptr, ptr %47, align 8, !tbaa !86
  %49 = icmp ne ptr %48, null
  %50 = and i1 %42, %49
  br i1 %50, label %51, label %114

51:                                               ; preds = %44
  %52 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %53 = getelementptr inbounds %struct.MDeformVert, ptr %48, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !69
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 3
  %57 = call ptr %52(i64 noundef %56, ptr noundef nonnull @__func__.vgroup_limit_total_subset) #13
  %58 = load i32, ptr %53, align 8, !tbaa !69
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %93

60:                                               ; preds = %51, %86
  %61 = phi i64 [ %89, %86 ], [ 0, %51 ]
  %62 = phi i32 [ %90, %86 ], [ %58, %51 ]
  %63 = phi i32 [ %88, %86 ], [ 0, %51 ]
  %64 = phi i32 [ %87, %86 ], [ 0, %51 ]
  %65 = load ptr, ptr %48, align 8, !tbaa !71
  %66 = getelementptr inbounds %struct.MDeformWeight, ptr %65, i64 %61
  %67 = load i32, ptr %66, align 4, !tbaa !72
  %68 = icmp slt i32 %67, %14
  br i1 %68, label %69, label %81

69:                                               ; preds = %60
  %70 = sext i32 %67 to i64
  %71 = getelementptr inbounds i8, ptr %13, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !65
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %69
  %75 = xor i32 %64, -1
  %76 = add i32 %62, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.MDeformWeight, ptr %57, i64 %77
  %79 = load i64, ptr %66, align 4
  store i64 %79, ptr %78, align 4
  %80 = add nsw i32 %64, 1
  br label %86

81:                                               ; preds = %69, %60
  %82 = sext i32 %63 to i64
  %83 = getelementptr inbounds %struct.MDeformWeight, ptr %57, i64 %82
  %84 = load i64, ptr %66, align 4
  store i64 %84, ptr %83, align 4
  %85 = add nsw i32 %63, 1
  br label %86

86:                                               ; preds = %81, %74
  %87 = phi i32 [ %80, %74 ], [ %64, %81 ]
  %88 = phi i32 [ %63, %74 ], [ %85, %81 ]
  %89 = add nuw nsw i64 %61, 1
  %90 = load i32, ptr %53, align 8, !tbaa !69
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %60, label %93, !llvm.loop !213

93:                                               ; preds = %86, %51
  %94 = phi i32 [ 0, %51 ], [ %87, %86 ]
  %95 = phi i32 [ 0, %51 ], [ %88, %86 ]
  %96 = sub nsw i32 %94, %10
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %93
  %99 = sext i32 %95 to i64
  %100 = getelementptr inbounds %struct.MDeformWeight, ptr %57, i64 %99
  %101 = sext i32 %94 to i64
  call void @qsort(ptr noundef %100, i64 noundef %101, i64 noundef 8, ptr noundef nonnull @inv_cmp_mdef_vert_weights) #13
  %102 = load i32, ptr %53, align 8, !tbaa !69
  %103 = sub nsw i32 %102, %96
  store i32 %103, ptr %53, align 8, !tbaa !69
  %104 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  %105 = load ptr, ptr %48, align 8, !tbaa !71
  call void %104(ptr noundef %105) #13
  %106 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !86
  %107 = load i32, ptr %53, align 8, !tbaa !69
  %108 = sext i32 %107 to i64
  %109 = shl nsw i64 %108, 3
  %110 = call ptr %106(ptr noundef %57, i64 noundef %109, ptr noundef nonnull @__func__.vgroup_limit_total_subset) #13
  store ptr %110, ptr %48, align 8, !tbaa !71
  %111 = add nsw i32 %96, %46
  br label %114

112:                                              ; preds = %93
  %113 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %113(ptr noundef %57) #13
  br label %114

114:                                              ; preds = %112, %98, %44
  %115 = phi i32 [ %46, %44 ], [ %111, %98 ], [ %46, %112 ]
  %116 = add nuw nsw i64 %45, 1
  %117 = icmp eq i64 %116, %43
  br i1 %117, label %118, label %44, !llvm.loop !214

118:                                              ; preds = %114, %38
  %119 = phi i32 [ 0, %38 ], [ %115, %114 ]
  %120 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %120(ptr noundef nonnull %36) #13
  br label %121

121:                                              ; preds = %31, %118
  %122 = phi i32 [ %119, %118 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  %123 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %123(ptr noundef %13) #13
  %124 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %125 = load ptr, ptr %124, align 8, !tbaa !180
  %126 = icmp eq i32 %122, 0
  %127 = select i1 %126, i32 16, i32 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %125, i32 noundef %127, ptr noundef nonnull @.str.212, i32 noundef %122) #13
  br i1 %126, label %130, label %128

128:                                              ; preds = %121
  call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %7) #13
  %129 = load ptr, ptr %33, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %129) #13
  br label %130

130:                                              ; preds = %121, %128
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_group_mirror(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.106, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.107, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.108, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_mirror_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.109, i32 noundef 1, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111) #13
  %10 = load ptr, ptr %7, align 8, !tbaa !156
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.112, i32 noundef 1, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114) #13
  %12 = load ptr, ptr %7, align 8, !tbaa !156
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.115, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.116) #13
  %14 = load ptr, ptr %7, align 8, !tbaa !156
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.117, i32 noundef 0, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_mirror_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !tbaa !87
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.109) #13
  %9 = trunc i32 %8 to i8
  %10 = load ptr, ptr %6, align 8, !tbaa !157
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.112) #13
  %12 = trunc i32 %11 to i8
  %13 = load ptr, ptr %6, align 8, !tbaa !157
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.115) #13
  %15 = trunc i32 %14 to i8
  %16 = load ptr, ptr %6, align 8, !tbaa !157
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.117) #13
  %18 = trunc i32 %17 to i8
  call void @ED_vgroup_mirror(ptr noundef %5, i8 noundef zeroext %9, i8 noundef zeroext %12, i8 noundef zeroext %15, i8 noundef zeroext %18, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %19 = load i32, ptr %3, align 4, !tbaa !87
  %20 = load i32, ptr %4, align 4, !tbaa !87
  tail call void @ED_mesh_report_mirror(ptr noundef %1, i32 noundef %19, i32 noundef %20) #13
  tail call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %5) #13
  %21 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %22) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_group_copy_to_linked(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.120, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.121, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.122, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_copy_to_linked_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @vertex_group_copy_to_linked_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %11 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 25
  %12 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 97
  br label %13

13:                                               ; preds = %8, %40
  %14 = phi ptr [ %6, %8 ], [ %42, %40 ]
  %15 = phi i32 [ 2, %8 ], [ %41, %40 ]
  %16 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !215
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !50
  %20 = load i16, ptr %9, align 8, !tbaa !50
  %21 = icmp ne i16 %19, %20
  %22 = icmp eq ptr %17, %4
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %40, label %24

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = load ptr, ptr %10, align 8, !tbaa !46
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 25
  tail call void @BLI_freelistN(ptr noundef nonnull %30) #13
  %31 = load ptr, ptr %16, align 8, !tbaa !215
  %32 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 25
  tail call void @BLI_duplicatelist(ptr noundef nonnull %32, ptr noundef nonnull %11) #13
  %33 = load i16, ptr %12, align 2, !tbaa !49
  %34 = load ptr, ptr %16, align 8, !tbaa !215
  %35 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 97
  store i16 %33, ptr %35, align 2, !tbaa !49
  tail call void @DAG_id_tag_update(ptr noundef %34, i16 noundef signext 2) #13
  %36 = load ptr, ptr %16, align 8, !tbaa !215
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %36) #13
  %37 = load ptr, ptr %16, align 8, !tbaa !215
  %38 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274464768, ptr noundef %39) #13
  br label %40

40:                                               ; preds = %13, %29, %24
  %41 = phi i32 [ 4, %29 ], [ %15, %24 ], [ %15, %13 ]
  %42 = load ptr, ptr %14, align 8, !tbaa !86
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %13, !llvm.loop !217

44:                                               ; preds = %40, %2
  %45 = phi i32 [ 2, %2 ], [ %41, %40 ]
  ret i32 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_group_copy_to_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.123, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.124, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.125, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_copy_to_selected_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_copy_to_selected_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @ED_object_context(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %5 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #13
  %6 = load ptr, ptr %3, align 8, !tbaa !86
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %2, %22
  %9 = phi ptr [ %25, %22 ], [ %6, %2 ]
  %10 = phi i32 [ %24, %22 ], [ 0, %2 ]
  %11 = phi i32 [ %23, %22 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.CollectionPointerLink, ptr %9, i64 0, i32 2, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !218
  %14 = icmp eq ptr %4, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %8
  %16 = call zeroext i8 @ED_vgroup_array_copy(ptr noundef %13, ptr noundef %4), !range !53
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = add nsw i32 %10, 1
  br label %22

20:                                               ; preds = %15
  %21 = add nsw i32 %11, 1
  br label %22

22:                                               ; preds = %18, %20, %8
  %23 = phi i32 [ %11, %18 ], [ %21, %20 ], [ %11, %8 ]
  %24 = phi i32 [ %19, %18 ], [ %10, %20 ], [ %10, %8 ]
  %25 = load ptr, ptr %9, align 8, !tbaa !86
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %8, !llvm.loop !222

27:                                               ; preds = %22, %2
  %28 = phi i32 [ 0, %2 ], [ %23, %22 ]
  %29 = phi i32 [ 0, %2 ], [ %24, %22 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  %30 = icmp eq i32 %29, 0
  %31 = icmp ne i32 %28, 0
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !180
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %35, i32 noundef 32, ptr noundef nonnull @.str.213, i32 noundef %29, i32 noundef %28) #13
  br label %36

36:                                               ; preds = %27, %33
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_group_transfer_weight(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.126, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.127, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.128, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_mesh_supported_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_transfer_weight_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.129, ptr noundef nonnull @WT_vertex_group_mode_item, i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.86) #13
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !172
  %11 = load ptr, ptr %7, align 8, !tbaa !156
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.130, ptr noundef nonnull @WT_method_item, i32 noundef 3, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.86) #13
  store ptr %12, ptr %10, align 8, !tbaa !172
  %13 = load ptr, ptr %7, align 8, !tbaa !156
  %14 = tail call ptr @RNA_def_enum(ptr noundef %13, ptr noundef nonnull @.str.132, ptr noundef nonnull @WT_replace_mode_item, i32 noundef 1, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.86) #13
  store ptr %14, ptr %10, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @vertex_group_mesh_supported_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  br i1 %3, label %24, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !154
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !50
  %16 = icmp eq i16 %15, 1
  %17 = icmp ne ptr %8, null
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !155
  %22 = icmp eq ptr %21, null
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %19, %13, %9, %7
  %25 = phi i32 [ 0, %13 ], [ 0, %9 ], [ 0, %7 ], [ %23, %19 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_transfer_weight_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 25
  %8 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 97
  %9 = load i16, ptr %8, align 2, !tbaa !49
  %10 = zext i16 %9 to i32
  %11 = add nsw i32 %10, -1
  %12 = tail call ptr @BLI_findlink(ptr noundef nonnull %7, i32 noundef %11) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !157
  %15 = tail call i32 @RNA_enum_get(ptr noundef %14, ptr noundef nonnull @.str.129) #13
  %16 = load ptr, ptr %13, align 8, !tbaa !157
  %17 = tail call i32 @RNA_enum_get(ptr noundef %16, ptr noundef nonnull @.str.130) #13
  %18 = load ptr, ptr %13, align 8, !tbaa !157
  %19 = tail call i32 @RNA_enum_get(ptr noundef %18, ptr noundef nonnull @.str.132) #13
  %20 = icmp ne i32 %15, 1
  %21 = icmp ne ptr %12, null
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !180
  tail call void @BKE_report(ptr noundef %25, i32 noundef 16, ptr noundef nonnull @.str.214) #13
  br label %118

26:                                               ; preds = %2
  br i1 %21, label %27, label %30

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.bDeformGroup, ptr %12, i64 0, i32 2
  %29 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %28, i64 noundef 64) #13
  br label %30

30:                                               ; preds = %27, %26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %31 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %4) #13
  %32 = load ptr, ptr %4, align 8, !tbaa !86
  %33 = icmp eq ptr %32, null
  br i1 %33, label %111, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %37 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %38

38:                                               ; preds = %34, %79
  %39 = phi ptr [ %32, %34 ], [ %81, %79 ]
  %40 = phi i8 [ 0, %34 ], [ %80, %79 ]
  %41 = getelementptr inbounds %struct.CollectionPointerLink, ptr %39, i64 0, i32 2, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !218
  %43 = icmp eq ptr %6, %42
  br i1 %43, label %79, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.Object, ptr %42, i64 0, i32 25
  %46 = load ptr, ptr %45, align 8, !tbaa !105
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load ptr, ptr %37, align 8, !tbaa !180
  %50 = getelementptr inbounds %struct.ID, ptr %42, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %49, i32 noundef 16, ptr noundef nonnull @.str.215, ptr noundef nonnull %50) #13
  br label %79

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.Object, ptr %42, i64 0, i32 3
  %53 = load i16, ptr %52, align 8, !tbaa !50
  switch i16 %53, label %54 [
    i16 1, label %57
    i16 25, label %79
  ]

54:                                               ; preds = %51
  %55 = load ptr, ptr %36, align 8, !tbaa !180
  %56 = getelementptr inbounds %struct.ID, ptr %42, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %55, i32 noundef 16, ptr noundef nonnull @.str.216, ptr noundef nonnull %56) #13
  br label %79

57:                                               ; preds = %51
  switch i32 %15, label %79 [
    i32 1, label %61
    i32 2, label %58
  ]

58:                                               ; preds = %57
  %59 = load ptr, ptr %45, align 8, !tbaa !86
  %60 = icmp eq ptr %59, null
  br i1 %60, label %79, label %71

61:                                               ; preds = %57
  %62 = call ptr @defgroup_find_name(ptr noundef %42, ptr noundef nonnull %3) #13
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load ptr, ptr %35, align 8, !tbaa !180
  %66 = getelementptr inbounds %struct.ID, ptr %42, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %65, i32 noundef 16, ptr noundef nonnull @.str.217, ptr noundef nonnull %66, ptr noundef nonnull %3) #13
  br label %79

67:                                               ; preds = %61
  %68 = call fastcc zeroext i8 @ed_vgroup_transfer_weight(ptr noundef %6, ptr noundef %42, ptr noundef nonnull %62, ptr noundef %5, i32 noundef %17, i32 noundef %19, ptr noundef %1), !range !53
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %69, i8 %40, i8 1
  br label %79

71:                                               ; preds = %58, %71
  %72 = phi ptr [ %77, %71 ], [ %59, %58 ]
  %73 = phi i8 [ %76, %71 ], [ %40, %58 ]
  %74 = call fastcc zeroext i8 @ed_vgroup_transfer_weight(ptr noundef %6, ptr noundef %42, ptr noundef nonnull %72, ptr noundef %5, i32 noundef %17, i32 noundef %19, ptr noundef %1), !range !53
  %75 = icmp eq i8 %74, 0
  %76 = select i1 %75, i8 %73, i8 1
  %77 = load ptr, ptr %72, align 8, !tbaa !86
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %71, !llvm.loop !223

79:                                               ; preds = %71, %58, %64, %67, %38, %57, %54, %51, %48
  %80 = phi i8 [ %40, %48 ], [ %40, %51 ], [ %40, %54 ], [ %40, %57 ], [ %40, %38 ], [ %40, %64 ], [ %70, %67 ], [ %40, %58 ], [ %76, %71 ]
  %81 = load ptr, ptr %39, align 8, !tbaa !86
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %38, !llvm.loop !224

83:                                               ; preds = %79
  %84 = icmp eq i8 %80, 0
  call void @BLI_freelistN(ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br i1 %84, label %112, label %85

85:                                               ; preds = %83
  br i1 %21, label %86, label %88

86:                                               ; preds = %85
  %87 = call i32 @defgroup_name_index(ptr noundef %6, ptr noundef nonnull %3) #13
  br label %106

88:                                               ; preds = %85
  %89 = call ptr @BKE_object_pose_armature_get(ptr noundef %6) #13
  %90 = icmp eq ptr %89, null
  br i1 %90, label %110, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.Object, ptr %89, i64 0, i32 27
  %93 = load i32, ptr %92, align 8, !tbaa !34
  %94 = and i32 %93, 64
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.Object, ptr %89, i64 0, i32 19
  %98 = load ptr, ptr %97, align 8, !tbaa !46
  %99 = getelementptr inbounds %struct.bArmature, ptr %98, i64 0, i32 5
  %100 = load ptr, ptr %99, align 8, !tbaa !47
  %101 = icmp eq ptr %100, null
  br i1 %101, label %110, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.Bone, ptr %100, i64 0, i32 5
  %104 = call i32 @defgroup_name_index(ptr noundef %6, ptr noundef nonnull %103) #13
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %110, label %106

106:                                              ; preds = %102, %86
  %107 = phi i32 [ %87, %86 ], [ %104, %102 ]
  %108 = trunc i32 %107 to i16
  %109 = add i16 %108, 1
  store i16 %109, ptr %8, align 2, !tbaa !49
  br label %110

110:                                              ; preds = %106, %102, %96, %91, %88
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %6) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274464768, ptr noundef %6) #13
  br label %118

111:                                              ; preds = %30
  call void @BLI_freelistN(ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %112

112:                                              ; preds = %111, %83
  %113 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %114 = load ptr, ptr %113, align 8, !tbaa !180
  %115 = load ptr, ptr %114, align 8, !tbaa !105
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  call void @BKE_report(ptr noundef nonnull %114, i32 noundef 16, ptr noundef nonnull @.str.218) #13
  br label %118

118:                                              ; preds = %112, %117, %110, %23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_group_set_active(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.134, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.135, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.136, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_active_group_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %6, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !153
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !156
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.137, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.138) #13
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @vgroup_itemf) #13
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #13
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !172
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_active_group_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.137) #13
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, 1
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 97
  store i16 %8, ptr %9, align 2, !tbaa !49
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274464768, ptr noundef %3) #13
  ret i32 4
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @vgroup_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = tail call ptr @ED_object_context(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) @__const.vgroup_itemf.tmp, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store ptr null, ptr %6, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !tbaa !87
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 2
  %16 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 1
  %17 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 3
  br label %18

18:                                               ; preds = %14, %18
  %19 = phi ptr [ %12, %14 ], [ %23, %18 ]
  %20 = phi i32 [ 0, %14 ], [ %22, %18 ]
  store i32 %20, ptr %5, align 8, !tbaa !226
  store i32 201, ptr %15, align 8, !tbaa !228
  %21 = getelementptr inbounds %struct.bDeformGroup, ptr %19, i64 0, i32 2
  store ptr %21, ptr %16, align 8, !tbaa !229
  store ptr %21, ptr %17, align 8, !tbaa !230
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #13
  %22 = add nuw nsw i32 %20, 1
  %23 = load ptr, ptr %19, align 8, !tbaa !86
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18, !llvm.loop !231

25:                                               ; preds = %18, %10
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  store i8 1, ptr %3, align 1, !tbaa !65
  %26 = load ptr, ptr %6, align 8, !tbaa !86
  br label %27

27:                                               ; preds = %4, %25
  %28 = phi ptr [ %26, %25 ], [ @DummyRNA_NULL_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #13
  ret ptr %28
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_group_sort(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.143, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.144, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.145, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_sort_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.146, ptr noundef nonnull @OBJECT_OT_vertex_group_sort.vgroup_sort_type, i32 noundef 0, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.147) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_group_sort_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.146) #13
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 25
  %8 = tail call i32 @BLI_countlist(ptr noundef nonnull %7) #13
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %10 = sext i32 %8 to i64
  %11 = shl nsw i64 %10, 6
  %12 = tail call ptr %9(i64 noundef %11, ptr noundef nonnull @.str.243) #13
  %13 = load ptr, ptr %7, align 8, !tbaa !86
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %2, %15
  %16 = phi ptr [ %21, %15 ], [ %13, %2 ]
  %17 = phi ptr [ %20, %15 ], [ %12, %2 ]
  %18 = getelementptr inbounds %struct.bDeformGroup, ptr %16, i64 0, i32 2
  %19 = tail call ptr @BLI_strncpy(ptr noundef %17, ptr noundef nonnull %18, i64 noundef 64) #13
  %20 = getelementptr inbounds i8, ptr %17, i64 64
  %21 = load ptr, ptr %16, align 8, !tbaa !86
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15, !llvm.loop !232

23:                                               ; preds = %15, %2
  switch i32 %6, label %26 [
    i32 0, label %24
    i32 1, label %25
  ]

24:                                               ; preds = %23
  tail call void @BLI_sortlist(ptr noundef nonnull %7, ptr noundef nonnull @vgroup_sort_name) #13
  br label %26

25:                                               ; preds = %23
  tail call fastcc void @vgroup_sort_bone_hierarchy(ptr noundef %3, ptr noundef null)
  br label %26

26:                                               ; preds = %23, %25, %24
  %27 = tail call fastcc i32 @vgroup_do_remap(ptr noundef %3, ptr noundef %12, ptr noundef %1), !range !233
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274464768, ptr noundef %3) #13
  br label %30

30:                                               ; preds = %29, %26
  %31 = icmp eq ptr %12, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  tail call void %33(ptr noundef nonnull %12) #13
  br label %34

34:                                               ; preds = %32, %30
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_group_move(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.152, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.153, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.154, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vgroup_move_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.155, ptr noundef nonnull @OBJECT_OT_vertex_group_move.vgroup_slot_move, i32 noundef 0, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.157) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vgroup_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.155) #13
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 25
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 97
  %9 = load i16, ptr %8, align 2, !tbaa !49
  %10 = zext i16 %9 to i32
  %11 = add nsw i32 %10, -1
  %12 = tail call ptr @BLI_findlink(ptr noundef nonnull %7, i32 noundef %11) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %45, label %14

14:                                               ; preds = %2
  %15 = tail call i32 @BLI_countlist(ptr noundef nonnull %7) #13
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %17 = sext i32 %15 to i64
  %18 = shl nsw i64 %17, 6
  %19 = tail call ptr %16(i64 noundef %18, ptr noundef nonnull @.str.243) #13
  %20 = load ptr, ptr %7, align 8, !tbaa !86
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %14, %22
  %23 = phi ptr [ %28, %22 ], [ %20, %14 ]
  %24 = phi ptr [ %27, %22 ], [ %19, %14 ]
  %25 = getelementptr inbounds %struct.bDeformGroup, ptr %23, i64 0, i32 2
  %26 = tail call ptr @BLI_strncpy(ptr noundef %24, ptr noundef nonnull %25, i64 noundef 64) #13
  %27 = getelementptr inbounds i8, ptr %24, i64 64
  %28 = load ptr, ptr %23, align 8, !tbaa !86
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %22, !llvm.loop !232

30:                                               ; preds = %22, %14
  %31 = icmp eq i32 %6, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.bDeformGroup, ptr %12, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !234
  tail call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef nonnull %12) #13
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %7, ptr noundef %34, ptr noundef nonnull %12) #13
  br label %37

35:                                               ; preds = %30
  %36 = load ptr, ptr %12, align 8, !tbaa !110
  tail call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef nonnull %12) #13
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %7, ptr noundef %36, ptr noundef nonnull %12) #13
  br label %37

37:                                               ; preds = %35, %32
  %38 = tail call fastcc i32 @vgroup_do_remap(ptr noundef %3, ptr noundef %19, ptr noundef %1), !range !233
  %39 = icmp eq ptr %19, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  tail call void %41(ptr noundef nonnull %19) #13
  br label %42

42:                                               ; preds = %40, %37
  %43 = icmp eq i32 %38, 2
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274464768, ptr noundef %3) #13
  br label %45

45:                                               ; preds = %42, %44, %2
  %46 = phi i32 [ 2, %2 ], [ %38, %44 ], [ %38, %42 ]
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_weight_paste(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.158, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.159, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.160, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_mesh_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_weight_paste_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.161, i32 noundef -1, i32 noundef -1, i32 noundef 2147483647, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163, i32 noundef -1, i32 noundef 2147483647) #13
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268959744) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @vertex_group_vert_select_mesh_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  br i1 %3, label %30, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !154
  %12 = icmp eq ptr %11, null
  %13 = icmp ne ptr %8, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %30

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !155
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !50
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = tail call zeroext i8 @BKE_object_is_in_editmode_vgroup(ptr noundef nonnull %2) #13
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = tail call zeroext i8 @BKE_object_is_in_wpaint_select_vert(ptr noundef nonnull %2) #13
  %28 = icmp ne i8 %27, 0
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %23, %26, %19, %7, %9, %15
  %31 = phi i32 [ 0, %15 ], [ 0, %9 ], [ 0, %7 ], [ 0, %19 ], [ 1, %23 ], [ %29, %26 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_weight_paste_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !157
  %13 = tail call i32 @RNA_int_get(ptr noundef %12, ptr noundef nonnull @.str.161) #13
  %14 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 25
  %15 = tail call ptr @BLI_findlink(ptr noundef nonnull %14, i32 noundef %13) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !180
  tail call void @BKE_report(ptr noundef %19, i32 noundef 32, ptr noundef nonnull @.str.245) #13
  br label %219

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.bDeformGroup, ptr %15, i64 0, i32 3
  %22 = load i8, ptr %21, align 8, !tbaa !159
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !180
  tail call void @BKE_report(ptr noundef %27, i32 noundef 32, ptr noundef nonnull @.str.246) #13
  br label %219

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.Mesh, ptr %30, i64 0, i32 20
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = icmp eq ptr %32, null
  br i1 %33, label %129, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %32, align 8, !tbaa !57
  %36 = getelementptr inbounds %struct.BMesh, ptr %35, i64 0, i32 24
  %37 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %36, i32 noundef 2) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  %38 = call ptr @ED_mesh_active_dvert_get_em(ptr noundef %10, ptr noundef nonnull %8) #13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %216, label %40

40:                                               ; preds = %34
  %41 = call float @defvert_find_weight(ptr noundef nonnull %38, i32 noundef %13) #13
  %42 = load ptr, ptr %32, align 8, !tbaa !57
  %43 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 1, ptr %43, align 4, !tbaa !59
  %44 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %44, align 8, !tbaa !61
  %45 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %45, align 8, !tbaa !62
  %46 = getelementptr inbounds %struct.BMesh, ptr %42, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !63
  store ptr %47, ptr %7, align 8, !tbaa !65
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #13
  %48 = load ptr, ptr %45, align 8, !tbaa !62
  %49 = call ptr %48(ptr noundef nonnull %7) #13
  %50 = icmp eq ptr %49, null
  br i1 %50, label %100, label %51

51:                                               ; preds = %40
  %52 = sext i32 %37 to i64
  %53 = getelementptr inbounds %struct.Mesh, ptr %30, i64 0, i32 46
  br label %54

54:                                               ; preds = %51, %95
  %55 = phi i32 [ 0, %51 ], [ %98, %95 ]
  %56 = phi ptr [ %49, %51 ], [ %97, %95 ]
  %57 = getelementptr inbounds %struct.BMHeader, ptr %56, i64 0, i32 3
  %58 = load i8, ptr %57, align 1, !tbaa !116
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  %61 = load ptr, ptr %8, align 8
  %62 = icmp eq ptr %56, %61
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %95, label %64

64:                                               ; preds = %54
  %65 = load ptr, ptr %56, align 8, !tbaa !66
  %66 = getelementptr inbounds i8, ptr %65, i64 %52
  %67 = call ptr @defvert_find_index(ptr noundef %66, i32 noundef %13) #13
  %68 = icmp eq ptr %67, null
  br i1 %68, label %95, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.MDeformWeight, ptr %67, i64 0, i32 1
  store float %41, ptr %70, align 4, !tbaa !131
  %71 = load i8, ptr %53, align 1, !tbaa !136
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %95, label %74

74:                                               ; preds = %69
  %75 = load ptr, ptr %29, align 8, !tbaa !46
  %76 = getelementptr inbounds %struct.Mesh, ptr %75, i64 0, i32 20
  %77 = load ptr, ptr %76, align 8, !tbaa !54
  %78 = getelementptr inbounds %struct.Mesh, ptr %75, i64 0, i32 46
  %79 = load i8, ptr %78, align 1, !tbaa !136
  %80 = lshr i8 %79, 4
  %81 = and i8 %80, 1
  %82 = getelementptr inbounds %struct.BMVert, ptr %56, i64 0, i32 2
  %83 = call ptr @editbmesh_get_x_mirror_vert(ptr noundef %10, ptr noundef %77, ptr noundef nonnull %56, ptr noundef nonnull %82, i32 noundef %55, i8 noundef zeroext %81) #13
  %84 = icmp eq ptr %83, null
  %85 = icmp eq ptr %83, %56
  %86 = or i1 %84, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %74
  %88 = load ptr, ptr %56, align 8, !tbaa !66
  %89 = getelementptr inbounds i8, ptr %88, i64 %52
  %90 = load ptr, ptr %83, align 8, !tbaa !66
  %91 = getelementptr inbounds i8, ptr %90, i64 %52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %92 = call ptr @defgroup_flip_map(ptr noundef %10, ptr noundef nonnull %6, i8 noundef zeroext 1) #13
  %93 = load i32, ptr %6, align 4, !tbaa !87
  call void @defvert_sync_mapped(ptr noundef %91, ptr noundef %89, ptr noundef %92, i32 noundef %93, i8 noundef zeroext 1) #13
  %94 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %94(ptr noundef %92) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %95

95:                                               ; preds = %87, %74, %69, %64, %54
  %96 = load ptr, ptr %45, align 8, !tbaa !62
  %97 = call ptr %96(ptr noundef nonnull %7) #13
  %98 = add nuw nsw i32 %55, 1
  %99 = icmp eq ptr %97, null
  br i1 %99, label %100, label %54, !llvm.loop !235

100:                                              ; preds = %95, %40
  %101 = getelementptr inbounds %struct.Mesh, ptr %30, i64 0, i32 46
  %102 = load i8, ptr %101, align 1, !tbaa !136
  %103 = and i8 %102, 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %128, label %105

105:                                              ; preds = %100
  %106 = load ptr, ptr %8, align 8, !tbaa !86
  %107 = load ptr, ptr %29, align 8, !tbaa !46
  %108 = getelementptr inbounds %struct.Mesh, ptr %107, i64 0, i32 20
  %109 = load ptr, ptr %108, align 8, !tbaa !54
  %110 = getelementptr inbounds %struct.Mesh, ptr %107, i64 0, i32 46
  %111 = load i8, ptr %110, align 1, !tbaa !136
  %112 = lshr i8 %111, 4
  %113 = and i8 %112, 1
  %114 = getelementptr inbounds %struct.BMVert, ptr %106, i64 0, i32 2
  %115 = call ptr @editbmesh_get_x_mirror_vert(ptr noundef %10, ptr noundef %109, ptr noundef %106, ptr noundef nonnull %114, i32 noundef -1, i8 noundef zeroext %113) #13
  %116 = icmp eq ptr %115, null
  %117 = icmp eq ptr %115, %106
  %118 = or i1 %116, %117
  br i1 %118, label %128, label %119

119:                                              ; preds = %105
  %120 = load ptr, ptr %106, align 8, !tbaa !66
  %121 = sext i32 %37 to i64
  %122 = getelementptr inbounds i8, ptr %120, i64 %121
  %123 = load ptr, ptr %115, align 8, !tbaa !66
  %124 = getelementptr inbounds i8, ptr %123, i64 %121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %125 = call ptr @defgroup_flip_map(ptr noundef %10, ptr noundef nonnull %5, i8 noundef zeroext 1) #13
  %126 = load i32, ptr %5, align 4, !tbaa !87
  call void @defvert_sync_mapped(ptr noundef %124, ptr noundef %122, ptr noundef %125, i32 noundef %126, i8 noundef zeroext 1) #13
  %127 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %127(ptr noundef %125) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %128

128:                                              ; preds = %119, %105, %100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13
  br label %218

129:                                              ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  %130 = call ptr @ED_mesh_active_dvert_get_ob(ptr noundef %10, ptr noundef nonnull %9) #13
  %131 = icmp eq ptr %130, null
  br i1 %131, label %217, label %132

132:                                              ; preds = %129
  %133 = call float @defvert_find_weight(ptr noundef nonnull %130, i32 noundef %13) #13
  %134 = getelementptr inbounds %struct.Mesh, ptr %30, i64 0, i32 26
  %135 = load i32, ptr %134, align 8, !tbaa !106
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %187

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.Mesh, ptr %30, i64 0, i32 17
  %139 = load ptr, ptr %138, align 8, !tbaa !107
  %140 = getelementptr inbounds %struct.Mesh, ptr %30, i64 0, i32 15
  %141 = getelementptr inbounds %struct.Mesh, ptr %30, i64 0, i32 46
  br label %142

142:                                              ; preds = %137, %181
  %143 = phi i64 [ 0, %137 ], [ %182, %181 ]
  %144 = phi ptr [ %139, %137 ], [ %183, %181 ]
  %145 = load ptr, ptr %140, align 8, !tbaa !119
  %146 = getelementptr inbounds %struct.MVert, ptr %145, i64 %143, i32 2
  %147 = load i8, ptr %146, align 2, !tbaa !120
  %148 = and i8 %147, 1
  %149 = icmp eq i8 %148, 0
  %150 = icmp eq ptr %144, %130
  %151 = select i1 %149, i1 true, i1 %150
  br i1 %151, label %181, label %152

152:                                              ; preds = %142
  %153 = call ptr @defvert_find_index(ptr noundef %144, i32 noundef %13) #13
  %154 = icmp eq ptr %153, null
  br i1 %154, label %181, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.MDeformWeight, ptr %153, i64 0, i32 1
  store float %133, ptr %156, align 4, !tbaa !131
  %157 = load i8, ptr %141, align 1, !tbaa !136
  %158 = and i8 %157, 1
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %181, label %160

160:                                              ; preds = %155
  %161 = load ptr, ptr %29, align 8, !tbaa !46
  %162 = getelementptr inbounds %struct.Mesh, ptr %161, i64 0, i32 46
  %163 = load i8, ptr %162, align 1, !tbaa !136
  %164 = lshr i8 %163, 4
  %165 = and i8 %164, 1
  %166 = trunc i64 %143 to i32
  %167 = call i32 @mesh_get_x_mirror_vert(ptr noundef %10, i32 noundef %166, i8 noundef zeroext %165) #13
  %168 = icmp slt i32 %167, 0
  %169 = zext i32 %167 to i64
  %170 = icmp eq i64 %143, %169
  %171 = or i1 %168, %170
  br i1 %171, label %181, label %172

172:                                              ; preds = %160
  %173 = getelementptr inbounds %struct.Mesh, ptr %161, i64 0, i32 17
  %174 = load ptr, ptr %173, align 8, !tbaa !107
  %175 = getelementptr inbounds %struct.MDeformVert, ptr %174, i64 %143
  %176 = zext nneg i32 %167 to i64
  %177 = getelementptr inbounds %struct.MDeformVert, ptr %174, i64 %176
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %178 = call ptr @defgroup_flip_map(ptr noundef %10, ptr noundef nonnull %4, i8 noundef zeroext 1) #13
  %179 = load i32, ptr %4, align 4, !tbaa !87
  call void @defvert_sync_mapped(ptr noundef %177, ptr noundef %175, ptr noundef %178, i32 noundef %179, i8 noundef zeroext 1) #13
  %180 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %180(ptr noundef %178) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %181

181:                                              ; preds = %172, %160, %155, %152, %142
  %182 = add nuw nsw i64 %143, 1
  %183 = getelementptr inbounds %struct.MDeformVert, ptr %144, i64 1
  %184 = load i32, ptr %134, align 8, !tbaa !106
  %185 = sext i32 %184 to i64
  %186 = icmp slt i64 %182, %185
  br i1 %186, label %142, label %187, !llvm.loop !236

187:                                              ; preds = %181, %132
  %188 = getelementptr inbounds %struct.Mesh, ptr %30, i64 0, i32 46
  %189 = load i8, ptr %188, align 1, !tbaa !136
  %190 = and i8 %189, 1
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %215, label %192

192:                                              ; preds = %187
  %193 = load i32, ptr %9, align 4, !tbaa !87
  %194 = load ptr, ptr %29, align 8, !tbaa !46
  %195 = icmp eq i32 %193, -1
  br i1 %195, label %215, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.Mesh, ptr %194, i64 0, i32 46
  %198 = load i8, ptr %197, align 1, !tbaa !136
  %199 = lshr i8 %198, 4
  %200 = and i8 %199, 1
  %201 = call i32 @mesh_get_x_mirror_vert(ptr noundef %10, i32 noundef %193, i8 noundef zeroext %200) #13
  %202 = icmp slt i32 %201, 0
  %203 = icmp eq i32 %201, %193
  %204 = or i1 %202, %203
  br i1 %204, label %215, label %205

205:                                              ; preds = %196
  %206 = getelementptr inbounds %struct.Mesh, ptr %194, i64 0, i32 17
  %207 = load ptr, ptr %206, align 8, !tbaa !107
  %208 = sext i32 %193 to i64
  %209 = getelementptr inbounds %struct.MDeformVert, ptr %207, i64 %208
  %210 = zext nneg i32 %201 to i64
  %211 = getelementptr inbounds %struct.MDeformVert, ptr %207, i64 %210
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %212 = call ptr @defgroup_flip_map(ptr noundef %10, ptr noundef nonnull %3, i8 noundef zeroext 1) #13
  %213 = load i32, ptr %3, align 4, !tbaa !87
  call void @defvert_sync_mapped(ptr noundef %211, ptr noundef %209, ptr noundef %212, i32 noundef %213, i8 noundef zeroext 1) #13
  %214 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %214(ptr noundef %212) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %215

215:                                              ; preds = %205, %196, %192, %187
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  br label %218

216:                                              ; preds = %34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13
  br label %218

217:                                              ; preds = %129
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  br label %218

218:                                              ; preds = %128, %215, %216, %217
  call void @DAG_id_tag_update(ptr noundef %10, i16 noundef signext 2) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %10) #13
  br label %219

219:                                              ; preds = %25, %17, %218
  %220 = phi i32 [ 4, %218 ], [ 2, %17 ], [ 2, %25 ]
  ret i32 %220
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_weight_delete(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.164, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.165, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.166, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_mesh_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_weight_delete_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.161, i32 noundef -1, i32 noundef -1, i32 noundef 2147483647, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163, i32 noundef -1, i32 noundef 2147483647) #13
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268959744) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_weight_delete_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.161) #13
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 25
  %8 = tail call ptr @BLI_findlink(ptr noundef nonnull %7, i32 noundef %6) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !180
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.245) #13
  br label %24

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.bDeformGroup, ptr %8, i64 0, i32 3
  %15 = load i8, ptr %14, align 8, !tbaa !159
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !180
  tail call void @BKE_report(ptr noundef %20, i32 noundef 32, ptr noundef nonnull @.str.246) #13
  br label %24

21:                                               ; preds = %13
  %22 = tail call ptr @ED_mesh_active_dvert_get_only(ptr noundef %3) #13
  %23 = tail call ptr @defvert_find_index(ptr noundef %22, i32 noundef %6) #13
  tail call void @defvert_remove_group(ptr noundef %22, ptr noundef %23) #13
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #13
  br label %24

24:                                               ; preds = %18, %10, %21
  %25 = phi i32 [ 4, %21 ], [ 2, %10 ], [ 2, %18 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_vertex_weight_set_active(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.167, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.168, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.169, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_mesh_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_weight_set_active_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.161, i32 noundef -1, i32 noundef -1, i32 noundef 2147483647, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163, i32 noundef -1, i32 noundef 2147483647) #13
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268959744) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_weight_set_active_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.161) #13
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = trunc i32 %6 to i16
  %10 = add i16 %9, 1
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 97
  store i16 %10, ptr %11, align 2, !tbaa !49
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #13
  br label %12

12:                                               ; preds = %8, %2
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_weight_normalize_active_vertex(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.170, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.171, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.172, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_mesh_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_weight_normalize_active_vertex_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_weight_normalize_active_vertex_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %10 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #13
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 63
  %12 = load i8, ptr %11, align 1, !tbaa !237
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = call ptr @ED_mesh_active_dvert_get_em(ptr noundef %9, ptr noundef nonnull %5) #13
  br label %23

21:                                               ; preds = %2
  %22 = call ptr @ED_mesh_active_dvert_get_ob(ptr noundef %9, ptr noundef nonnull %6) #13
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %84, label %26

26:                                               ; preds = %23
  %27 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef %9, i32 noundef %13, ptr noundef nonnull %8, ptr noundef nonnull %7)
  %28 = load i32, ptr %8, align 4, !tbaa !87
  call void @defvert_normalize_subset(ptr noundef nonnull %24, ptr noundef %27, i32 noundef %28) #13
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %29(ptr noundef %27) #13
  %30 = getelementptr inbounds %struct.Mesh, ptr %15, i64 0, i32 46
  %31 = load i8, ptr %30, align 1, !tbaa !136
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %84, label %34

34:                                               ; preds = %26
  br i1 %18, label %61, label %35

35:                                               ; preds = %34
  %36 = load ptr, ptr %17, align 8, !tbaa !57
  %37 = getelementptr inbounds %struct.BMesh, ptr %36, i64 0, i32 24
  %38 = call i32 @CustomData_get_offset(ptr noundef nonnull %37, i32 noundef 2) #13
  %39 = load ptr, ptr %5, align 8, !tbaa !86
  %40 = load ptr, ptr %14, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.Mesh, ptr %40, i64 0, i32 20
  %42 = load ptr, ptr %41, align 8, !tbaa !54
  %43 = getelementptr inbounds %struct.Mesh, ptr %40, i64 0, i32 46
  %44 = load i8, ptr %43, align 1, !tbaa !136
  %45 = lshr i8 %44, 4
  %46 = and i8 %45, 1
  %47 = getelementptr inbounds %struct.BMVert, ptr %39, i64 0, i32 2
  %48 = call ptr @editbmesh_get_x_mirror_vert(ptr noundef %9, ptr noundef %42, ptr noundef %39, ptr noundef nonnull %47, i32 noundef -1, i8 noundef zeroext %46) #13
  %49 = icmp eq ptr %48, null
  %50 = icmp eq ptr %48, %39
  %51 = or i1 %49, %50
  br i1 %51, label %84, label %52

52:                                               ; preds = %35
  %53 = load ptr, ptr %39, align 8, !tbaa !66
  %54 = sext i32 %38 to i64
  %55 = getelementptr inbounds i8, ptr %53, i64 %54
  %56 = load ptr, ptr %48, align 8, !tbaa !66
  %57 = getelementptr inbounds i8, ptr %56, i64 %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %58 = call ptr @defgroup_flip_map(ptr noundef %9, ptr noundef nonnull %4, i8 noundef zeroext 1) #13
  %59 = load i32, ptr %4, align 4, !tbaa !87
  call void @defvert_sync_mapped(ptr noundef %57, ptr noundef %55, ptr noundef %58, i32 noundef %59, i8 noundef zeroext 1) #13
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %60(ptr noundef %58) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %84

61:                                               ; preds = %34
  %62 = load i32, ptr %6, align 4, !tbaa !87
  %63 = load ptr, ptr %14, align 8, !tbaa !46
  %64 = icmp eq i32 %62, -1
  br i1 %64, label %84, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.Mesh, ptr %63, i64 0, i32 46
  %67 = load i8, ptr %66, align 1, !tbaa !136
  %68 = lshr i8 %67, 4
  %69 = and i8 %68, 1
  %70 = call i32 @mesh_get_x_mirror_vert(ptr noundef %9, i32 noundef %62, i8 noundef zeroext %69) #13
  %71 = icmp slt i32 %70, 0
  %72 = icmp eq i32 %70, %62
  %73 = or i1 %71, %72
  br i1 %73, label %84, label %74

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.Mesh, ptr %63, i64 0, i32 17
  %76 = load ptr, ptr %75, align 8, !tbaa !107
  %77 = sext i32 %62 to i64
  %78 = getelementptr inbounds %struct.MDeformVert, ptr %76, i64 %77
  %79 = zext nneg i32 %70 to i64
  %80 = getelementptr inbounds %struct.MDeformVert, ptr %76, i64 %79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %81 = call ptr @defgroup_flip_map(ptr noundef %9, ptr noundef nonnull %3, i8 noundef zeroext 1) #13
  %82 = load i32, ptr %3, align 4, !tbaa !87
  call void @defvert_sync_mapped(ptr noundef %80, ptr noundef %78, ptr noundef %81, i32 noundef %82, i8 noundef zeroext 1) #13
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %83(ptr noundef %81) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %84

84:                                               ; preds = %74, %65, %61, %52, %35, %23, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @DAG_id_tag_update(ptr noundef %9, i16 noundef signext 2) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %9) #13
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_weight_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.173, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.174, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.175, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_mesh_poll, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_weight_copy_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @vertex_weight_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = tail call ptr @ED_object_context(ptr noundef %0) #13
  %11 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #13
  %12 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 63
  %13 = load i8, ptr %12, align 1, !tbaa !237
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %19 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef %10, i32 noundef %14, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %20 = icmp eq ptr %18, null
  br i1 %20, label %84, label %21

21:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  %22 = load ptr, ptr %18, align 8, !tbaa !57
  %23 = getelementptr inbounds %struct.BMesh, ptr %22, i64 0, i32 24
  %24 = call i32 @CustomData_get_offset(ptr noundef nonnull %23, i32 noundef 2) #13
  %25 = call ptr @ED_mesh_active_dvert_get_em(ptr noundef %10, ptr noundef nonnull %8) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %83, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %18, align 8, !tbaa !57
  %29 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 1, ptr %29, align 4, !tbaa !59
  %30 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %30, align 8, !tbaa !61
  %31 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %31, align 8, !tbaa !62
  %32 = getelementptr inbounds %struct.BMesh, ptr %28, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !63
  store ptr %33, ptr %7, align 8, !tbaa !65
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #13
  %34 = load ptr, ptr %31, align 8, !tbaa !62
  %35 = call ptr %34(ptr noundef nonnull %7) #13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %83, label %37

37:                                               ; preds = %27
  %38 = sext i32 %24 to i64
  %39 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 46
  br label %40

40:                                               ; preds = %37, %78
  %41 = phi i32 [ 0, %37 ], [ %81, %78 ]
  %42 = phi ptr [ %35, %37 ], [ %80, %78 ]
  %43 = getelementptr inbounds %struct.BMHeader, ptr %42, i64 0, i32 3
  %44 = load i8, ptr %43, align 1, !tbaa !116
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  %47 = load ptr, ptr %8, align 8
  %48 = icmp eq ptr %42, %47
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %78, label %50

50:                                               ; preds = %40
  %51 = load ptr, ptr %42, align 8, !tbaa !66
  %52 = getelementptr inbounds i8, ptr %51, i64 %38
  %53 = load i32, ptr %5, align 4, !tbaa !87
  call void @defvert_copy_subset(ptr noundef %52, ptr noundef nonnull %25, ptr noundef %19, i32 noundef %53) #13
  %54 = load i8, ptr %39, align 1, !tbaa !136
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr %15, align 8, !tbaa !46
  %59 = getelementptr inbounds %struct.Mesh, ptr %58, i64 0, i32 20
  %60 = load ptr, ptr %59, align 8, !tbaa !54
  %61 = getelementptr inbounds %struct.Mesh, ptr %58, i64 0, i32 46
  %62 = load i8, ptr %61, align 1, !tbaa !136
  %63 = lshr i8 %62, 4
  %64 = and i8 %63, 1
  %65 = getelementptr inbounds %struct.BMVert, ptr %42, i64 0, i32 2
  %66 = call ptr @editbmesh_get_x_mirror_vert(ptr noundef %10, ptr noundef %60, ptr noundef nonnull %42, ptr noundef nonnull %65, i32 noundef %41, i8 noundef zeroext %64) #13
  %67 = icmp eq ptr %66, null
  %68 = icmp eq ptr %66, %42
  %69 = or i1 %67, %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %57
  %71 = load ptr, ptr %42, align 8, !tbaa !66
  %72 = getelementptr inbounds i8, ptr %71, i64 %38
  %73 = load ptr, ptr %66, align 8, !tbaa !66
  %74 = getelementptr inbounds i8, ptr %73, i64 %38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %75 = call ptr @defgroup_flip_map(ptr noundef %10, ptr noundef nonnull %4, i8 noundef zeroext 1) #13
  %76 = load i32, ptr %4, align 4, !tbaa !87
  call void @defvert_sync_mapped(ptr noundef %74, ptr noundef %72, ptr noundef %75, i32 noundef %76, i8 noundef zeroext 1) #13
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %77(ptr noundef %75) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %78

78:                                               ; preds = %70, %57, %50, %40
  %79 = load ptr, ptr %31, align 8, !tbaa !62
  %80 = call ptr %79(ptr noundef nonnull %7) #13
  %81 = add nuw nsw i32 %41, 1
  %82 = icmp eq ptr %80, null
  br i1 %82, label %83, label %40, !llvm.loop !238

83:                                               ; preds = %78, %27, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #13
  br label %139

84:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  %85 = call ptr @ED_mesh_active_dvert_get_ob(ptr noundef %10, ptr noundef nonnull %9) #13
  %86 = icmp eq ptr %85, null
  br i1 %86, label %138, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 26
  %89 = load i32, ptr %88, align 8, !tbaa !106
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %138

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 17
  %93 = load ptr, ptr %92, align 8, !tbaa !107
  %94 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 15
  %95 = load i32, ptr %5, align 4
  %96 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 46
  br label %97

97:                                               ; preds = %91, %132
  %98 = phi i64 [ 0, %91 ], [ %133, %132 ]
  %99 = phi ptr [ %93, %91 ], [ %134, %132 ]
  %100 = load ptr, ptr %94, align 8, !tbaa !119
  %101 = getelementptr inbounds %struct.MVert, ptr %100, i64 %98, i32 2
  %102 = load i8, ptr %101, align 2, !tbaa !120
  %103 = and i8 %102, 1
  %104 = icmp eq i8 %103, 0
  %105 = icmp eq ptr %99, %85
  %106 = select i1 %104, i1 true, i1 %105
  br i1 %106, label %132, label %107

107:                                              ; preds = %97
  call void @defvert_copy_subset(ptr noundef %99, ptr noundef nonnull %85, ptr noundef %19, i32 noundef %95) #13
  %108 = load i8, ptr %96, align 1, !tbaa !136
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %132, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr %15, align 8, !tbaa !46
  %113 = getelementptr inbounds %struct.Mesh, ptr %112, i64 0, i32 46
  %114 = load i8, ptr %113, align 1, !tbaa !136
  %115 = lshr i8 %114, 4
  %116 = and i8 %115, 1
  %117 = trunc i64 %98 to i32
  %118 = call i32 @mesh_get_x_mirror_vert(ptr noundef %10, i32 noundef %117, i8 noundef zeroext %116) #13
  %119 = icmp slt i32 %118, 0
  %120 = zext i32 %118 to i64
  %121 = icmp eq i64 %98, %120
  %122 = or i1 %119, %121
  br i1 %122, label %132, label %123

123:                                              ; preds = %111
  %124 = getelementptr inbounds %struct.Mesh, ptr %112, i64 0, i32 17
  %125 = load ptr, ptr %124, align 8, !tbaa !107
  %126 = getelementptr inbounds %struct.MDeformVert, ptr %125, i64 %98
  %127 = zext nneg i32 %118 to i64
  %128 = getelementptr inbounds %struct.MDeformVert, ptr %125, i64 %127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %129 = call ptr @defgroup_flip_map(ptr noundef %10, ptr noundef nonnull %3, i8 noundef zeroext 1) #13
  %130 = load i32, ptr %3, align 4, !tbaa !87
  call void @defvert_sync_mapped(ptr noundef %128, ptr noundef %126, ptr noundef %129, i32 noundef %130, i8 noundef zeroext 1) #13
  %131 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %131(ptr noundef %129) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %132

132:                                              ; preds = %123, %111, %107, %97
  %133 = add nuw nsw i64 %98, 1
  %134 = getelementptr inbounds %struct.MDeformVert, ptr %99, i64 1
  %135 = load i32, ptr %88, align 8, !tbaa !106
  %136 = sext i32 %135 to i64
  %137 = icmp slt i64 %133, %136
  br i1 %137, label %97, label %138, !llvm.loop !239

138:                                              ; preds = %132, %87, %84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  br label %139

139:                                              ; preds = %83, %138
  %140 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %140(ptr noundef %19) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @DAG_id_tag_update(ptr noundef %10, i16 noundef signext 2) #13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %10) #13
  ret i32 4
}

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare ptr @editbmesh_get_x_mirror_vert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mesh_defvert_mirror_update_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = icmp eq i32 %3, -1
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %8 = call ptr @defgroup_flip_map(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext 1) #13
  %9 = load i32, ptr %5, align 4, !tbaa !87
  call void @defvert_sync_mapped(ptr noundef %1, ptr noundef %2, ptr noundef %8, i32 noundef %9, i8 noundef zeroext 1) #13
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %10(ptr noundef %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %18

11:                                               ; preds = %4
  %12 = tail call i32 @defgroup_flip_index(ptr noundef %0, i32 noundef %3, i8 noundef zeroext 1) #13
  %13 = tail call ptr @defvert_verify_index(ptr noundef %1, i32 noundef %12) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call float @defvert_find_weight(ptr noundef %2, i32 noundef %3) #13
  %17 = getelementptr inbounds %struct.MDeformWeight, ptr %13, i64 0, i32 1
  store float %16, ptr %17, align 4, !tbaa !131
  br label %18

18:                                               ; preds = %11, %15, %7
  ret void
}

declare void @defvert_sync_mapped(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @defvert_verify_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @defgroup_flip_index(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @defvert_add_index_notest(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare ptr @BM_vert_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @defvert_flip(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @defvert_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @defvert_copy_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_free_layer_active(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @vgroup_active_remove_verts(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %6 = tail call i32 @BLI_findindex(ptr noundef nonnull %5, ptr noundef %2) #13
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !50
  switch i16 %8, label %138 [
    i16 1, label %9
    i16 22, label %89
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = icmp eq ptr %13, null
  br i1 %14, label %57, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %13, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 24
  %18 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %17, i32 noundef 2) #13
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %138, label %20

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %21 = load ptr, ptr %13, align 8, !tbaa !57
  %22 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %22, align 4, !tbaa !59
  %23 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %23, align 8, !tbaa !61
  %24 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %24, align 8, !tbaa !62
  %25 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !63
  store ptr %26, ptr %4, align 8, !tbaa !65
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #13
  %27 = load ptr, ptr %24, align 8, !tbaa !62
  %28 = call ptr %27(ptr noundef nonnull %4) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %55, label %30

30:                                               ; preds = %20
  %31 = sext i32 %18 to i64
  %32 = icmp eq i8 %1, 0
  br label %33

33:                                               ; preds = %30, %50
  %34 = phi i8 [ 0, %30 ], [ %51, %50 ]
  %35 = phi ptr [ %28, %30 ], [ %53, %50 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !66
  %37 = getelementptr inbounds i8, ptr %36, i64 %31
  %38 = icmp eq ptr %36, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %37, align 8, !tbaa !71
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  br i1 %32, label %43, label %48

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.BMHeader, ptr %35, i64 0, i32 3
  %45 = load i8, ptr %44, align 1, !tbaa !116
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43, %42
  %49 = call ptr @defvert_find_index(ptr noundef nonnull %37, i32 noundef %6) #13
  call void @defvert_remove_group(ptr noundef nonnull %37, ptr noundef %49) #13
  br label %50

50:                                               ; preds = %33, %39, %43, %48
  %51 = phi i8 [ 1, %48 ], [ %34, %43 ], [ %34, %39 ], [ %34, %33 ]
  %52 = load ptr, ptr %24, align 8, !tbaa !62
  %53 = call ptr %52(ptr noundef nonnull %4) #13
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %33, !llvm.loop !240

55:                                               ; preds = %50, %20
  %56 = phi i8 [ 0, %20 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  br label %138

57:                                               ; preds = %9
  %58 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 17
  %59 = load ptr, ptr %58, align 8, !tbaa !107
  %60 = icmp eq ptr %59, null
  br i1 %60, label %138, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 26
  %63 = load i32, ptr %62, align 8, !tbaa !106
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %138

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 15
  %67 = load ptr, ptr %66, align 8, !tbaa !119
  br label %68

68:                                               ; preds = %65, %82
  %69 = phi ptr [ %86, %82 ], [ %59, %65 ]
  %70 = phi i8 [ %83, %82 ], [ 0, %65 ]
  %71 = phi ptr [ %85, %82 ], [ %67, %65 ]
  %72 = phi i32 [ %84, %82 ], [ 0, %65 ]
  %73 = getelementptr inbounds %struct.MVert, ptr %71, i64 0, i32 2
  %74 = load i8, ptr %73, align 2, !tbaa !120
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %68
  %78 = load ptr, ptr %69, align 8, !tbaa !71
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = tail call ptr @defvert_find_index(ptr noundef nonnull %69, i32 noundef %6) #13
  tail call void @defvert_remove_group(ptr noundef nonnull %69, ptr noundef %81) #13
  br label %82

82:                                               ; preds = %68, %80, %77
  %83 = phi i8 [ 1, %80 ], [ %70, %77 ], [ %70, %68 ]
  %84 = add nuw nsw i32 %72, 1
  %85 = getelementptr inbounds %struct.MVert, ptr %71, i64 1
  %86 = getelementptr inbounds %struct.MDeformVert, ptr %69, i64 1
  %87 = load i32, ptr %62, align 8, !tbaa !106
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %68, label %138, !llvm.loop !241

89:                                               ; preds = %3
  %90 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %91 = load ptr, ptr %90, align 8, !tbaa !46
  %92 = getelementptr inbounds %struct.Lattice, ptr %91, i64 0, i32 26
  %93 = load ptr, ptr %92, align 8, !tbaa !51
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %89
  %96 = load ptr, ptr %93, align 8, !tbaa !78
  br label %97

97:                                               ; preds = %89, %95
  %98 = phi ptr [ %96, %95 ], [ %91, %89 ]
  %99 = getelementptr inbounds %struct.Lattice, ptr %98, i64 0, i32 24
  %100 = load ptr, ptr %99, align 8, !tbaa !80
  %101 = icmp eq ptr %100, null
  br i1 %101, label %138, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.Lattice, ptr %98, i64 0, i32 2
  %104 = load i16, ptr %103, align 8, !tbaa !81
  %105 = sext i16 %104 to i32
  %106 = getelementptr inbounds %struct.Lattice, ptr %98, i64 0, i32 3
  %107 = load i16, ptr %106, align 2, !tbaa !82
  %108 = sext i16 %107 to i32
  %109 = mul nsw i32 %108, %105
  %110 = getelementptr inbounds %struct.Lattice, ptr %98, i64 0, i32 4
  %111 = load i16, ptr %110, align 4, !tbaa !83
  %112 = sext i16 %111 to i32
  %113 = mul nsw i32 %109, %112
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %102
  %116 = getelementptr inbounds %struct.Lattice, ptr %98, i64 0, i32 21
  %117 = load ptr, ptr %116, align 8, !tbaa !124
  %118 = icmp eq i8 %1, 0
  %119 = zext nneg i32 %113 to i64
  br label %120

120:                                              ; preds = %115, %133
  %121 = phi i64 [ 0, %115 ], [ %135, %133 ]
  %122 = phi i8 [ 0, %115 ], [ %134, %133 ]
  %123 = phi ptr [ %117, %115 ], [ %136, %133 ]
  br i1 %118, label %124, label %129

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.BPoint, ptr %123, i64 0, i32 3
  %126 = load i16, ptr %125, align 4, !tbaa !125
  %127 = and i16 %126, 1
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %124, %120
  %130 = load ptr, ptr %99, align 8, !tbaa !80
  %131 = getelementptr inbounds %struct.MDeformVert, ptr %130, i64 %121
  %132 = tail call ptr @defvert_find_index(ptr noundef %131, i32 noundef %6) #13
  tail call void @defvert_remove_group(ptr noundef %131, ptr noundef %132) #13
  br label %133

133:                                              ; preds = %124, %129
  %134 = phi i8 [ 1, %129 ], [ %122, %124 ]
  %135 = add nuw nsw i64 %121, 1
  %136 = getelementptr inbounds %struct.BPoint, ptr %123, i64 1
  %137 = icmp eq i64 %135, %119
  br i1 %137, label %138, label %120, !llvm.loop !242

138:                                              ; preds = %133, %82, %102, %61, %97, %3, %57, %55, %15
  %139 = phi i8 [ 0, %57 ], [ %56, %55 ], [ 0, %15 ], [ 0, %3 ], [ 0, %97 ], [ 0, %61 ], [ 0, %102 ], [ %83, %82 ], [ %134, %133 ]
  ret i8 %139
}

declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_object_is_in_editmode_vgroup(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_object_is_in_wpaint_select_vert(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_data_layer_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @vgroup_select_verts(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %5 = load i16, ptr %4, align 2, !tbaa !49
  %6 = zext i16 %5 to i32
  %7 = add nsw i32 %6, -1
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %9 = tail call ptr @BLI_findlink(ptr noundef nonnull %8, i32 noundef %7) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %150, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !50
  switch i16 %13, label %150 [
    i16 1, label %14
    i16 22, label %95
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %60, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %18, align 8, !tbaa !57
  %22 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 24
  %23 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %22, i32 noundef 2) #13
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %150, label %25

25:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %26 = load ptr, ptr %18, align 8, !tbaa !57
  %27 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %27, align 4, !tbaa !59
  %28 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %28, align 8, !tbaa !61
  %29 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %29, align 8, !tbaa !62
  %30 = getelementptr inbounds %struct.BMesh, ptr %26, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !63
  store ptr %31, ptr %3, align 8, !tbaa !65
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #13
  %32 = load ptr, ptr %29, align 8, !tbaa !62
  %33 = call ptr %32(ptr noundef nonnull %3) #13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %25
  %36 = sext i32 %23 to i64
  %37 = trunc i32 %1 to i8
  br label %38

38:                                               ; preds = %35, %51
  %39 = phi ptr [ %33, %35 ], [ %53, %51 ]
  %40 = getelementptr inbounds %struct.BMHeader, ptr %39, i64 0, i32 3
  %41 = load i8, ptr %40, align 1, !tbaa !116
  %42 = and i8 %41, 2
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load ptr, ptr %39, align 8, !tbaa !66
  %46 = getelementptr inbounds i8, ptr %45, i64 %36
  %47 = call ptr @defvert_find_index(ptr noundef %46, i32 noundef %7) #13
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %18, align 8, !tbaa !57
  call void @BM_vert_select_set(ptr noundef %50, ptr noundef nonnull %39, i8 noundef zeroext %37) #13
  br label %51

51:                                               ; preds = %44, %49, %38
  %52 = load ptr, ptr %29, align 8, !tbaa !62
  %53 = call ptr %52(ptr noundef nonnull %3) #13
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %38, !llvm.loop !243

55:                                               ; preds = %51, %25
  %56 = icmp eq i32 %1, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %55
  call void @EDBM_select_flush(ptr noundef nonnull %18) #13
  br label %59

58:                                               ; preds = %55
  call void @EDBM_deselect_flush(ptr noundef nonnull %18) #13
  br label %59

59:                                               ; preds = %58, %57
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  br label %150

60:                                               ; preds = %14
  %61 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 17
  %62 = load ptr, ptr %61, align 8, !tbaa !107
  %63 = icmp eq ptr %62, null
  br i1 %63, label %150, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 26
  %66 = load i32, ptr %65, align 8, !tbaa !106
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 15
  %70 = load ptr, ptr %69, align 8, !tbaa !119
  %71 = icmp ne i32 %1, 0
  %72 = zext i1 %71 to i8
  br label %73

73:                                               ; preds = %68, %88
  %74 = phi ptr [ %70, %68 ], [ %90, %88 ]
  %75 = phi i32 [ 0, %68 ], [ %89, %88 ]
  %76 = phi ptr [ %62, %68 ], [ %91, %88 ]
  %77 = getelementptr inbounds %struct.MVert, ptr %74, i64 0, i32 2
  %78 = load i8, ptr %77, align 2, !tbaa !120
  %79 = and i8 %78, 16
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %73
  %82 = tail call ptr @defvert_find_index(ptr noundef nonnull %76, i32 noundef %7) #13
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = load i8, ptr %77, align 2, !tbaa !120
  %86 = and i8 %85, -2
  %87 = or disjoint i8 %86, %72
  store i8 %87, ptr %77, align 2, !tbaa !120
  br label %88

88:                                               ; preds = %84, %73, %81
  %89 = add nuw nsw i32 %75, 1
  %90 = getelementptr inbounds %struct.MVert, ptr %74, i64 1
  %91 = getelementptr inbounds %struct.MDeformVert, ptr %76, i64 1
  %92 = load i32, ptr %65, align 8, !tbaa !106
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %73, label %94, !llvm.loop !244

94:                                               ; preds = %88, %64
  tail call void @paintvert_flush_flags(ptr noundef %0) #13
  br label %150

95:                                               ; preds = %11
  %96 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %97 = load ptr, ptr %96, align 8, !tbaa !46
  %98 = getelementptr inbounds %struct.Lattice, ptr %97, i64 0, i32 26
  %99 = load ptr, ptr %98, align 8, !tbaa !51
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %95
  %102 = load ptr, ptr %99, align 8, !tbaa !78
  br label %103

103:                                              ; preds = %95, %101
  %104 = phi ptr [ %102, %101 ], [ %97, %95 ]
  %105 = getelementptr inbounds %struct.Lattice, ptr %104, i64 0, i32 24
  %106 = load ptr, ptr %105, align 8, !tbaa !80
  %107 = icmp eq ptr %106, null
  br i1 %107, label %150, label %108

108:                                              ; preds = %103
  %109 = tail call ptr @BKE_lattice_active_point_get(ptr noundef %104) #13
  %110 = getelementptr inbounds %struct.Lattice, ptr %104, i64 0, i32 2
  %111 = load i16, ptr %110, align 8, !tbaa !81
  %112 = sext i16 %111 to i32
  %113 = getelementptr inbounds %struct.Lattice, ptr %104, i64 0, i32 3
  %114 = load i16, ptr %113, align 2, !tbaa !82
  %115 = sext i16 %114 to i32
  %116 = mul nsw i32 %115, %112
  %117 = getelementptr inbounds %struct.Lattice, ptr %104, i64 0, i32 4
  %118 = load i16, ptr %117, align 4, !tbaa !83
  %119 = sext i16 %118 to i32
  %120 = mul nsw i32 %116, %119
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %150

122:                                              ; preds = %108
  %123 = getelementptr inbounds %struct.Lattice, ptr %104, i64 0, i32 21
  %124 = load ptr, ptr %123, align 8, !tbaa !124
  %125 = load ptr, ptr %105, align 8, !tbaa !80
  %126 = icmp eq i32 %1, 0
  %127 = icmp ne ptr %109, null
  %128 = getelementptr inbounds %struct.Lattice, ptr %104, i64 0, i32 14
  br label %129

129:                                              ; preds = %122, %145
  %130 = phi i32 [ 0, %122 ], [ %146, %145 ]
  %131 = phi ptr [ %124, %122 ], [ %147, %145 ]
  %132 = phi ptr [ %125, %122 ], [ %148, %145 ]
  %133 = tail call ptr @defvert_find_index(ptr noundef %132, i32 noundef %7) #13
  %134 = icmp eq ptr %133, null
  br i1 %134, label %145, label %135

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.BPoint, ptr %131, i64 0, i32 3
  %137 = load i16, ptr %136, align 4, !tbaa !125
  br i1 %126, label %140, label %138

138:                                              ; preds = %135
  %139 = or i16 %137, 1
  store i16 %139, ptr %136, align 4, !tbaa !125
  br label %145

140:                                              ; preds = %135
  %141 = and i16 %137, -2
  store i16 %141, ptr %136, align 4, !tbaa !125
  %142 = icmp eq ptr %131, %109
  %143 = select i1 %127, i1 %142, i1 false
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i32 -1, ptr %128, align 4, !tbaa !245
  br label %145

145:                                              ; preds = %129, %140, %144, %138
  %146 = add nuw nsw i32 %130, 1
  %147 = getelementptr inbounds %struct.BPoint, ptr %131, i64 1
  %148 = getelementptr inbounds %struct.MDeformVert, ptr %132, i64 1
  %149 = icmp eq i32 %146, %120
  br i1 %149, label %150, label %129, !llvm.loop !246

150:                                              ; preds = %145, %108, %20, %59, %60, %94, %11, %103, %2
  ret void
}

declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @EDBM_select_flush(ptr noundef) local_unnamed_addr #2

declare void @EDBM_deselect_flush(ptr noundef) local_unnamed_addr #2

declare void @paintvert_flush_flags(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_lattice_active_point_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #8

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @defgroup_duplicate(ptr noundef) local_unnamed_addr #2

declare void @defgroup_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @rna_vertex_group_with_single_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @ED_object_vgroup_selection_itemf_helper(ptr noundef %0, ptr poison, ptr poison, ptr noundef %3, i32 noundef 31)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_vertex_group_select_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @ED_object_vgroup_selection_itemf_helper(ptr noundef %0, ptr poison, ptr poison, ptr noundef %3, i32 noundef 29)
  ret ptr %5
}

declare ptr @BKE_objdef_lock_flags_get(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @defvert_normalize_lock_map(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @defvert_normalize_lock_single(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @defvert_normalize_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @mesh_get_derived_deform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

declare void @plane_from_point_normal_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @closest_to_plane_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CTX_wm_operator_poll_msg_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @vgroup_blend_subset(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.BMIter, align 8
  %11 = fsub float 1.000000e+00, %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store ptr null, ptr %6, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !tbaa !87
  %12 = sext i32 %3 to i64
  %13 = shl nsw i64 %12, 2
  %14 = alloca i8, i64 %13, align 16
  %15 = alloca i8, i64 %13, align 16
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !50
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.Mesh, ptr %21, i64 0, i32 46
  %23 = load i8, ptr %22, align 1, !tbaa !136
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br label %26

26:                                               ; preds = %5, %19
  %27 = phi i1 [ %25, %19 ], [ true, %5 ]
  %28 = tail call ptr @BKE_editmesh_from_object(ptr noundef %0) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 8, !tbaa !57
  br label %32

32:                                               ; preds = %26, %30
  %33 = phi ptr [ %31, %30 ], [ null, %26 ]
  br i1 %29, label %34, label %37

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  br label %37

37:                                               ; preds = %32, %34
  %38 = phi ptr [ %36, %34 ], [ null, %32 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  %39 = icmp sgt i32 %2, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = zext nneg i32 %2 to i64
  br label %42

42:                                               ; preds = %40, %53
  %43 = phi i64 [ 0, %40 ], [ %55, %53 ]
  %44 = phi i32 [ 0, %40 ], [ %54, %53 ]
  %45 = getelementptr inbounds i8, ptr %1, i64 %43
  %46 = load i8, ptr %45, align 1, !tbaa !65
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = add nsw i32 %44, 1
  %50 = sext i32 %44 to i64
  %51 = getelementptr inbounds i32, ptr %14, i64 %50
  %52 = trunc i64 %43 to i32
  store i32 %52, ptr %51, align 4, !tbaa !87
  br label %53

53:                                               ; preds = %48, %42
  %54 = phi i32 [ %49, %48 ], [ %44, %42 ]
  %55 = add nuw nsw i64 %43, 1
  %56 = icmp eq i64 %55, %41
  br i1 %56, label %57, label %42, !llvm.loop !139

57:                                               ; preds = %53, %37
  %58 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  %60 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %59, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0), !range !53
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %15, i8 0, i64 %13, i1 false)
  %61 = icmp eq ptr %33, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  tail call void @BM_mesh_elem_table_ensure(ptr noundef nonnull %33, i8 noundef zeroext 1) #13
  store ptr null, ptr %8, align 8, !tbaa !86
  store ptr null, ptr %9, align 8, !tbaa !86
  br label %70

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 16
  %65 = load ptr, ptr %64, align 8, !tbaa !247
  %66 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 26
  %67 = load i32, ptr %66, align 8, !tbaa !106
  %68 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 27
  %69 = load i32, ptr %68, align 4, !tbaa !248
  call void @BKE_mesh_vert_edge_map_create(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %65, i32 noundef %67, i32 noundef %69) #13
  br label %70

70:                                               ; preds = %63, %62
  %71 = load i32, ptr %7, align 4, !tbaa !87
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %275

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  %75 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  %76 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  %77 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 15
  %78 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 16
  %79 = icmp sgt i32 %3, 0
  %80 = icmp sgt i32 %3, 0
  %81 = zext nneg i32 %71 to i64
  %82 = zext nneg i32 %3 to i64
  %83 = zext nneg i32 %3 to i64
  br label %84

84:                                               ; preds = %73, %270
  %85 = phi i64 [ 0, %73 ], [ %273, %270 ]
  %86 = phi ptr [ null, %73 ], [ %272, %270 ]
  %87 = phi ptr [ null, %73 ], [ %271, %270 ]
  br i1 %61, label %144, label %88

88:                                               ; preds = %84
  %89 = trunc i64 %85 to i32
  %90 = call ptr @BM_vert_at_index(ptr noundef nonnull %33, i32 noundef %89) #13
  %91 = getelementptr inbounds %struct.BMHeader, ptr %90, i64 0, i32 3
  %92 = load i8, ptr %91, align 1, !tbaa !116
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %206, label %95

95:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #13
  store i8 4, ptr %74, align 4, !tbaa !59
  store ptr @bmiter__edge_of_vert_begin, ptr %75, align 8, !tbaa !61
  store ptr @bmiter__edge_of_vert_step, ptr %76, align 8, !tbaa !62
  store ptr %90, ptr %10, align 8, !tbaa !65
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %10) #13
  %96 = load ptr, ptr %76, align 8, !tbaa !62
  %97 = call ptr %96(ptr noundef nonnull %10) #13
  %98 = icmp eq ptr %97, null
  br i1 %98, label %140, label %99

99:                                               ; preds = %95, %133
  %100 = phi ptr [ %136, %133 ], [ %86, %95 ]
  %101 = phi ptr [ %135, %133 ], [ %87, %95 ]
  %102 = phi i32 [ %134, %133 ], [ 0, %95 ]
  %103 = phi ptr [ %138, %133 ], [ %97, %95 ]
  %104 = getelementptr inbounds %struct.BMEdge, ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !249
  %106 = icmp eq ptr %105, %90
  %107 = getelementptr inbounds %struct.BMEdge, ptr %103, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !252
  %109 = icmp eq ptr %108, %90
  %110 = select i1 %109, ptr %105, ptr null
  %111 = select i1 %106, ptr %108, ptr %110
  %112 = getelementptr inbounds %struct.BMHeader, ptr %111, i64 0, i32 3
  %113 = load i8, ptr %112, align 1, !tbaa !116
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %99
  %117 = getelementptr inbounds %struct.BMHeader, ptr %111, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !253
  %119 = load ptr, ptr %6, align 8, !tbaa !86
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds ptr, ptr %119, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !86
  %123 = icmp eq ptr %101, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %116
  %125 = load ptr, ptr %101, align 8, !tbaa !254
  br label %128

126:                                              ; preds = %116
  %127 = alloca [16 x i8], align 16
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi ptr [ %101, %124 ], [ %127, %126 ]
  %130 = phi ptr [ %125, %124 ], [ null, %126 ]
  store ptr %100, ptr %129, align 8, !tbaa !254
  %131 = getelementptr inbounds %struct.LinkNode, ptr %129, i64 0, i32 1
  store ptr %122, ptr %131, align 8, !tbaa !256
  %132 = add nsw i32 %102, 1
  br label %133

133:                                              ; preds = %128, %99
  %134 = phi i32 [ %132, %128 ], [ %102, %99 ]
  %135 = phi ptr [ %130, %128 ], [ %101, %99 ]
  %136 = phi ptr [ %129, %128 ], [ %100, %99 ]
  %137 = load ptr, ptr %76, align 8, !tbaa !62
  %138 = call ptr %137(ptr noundef nonnull %10) #13
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %99, !llvm.loop !257

140:                                              ; preds = %133, %95
  %141 = phi i32 [ 0, %95 ], [ %134, %133 ]
  %142 = phi ptr [ %87, %95 ], [ %135, %133 ]
  %143 = phi ptr [ %86, %95 ], [ %136, %133 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #13
  br label %206

144:                                              ; preds = %84
  %145 = load ptr, ptr %77, align 8, !tbaa !119
  %146 = getelementptr inbounds %struct.MVert, ptr %145, i64 %85, i32 2
  %147 = load i8, ptr %146, align 2, !tbaa !120
  %148 = and i8 %147, 1
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %206, label %150

150:                                              ; preds = %144
  %151 = load ptr, ptr %8, align 8, !tbaa !86
  %152 = getelementptr inbounds %struct.MeshElemMap, ptr %151, i64 %85, i32 1
  %153 = load i32, ptr %152, align 8, !tbaa !258
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %206

155:                                              ; preds = %150
  %156 = load ptr, ptr %78, align 8, !tbaa !247
  br label %157

157:                                              ; preds = %155, %196
  %158 = phi i64 [ 0, %155 ], [ %200, %196 ]
  %159 = phi ptr [ %151, %155 ], [ %201, %196 ]
  %160 = phi ptr [ %86, %155 ], [ %199, %196 ]
  %161 = phi ptr [ %87, %155 ], [ %198, %196 ]
  %162 = phi i32 [ 0, %155 ], [ %197, %196 ]
  %163 = getelementptr inbounds %struct.MeshElemMap, ptr %159, i64 %85
  %164 = load ptr, ptr %163, align 8, !tbaa !260
  %165 = getelementptr inbounds i32, ptr %164, i64 %158
  %166 = load i32, ptr %165, align 4, !tbaa !87
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.MEdge, ptr %156, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !261
  %170 = zext i32 %169 to i64
  %171 = icmp eq i64 %85, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %157
  %173 = getelementptr inbounds %struct.MEdge, ptr %156, i64 %167, i32 1
  %174 = load i32, ptr %173, align 4, !tbaa !263
  br label %175

175:                                              ; preds = %157, %172
  %176 = phi i32 [ %174, %172 ], [ %169, %157 ]
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.MVert, ptr %145, i64 %177, i32 2
  %179 = load i8, ptr %178, align 2, !tbaa !120
  %180 = and i8 %179, 1
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %175
  %183 = load ptr, ptr %6, align 8, !tbaa !86
  %184 = getelementptr inbounds ptr, ptr %183, i64 %177
  %185 = load ptr, ptr %184, align 8, !tbaa !86
  %186 = icmp eq ptr %161, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %182
  %188 = load ptr, ptr %161, align 8, !tbaa !254
  br label %191

189:                                              ; preds = %182
  %190 = alloca [16 x i8], align 16
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi ptr [ %161, %187 ], [ %190, %189 ]
  %193 = phi ptr [ %188, %187 ], [ null, %189 ]
  store ptr %160, ptr %192, align 8, !tbaa !254
  %194 = getelementptr inbounds %struct.LinkNode, ptr %192, i64 0, i32 1
  store ptr %185, ptr %194, align 8, !tbaa !256
  %195 = add nsw i32 %162, 1
  br label %196

196:                                              ; preds = %191, %175
  %197 = phi i32 [ %195, %191 ], [ %162, %175 ]
  %198 = phi ptr [ %193, %191 ], [ %161, %175 ]
  %199 = phi ptr [ %192, %191 ], [ %160, %175 ]
  %200 = add nuw nsw i64 %158, 1
  %201 = load ptr, ptr %8, align 8, !tbaa !86
  %202 = getelementptr inbounds %struct.MeshElemMap, ptr %201, i64 %85, i32 1
  %203 = load i32, ptr %202, align 8, !tbaa !258
  %204 = sext i32 %203 to i64
  %205 = icmp slt i64 %200, %204
  br i1 %205, label %157, label %206, !llvm.loop !264

206:                                              ; preds = %196, %150, %144, %88, %140
  %207 = phi i32 [ %141, %140 ], [ 0, %88 ], [ 0, %144 ], [ 0, %150 ], [ %197, %196 ]
  %208 = phi ptr [ %142, %140 ], [ %87, %88 ], [ %87, %144 ], [ %87, %150 ], [ %198, %196 ]
  %209 = phi ptr [ %143, %140 ], [ %86, %88 ], [ %86, %144 ], [ %86, %150 ], [ %199, %196 ]
  %210 = icmp eq i32 %207, 0
  br i1 %210, label %270, label %211

211:                                              ; preds = %206
  %212 = sitofp i32 %207 to float
  %213 = fdiv float 1.000000e+00, %212
  br label %215

214:                                              ; preds = %229, %228
  br label %215, !llvm.loop !265

215:                                              ; preds = %214, %211
  %216 = phi ptr [ %208, %211 ], [ %224, %214 ]
  %217 = phi ptr [ %209, %211 ], [ %225, %214 ]
  %218 = icmp eq ptr %217, null
  br i1 %218, label %223, label %219

219:                                              ; preds = %215
  %220 = load ptr, ptr %217, align 8, !tbaa !254
  store ptr %216, ptr %217, align 8, !tbaa !254
  %221 = getelementptr inbounds %struct.LinkNode, ptr %217, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !256
  br label %223

223:                                              ; preds = %215, %219
  %224 = phi ptr [ %217, %219 ], [ %216, %215 ]
  %225 = phi ptr [ %220, %219 ], [ null, %215 ]
  %226 = phi ptr [ %222, %219 ], [ null, %215 ]
  %227 = icmp eq ptr %226, null
  br i1 %227, label %239, label %228

228:                                              ; preds = %223
  br i1 %79, label %229, label %214

229:                                              ; preds = %228, %229
  %230 = phi i64 [ %237, %229 ], [ 0, %228 ]
  %231 = getelementptr inbounds i32, ptr %14, i64 %230
  %232 = load i32, ptr %231, align 4, !tbaa !87
  %233 = call float @defvert_find_weight(ptr noundef nonnull %226, i32 noundef %232) #13
  %234 = getelementptr inbounds float, ptr %15, i64 %230
  %235 = load float, ptr %234, align 4, !tbaa !196
  %236 = call float @llvm.fmuladd.f32(float %213, float %233, float %235)
  store float %236, ptr %234, align 4, !tbaa !196
  %237 = add nuw nsw i64 %230, 1
  %238 = icmp eq i64 %237, %82
  br i1 %238, label %214, label %229, !llvm.loop !266

239:                                              ; preds = %223
  %240 = load ptr, ptr %6, align 8, !tbaa !86
  %241 = getelementptr inbounds ptr, ptr %240, i64 %85
  %242 = load ptr, ptr %241, align 8, !tbaa !86
  br i1 %80, label %243, label %270

243:                                              ; preds = %239, %267
  %244 = phi i64 [ %268, %267 ], [ 0, %239 ]
  %245 = getelementptr inbounds float, ptr %15, i64 %244
  %246 = load float, ptr %245, align 4, !tbaa !196
  %247 = fcmp ogt float %246, 0.000000e+00
  %248 = getelementptr inbounds i32, ptr %14, i64 %244
  %249 = load i32, ptr %248, align 4, !tbaa !87
  br i1 %247, label %250, label %252

250:                                              ; preds = %243
  %251 = call ptr @defvert_verify_index(ptr noundef %242, i32 noundef %249) #13
  br label %254

252:                                              ; preds = %243
  %253 = call ptr @defvert_find_index(ptr noundef %242, i32 noundef %249) #13
  br label %254

254:                                              ; preds = %252, %250
  %255 = phi ptr [ %251, %250 ], [ %253, %252 ]
  %256 = icmp eq ptr %255, null
  br i1 %256, label %267, label %257

257:                                              ; preds = %254
  %258 = getelementptr inbounds %struct.MDeformWeight, ptr %255, i64 0, i32 1
  %259 = load float, ptr %258, align 4, !tbaa !131
  %260 = fmul float %11, %259
  %261 = call float @llvm.fmuladd.f32(float %4, float %246, float %260)
  store float %261, ptr %258, align 4, !tbaa !131
  %262 = fcmp olt float %261, 0.000000e+00
  br i1 %262, label %265, label %263

263:                                              ; preds = %257
  %264 = fcmp ogt float %261, 1.000000e+00
  br i1 %264, label %265, label %267

265:                                              ; preds = %263, %257
  %266 = phi float [ 0.000000e+00, %257 ], [ 1.000000e+00, %263 ]
  store float %266, ptr %258, align 4, !tbaa !131
  br label %267

267:                                              ; preds = %265, %263, %254
  store float 0.000000e+00, ptr %245, align 4, !tbaa !196
  %268 = add nuw nsw i64 %244, 1
  %269 = icmp eq i64 %268, %83
  br i1 %269, label %270, label %243, !llvm.loop !267

270:                                              ; preds = %267, %239, %206
  %271 = phi ptr [ %208, %206 ], [ %224, %239 ], [ %224, %267 ]
  %272 = phi ptr [ %209, %206 ], [ %225, %239 ], [ %225, %267 ]
  %273 = add nuw nsw i64 %85, 1
  %274 = icmp eq i64 %273, %81
  br i1 %274, label %275, label %84, !llvm.loop !268

275:                                              ; preds = %270, %70
  br i1 %61, label %276, label %281

276:                                              ; preds = %275
  %277 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  %278 = load ptr, ptr %8, align 8, !tbaa !86
  call void %277(ptr noundef %278) #13
  %279 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  %280 = load ptr, ptr %9, align 8, !tbaa !86
  call void %279(ptr noundef %280) #13
  br label %281

281:                                              ; preds = %275, %276
  %282 = load ptr, ptr %6, align 8, !tbaa !86
  %283 = icmp eq ptr %282, null
  br i1 %283, label %286, label %284

284:                                              ; preds = %281
  %285 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %285(ptr noundef nonnull %282) #13
  br label %286

286:                                              ; preds = %284, %281
  br i1 %27, label %295, label %287

287:                                              ; preds = %286
  %288 = load ptr, ptr %58, align 8, !tbaa !46
  %289 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %288, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 1), !range !53
  %290 = load ptr, ptr %6, align 8, !tbaa !86
  %291 = load i32, ptr %7, align 4, !tbaa !87
  call void @ED_vgroup_parray_mirror_sync(ptr noundef %0, ptr noundef %290, i32 noundef %291, ptr noundef %1, i32 noundef %2)
  %292 = icmp eq ptr %290, null
  br i1 %292, label %295, label %293

293:                                              ; preds = %287
  %294 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %294(ptr noundef nonnull %290) #13
  br label %295

295:                                              ; preds = %287, %293, %286
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret void
}

declare void @BKE_mesh_vert_edge_map_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #10

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @inv_cmp_mdef_vert_weights(ptr noundef %0, ptr noundef %1) #12 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr %0, ptr %3, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr %1, ptr %4, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.MDeformWeight, ptr %0, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !131
  %7 = getelementptr inbounds %struct.MDeformWeight, ptr %1, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !131
  %9 = fcmp olt float %6, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = fcmp ogt float %6, %8
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = icmp ult ptr %3, %4
  %14 = select i1 %13, i32 1, i32 -1
  br label %15

15:                                               ; preds = %12, %10, %2
  %16 = phi i32 [ 1, %2 ], [ -1, %10 ], [ %14, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 %16
}

declare void @ED_mesh_report_mirror(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_editable_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @defgroup_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @ed_vgroup_transfer_weight(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #0 {
  %8 = alloca %struct.BVHTreeFromMesh, align 8
  %9 = alloca %struct.BVHTreeFromMesh, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.BVHTreeNearest, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x float], align 16
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %9) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %9, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #13
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !34
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %32, label %20

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !50
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.Mesh, ptr %26, i64 0, i32 46
  %28 = load i8, ptr %27, align 1, !tbaa !136
  %29 = and i8 %28, 32
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %20
  br label %32

32:                                               ; preds = %7, %24, %31
  %33 = phi i8 [ 0, %31 ], [ 1, %7 ], [ 1, %24 ]
  %34 = getelementptr inbounds %struct.bDeformGroup, ptr %2, i64 0, i32 2
  %35 = tail call ptr @defgroup_find_name(ptr noundef %0, ptr noundef nonnull %34) #13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = tail call ptr @BKE_defgroup_new(ptr noundef %0, ptr noundef nonnull %34) #13
  br label %39

39:                                               ; preds = %37, %32
  %40 = phi ptr [ %38, %37 ], [ %35, %32 ]
  %41 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !269
  %42 = or i64 %41, 4
  %43 = tail call ptr @mesh_get_derived_final(ptr noundef %3, ptr noundef %1, i64 noundef %42) #13
  %44 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = icmp eq ptr %43, null
  br i1 %46, label %73, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %43, i64 0, i32 50
  %49 = load ptr, ptr %48, align 8, !tbaa !270
  %50 = tail call ptr %49(ptr noundef nonnull %43, i32 noundef 2) #13
  %51 = icmp ne ptr %50, null
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.DerivedMesh, ptr %43, i64 0, i32 23
  %54 = load ptr, ptr %53, align 8, !tbaa !271
  %55 = tail call i32 %54(ptr noundef nonnull %43) #13
  %56 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %57 = sext i32 %55 to i64
  %58 = shl nsw i64 %57, 3
  %59 = tail call ptr %56(i64 noundef %58, ptr noundef nonnull @.str.2) #13
  %60 = icmp sgt i32 %55, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %52
  %62 = zext nneg i32 %55 to i64
  br label %63

63:                                               ; preds = %61, %63
  %64 = phi i64 [ 0, %61 ], [ %67, %63 ]
  %65 = getelementptr inbounds %struct.MDeformVert, ptr %50, i64 %64
  %66 = getelementptr inbounds ptr, ptr %59, i64 %64
  store ptr %65, ptr %66, align 8, !tbaa !86
  %67 = add nuw nsw i64 %64, 1
  %68 = icmp eq i64 %67, %62
  br i1 %68, label %69, label %63, !llvm.loop !272

69:                                               ; preds = %63, %52, %47
  %70 = phi ptr [ null, %47 ], [ %59, %52 ], [ %59, %63 ]
  %71 = phi i32 [ 0, %47 ], [ %55, %52 ], [ %55, %63 ]
  %72 = zext i1 %51 to i8
  br label %73

73:                                               ; preds = %69, %39
  %74 = phi ptr [ null, %39 ], [ %70, %69 ]
  %75 = phi i32 [ 0, %39 ], [ %71, %69 ]
  %76 = phi i8 [ 0, %39 ], [ %72, %69 ]
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.wmOperator, ptr %6, i64 0, i32 8
  %80 = load ptr, ptr %79, align 8, !tbaa !180
  tail call void @BKE_report(ptr noundef %80, i32 noundef 32, ptr noundef nonnull @.str.219) #13
  br label %497

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.Mesh, ptr %45, i64 0, i32 17
  %83 = load ptr, ptr %82, align 8, !tbaa !107
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %109

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.ID, ptr %45, i64 0, i32 4
  %87 = load i16, ptr %86, align 8, !tbaa !100
  switch i16 %87, label %109 [
    i16 17741, label %88
    i16 21580, label %93
  ]

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.Mesh, ptr %45, i64 0, i32 21
  %90 = getelementptr inbounds %struct.Mesh, ptr %45, i64 0, i32 26
  %91 = load i32, ptr %90, align 8, !tbaa !106
  %92 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %89, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %91) #13
  store ptr %92, ptr %82, align 8, !tbaa !107
  br label %109

93:                                               ; preds = %85
  %94 = load ptr, ptr @MEM_callocN, align 8, !tbaa !86
  %95 = getelementptr inbounds %struct.Lattice, ptr %45, i64 0, i32 2
  %96 = load i16, ptr %95, align 8, !tbaa !81
  %97 = sext i16 %96 to i64
  %98 = shl nsw i64 %97, 4
  %99 = getelementptr inbounds %struct.Lattice, ptr %45, i64 0, i32 3
  %100 = load i16, ptr %99, align 2, !tbaa !82
  %101 = sext i16 %100 to i64
  %102 = mul nsw i64 %98, %101
  %103 = getelementptr inbounds %struct.Lattice, ptr %45, i64 0, i32 4
  %104 = load i16, ptr %103, align 4, !tbaa !83
  %105 = sext i16 %104 to i64
  %106 = mul nsw i64 %102, %105
  %107 = tail call ptr %94(i64 noundef %106, ptr noundef nonnull @.str.1) #13
  %108 = getelementptr inbounds %struct.Lattice, ptr %45, i64 0, i32 24
  store ptr %107, ptr %108, align 8, !tbaa !80
  br label %109

109:                                              ; preds = %93, %88, %85, %81
  %110 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %45, ptr noundef nonnull %10, ptr noundef nonnull %12, i8 noundef zeroext %33), !range !53
  %111 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %112 = tail call i32 @BLI_findindex(ptr noundef nonnull %111, ptr noundef %2) #13
  %113 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %114 = tail call i32 @BLI_findindex(ptr noundef nonnull %113, ptr noundef %40) #13
  %115 = getelementptr inbounds %struct.Mesh, ptr %45, i64 0, i32 15
  %116 = load ptr, ptr %115, align 8, !tbaa !119
  %117 = getelementptr inbounds %struct.DerivedMesh, ptr %43, i64 0, i32 31
  %118 = load ptr, ptr %117, align 8, !tbaa !273
  %119 = tail call ptr %118(ptr noundef %43) #13
  %120 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %121 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %122 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %120, ptr noundef nonnull %121) #13
  %123 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %16, ptr noundef nonnull %120, ptr noundef nonnull %123) #13
  %124 = icmp eq i32 %5, 1
  br i1 %124, label %125, label %146

125:                                              ; preds = %109
  %126 = getelementptr inbounds %struct.Mesh, ptr %45, i64 0, i32 26
  %127 = load i32, ptr %126, align 8, !tbaa !106
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %125
  %130 = load ptr, ptr %10, align 8, !tbaa !86
  br label %131

131:                                              ; preds = %129, %141
  %132 = phi ptr [ %143, %141 ], [ %130, %129 ]
  %133 = phi i32 [ %142, %141 ], [ 0, %129 ]
  %134 = load ptr, ptr %132, align 8, !tbaa !86
  %135 = icmp eq ptr %134, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %131
  %137 = call ptr @defvert_find_index(ptr noundef nonnull %134, i32 noundef %114) #13
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %136
  %140 = load ptr, ptr %132, align 8, !tbaa !86
  call void @defvert_remove_group(ptr noundef %140, ptr noundef nonnull %137) #13
  br label %141

141:                                              ; preds = %136, %139, %131
  %142 = add nuw nsw i32 %133, 1
  %143 = getelementptr inbounds ptr, ptr %132, i64 1
  %144 = load i32, ptr %126, align 8, !tbaa !106
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %131, label %146, !llvm.loop !274

146:                                              ; preds = %141, %125, %109
  switch i32 %4, label %485 [
    i32 1, label %147
    i32 2, label %221
    i32 3, label %265
    i32 4, label %353
  ]

147:                                              ; preds = %146
  %148 = icmp eq ptr %0, %1
  %149 = load i32, ptr %12, align 4
  %150 = icmp eq i32 %149, 0
  %151 = select i1 %148, i1 true, i1 %150
  br i1 %151, label %163, label %152

152:                                              ; preds = %147
  %153 = icmp ne i32 %149, %75
  %154 = icmp eq ptr %74, null
  %155 = select i1 %153, i1 true, i1 %154
  %156 = load ptr, ptr %10, align 8
  %157 = icmp eq ptr %156, null
  %158 = select i1 %155, i1 true, i1 %157
  br i1 %158, label %163, label %159

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.Mesh, ptr %45, i64 0, i32 26
  %161 = load i32, ptr %160, align 8, !tbaa !106
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %192, label %485

163:                                              ; preds = %152, %147
  br i1 %36, label %164, label %178

164:                                              ; preds = %163
  %165 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %166 = load i16, ptr %165, align 8, !tbaa !50
  switch i16 %166, label %177 [
    i16 1, label %167
    i16 22, label %169
  ]

167:                                              ; preds = %164
  %168 = call ptr @BKE_editmesh_from_object(ptr noundef %0) #13
  br label %173

169:                                              ; preds = %164
  %170 = load ptr, ptr %44, align 8, !tbaa !46
  %171 = getelementptr inbounds %struct.Lattice, ptr %170, i64 0, i32 26
  %172 = load ptr, ptr %171, align 8, !tbaa !51
  br label %173

173:                                              ; preds = %169, %167
  %174 = phi ptr [ %168, %167 ], [ %172, %169 ]
  %175 = icmp eq ptr %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  call fastcc void @vgroup_delete_edit_mode(ptr noundef %0, ptr noundef %40)
  br label %178

177:                                              ; preds = %173, %164
  call fastcc void @vgroup_delete_object_mode(ptr noundef %0, ptr noundef %40)
  br label %178

178:                                              ; preds = %177, %176, %163
  %179 = icmp eq ptr %74, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %178
  %181 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %181(ptr noundef nonnull %74) #13
  br label %182

182:                                              ; preds = %180, %178
  %183 = load ptr, ptr %10, align 8, !tbaa !86
  %184 = icmp eq ptr %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %182
  %186 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %186(ptr noundef nonnull %183) #13
  br label %187

187:                                              ; preds = %185, %182
  %188 = getelementptr inbounds %struct.DerivedMesh, ptr %43, i64 0, i32 95
  %189 = load ptr, ptr %188, align 8, !tbaa !200
  call void %189(ptr noundef %43) #13
  %190 = getelementptr inbounds %struct.wmOperator, ptr %6, i64 0, i32 8
  %191 = load ptr, ptr %190, align 8, !tbaa !180
  call void @BKE_report(ptr noundef %191, i32 noundef 32, ptr noundef nonnull @.str.220) #13
  br label %497

192:                                              ; preds = %159, %215
  %193 = phi ptr [ %218, %215 ], [ %74, %159 ]
  %194 = phi ptr [ %217, %215 ], [ %156, %159 ]
  %195 = phi i32 [ %216, %215 ], [ 0, %159 ]
  %196 = load ptr, ptr %194, align 8, !tbaa !86
  %197 = icmp eq ptr %196, null
  br i1 %197, label %215, label %198

198:                                              ; preds = %192
  %199 = load ptr, ptr %193, align 8, !tbaa !86
  %200 = call ptr @defvert_find_index(ptr noundef %199, i32 noundef %112) #13
  %201 = icmp eq ptr %200, null
  br i1 %201, label %215, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.MDeformWeight, ptr %200, i64 0, i32 1
  %204 = load float, ptr %203, align 4, !tbaa !131
  %205 = fcmp une float %204, 0.000000e+00
  br i1 %205, label %206, label %215

206:                                              ; preds = %202
  %207 = load ptr, ptr %194, align 8, !tbaa !86
  %208 = call ptr @defvert_verify_index(ptr noundef %207, i32 noundef %114) #13
  %209 = getelementptr inbounds %struct.MDeformWeight, ptr %208, i64 0, i32 1
  %210 = load float, ptr %203, align 4, !tbaa !131
  switch i32 %5, label %215 [
    i32 1, label %214
    i32 2, label %211
  ]

211:                                              ; preds = %206
  %212 = load float, ptr %209, align 4, !tbaa !196
  %213 = fcmp oeq float %212, 0.000000e+00
  br i1 %213, label %214, label %215

214:                                              ; preds = %211, %206
  store float %210, ptr %209, align 4, !tbaa !196
  br label %215

215:                                              ; preds = %214, %211, %206, %198, %202, %192
  %216 = add nuw nsw i32 %195, 1
  %217 = getelementptr inbounds ptr, ptr %194, i64 1
  %218 = getelementptr inbounds ptr, ptr %193, i64 1
  %219 = load i32, ptr %160, align 8, !tbaa !106
  %220 = icmp slt i32 %216, %219
  br i1 %220, label %192, label %485, !llvm.loop !275

221:                                              ; preds = %146
  %222 = call ptr @bvhtree_from_mesh_verts(ptr noundef nonnull %8, ptr noundef %43, float noundef 0x3E80000000000000, i32 noundef 2, i32 noundef 6) #13
  %223 = getelementptr inbounds %struct.Mesh, ptr %45, i64 0, i32 26
  %224 = load i32, ptr %223, align 8, !tbaa !106
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %483

226:                                              ; preds = %221
  %227 = load ptr, ptr %10, align 8, !tbaa !86
  %228 = getelementptr inbounds %struct.BVHTreeNearest, ptr %11, i64 0, i32 3
  %229 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %8, i64 0, i32 1
  br label %230

230:                                              ; preds = %226, %259
  %231 = phi ptr [ %227, %226 ], [ %261, %259 ]
  %232 = phi ptr [ %116, %226 ], [ %262, %259 ]
  %233 = phi i32 [ 0, %226 ], [ %260, %259 ]
  %234 = load ptr, ptr %231, align 8, !tbaa !86
  %235 = icmp eq ptr %234, null
  br i1 %235, label %259, label %236

236:                                              ; preds = %230
  store float 0x47EFFFFFE0000000, ptr %228, align 4, !tbaa !276
  store i32 -1, ptr %11, align 4, !tbaa !278
  call void @mul_v3_m4v3(ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef %232) #13
  %237 = load ptr, ptr %8, align 8, !tbaa !279
  %238 = load ptr, ptr %229, align 8, !tbaa !281
  %239 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %237, ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef %238, ptr noundef nonnull %8) #13
  %240 = load i32, ptr %11, align 4, !tbaa !278
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds ptr, ptr %74, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !86
  %244 = call ptr @defvert_find_index(ptr noundef %243, i32 noundef %112) #13
  %245 = icmp eq ptr %244, null
  br i1 %245, label %259, label %246

246:                                              ; preds = %236
  %247 = getelementptr inbounds %struct.MDeformWeight, ptr %244, i64 0, i32 1
  %248 = load float, ptr %247, align 4, !tbaa !131
  %249 = fcmp une float %248, 0.000000e+00
  br i1 %249, label %250, label %259

250:                                              ; preds = %246
  %251 = load ptr, ptr %231, align 8, !tbaa !86
  %252 = call ptr @defvert_verify_index(ptr noundef %251, i32 noundef %114) #13
  %253 = getelementptr inbounds %struct.MDeformWeight, ptr %252, i64 0, i32 1
  %254 = load float, ptr %247, align 4, !tbaa !131
  switch i32 %5, label %259 [
    i32 1, label %258
    i32 2, label %255
  ]

255:                                              ; preds = %250
  %256 = load float, ptr %253, align 4, !tbaa !196
  %257 = fcmp oeq float %256, 0.000000e+00
  br i1 %257, label %258, label %259

258:                                              ; preds = %255, %250
  store float %254, ptr %253, align 4, !tbaa !196
  br label %259

259:                                              ; preds = %258, %255, %250, %236, %246, %230
  %260 = add nuw nsw i32 %233, 1
  %261 = getelementptr inbounds ptr, ptr %231, i64 1
  %262 = getelementptr inbounds %struct.MVert, ptr %232, i64 1
  %263 = load i32, ptr %223, align 8, !tbaa !106
  %264 = icmp slt i32 %260, %263
  br i1 %264, label %230, label %483, !llvm.loop !282

265:                                              ; preds = %146
  call void @DM_ensure_tessface(ptr noundef %43) #13
  %266 = getelementptr inbounds %struct.DerivedMesh, ptr %43, i64 0, i32 33
  %267 = load ptr, ptr %266, align 8, !tbaa !283
  %268 = call ptr %267(ptr noundef %43) #13
  %269 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %9, ptr noundef %43, float noundef 0x3E80000000000000, i32 noundef 2, i32 noundef 6) #13
  %270 = getelementptr inbounds %struct.Mesh, ptr %45, i64 0, i32 26
  %271 = load i32, ptr %270, align 8, !tbaa !106
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %273, label %483

273:                                              ; preds = %265
  %274 = load ptr, ptr %10, align 8, !tbaa !86
  %275 = getelementptr inbounds %struct.BVHTreeNearest, ptr %11, i64 0, i32 3
  %276 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %9, i64 0, i32 1
  br label %277

277:                                              ; preds = %273, %347
  %278 = phi ptr [ %274, %273 ], [ %349, %347 ]
  %279 = phi ptr [ %116, %273 ], [ %350, %347 ]
  %280 = phi i32 [ 0, %273 ], [ %348, %347 ]
  %281 = load ptr, ptr %278, align 8, !tbaa !86
  %282 = icmp eq ptr %281, null
  br i1 %282, label %347, label %283

283:                                              ; preds = %277
  store float 0x47EFFFFFE0000000, ptr %275, align 4, !tbaa !276
  store i32 -1, ptr %11, align 4, !tbaa !278
  call void @mul_v3_m4v3(ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef %279) #13
  %284 = load ptr, ptr %9, align 8, !tbaa !279
  %285 = load ptr, ptr %276, align 8, !tbaa !281
  %286 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %284, ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef %285, ptr noundef nonnull %9) #13
  %287 = load i32, ptr %11, align 4, !tbaa !278
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.MFace, ptr %268, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !284
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds %struct.MVert, ptr %119, i64 %291
  %293 = getelementptr inbounds %struct.MFace, ptr %268, i64 %288, i32 1
  %294 = load i32, ptr %293, align 4, !tbaa !286
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds %struct.MVert, ptr %119, i64 %295
  %297 = getelementptr inbounds %struct.MFace, ptr %268, i64 %288, i32 2
  %298 = load i32, ptr %297, align 4, !tbaa !287
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds %struct.MVert, ptr %119, i64 %299
  %301 = call float @normal_tri_v3(ptr noundef nonnull %15, ptr noundef %292, ptr noundef %296, ptr noundef %300) #13
  %302 = load i32, ptr %289, align 4, !tbaa !284
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds %struct.MVert, ptr %119, i64 %303
  call void @project_v3_plane(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef %304) #13
  %305 = load i32, ptr %289, align 4, !tbaa !284
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds %struct.MVert, ptr %119, i64 %306
  %308 = load i32, ptr %293, align 4, !tbaa !286
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds %struct.MVert, ptr %119, i64 %309
  %311 = load i32, ptr %297, align 4, !tbaa !287
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds %struct.MVert, ptr %119, i64 %312
  %314 = getelementptr inbounds %struct.MFace, ptr %268, i64 %288, i32 3
  %315 = load i32, ptr %314, align 4, !tbaa !288
  %316 = icmp eq i32 %315, 0
  %317 = zext i32 %315 to i64
  %318 = getelementptr inbounds %struct.MVert, ptr %119, i64 %317
  %319 = select i1 %316, ptr null, ptr %318
  call void @interp_weights_face_v3(ptr noundef nonnull %13, ptr noundef %307, ptr noundef %310, ptr noundef %313, ptr noundef %319, ptr noundef nonnull %14) #13
  %320 = load i32, ptr %314, align 4, !tbaa !288
  %321 = icmp eq i32 %320, 0
  %322 = select i1 %321, i64 2, i64 3
  br label %323

323:                                              ; preds = %323, %283
  %324 = phi i64 [ %335, %323 ], [ %322, %283 ]
  %325 = phi float [ %334, %323 ], [ 0.000000e+00, %283 ]
  %326 = getelementptr inbounds i32, ptr %289, i64 %324
  %327 = load i32, ptr %326, align 4, !tbaa !284
  %328 = getelementptr inbounds [4 x float], ptr %13, i64 0, i64 %324
  %329 = load float, ptr %328, align 4, !tbaa !196
  %330 = sext i32 %327 to i64
  %331 = getelementptr inbounds ptr, ptr %74, i64 %330
  %332 = load ptr, ptr %331, align 8, !tbaa !86
  %333 = call float @defvert_find_weight(ptr noundef %332, i32 noundef %112) #13
  %334 = call float @llvm.fmuladd.f32(float %329, float %333, float %325)
  %335 = add nsw i64 %324, -1
  %336 = icmp eq i64 %324, 0
  br i1 %336, label %337, label %323, !llvm.loop !289

337:                                              ; preds = %323
  %338 = fcmp ogt float %334, 0.000000e+00
  br i1 %338, label %339, label %347

339:                                              ; preds = %337
  %340 = load ptr, ptr %278, align 8, !tbaa !86
  %341 = call ptr @defvert_verify_index(ptr noundef %340, i32 noundef %114) #13
  %342 = getelementptr inbounds %struct.MDeformWeight, ptr %341, i64 0, i32 1
  switch i32 %5, label %347 [
    i32 1, label %346
    i32 2, label %343
  ]

343:                                              ; preds = %339
  %344 = load float, ptr %342, align 4, !tbaa !196
  %345 = fcmp oeq float %344, 0.000000e+00
  br i1 %345, label %346, label %347

346:                                              ; preds = %343, %339
  store float %334, ptr %342, align 4, !tbaa !196
  br label %347

347:                                              ; preds = %346, %343, %339, %337, %277
  %348 = add nuw nsw i32 %280, 1
  %349 = getelementptr inbounds ptr, ptr %278, i64 1
  %350 = getelementptr inbounds %struct.MVert, ptr %279, i64 1
  %351 = load i32, ptr %270, align 8, !tbaa !106
  %352 = icmp slt i32 %348, %351
  br i1 %352, label %277, label %483, !llvm.loop !290

353:                                              ; preds = %146
  call void @DM_ensure_tessface(ptr noundef %43) #13
  %354 = getelementptr inbounds %struct.DerivedMesh, ptr %43, i64 0, i32 33
  %355 = load ptr, ptr %354, align 8, !tbaa !283
  %356 = call ptr %355(ptr noundef %43) #13
  %357 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %9, ptr noundef %43, float noundef 0x3E80000000000000, i32 noundef 2, i32 noundef 6) #13
  %358 = getelementptr inbounds %struct.Mesh, ptr %45, i64 0, i32 26
  %359 = load i32, ptr %358, align 8, !tbaa !106
  %360 = icmp sgt i32 %359, 0
  br i1 %360, label %361, label %483

361:                                              ; preds = %353
  %362 = load ptr, ptr %10, align 8, !tbaa !86
  %363 = getelementptr inbounds %struct.BVHTreeNearest, ptr %11, i64 0, i32 3
  %364 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %9, i64 0, i32 1
  %365 = getelementptr inbounds float, ptr %14, i64 1
  %366 = getelementptr inbounds float, ptr %14, i64 2
  br label %367

367:                                              ; preds = %361, %477
  %368 = phi ptr [ %362, %361 ], [ %479, %477 ]
  %369 = phi ptr [ %116, %361 ], [ %480, %477 ]
  %370 = phi i32 [ 0, %361 ], [ %478, %477 ]
  %371 = load ptr, ptr %368, align 8, !tbaa !86
  %372 = icmp eq ptr %371, null
  br i1 %372, label %477, label %373

373:                                              ; preds = %367
  store float 0x47EFFFFFE0000000, ptr %363, align 4, !tbaa !276
  store i32 -1, ptr %11, align 4, !tbaa !278
  call void @mul_v3_m4v3(ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef %369) #13
  %374 = load ptr, ptr %9, align 8, !tbaa !279
  %375 = load ptr, ptr %364, align 8, !tbaa !281
  %376 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %374, ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef %375, ptr noundef nonnull %9) #13
  %377 = load i32, ptr %11, align 4, !tbaa !278
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.MFace, ptr %356, i64 %378
  %380 = load i32, ptr %379, align 4, !tbaa !284
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds %struct.MVert, ptr %119, i64 %381
  %383 = load float, ptr %382, align 4, !tbaa !196
  %384 = load float, ptr %14, align 4, !tbaa !196
  %385 = fsub float %383, %384
  %386 = getelementptr inbounds float, ptr %382, i64 1
  %387 = load float, ptr %386, align 4, !tbaa !196
  %388 = load float, ptr %365, align 4, !tbaa !196
  %389 = fsub float %387, %388
  %390 = getelementptr inbounds float, ptr %382, i64 2
  %391 = load float, ptr %390, align 4, !tbaa !196
  %392 = load float, ptr %366, align 4, !tbaa !196
  %393 = fsub float %391, %392
  %394 = fmul float %389, %389
  %395 = call float @llvm.fmuladd.f32(float %385, float %385, float %394)
  %396 = call float @llvm.fmuladd.f32(float %393, float %393, float %395)
  %397 = getelementptr inbounds %struct.MFace, ptr %356, i64 %378, i32 1
  %398 = load i32, ptr %397, align 4, !tbaa !286
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds %struct.MVert, ptr %119, i64 %399
  %401 = load float, ptr %400, align 4, !tbaa !196
  %402 = fsub float %401, %384
  %403 = getelementptr inbounds float, ptr %400, i64 1
  %404 = load float, ptr %403, align 4, !tbaa !196
  %405 = fsub float %404, %388
  %406 = getelementptr inbounds float, ptr %400, i64 2
  %407 = load float, ptr %406, align 4, !tbaa !196
  %408 = fsub float %407, %392
  %409 = fmul float %405, %405
  %410 = call float @llvm.fmuladd.f32(float %402, float %402, float %409)
  %411 = call float @llvm.fmuladd.f32(float %408, float %408, float %410)
  %412 = getelementptr inbounds %struct.MFace, ptr %356, i64 %378, i32 2
  %413 = load i32, ptr %412, align 4, !tbaa !287
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds %struct.MVert, ptr %119, i64 %414
  %416 = load float, ptr %415, align 4, !tbaa !196
  %417 = fsub float %416, %384
  %418 = getelementptr inbounds float, ptr %415, i64 1
  %419 = load float, ptr %418, align 4, !tbaa !196
  %420 = fsub float %419, %388
  %421 = getelementptr inbounds float, ptr %415, i64 2
  %422 = load float, ptr %421, align 4, !tbaa !196
  %423 = fsub float %422, %392
  %424 = fmul float %420, %420
  %425 = call float @llvm.fmuladd.f32(float %417, float %417, float %424)
  %426 = call float @llvm.fmuladd.f32(float %423, float %423, float %425)
  %427 = getelementptr inbounds %struct.MFace, ptr %356, i64 %378, i32 3
  %428 = load i32, ptr %427, align 4, !tbaa !288
  %429 = icmp eq i32 %428, 0
  %430 = fcmp olt float %396, %411
  %431 = fcmp olt float %396, %426
  %432 = select i1 %430, i1 %431, i1 false
  %433 = fcmp olt float %411, %426
  %434 = select i1 %433, ptr %397, ptr %412
  %435 = select i1 %432, ptr %379, ptr %434
  %436 = load i32, ptr %435, align 4, !tbaa !87
  br i1 %429, label %457, label %437

437:                                              ; preds = %373
  %438 = zext i32 %428 to i64
  %439 = getelementptr inbounds %struct.MVert, ptr %119, i64 %438
  %440 = load float, ptr %439, align 4, !tbaa !196
  %441 = fsub float %440, %384
  %442 = getelementptr inbounds float, ptr %439, i64 1
  %443 = load float, ptr %442, align 4, !tbaa !196
  %444 = fsub float %443, %388
  %445 = getelementptr inbounds float, ptr %439, i64 2
  %446 = load float, ptr %445, align 4, !tbaa !196
  %447 = fsub float %446, %392
  %448 = fmul float %444, %444
  %449 = call float @llvm.fmuladd.f32(float %441, float %441, float %448)
  %450 = call float @llvm.fmuladd.f32(float %447, float %447, float %449)
  %451 = fcmp olt float %450, %396
  %452 = fcmp olt float %450, %411
  %453 = and i1 %451, %452
  %454 = fcmp olt float %450, %426
  %455 = select i1 %453, i1 %454, i1 false
  %456 = select i1 %455, i32 %428, i32 %436
  br label %457

457:                                              ; preds = %437, %373
  %458 = phi i32 [ %436, %373 ], [ %456, %437 ]
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds ptr, ptr %74, i64 %459
  %461 = load ptr, ptr %460, align 8, !tbaa !86
  %462 = call ptr @defvert_find_index(ptr noundef %461, i32 noundef %112) #13
  %463 = icmp eq ptr %462, null
  br i1 %463, label %477, label %464

464:                                              ; preds = %457
  %465 = getelementptr inbounds %struct.MDeformWeight, ptr %462, i64 0, i32 1
  %466 = load float, ptr %465, align 4, !tbaa !131
  %467 = fcmp une float %466, 0.000000e+00
  br i1 %467, label %468, label %477

468:                                              ; preds = %464
  %469 = load ptr, ptr %368, align 8, !tbaa !86
  %470 = call ptr @defvert_verify_index(ptr noundef %469, i32 noundef %114) #13
  %471 = getelementptr inbounds %struct.MDeformWeight, ptr %470, i64 0, i32 1
  %472 = load float, ptr %465, align 4, !tbaa !131
  switch i32 %5, label %477 [
    i32 1, label %476
    i32 2, label %473
  ]

473:                                              ; preds = %468
  %474 = load float, ptr %471, align 4, !tbaa !196
  %475 = fcmp oeq float %474, 0.000000e+00
  br i1 %475, label %476, label %477

476:                                              ; preds = %473, %468
  store float %472, ptr %471, align 4, !tbaa !196
  br label %477

477:                                              ; preds = %476, %473, %468, %457, %464, %367
  %478 = add nuw nsw i32 %370, 1
  %479 = getelementptr inbounds ptr, ptr %368, i64 1
  %480 = getelementptr inbounds %struct.MVert, ptr %369, i64 1
  %481 = load i32, ptr %358, align 8, !tbaa !106
  %482 = icmp slt i32 %478, %481
  br i1 %482, label %367, label %483, !llvm.loop !291

483:                                              ; preds = %477, %347, %259, %353, %265, %221
  %484 = phi ptr [ %8, %221 ], [ %9, %265 ], [ %9, %353 ], [ %8, %259 ], [ %9, %347 ], [ %9, %477 ]
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %484) #13
  br label %485

485:                                              ; preds = %215, %483, %159, %146
  %486 = icmp eq ptr %74, null
  br i1 %486, label %489, label %487

487:                                              ; preds = %485
  %488 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %488(ptr noundef nonnull %74) #13
  br label %489

489:                                              ; preds = %487, %485
  %490 = load ptr, ptr %10, align 8, !tbaa !86
  %491 = icmp eq ptr %490, null
  br i1 %491, label %494, label %492

492:                                              ; preds = %489
  %493 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %493(ptr noundef nonnull %490) #13
  br label %494

494:                                              ; preds = %492, %489
  %495 = getelementptr inbounds %struct.DerivedMesh, ptr %43, i64 0, i32 95
  %496 = load ptr, ptr %495, align 8, !tbaa !200
  call void %496(ptr noundef %43) #13
  br label %497

497:                                              ; preds = %494, %187, %78
  %498 = phi i8 [ 1, %494 ], [ 0, %187 ], [ 0, %78 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #13
  ret i8 %498
}

declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bvhtree_from_mesh_verts(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_bvhtree_find_nearest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @free_bvhtree_from_mesh(ptr noundef) local_unnamed_addr #2

declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #2

declare ptr @bvhtree_from_mesh_faces(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @project_v3_plane(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_weights_face_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @vgroup_sort_name(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bDeformGroup, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.bDeformGroup, ptr %1, i64 0, i32 2
  %5 = tail call i32 @BLI_natstrcmp(ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal fastcc void @vgroup_sort_bone_hierarchy(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = tail call ptr @modifiers_isDeformedByArmature(ptr noundef %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 2
  br label %11

11:                                               ; preds = %4, %7, %2
  %12 = phi ptr [ %1, %2 ], [ %10, %7 ], [ null, %4 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ListBase, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !86
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  br label %20

20:                                               ; preds = %18, %27
  %21 = phi ptr [ %16, %18 ], [ %29, %27 ]
  %22 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 5
  %23 = tail call ptr @defgroup_find_name(ptr noundef %0, ptr noundef nonnull %22) #13
  %24 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 4
  tail call fastcc void @vgroup_sort_bone_hierarchy(ptr noundef %0, ptr noundef nonnull %24)
  %25 = icmp eq ptr %23, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void @BLI_remlink(ptr noundef nonnull %19, ptr noundef nonnull %23) #13
  tail call void @BLI_addhead(ptr noundef nonnull %19, ptr noundef nonnull %23) #13
  br label %27

27:                                               ; preds = %26, %20
  %28 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !86
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %20, !llvm.loop !292

31:                                               ; preds = %27, %14, %11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @vgroup_do_remap(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %6 = tail call i32 @BLI_countlist(ptr noundef nonnull %5) #13
  %7 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !86
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %11 = tail call ptr %7(i64 noundef %10, ptr noundef nonnull @.str.243) #13
  %12 = getelementptr inbounds i32, ptr %11, i64 1
  %13 = load ptr, ptr %5, align 8, !tbaa !86
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %3, %15
  %16 = phi i64 [ %22, %15 ], [ 0, %3 ]
  %17 = phi ptr [ %23, %15 ], [ %13, %3 ]
  %18 = phi ptr [ %21, %15 ], [ %1, %3 ]
  %19 = tail call i32 @BLI_findstringindex(ptr noundef nonnull %5, ptr noundef %18, i32 noundef 16) #13
  %20 = getelementptr inbounds i32, ptr %12, i64 %16
  store i32 %19, ptr %20, align 4, !tbaa !87
  %21 = getelementptr inbounds i8, ptr %18, i64 64
  %22 = add nuw i64 %16, 1
  %23 = load ptr, ptr %17, align 8, !tbaa !86
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %15, !llvm.loop !293

25:                                               ; preds = %15, %3
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %27 = load i32, ptr %26, align 8, !tbaa !34
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %68

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %31 = load i16, ptr %30, align 8, !tbaa !50
  %32 = icmp eq i16 %31, 1
  br i1 %32, label %33, label %64

33:                                               ; preds = %29
  %34 = tail call ptr @BKE_editmesh_from_object(ptr noundef %0) #13
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = getelementptr inbounds %struct.BMesh, ptr %35, i64 0, i32 24
  %37 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %36, i32 noundef 2) #13
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %118, label %39

39:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %40 = load ptr, ptr %34, align 8, !tbaa !57
  %41 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %41, align 4, !tbaa !59
  %42 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %42, align 8, !tbaa !61
  %43 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %43, align 8, !tbaa !62
  %44 = getelementptr inbounds %struct.BMesh, ptr %40, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !63
  store ptr %45, ptr %4, align 8, !tbaa !65
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #13
  %46 = load ptr, ptr %43, align 8, !tbaa !62
  %47 = call ptr %46(ptr noundef nonnull %4) #13
  %48 = icmp eq ptr %47, null
  br i1 %48, label %63, label %49

49:                                               ; preds = %39
  %50 = sext i32 %37 to i64
  br label %51

51:                                               ; preds = %49, %59
  %52 = phi ptr [ %47, %49 ], [ %61, %59 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !66
  %54 = getelementptr inbounds i8, ptr %53, i64 %50
  %55 = getelementptr inbounds %struct.MDeformVert, ptr %54, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !69
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  call void @defvert_remap(ptr noundef %54, ptr noundef nonnull %12, i32 noundef %6) #13
  br label %59

59:                                               ; preds = %51, %58
  %60 = load ptr, ptr %43, align 8, !tbaa !62
  %61 = call ptr %60(ptr noundef nonnull %4) #13
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %51, !llvm.loop !294

63:                                               ; preds = %59, %39
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  br label %118

64:                                               ; preds = %29
  %65 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %66 = load ptr, ptr %65, align 8, !tbaa !180
  tail call void @BKE_report(ptr noundef %66, i32 noundef 32, ptr noundef nonnull @.str.244) #13
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  tail call void %67(ptr noundef %11) #13
  br label %205

68:                                               ; preds = %25
  %69 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %70 = load ptr, ptr %69, align 8, !tbaa !46
  %71 = icmp eq ptr %70, null
  br i1 %71, label %101, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.ID, ptr %70, i64 0, i32 4
  %74 = load i16, ptr %73, align 8, !tbaa !100
  switch i16 %74, label %101 [
    i16 17741, label %75
    i16 21580, label %80
  ]

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.Mesh, ptr %70, i64 0, i32 17
  %77 = load ptr, ptr %76, align 8, !tbaa !107
  %78 = getelementptr inbounds %struct.Mesh, ptr %70, i64 0, i32 26
  %79 = load i32, ptr %78, align 8, !tbaa !106
  br label %101

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.Lattice, ptr %70, i64 0, i32 26
  %82 = load ptr, ptr %81, align 8, !tbaa !51
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %82, align 8, !tbaa !78
  br label %86

86:                                               ; preds = %84, %80
  %87 = phi ptr [ %85, %84 ], [ %70, %80 ]
  %88 = getelementptr inbounds %struct.Lattice, ptr %87, i64 0, i32 24
  %89 = load ptr, ptr %88, align 8, !tbaa !80
  %90 = getelementptr inbounds %struct.Lattice, ptr %87, i64 0, i32 2
  %91 = load i16, ptr %90, align 8, !tbaa !81
  %92 = sext i16 %91 to i32
  %93 = getelementptr inbounds %struct.Lattice, ptr %87, i64 0, i32 3
  %94 = load i16, ptr %93, align 2, !tbaa !82
  %95 = sext i16 %94 to i32
  %96 = mul nsw i32 %95, %92
  %97 = getelementptr inbounds %struct.Lattice, ptr %87, i64 0, i32 4
  %98 = load i16, ptr %97, align 4, !tbaa !83
  %99 = sext i16 %98 to i32
  %100 = mul nsw i32 %96, %99
  br label %101

101:                                              ; preds = %68, %72, %75, %86
  %102 = phi ptr [ %89, %86 ], [ %77, %75 ], [ null, %72 ], [ null, %68 ]
  %103 = phi i32 [ %100, %86 ], [ %79, %75 ], [ 0, %72 ], [ 0, %68 ]
  %104 = icmp eq ptr %102, null
  %105 = icmp eq i32 %103, 0
  %106 = select i1 %104, i1 true, i1 %105
  br i1 %106, label %118, label %107

107:                                              ; preds = %101, %115
  %108 = phi i32 [ %110, %115 ], [ %103, %101 ]
  %109 = phi ptr [ %116, %115 ], [ %102, %101 ]
  %110 = add nsw i32 %108, -1
  %111 = getelementptr inbounds %struct.MDeformVert, ptr %109, i64 0, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !69
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %107
  tail call void @defvert_remap(ptr noundef nonnull %109, ptr noundef nonnull %12, i32 noundef %6) #13
  br label %115

115:                                              ; preds = %114, %107
  %116 = getelementptr inbounds %struct.MDeformVert, ptr %109, i64 1
  %117 = icmp eq i32 %110, 0
  br i1 %117, label %118, label %107, !llvm.loop !295

118:                                              ; preds = %115, %101, %33, %63
  %119 = icmp sgt i32 %6, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %118
  %121 = zext nneg i32 %6 to i64
  br label %122

122:                                              ; preds = %120, %122
  %123 = phi i64 [ 0, %120 ], [ %127, %122 ]
  %124 = getelementptr inbounds i32, ptr %12, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !87
  %126 = add nsw i32 %125, 1
  store i32 %126, ptr %124, align 4, !tbaa !87
  %127 = add nuw nsw i64 %123, 1
  %128 = icmp eq i64 %127, %121
  br i1 %128, label %129, label %122, !llvm.loop !296

129:                                              ; preds = %122, %118
  store i32 0, ptr %11, align 4, !tbaa !87
  %130 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %131 = load ptr, ptr %130, align 8, !tbaa !90
  %132 = icmp eq ptr %131, null
  br i1 %132, label %140, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.SoftBody, ptr %131, i64 0, i32 18
  %135 = load i16, ptr %134, align 4, !tbaa !91
  %136 = sext i16 %135 to i64
  %137 = getelementptr inbounds i32, ptr %11, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !87
  %139 = trunc i32 %138 to i16
  store i16 %139, ptr %134, align 4, !tbaa !91
  br label %140

140:                                              ; preds = %133, %129
  %141 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %142 = load ptr, ptr %141, align 8, !tbaa !86
  %143 = icmp eq ptr %142, null
  br i1 %143, label %178, label %144

144:                                              ; preds = %140, %175
  %145 = phi ptr [ %176, %175 ], [ %142, %140 ]
  %146 = getelementptr inbounds %struct.ModifierData, ptr %145, i64 0, i32 2
  %147 = load i32, ptr %146, align 8, !tbaa !93
  switch i32 %147, label %175 [
    i32 21, label %148
    i32 22, label %150
  ]

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.ExplodeModifierData, ptr %145, i64 0, i32 3
  br label %168

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.ClothModifierData, ptr %145, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !95
  %153 = icmp eq ptr %152, null
  br i1 %153, label %175, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.ClothSimSettings, ptr %152, i64 0, i32 34
  %156 = load i16, ptr %155, align 8, !tbaa !97
  %157 = sext i16 %156 to i64
  %158 = getelementptr inbounds i32, ptr %11, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !87
  %160 = trunc i32 %159 to i16
  store i16 %160, ptr %155, align 8, !tbaa !97
  %161 = getelementptr inbounds %struct.ClothSimSettings, ptr %152, i64 0, i32 33
  %162 = load i16, ptr %161, align 2, !tbaa !99
  %163 = sext i16 %162 to i64
  %164 = getelementptr inbounds i32, ptr %11, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !87
  %166 = trunc i32 %165 to i16
  store i16 %166, ptr %161, align 2, !tbaa !99
  %167 = getelementptr inbounds %struct.ClothSimSettings, ptr %152, i64 0, i32 35
  br label %168

168:                                              ; preds = %148, %154
  %169 = phi ptr [ %167, %154 ], [ %149, %148 ]
  %170 = load i16, ptr %169, align 2, !tbaa !100
  %171 = sext i16 %170 to i64
  %172 = getelementptr inbounds i32, ptr %11, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !87
  %174 = trunc i32 %173 to i16
  store i16 %174, ptr %169, align 2, !tbaa !100
  br label %175

175:                                              ; preds = %168, %150, %144
  %176 = load ptr, ptr %145, align 8, !tbaa !86
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %144, !llvm.loop !101

178:                                              ; preds = %175, %140
  %179 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %180 = load ptr, ptr %179, align 8, !tbaa !86
  %181 = icmp eq ptr %180, null
  br i1 %181, label %197, label %185

182:                                              ; preds = %187
  %183 = load ptr, ptr %186, align 8, !tbaa !86
  %184 = icmp eq ptr %183, null
  br i1 %184, label %197, label %185, !llvm.loop !102

185:                                              ; preds = %178, %182
  %186 = phi ptr [ %183, %182 ], [ %180, %178 ]
  br label %187

187:                                              ; preds = %187, %185
  %188 = phi i64 [ 0, %185 ], [ %195, %187 ]
  %189 = getelementptr inbounds %struct.ParticleSystem, ptr %186, i64 0, i32 36, i64 %188
  %190 = load i16, ptr %189, align 2, !tbaa !100
  %191 = sext i16 %190 to i64
  %192 = getelementptr inbounds i32, ptr %11, i64 %191
  %193 = load i32, ptr %192, align 4, !tbaa !87
  %194 = trunc i32 %193 to i16
  store i16 %194, ptr %189, align 2, !tbaa !100
  %195 = add nuw nsw i64 %188, 1
  %196 = icmp eq i64 %195, 12
  br i1 %196, label %182, label %187, !llvm.loop !103

197:                                              ; preds = %182, %178
  %198 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %199 = load i16, ptr %198, align 2, !tbaa !49
  %200 = zext i16 %199 to i64
  %201 = getelementptr inbounds i32, ptr %11, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !87
  %203 = trunc i32 %202 to i16
  store i16 %203, ptr %198, align 2, !tbaa !49
  %204 = load ptr, ptr @MEM_freeN, align 8, !tbaa !86
  call void %204(ptr noundef nonnull %11) #13
  br label %205

205:                                              ; preds = %197, %64
  %206 = phi i32 [ 4, %197 ], [ 2, %64 ]
  ret i32 %206
}

declare i32 @BLI_natstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @modifiers_isDeformedByArmature(ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_findstringindex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @defvert_remap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_mesh_active_dvert_get_only(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !41, i64 432}
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
!46 = !{!35, !37, i64 296}
!47 = !{!48, !37, i64 168}
!48 = !{!"bArmature", !36, i64 0, !37, i64 120, !43, i64 128, !43, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!49 = !{!35, !40, i64 1126}
!50 = !{!35, !40, i64 136}
!51 = !{!52, !37, i64 272}
!52 = !{!"Lattice", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !40, i64 136, !40, i64 138, !40, i64 140, !40, i64 142, !38, i64 144, !38, i64 145, !38, i64 146, !38, i64 147, !41, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !37, i64 272}
!53 = !{i8 0, i8 2}
!54 = !{!55, !37, i64 272}
!55 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !56, i64 280, !56, i64 480, !56, i64 680, !56, i64 880, !56, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !44, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!56 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!57 = !{!58, !37, i64 0}
!58 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !45, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!59 = !{!60, !38, i64 60}
!60 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !41, i64 56, !38, i64 60}
!61 = !{!60, !37, i64 40}
!62 = !{!60, !37, i64 48}
!63 = !{!64, !37, i64 32}
!64 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !56, i64 144, !56, i64 344, !56, i64 544, !56, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !43, i64 960, !37, i64 976, !43, i64 984, !37, i64 1000}
!65 = !{!38, !38, i64 0}
!66 = !{!67, !37, i64 0}
!67 = !{!"BMVert", !68, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!68 = !{!"BMHeader", !37, i64 0, !41, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!69 = !{!70, !41, i64 8}
!70 = !{!"MDeformVert", !37, i64 0, !41, i64 8, !41, i64 12}
!71 = !{!70, !37, i64 0}
!72 = !{!73, !41, i64 0}
!73 = !{!"MDeformWeight", !41, i64 0, !44, i64 4}
!74 = distinct !{!74, !75, !76}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = distinct !{!77, !75, !76}
!78 = !{!79, !37, i64 0}
!79 = !{!"EditLatt", !37, i64 0, !41, i64 8, !38, i64 12}
!80 = !{!52, !37, i64 200}
!81 = !{!52, !40, i64 128}
!82 = !{!52, !40, i64 130}
!83 = !{!52, !40, i64 132}
!84 = distinct !{!84, !75, !76}
!85 = distinct !{!85, !75, !76}
!86 = !{!37, !37, i64 0}
!87 = !{!41, !41, i64 0}
!88 = distinct !{!88, !75, !76}
!89 = distinct !{!89, !75, !76}
!90 = !{!35, !37, i64 1248}
!91 = !{!92, !40, i64 132}
!92 = !{!"SoftBody", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 25, !40, i64 26, !44, i64 28, !38, i64 32, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !44, i64 128, !40, i64 132, !38, i64 134, !40, i64 198, !44, i64 200, !44, i64 204, !38, i64 208, !41, i64 272, !41, i64 276, !41, i64 280, !40, i64 284, !40, i64 286, !37, i64 288, !41, i64 296, !41, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !40, i64 320, !40, i64 322, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !37, i64 336, !44, i64 344, !44, i64 348, !37, i64 352, !43, i64 360, !37, i64 376, !38, i64 384, !38, i64 396, !38, i64 432, !41, i64 468}
!93 = !{!94, !41, i64 16}
!94 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!95 = !{!96, !37, i64 128}
!96 = !{!"ClothModifierData", !94, i64 0, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152}
!97 = !{!98, !40, i64 144}
!98 = !{!"ClothSimSettings", !37, i64 0, !44, i64 8, !44, i64 12, !44, i64 16, !38, i64 20, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !44, i64 64, !44, i64 68, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84, !44, i64 88, !44, i64 92, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !38, i64 156, !37, i64 160}
!99 = !{!98, !40, i64 142}
!100 = !{!40, !40, i64 0}
!101 = distinct !{!101, !75, !76}
!102 = distinct !{!102, !75, !76}
!103 = distinct !{!103, !75, !76}
!104 = !{!35, !37, i64 400}
!105 = !{!43, !37, i64 0}
!106 = !{!55, !41, i64 1280}
!107 = !{!55, !37, i64 248}
!108 = distinct !{!108, !75, !76}
!109 = distinct !{!109, !75, !76}
!110 = !{!111, !37, i64 0}
!111 = !{!"bDeformGroup", !37, i64 0, !37, i64 8, !38, i64 16, !38, i64 80, !38, i64 81}
!112 = distinct !{!112, !75, !76}
!113 = distinct !{!113, !75, !76}
!114 = distinct !{!114, !75, !76}
!115 = !{!64, !41, i64 0}
!116 = !{!68, !38, i64 13}
!117 = distinct !{!117, !75, !76}
!118 = distinct !{!118, !75, !76}
!119 = !{!55, !37, i64 232}
!120 = !{!121, !38, i64 18}
!121 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!122 = distinct !{!122, !75, !76}
!123 = distinct !{!123, !75, !76}
!124 = !{!52, !37, i64 176}
!125 = !{!126, !40, i64 24}
!126 = !{!"BPoint", !38, i64 0, !44, i64 16, !44, i64 20, !40, i64 24, !40, i64 26, !44, i64 28, !44, i64 32}
!127 = distinct !{!127, !75, !76}
!128 = distinct !{!128, !75, !76}
!129 = distinct !{!129, !75, !76}
!130 = distinct !{!130, !75, !76}
!131 = !{!73, !44, i64 4}
!132 = distinct !{!132, !75, !76}
!133 = distinct !{!133, !75, !76}
!134 = !{i64 0, i64 8, !86, i64 8, i64 4, !87, i64 12, i64 4, !87}
!135 = distinct !{!135, !75, !76}
!136 = !{!55, !38, i64 1365}
!137 = distinct !{!137, !75, !76}
!138 = distinct !{!138, !75, !76}
!139 = distinct !{!139, !75, !76}
!140 = distinct !{!140, !75, !76}
!141 = distinct !{!141, !75, !76}
!142 = distinct !{!142, !75, !76}
!143 = distinct !{!143, !75, !76}
!144 = distinct !{!144, !75, !76}
!145 = distinct !{!145, !75, !76}
!146 = !{!147, !37, i64 0}
!147 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !148, i64 152, !40, i64 184}
!148 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!149 = !{!147, !37, i64 8}
!150 = !{!147, !37, i64 24}
!151 = !{!147, !37, i64 72}
!152 = !{!147, !37, i64 32}
!153 = !{!147, !40, i64 184}
!154 = !{!35, !37, i64 24}
!155 = !{!36, !37, i64 24}
!156 = !{!147, !37, i64 88}
!157 = !{!158, !37, i64 112}
!158 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!159 = !{!111, !38, i64 80}
!160 = !{!161, !44, i64 32}
!161 = !{!"ToolSettings", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !40, i64 44, !40, i64 46, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !44, i64 52, !40, i64 56, !38, i64 58, !38, i64 59, !162, i64 64, !164, i64 168, !44, i64 336, !44, i64 340, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 349, !40, i64 350, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !44, i64 368, !44, i64 372, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !40, i64 392, !38, i64 394, !38, i64 395, !38, i64 396, !38, i64 399, !37, i64 400, !38, i64 408, !38, i64 409, !38, i64 410, !38, i64 411, !38, i64 412, !38, i64 413, !38, i64 421, !38, i64 429, !38, i64 430, !38, i64 431, !38, i64 432, !38, i64 433, !40, i64 434, !40, i64 436, !40, i64 438, !40, i64 440, !38, i64 442, !38, i64 443, !38, i64 444, !38, i64 445, !38, i64 446, !38, i64 447, !41, i64 448, !41, i64 452, !41, i64 456, !41, i64 460, !40, i64 464, !40, i64 466, !41, i64 468, !44, i64 472, !44, i64 476, !165, i64 480, !166, i64 608}
!162 = !{!"ImagePaintSettings", !163, i64 0, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !38, i64 48, !41, i64 52, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !38, i64 88, !44, i64 100}
!163 = !{!"Paint", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!164 = !{!"ParticleEditSettings", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !38, i64 8, !37, i64 120, !44, i64 128, !44, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !37, i64 160}
!165 = !{!"UnifiedPaintSettings", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !38, i64 16, !38, i64 28, !41, i64 40, !38, i64 44, !44, i64 52, !41, i64 56, !41, i64 60, !38, i64 64, !38, i64 65, !44, i64 72, !38, i64 76, !41, i64 84, !44, i64 88, !38, i64 92, !38, i64 100, !41, i64 108, !37, i64 112, !44, i64 120, !41, i64 124}
!166 = !{!"MeshStatVis", !38, i64 0, !38, i64 1, !38, i64 3, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !38, i64 20, !38, i64 21, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36}
!167 = distinct !{!167, !75, !76}
!168 = distinct !{!168, !75, !76}
!169 = distinct !{!169, !75, !76}
!170 = distinct !{!170, !75, !76}
!171 = distinct !{!171, !75, !76}
!172 = !{!147, !37, i64 104}
!173 = distinct !{!173, !75, !76}
!174 = distinct !{!174, !75, !76}
!175 = distinct !{!175, !75, !76}
!176 = distinct !{!176, !75, !76}
!177 = distinct !{!177, !75, !76}
!178 = !{!94, !41, i64 20}
!179 = distinct !{!179, !75, !76}
!180 = !{!158, !37, i64 120}
!181 = !{!55, !37, i64 168}
!182 = !{!55, !41, i64 1296}
!183 = !{!184, !41, i64 4}
!184 = !{!"MPoly", !41, i64 0, !41, i64 4, !40, i64 8, !38, i64 10, !38, i64 11}
!185 = !{!55, !37, i64 184}
!186 = !{!184, !41, i64 0}
!187 = !{!188, !41, i64 0}
!188 = !{!"MLoop", !41, i64 0, !41, i64 4}
!189 = distinct !{!189, !75, !76}
!190 = distinct !{!190, !75, !76}
!191 = distinct !{!191, !75, !76}
!192 = !{!193, !37, i64 1144}
!193 = !{!"DerivedMesh", !56, i64 0, !56, i64 200, !56, i64 400, !56, i64 600, !56, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !44, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!194 = !{i64 0, i64 12, !65, i64 12, i64 6, !65, i64 18, i64 1, !65, i64 19, i64 1, !65}
!195 = distinct !{!195, !75, !76}
!196 = !{!44, !44, i64 0}
!197 = distinct !{!197, !75, !76}
!198 = !{!35, !37, i64 1288}
!199 = !{!193, !41, i64 1020}
!200 = !{!193, !37, i64 1680}
!201 = distinct !{!201, !75, !76}
!202 = distinct !{!202, !75, !76}
!203 = distinct !{!203, !75, !76}
!204 = distinct !{!204, !75, !76}
!205 = distinct !{!205, !75, !76}
!206 = distinct !{!206, !75, !76}
!207 = distinct !{!207, !75, !76}
!208 = distinct !{!208, !75, !76}
!209 = distinct !{!209, !75, !76}
!210 = distinct !{!210, !75, !76}
!211 = distinct !{!211, !75, !76}
!212 = distinct !{!212, !75, !76}
!213 = distinct !{!213, !75, !76}
!214 = distinct !{!214, !75, !76}
!215 = !{!216, !37, i64 32}
!216 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!217 = distinct !{!217, !75, !76}
!218 = !{!219, !37, i64 32}
!219 = !{!"CollectionPointerLink", !37, i64 0, !37, i64 8, !220, i64 16}
!220 = !{!"PointerRNA", !221, i64 0, !37, i64 8, !37, i64 16}
!221 = !{!"", !37, i64 0}
!222 = distinct !{!222, !75, !76}
!223 = distinct !{!223, !75, !76}
!224 = distinct !{!224, !75, !76}
!225 = !{!147, !37, i64 48}
!226 = !{!227, !41, i64 0}
!227 = !{!"EnumPropertyItem", !41, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !37, i64 32}
!228 = !{!227, !41, i64 16}
!229 = !{!227, !37, i64 8}
!230 = !{!227, !37, i64 24}
!231 = distinct !{!231, !75, !76}
!232 = distinct !{!232, !75, !76}
!233 = !{i32 2, i32 5}
!234 = !{!111, !37, i64 8}
!235 = distinct !{!235, !75, !76}
!236 = distinct !{!236, !75, !76}
!237 = !{!161, !38, i64 447}
!238 = distinct !{!238, !75, !76}
!239 = distinct !{!239, !75, !76}
!240 = distinct !{!240, !75, !76}
!241 = distinct !{!241, !75, !76}
!242 = distinct !{!242, !75, !76}
!243 = distinct !{!243, !75, !76}
!244 = distinct !{!244, !75, !76}
!245 = !{!52, !41, i64 148}
!246 = distinct !{!246, !75, !76}
!247 = !{!55, !37, i64 240}
!248 = !{!55, !41, i64 1284}
!249 = !{!250, !37, i64 24}
!250 = !{!"BMEdge", !68, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !251, i64 48, !251, i64 64}
!251 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!252 = !{!250, !37, i64 32}
!253 = !{!68, !41, i64 8}
!254 = !{!255, !37, i64 0}
!255 = !{!"LinkNode", !37, i64 0, !37, i64 8}
!256 = !{!255, !37, i64 8}
!257 = distinct !{!257, !75, !76}
!258 = !{!259, !41, i64 8}
!259 = !{!"MeshElemMap", !37, i64 0, !41, i64 8}
!260 = !{!259, !37, i64 0}
!261 = !{!262, !41, i64 0}
!262 = !{!"MEdge", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 9, !40, i64 10}
!263 = !{!262, !41, i64 4}
!264 = distinct !{!264, !75, !76}
!265 = distinct !{!265, !75, !76}
!266 = distinct !{!266, !75, !76}
!267 = distinct !{!267, !75, !76}
!268 = distinct !{!268, !75, !76}
!269 = !{!45, !45, i64 0}
!270 = !{!193, !37, i64 1320}
!271 = !{!193, !37, i64 1104}
!272 = distinct !{!272, !75, !76}
!273 = !{!193, !37, i64 1168}
!274 = distinct !{!274, !75, !76}
!275 = distinct !{!275, !75, !76}
!276 = !{!277, !44, i64 28}
!277 = !{!"BVHTreeNearest", !41, i64 0, !38, i64 4, !38, i64 16, !44, i64 28, !41, i64 32}
!278 = !{!277, !41, i64 0}
!279 = !{!280, !37, i64 0}
!280 = !{!"BVHTreeFromMesh", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !38, i64 48, !38, i64 49, !38, i64 50, !44, i64 52, !37, i64 56, !38, i64 64}
!281 = !{!280, !37, i64 8}
!282 = distinct !{!282, !75, !76}
!283 = !{!193, !37, i64 1184}
!284 = !{!285, !41, i64 0}
!285 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !38, i64 18, !38, i64 19}
!286 = !{!285, !41, i64 4}
!287 = !{!285, !41, i64 8}
!288 = !{!285, !41, i64 12}
!289 = distinct !{!289, !75, !76}
!290 = distinct !{!290, !75, !76}
!291 = distinct !{!291, !75, !76}
!292 = distinct !{!292, !75, !76}
!293 = distinct !{!293, !75, !76}
!294 = distinct !{!294, !75, !76}
!295 = distinct !{!295, !75, !76}
!296 = distinct !{!296, !75, !76}
